-- 14/02/2013 14h15min16s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-02-14 14:15:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2000339
;

-- 14/02/2013 14h15min51s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-02-14 14:15:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100048
;

--	Atualiza o ultimo script
UPDATE AD_SysConfig SET Value='360-trunk/72-DesabilitarCampoLoteJanelaNotaFiscal.sql' WHERE AD_SysConfig_ID=1100006
;
