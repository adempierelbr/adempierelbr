#!/bin/bash

## 05-Jan-2009 - Make the file executable for Linux/Unix platforms

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

echo "AdempiereLBR"
echo "."
echo ". Mario Grigioni (Kenos, www.kenos.com.br) - 01/09/2008"
echo ". Michel Silvestre - resultado.log - 23/08/2010"
echo "."
echo "Password (ADEMPIERE): "
read variavel
export PGPASSWORD=$variavel
for f in $(ls $1/postgresql/*.sql); do
echo ". Execultando Script" $f >> resultado.log
psql -d $2 -U $3 -f $f >>resultado.log 2>&1
done
