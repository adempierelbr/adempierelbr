#!/bin/sh

#	Check Parameters
if [ -z "$1" -o -z "$2" -o -z "$3" ]; then
   echo "Usage: $0 MIGRATION-FOLDER DATABASE USER [HOSTNAME] [PORT] [PG PARAMS]"
   exit 0
fi

#	Adjust the path to psql command
if [ -z "$PSQL" ]; then
	PSQL=psql
fi

#	Variables
PGPASS=~/.pgpass
DATABASE=${2}
USER=${3}
ADDPG=${6}   # i.e. "-h localhost -p 5432"
MIGRATIONDIR=${1}
MSGERROR=""
APPLIED=N
HOST=${4}
PORT=${5}

#	Default hostname
if [ -z "$HOST" ]; then
	HOST=localhost
fi

#	Default port
if [ -z "$PORT" ]; then
	PORT=5432
fi

echo
echo "========================================="
echo " iDempiere Synchronization Script Tool"
echo
echo " Version modified by Kenos."
echo " Ricardo Santana <rsantana@kenos.com.br>"
echo "========================================="
echo
echo "        Database: ${DATABASE}"
echo "            User: ${USER}"
echo "       PG Params: ${ADDPG}"
echo "Migration Folder: ${MIGRATIONDIR}"

#	Check if .pgpass exists
if [ ! -f "$PGPASS" ]; then
	> $PGPASS
	chmod 0600 $PGPASS
fi

patternHost=".*-h[[:blank:]][[:blank:]]*\([[:alnum:]][[:alnum:],.]*\).*"
patternPort=".*-p[[:blank:]][[:blank:]]*\([[:digit:]]\{1,5\}\).*"

hostFound=`echo $ADDPG | sed "s/$patternHost/FOUND/g"`
portFound=`echo $ADDPG | sed "s/$patternPort/FOUND/g"`
 
#	Check if we have a hostname parameter
if [ "x$hostFound" = "xFOUND" ]; then

	#	Same regex with escaped parenthesis
	HOST=`echo $ADDPG | sed "s/$patternHost/\1/g"`
fi

#	Check if we have a port parameter
if [ "x$portFound" = "xFOUND" ]; then

	#	Same regex with escaped parenthesis
	PORT=`echo $ADDPG | sed "s/$patternPort/\1/g"`
fi

echo "        Hostname: ${HOST}"
echo "            Port: ${PORT}"
echo

#	Check if password is already saved
if ! grep -q "$HOST\:$PORT\:\*\:$USER\:*" $PGPASS; then
	
	#	Password prompt
	read -p "Enter Password: " pass
	echo
	
	echo "$HOST:$PORT:*:$USER:$pass" >> $PGPASS
	
fi

#	Check if connection is OK
THECOUNT=`psql --quiet -d $DATABASE -U $USER $ADDPG -qwAt -c "SELECT 1"`

#	Prompt for password until connection can be made
#while [[ ! $THECOUNT -eq 1 ]]; do
while [ ! "x$THECOUNT" = "x1" ]; do

	read -p "Enter Password: " pass
	echo
	
	sed "s/^$HOST:$PORT:\*:$USER:.*/$HOST:$PORT:\*:$USER:$pass/" $PGPASS > $PGPASS.tmp
	mv $PGPASS.tmp $PGPASS
	chmod 0600 $PGPASS
	
	THECOUNT=`psql --quiet -d $DATABASE -U $USER $ADDPG -qwAt -c "SELECT 1"`

done

# 	Connection OK
echo
echo "Connection OK"

#	Go to working dir
cd $MIGRATIONDIR

#	Retrieve applied scripts
psql -d $DATABASE -U $USER $ADDPG -q -t -c "SELECT Name FROM AD_MigrationScript" | sed -e 's:^ ::' | grep -v '^$' | sort > /tmp/lisDB.txt

#	Clean the list of available scripts
> /tmp/lisFS.txt

#	Check all available scripts
{ cat VERSIONS; echo; } | while read FOLDER;
do
    if [ -d ${FOLDER}/postgresql ]
    then
        cd ${FOLDER}/postgresql
        find . -name '*.sql' -type f -exec basename {} \; | sort -u | sort -k1.1,1.12 -n >> /tmp/lisFS.txt
        cd ../..
    fi
done

#	Sort by file name
cat /tmp/lisDB.txt | sort -u | sort -k1.1,1.12 -no /tmp/lisDB.txt
echo

APPLIED=N

#	Confirm scripts to be applied
#
#     FNR==NR       # Are we looking at the first file
#     a[$0]         # If so build an associative array of the file
#     next          # Go get the next line in the file
#     !($0 in a)    # In the second file now, check if the current line is in the array
#     print sub...  # If not print the first 3 characters from the current line
#
for i in `awk 'FNR==NR{a[$0];next}!($0 in a)' /tmp/lisDB.txt /tmp/lisFS.txt`
do
	if [ x$APPLIED = xN ]
	then
		echo "The script(s) below will be applied:"
		echo
	fi
    echo "====> $i"
    APPLIED=Y
done

#	Confirm before apply
if [ x$APPLIED = xY ]
then
	echo
	echo "Press enter to continue ..."
	read in
fi

#	Prepare to apply
APPLIED=N

#	Execute the scripts
for i in `awk 'FNR==NR{a[$0];next}!($0 in a)' /tmp/lisDB.txt /tmp/lisFS.txt`
do
    SCRIPT=`find . -name "$i" -print | fgrep -v /oracle/`
    OUTFILE=/tmp/`basename "$i" .sql`.out
    psql -d $DATABASE -U $USER $ADDPG -f "$SCRIPT" 2>&1 | tee "$OUTFILE"
    if fgrep "ERROR:
FATAL:" "$OUTFILE" > /dev/null 2>&1
    then
        MSGERROR="$MSGERROR
**** ERROR ON FILE $OUTFILE - Please verify ****"
    fi
    APPLIED=Y
done

#	Execute processes post migration
if [ x$APPLIED = xY ]
then
    for i in processes_post_migration/postgresql/*.sql
    do
        OUTFILE=/tmp/`basename "$i" .sql`.out
        psql -d $DATABASE -U $USER $ADDPG -f "$i" 2>&1 | tee "$OUTFILE"
        if fgrep "ERROR:
FATAL:" "$OUTFILE" > /dev/null 2>&1
        then
            MSGERROR="$MSGERROR
**** ERROR ON FILE $OUTFILE - Please verify ****"
        fi
    done
else
    echo "Database is up to date, no scripts to apply"
    echo
fi

# remove trash
rm /tmp/lisDB.txt /tmp/lisFS.txt

#	Show errors
if [ -n "$MSGERROR" ]
then
    echo "$MSGERROR"
fi
# syncApplied.sh
