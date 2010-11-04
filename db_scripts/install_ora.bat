@echo off

IF (%1)==() GOTO END
IF (%2)==() GOTO END
IF (%3)==() GOTO END
CLS

@echo OSeb
@echo . OpenSource ERP Brasil
@echo . Eduardo Montenegro (Kenos, www.kenos.com.br) - 23-Feb-2008
@echo . Mario Grigioni - 17-AUG-2010
@echo .

@SET /p DBPASSWORD=Password (Usuario do Banco de Dados, ex.:ADEMPIERE):

FOR %%f IN (%1\oracle\*.sql) DO sqlplus %3/%DBPASSWORD%@%2 @%%f >> %1_log.txt
@GOTO :OK

:END
@echo Usage: %0 DIRECTORY ORACLE_INSTANCE USER

:OK
@PAUSE