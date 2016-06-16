-- 16/06/2016 10h59min49s BRT
INSERT INTO AD_Process (AD_Client_ID,AD_Org_ID,AD_Process_ID,AccessLevel,CopyFromProcess,Created,CreatedBy,Description,EntityType,Help,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES (0,0,1120170,'3','N',TO_TIMESTAMP('2016-06-16 10:59:48','YYYY-MM-DD HH24:MI:SS'),100,'Validate the Digital Certificate','LBRA','Validate the Digital Certificate (PKCS#11 or PKCS#12 only)','Y','N','N','N','N','Validate','Y',0,0,TO_TIMESTAMP('2016-06-16 10:59:48','YYYY-MM-DD HH24:MI:SS'),100,'LBR_DigitakCertificate_Validate')
;

-- 16/06/2016 10h59min49s BRT
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1120170 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 16/06/2016 11h1min12s BRT
UPDATE AD_Process_Trl SET IsTranslated='Y',Name='Validar',Description='Valida o Certificado Digital',Help='Faz a validação do certificado digital, usando o pseudônimo e a senha. Válido somente para os certificados PKCS#11 ou PKCS#12. Caso seu certificado PKCS#11 certifique-se que o mesmo esteja conectado no computador antes de iniciar o teste.',Updated=TO_TIMESTAMP('2016-06-16 11:01:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120170 AND AD_Language='pt_BR'
;

-- 16/06/2016 11h1min33s BRT
UPDATE AD_Process SET Classname='org.kenos.process.ValidateCertificate',Updated=TO_TIMESTAMP('2016-06-16 11:01:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120170
;

-- 16/06/2016 11h2min19s BRT
UPDATE AD_Process SET Classname='org.adempierelbr.process.ValidateCertificate',Updated=TO_TIMESTAMP('2016-06-16 11:02:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120170
;

-- 16/06/2016 11h4min3s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1128949,524,0,1120170,28,1100000,'Processing',TO_TIMESTAMP('2016-06-16 11:04:02','YYYY-MM-DD HH24:MI:SS'),100,'N','LBRA',1,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Process Now',0,TO_TIMESTAMP('2016-06-16 11:04:02','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 16/06/2016 11h4min3s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128949 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 16/06/2016 11h4min4s BRT
ALTER TABLE LBR_DigitalCertificate ADD COLUMN Processing CHAR(1) DEFAULT 'N' NOT NULL
;

-- 16/06/2016 11h4min19s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1128949,1126171,0,1100000,TO_TIMESTAMP('2016-06-16 11:04:18','YYYY-MM-DD HH24:MI:SS'),100,1,'LBRA','Y','Y','Y','N','N','N','N','N','Process Now',TO_TIMESTAMP('2016-06-16 11:04:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/06/2016 11h4min19s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1126171 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 16/06/2016 11h4min36s BRT
UPDATE AD_Field SET SeqNo=110,Updated=TO_TIMESTAMP('2016-06-16 11:04:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1126171
;

-- 16/06/2016 11h4min42s BRT
UPDATE AD_Field_Trl SET IsTranslated='Y',Name='Validar',Updated=TO_TIMESTAMP('2016-06-16 11:04:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1126171 AND AD_Language='pt_BR'
;

-- 16/06/2016 11h4min42s BRT
SELECT Register_Migration_Script ('214-ValidateDigCert.sql') FROM DUAL
;