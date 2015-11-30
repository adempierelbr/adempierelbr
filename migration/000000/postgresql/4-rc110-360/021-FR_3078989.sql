-- 07/10/2010 10h31min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_FieldGroup SET Name='Brazilian Locatization',Updated=TO_TIMESTAMP('2010-10-07 10:31:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1000000
;

-- 07/10/2010 10h31min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_FieldGroup_Trl SET IsTranslated='N' WHERE AD_FieldGroup_ID=1000000
;

-- 07/10/2010 10h31min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_FieldGroup_Trl SET IsTranslated='Y',Name='Localização Brasil',Updated=TO_TIMESTAMP('2010-10-07 10:31:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1000000 AND AD_Language='pt_BR'
;

UPDATE AD_SysConfig SET Value='RC110-360/021-FR_3078989.sql' WHERE AD_SysConfig_ID=1100006;
