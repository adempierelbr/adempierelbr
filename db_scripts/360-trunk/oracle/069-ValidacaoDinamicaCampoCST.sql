-- 01/03/2013 15h35min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,1120093,' LBR_TaxStatus_ID IN (SELECT LBR_TaxStatus_ID FROM LBR_TaxStatus WHERE LBR_TaxName_ID IN (SELECT LBR_TaxName_ID FROM C_Tax WHERE  LBR_TaxGroup_ID = @LBR_TaxGroup_ID@))',TO_DATE('2013-03-01 15:35:26','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','LBR_TaxStatus','S',TO_DATE('2013-03-01 15:35:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 01/03/2013 15h35min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Val_Rule_ID=1120093,Updated=TO_DATE('2013-03-01 15:35:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1106068
;

--	Atualiza o ultimo script
UPDATE AD_SysConfig SET Value='360-trunk/73-ValidacaoDinamicaCampoCST.sql' WHERE AD_SysConfig_ID=1100006
;
