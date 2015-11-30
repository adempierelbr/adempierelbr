-- 04/11/2015 12h10min4s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process SET ShowHelp='N',Updated=TO_TIMESTAMP('2015-11-04 12:10:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1000017
;

-- 04/11/2015 12h10min4s BRST
SELECT Register_Migration_Script ('152-LBRVersionPopup.sql') FROM DUAL
;
