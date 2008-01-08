@echo off

IF (%1)==() GOTO END

CLS

ECHO AdempiereLBR
ECHO .
ECHO . Mario Grigioni (Kenos, www.kenos.com.br) - 08/01/2008
ECHO .

SET /p PGPASSWORD=Password (ADEMPIERE): 

FOR %%f IN (%1\*.sql) DO psql -d adempiere -U adempiere -f %%f
PAUSE
EXIT

:END
ECHO Usage %0 DIRECTORY
PAUSE
EXIT
