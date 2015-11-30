-- 19/08/2010 16h27min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ReadOnlyLogic='@lbr_BPTypeBRIsValid@=''Y''',Updated=TO_DATE('2010-08-19 16:27:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000019
;

-- 19/08/2010 16h27min29s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ReadOnlyLogic='@lbr_BPTypeBRIsValid@=''Y''',Updated=TO_DATE('2010-08-19 16:27:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000018
;

UPDATE AD_SysConfig SET Value='RC110-360/009-BF_ReadOnlyBP.sql' WHERE AD_SysConfig_ID=1100006
;

exit