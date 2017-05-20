-- 19/05/2017 10h41min19s BRT
UPDATE AD_Process SET Description='Import the average taxes from IBPT', Help='Import average taxes from IBPT. This info is mandatory for customer invoices. You can choose getting this data online or from a CSV file.', Name='Import IBPT average taxes',Updated=TO_TIMESTAMP('2017-05-19 10:41:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120126
;

-- 19/05/2017 10h41min19s BRT
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=1120126
;

-- 19/05/2017 10h41min19s BRT
UPDATE AD_Process_Trl SET Description='Import the average taxes from IBPT',Help='Import average taxes from IBPT. This info is mandatory for customer invoices. You can choose getting this data online or from a CSV file.',Name='Import IBPT average taxes',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Process_ID=1120126
;

-- 19/05/2017 10h41min19s BRT
UPDATE AD_Menu SET Description='Import the average taxes from IBPT', IsActive='Y', Name='Import IBPT average taxes',Updated=TO_TIMESTAMP('2017-05-19 10:41:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1120195
;

-- 19/05/2017 10h41min19s BRT
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=1120195
;

-- 19/05/2017 10h41min19s BRT
UPDATE AD_Menu_Trl SET Description='Import the average taxes from IBPT',Name='Import IBPT average taxes',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Menu_ID=1120195
;

-- 19/05/2017 10h47min32s BRT
UPDATE AD_Process_Trl SET IsTranslated='Y',Name='Importar Impostos via IBPT',Description='Efetuar a importação da tabela de aliquotas aproximadas de impostos do IBPT',Help='Você pode optar pela importação online ou por arquivo CSV. Marque a opção "Excluir registros antigos" para que todos os registros obsoletos sejam apagados antes da importação.',Updated=TO_TIMESTAMP('2017-05-19 10:47:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120126 AND AD_Language='pt_BR'
;

-- 19/05/2017 10h49min29s BRT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1497,0,1120126,1120354,20,'OProcessing',TO_TIMESTAMP('2017-05-19 10:49:28','YYYY-MM-DD HH24:MI:SS'),100,'Y','Get the IBPT data from the internet API','LBRA',0,'Y','N','N','N','Online Processing',5,TO_TIMESTAMP('2017-05-19 10:49:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 19/05/2017 10h49min29s BRT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120354 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 19/05/2017 10h49min48s BRT
UPDATE AD_Process_Para SET DisplayLogic='@OProcessing@!Y',Updated=TO_TIMESTAMP('2017-05-19 10:49:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120143
;

-- 19/05/2017 10h50min37s BRT
UPDATE AD_Process_Para_Trl SET IsTranslated='Y',Name='Obter dados online via API',Description='Obtém os dados do IBPT via API online',Updated=TO_TIMESTAMP('2017-05-19 10:50:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120354 AND AD_Language='pt_BR'
;

-- 19/05/2017 10h53min49s BRT
UPDATE AD_Process_Para SET DefaultValue='0',Updated=TO_TIMESTAMP('2017-05-19 10:53:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120214
;

-- 19/05/2017 10h53min53s BRT
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_TIMESTAMP('2017-05-19 10:53:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120214
;

-- 19/05/2017 10h54min50s BRT
UPDATE AD_Process_Para SET AD_Element_ID=113, AD_Reference_Value_ID=322, AD_Val_Rule_ID=NULL, ColumnName='AD_Org_ID', DefaultValue=NULL, Name='Organização', SeqNo=7,Updated=TO_TIMESTAMP('2017-05-19 10:54:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120214
;

-- 19/05/2017 10h54min50s BRT
UPDATE AD_Process_Para_Trl SET IsTranslated='N' WHERE AD_Process_Para_ID=1120214
;

-- 19/05/2017 10h54min50s BRT
UPDATE AD_Process_Para_Trl SET Description='Identifies a geographical Region',Help='The Region identifies a unique Region for this Country.',Name='Organização',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Process_Para_ID=1120214
;

-- 19/05/2017 10h54min56s BRT
UPDATE AD_Process_Para_Trl SET IsTranslated='Y',Name='Organização',Updated=TO_TIMESTAMP('2017-05-19 10:54:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120214 AND AD_Language='pt_BR'
;

--	Create indexes
CREATE UNIQUE INDEX LBR_NCM_Value
	ON LBR_NCM USING BTREE (AD_Client_ID, Value)
;
CREATE UNIQUE INDEX LBR_IBPTax_NCM_Version
	ON LBR_IBPTax USING BTREE (AD_Client_ID, LBR_NCM_ID, Version)
;
CREATE UNIQUE INDEX LBR_IBPTax_NBS_Version
	ON LBR_IBPTax USING BTREE (AD_Client_ID, LBR_NBS_ID, Version)
;

-- 19/05/2017 10h54min56s BRT
SELECT Register_Migration_Script ('273-IBPTOnline.sql') FROM DUAL
;