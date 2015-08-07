#!/bin/bash

if [ -z "$1" ]; then
   echo "Usage: $0 DIRECTORY DATABASE USER"
   exit 0
fi
if [ -z "$2" ]; then
   echo "Usage: $0 DIRECTORY DATABASE USER"
   exit 0
fi
if [ -z "$3" ]; then
   echo "Usage: $0 DIRECTORY DATABASE USER"
   exit 0
fi
if [ -z "$PSQL" ]; then
	PSQL=psql
fi

echo "AdempiereLBR"
echo "."
echo ". Mario Grigioni (Kenos, www.kenos.com.br) - 01-Sep-2008"
echo ". Michel Silvestre (resultado.log)         - 23-Aug-2010"
echo ". Ricardo Santana (password prompt)        - 30-Jun-2015"
echo "."
read -s -p "Enter Password: " pass
echo ""
export PGPASSWORD=$pass
for f in $(ls $1/postgresql/*.sql); do
	echo ". Execultando Script" $f >> result_pg.log
	$PSQL -d $2 -U $3 -f $f >> result_pg.log 2>&1
done
for f in $(ls post_install/postgresql/*.sql); do
	echo ". Execultando Script" $f >> result_pg.log
	$PSQL -d $2 -U $3 -f $f >> result_pg.log 2>&1
done
export PGPASSWORD=
