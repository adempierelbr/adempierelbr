-- 31/08/2015 15h48min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121779,0,'LBR_NFETransmitter',TO_DATE('2015-08-31 15:48:01','YYYY-MM-DD HH24:MI:SS'),100,'Function to send RPS file','U','Y','LBR_NFETransmitter','Transmit',TO_DATE('2015-08-31 15:48:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 31/08/2015 15h48min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121779 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 31/08/2015 15h48min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Transmitir',PrintName='Transmitir',Description='Função para envio de arquivo RPS ',Updated=TO_DATE('2015-08-31 15:48:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121779 AND AD_Language='pt_BR'
;

-- 31/08/2015 15h48min52s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET AD_Element_ID=1121779,Updated=TO_DATE('2015-08-31 15:48:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120042
;

-- 02/09/2015 15h23min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET EntityType='LBRA',Updated=TO_DATE('2015-09-02 15:23:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120042
;

-- 02/09/2015 15h23min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element SET EntityType='LBRA',Updated=TO_DATE('2015-09-02 15:23:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121779
;

-- 31/08/2015 11h54min22s BRT
SELECT Register_Migration_Script ('137-RPSTransmitterAjust.sql') FROM DUAL
;

EXIT