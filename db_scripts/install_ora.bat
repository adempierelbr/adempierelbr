@echo off

IF (%1)==() GOTO END
IF (%2)==() GOTO END
IF (%3)==() GOTO END
CLS

ECHO AdempiereLBR
ECHO .
ECHO . Eduardo Montenegro (Kenos, www.kenos.com.br) - 23-Feb-2008
ECHO .

SET /p DBPASSWORD=Password (Usuário do Banco de Dados, ex.:ADEMPIERE): : 

FOR %%f IN (%1\oracle\*.sql) DO sqlplus %3/%DBPASSWORD%@%2 @%%f
PAUSE
EXIT

:END
ECHO Usage: %0 DIRECTORY ORACLE_INSTANCE USER
PAUSE
EXIT

