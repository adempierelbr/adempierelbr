@echo off

IF (%1)==() GOTO END
IF (%2)==() GOTO END
IF (%3)==() GOTO END
CLS

@echo . AdempiereLBR
@echo . Mario Grigioni  - 17-Aug-2010
@echo . Ricardo Santana - 30-Jun-2015
@echo .

@SET /p PGPASSWORD=Password (ADEMPIERE): 

FOR %%f IN (%1\postgresql\*.sql) DO psql -d %2 -U %3 -f %%f >> result_pg.log
FOR %%f IN (post_install\postgresql\*.sql) DO psql -d %2 -U %3 -f %%f >> result_pg.log
@GOTO :OK

:END
@echo Usage %0 DIRECTORY DATABASE USER

:OK
@PAUSE