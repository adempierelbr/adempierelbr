@echo off

IF (%1)==() GOTO END
IF (%2)==() GOTO END

IF (%3)==() GOTO END
CLS

@echo OSeB
@echo . OpenSource ERP Brasil
@echo . Mario Grigioni - 17-AUG-2010
@echo .

@SET /p PGPASSWORD=Password (ADEMPIERE): 

FOR %%f IN (%1\postgresql\*.sql) DO psql -d %2 -U %3 -f %%f >> %1_log.txt
@GOTO :OK

:END
@echo Usage %0 DIRECTORY DATABASE USER

:OK
@PAUSE