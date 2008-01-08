@echo off

cls

Echo AdempiereLBR
Echo .
Echo . Mario Grigioni (Kenos, www.kenos.com.br) - 27/12/2007
Echo .

Set /p PGPASSWORD=Password (ADEMPIERE): 

for %%f in (*.sql) do psql -d adempiere -U adempiere -f %%f
