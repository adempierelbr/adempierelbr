-- 18/05/2017 11h11min42s BRT
UPDATE AD_Process SET Description='Check the status of reception services of NF-e', Help='This process will try to check the condition of SeFaz services regarding NF-e reception', Name='Check the status of NF-e services',Updated=TO_DATE('2017-05-18 11:11:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120000
;

-- 18/05/2017 11h11min42s BRT
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=1120000
;

-- 18/05/2017 11h11min42s BRT
UPDATE AD_Process_Trl SET Description='Check the status of reception services of NF-e',Help='This process will try to check the condition of SeFaz services regarding NF-e reception',Name='Check the status of NF-e services',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Process_ID=1120000
;

-- 18/05/2017 11h11min43s BRT
UPDATE AD_Menu SET Description='Check the status of reception services of NF-e', IsActive='Y', Name='Check the status of NF-e services',Updated=TO_DATE('2017-05-18 11:11:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1120001
;

-- 18/05/2017 11h11min43s BRT
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=1120001
;

-- 18/05/2017 11h11min43s BRT
UPDATE AD_Menu_Trl SET Description='Check the status of reception services of NF-e',Name='Check the status of NF-e services',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Menu_ID=1120001
;

-- 18/05/2017 11h11min56s BRT
UPDATE AD_Process_Trl SET Description='Testa o status do serviço de recepção da NF-e e NFC-e',Updated=TO_DATE('2017-05-18 11:11:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120000 AND AD_Language='pt_BR'
;

-- 18/05/2017 11h12min10s BRT
UPDATE AD_Process SET Description='Check the status of reception services of NF-e and NFC-e', Help='This process will try to check the condition of SeFaz services regarding NF-e and NFC-e reception',Updated=TO_DATE('2017-05-18 11:12:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120000
;

-- 18/05/2017 11h12min10s BRT
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=1120000
;

-- 18/05/2017 11h12min10s BRT
UPDATE AD_Process_Trl SET Description='Check the status of reception services of NF-e and NFC-e',Help='This process will try to check the condition of SeFaz services regarding NF-e and NFC-e reception',Name='Check the status of NF-e services',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Process_ID=1120000
;

-- 18/05/2017 11h12min10s BRT
UPDATE AD_Menu SET Description='Check the status of reception services of NF-e and NFC-e', IsActive='Y', Name='Check the status of NF-e services',Updated=TO_DATE('2017-05-18 11:12:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1120001
;

-- 18/05/2017 11h12min10s BRT
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=1120001
;

-- 18/05/2017 11h12min10s BRT
UPDATE AD_Menu_Trl SET Description='Check the status of reception services of NF-e and NFC-e',Name='Check the status of NF-e services',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Menu_ID=1120001
;

-- 18/05/2017 11h14min54s BRT
UPDATE AD_Process_Trl SET Help='Este processo irá verificar se o serviço de recepção de notas está funcionando na SeFaz. Caso a SeFaz esteja enfrentando algum problema o processo irá retornar a informação e previsão de normalização. Em caso de erro na consulta, verifique diretamente na SeFaz do seu estado.',Updated=TO_DATE('2017-05-18 11:14:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120000 AND AD_Language='pt_BR'
;

-- 18/05/2017 11h15min30s BRT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1100009,0,1120000,1120353,17,'lbr_NFModel',TO_DATE('2017-05-18 11:15:29','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',0,'Y','Y','Y','N','Modelo da NF',40,TO_DATE('2017-05-18 11:15:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 18/05/2017 11h15min30s BRT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120353 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 18/05/2017 11h16min24s BRT
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120257,TO_DATE('2017-05-18 11:16:24','YYYY-MM-DD HH24:MI:SS'),100,'Tabela com códigos de Documentos Fiscais eletrônicos','LBRA',NULL,'Y','N','lbr_NFModel (NFe e NFCe)',TO_DATE('2017-05-18 11:16:24','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 18/05/2017 11h16min24s BRT
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120257 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 18/05/2017 11h16min46s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121811,1120257,TO_DATE('2017-05-18 11:16:45','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Nota Fiscal Eletrônica',TO_DATE('2017-05-18 11:16:45','YYYY-MM-DD HH24:MI:SS'),100,'55')
;

-- 18/05/2017 11h16min46s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121811 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 18/05/2017 11h17min2s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121812,1120257,TO_DATE('2017-05-18 11:17:02','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Nota Fiscal de Consumidor Eletrônica',TO_DATE('2017-05-18 11:17:02','YYYY-MM-DD HH24:MI:SS'),100,'65')
;

-- 18/05/2017 11h17min2s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121812 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 18/05/2017 11h17min27s BRT
UPDATE AD_Process_Para SET AD_Reference_Value_ID=1120257,Updated=TO_DATE('2017-05-18 11:17:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120353
;

-- 18/05/2017 11h17min27s BRT
SELECT Register_Migration_Script ('272-NFCeStatusServ.sql') FROM DUAL
;

EXIT