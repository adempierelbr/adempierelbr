-- 05/05/2017 12h26min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET Name='Local de Desembaraço',PrintName='Local do Desembaraço',Description='Local de Desembaraço',Help='Local de Desembaraço',Updated=TO_TIMESTAMP('2017-05-05 12:26:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1120098 AND AD_Language='pt_BR'
;

SELECT Register_Migration_Script ('265-FixTranslation.sql') FROM DUAL
;