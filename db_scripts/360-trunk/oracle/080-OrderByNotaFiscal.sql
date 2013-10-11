-- 25/07/2013 15h19min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Tab SET OrderByClause='AD_Org_ID, C_DocTypeTarget_ID, DateDoc DESC, DocumentNo DESC',Updated=TO_DATE('2013-07-25 15:19:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000028
;

-- 25/07/2013 15h20min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Tab SET OrderByClause='Line',Updated=TO_DATE('2013-07-25 15:20:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000030
;

-- 25/07/2013 15h20min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Tab SET OrderByClause='AD_Org_ID, C_DocTypeTarget_ID, DateDoc DESC, DocumentNo DESC',Updated=TO_DATE('2013-07-25 15:20:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000020
;

-- 25/07/2013 15h20min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Tab SET OrderByClause='Line',Updated=TO_DATE('2013-07-25 15:20:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000021
;

--	Atualiza o ultimo script
UPDATE AD_SysConfig SET Value='360-trunk/080-OrderByNotaFiscalOracle.sql' WHERE AD_SysConfig_ID=1100006
;

