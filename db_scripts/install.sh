#!/bin/bash
if [ -z "$1" ]; then
   echo "Usage: $0 DIRECTORY"
   exit 0
fi
echo "AdempiereLBR"
echo "."
echo ". Mario Grigioni (Kenos, www.kenos.com.br) - 08/01/2008"
echo "."
echo "Password (ADEMPIERE): "
read variavel
export PGPASSWORD=$variavel
for f in $(ls $1/*.sql); do
echo ". Executando Script" $f
psql -d adempiere -U adempiere -f $f
done
