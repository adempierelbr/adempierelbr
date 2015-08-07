@echo off

IF (%1)==() GOTO END
IF (%2)==() GOTO END
IF (%3)==() GOTO END
CLS

@echo . AdempiereLBR
@echo . Mario Grigioni  - 17-Aug-2010
@echo . Ricardo Santana - 30-Jun-2015
@echo .

@SET /p DBPASSWORD=Password (Usuario do Banco de Dados, ex.:ADEMPIERE):

FOR %%f IN (%1\oracle\*.sql) DO sqlplus %3/%DBPASSWORD%@%2 @%%f >> result_ora.log
FOR %%f IN (post_install\oracle\*.sql) DO sqlplus %3/%DBPASSWORD%@%2 @%%f >> result_ora.log
@GOTO :OK

:END
@echo Usage: %0 DIRECTORY ORACLE_INSTANCE USER

:OK
@PAUSE