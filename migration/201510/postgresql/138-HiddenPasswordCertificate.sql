-- 18/09/2015 16h43min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsEncrypted='Y',Updated=TO_TIMESTAMP('2015-09-18 16:43:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100013
;

-- 31/08/2015 11h54min22s BRT
SELECT Register_Migration_Script ('138-HiddenPasswordCertificate.sql') FROM DUAL
;