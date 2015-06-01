-- 11/01/2013 17h4min6s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Val_Rule_ID=202,Updated=TO_DATE('2013-01-11 17:04:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1100054
;

--	Atualiza o ultimo script
UPDATE AD_SysConfig SET Value='360-trunk/069-Organizacao0NaoExibedanaNFeLot.sql' WHERE AD_SysConfig_ID=1100006
;

