-- 03/10/2013 17h35min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Val_Rule_ID=202,Updated=TO_TIMESTAMP('2013-10-03 17:35:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1124168;

--	Atualiza o ultimo script
UPDATE AD_SysConfig SET Value='360-trunk/087-NoShowOrg0_LBR_TaxAssessmen.sql' WHERE AD_SysConfig_ID=1100006;

