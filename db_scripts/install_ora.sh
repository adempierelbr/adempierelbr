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
echo "."
echo "Password (Usuário do Banco de Dados, ex.:ADEMPIERE): "
read variavel
for f in $(ls $1/oracle/*.sql); do
	echo ". Executando Script" $f
	sqlplus $3/$variavel@$2 @$f 
done
