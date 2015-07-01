#!/bin/bash
if [ -z "$1" ]; then
   echo "Usage: $0 DIRECTORY ORACLE_INSTANCE USER"
   exit 0
fi
if [ -z "$2" ]; then
   echo "Usage: $0 DIRECTORY ORACLE_INSTANCE USER"
   exit 0
fi
if [ -z "$3" ]; then
   echo "Usage: $0 DIRECTORY ORACLE_INSTANCE USER"
   exit 0
fi

echo "AdempiereLBR"
echo "."
echo ". Eduardo Montenegro (Kenos, www.kenos.com.br) - 23-Feb-2008"
echo ". Michel Silvestre (resultado.log)             - 23-Aug-2010"
echo ". Ricardo Santana (password prompt)            - 30-Jun-2015"
echo "."
read -s -p "Enter Password: " pass
echo ""
for f in $(ls $1/oracle/*.sql); do
	echo ". Executando Script" $f >> resultado.log
	sqlplus $3/$pass@$2 @$f >> resultado.log 2>&1
done
