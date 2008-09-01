@echo off

IF (%1)==() GOTO END
IF (%2)==() GOTO END
IF (%3)==() GOTO END
CLS

ECHO AdempiereLBR
ECHO .
ECHO . Mario Grigioni (Kenos, www.kenos.com.br) - 01/09/2008
ECHO .

SET /p PGPASSWORD=Password (ADEMPIERE): 

FOR %%f IN (%1\*.sql) DO psql -d %2 -U %3 -f %%f
PAUSE
EXIT

:END
ECHO Usage %0 DIRECTORY DATABASE USER
PAUSE
EXIT
