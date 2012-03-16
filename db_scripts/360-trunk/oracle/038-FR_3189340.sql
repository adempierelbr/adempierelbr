-- 22/02/2011 14h43min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET Callout='org.adempierelbr.callout.CalloutNF.setNCM',Updated=TO_DATE('2011-02-22 14:43:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000560
;

-- 22/02/2011 14h43min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET Callout='org.adempierelbr.callout.CalloutNF.setCFOP',Updated=TO_DATE('2011-02-22 14:43:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000561
;

UPDATE AD_SysConfig SET Value='360-trunk/038-FR_3189340.sql' WHERE AD_SysConfig_ID=1100006;

exit
