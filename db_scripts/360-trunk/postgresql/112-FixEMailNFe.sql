-- Ajuste para bases atuais
DELETE FROM AD_Field f WHERE f.AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column c WHERE c.AD_Table_ID=291 AND c.ColumnName='lbr_EMailNFe')
;
DELETE FROM AD_Field f WHERE f.AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column c WHERE c.AD_Table_ID=1000027 AND c.ColumnName IN ('lbr_SentXML', 'lbr_EMailSent'))
;
DELETE FROM AD_Column c WHERE c.AD_Table_ID=1000027 AND c.ColumnName IN ('lbr_SentXML', 'lbr_EMailSent')
;
DELETE FROM AD_Column c WHERE c.AD_Table_ID=291 AND c.ColumnName='lbr_EMailNFe'
;
DELETE FROM AD_Element e WHERE e.ColumnName IN ('lbr_SentXML', 'lbr_EMailSent', 'lbr_EMailNFe')
;
ALTER TABLE LBR_NotaFiscal DROP COLUMN lbr_SentXML
;

-- 14/05/2015 17h54min51s BRT
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121728,0,'LBR_EMailNFe',TO_TIMESTAMP('2015-05-14 17:54:50','YYYY-MM-DD HH24:MI:SS'),100,'NFe EMail separated by semicolon','LBRA','NFe EMail separated by semicolon','Y','NFe EMail','NFe EMail',TO_TIMESTAMP('2015-05-14 17:54:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/05/2015 17h54min51s BRT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121728 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 14/05/2015 17h56min12s BRT
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='EMail NFe',PrintName='EMail NFe',Description='EMail para recepção do XML da NFe',Help='EMail para recepção do XML da NFe (para adicionar mais de um e-mail separe por vírgula ou ponto-e-vírgula)',Updated=TO_TIMESTAMP('2015-05-14 17:56:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121728 AND AD_Language='pt_BR'
;

-- 14/05/2015 17h57min1s BRT
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121729,0,'LBR_EMailSent',TO_TIMESTAMP('2015-05-14 17:57:00','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if the email was sent','LBRA','Indicates if the email was sent','Y','EMail Sent','EMail Sent',TO_TIMESTAMP('2015-05-14 17:57:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/05/2015 17h57min1s BRT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121729 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 14/05/2015 17h57min20s BRT
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='EMail Enviado',PrintName='EMail Enviado',Description='Indica se o email foi enviado com sucesso',Help='Indica se o email foi enviado com sucesso',Updated=TO_TIMESTAMP('2015-05-14 17:57:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121729 AND AD_Language='pt_BR'
;

-- 14/05/2015 17h58min23s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126599,1121728,0,10,291,'LBR_EMailNFe',TO_TIMESTAMP('2015-05-14 17:58:21','YYYY-MM-DD HH24:MI:SS'),100,'NFe EMail separated by semicolon','LBRA',60,'NFe EMail separated by semicolon','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','NFe EMail',0,TO_TIMESTAMP('2015-05-14 17:58:21','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/05/2015 17h58min23s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126599 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/05/2015 17h58min26s BRT
ALTER TABLE C_BPartner ADD COLUMN LBR_EMailNFe VARCHAR(60) DEFAULT NULL 
;

-- 14/05/2015 17h58min48s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126599,1125346,0,220,TO_TIMESTAMP('2015-05-14 17:58:47','YYYY-MM-DD HH24:MI:SS'),100,'NFe EMail separated by semicolon',60,'LBRA','NFe EMail separated by semicolon','Y','Y','Y','N','N','N','N','N','NFe EMail',TO_TIMESTAMP('2015-05-14 17:58:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/05/2015 17h58min48s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125346 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/05/2015 18h4min17s BRT
UPDATE AD_Field SET AD_FieldGroup_ID=1000000, SeqNo=335,Updated=TO_TIMESTAMP('2015-05-14 18:04:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125346
;

-- 14/05/2015 18h7min50s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126600,1121729,0,20,1000027,'LBR_EMailSent',TO_TIMESTAMP('2015-05-14 18:07:49','YYYY-MM-DD HH24:MI:SS'),100,'N','Indicates if the email was sent','LBRA',1,'Indicates if the email was sent','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','EMail Sent',0,TO_TIMESTAMP('2015-05-14 18:07:49','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/05/2015 18h7min50s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126600 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/05/2015 18h7min53s BRT
ALTER TABLE LBR_NotaFiscal ADD COLUMN LBR_EMailSent CHAR(1) DEFAULT 'N' CHECK (LBR_EMailSent IN ('Y','N')) NOT NULL
;

-- 14/05/2015 18h8min33s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126600,1125370,0,1000020,TO_TIMESTAMP('2015-05-14 18:08:32','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if the email was sent',1,'LBRA','Indicates if the email was sent','Y','Y','Y','N','N','N','N','N','EMail Sent',TO_TIMESTAMP('2015-05-14 18:08:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/05/2015 18h8min33s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125370 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/05/2015 18h10min23s BRT
UPDATE AD_Field SET AD_FieldGroup_ID=125, IsReadOnly='Y', SeqNo=715,Updated=TO_TIMESTAMP('2015-05-14 18:10:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125370
;

-- 14/05/2015 18h10min34s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126600,1125372,0,1000028,TO_TIMESTAMP('2015-05-14 18:10:33','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if the email was sent',1,'LBRA','Indicates if the email was sent','Y','Y','Y','N','N','N','N','N','EMail Sent',TO_TIMESTAMP('2015-05-14 18:10:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/05/2015 18h10min34s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125372 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/05/2015 18h11min8s BRT
UPDATE AD_Field SET AD_FieldGroup_ID=125, IsReadOnly='Y', SeqNo=705,Updated=TO_TIMESTAMP('2015-05-14 18:11:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125372
;

-- 14/05/2015 18h52min10s BRT
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121730,0,'LBR_SendEMail',TO_TIMESTAMP('2015-05-14 18:52:09','YYYY-MM-DD HH24:MI:SS'),100,'Send EMail with Nota Fiscal','LBRA','Send EMail with Nota Fiscal','Y','Send EMail','Send EMail',TO_TIMESTAMP('2015-05-14 18:52:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/05/2015 18h52min10s BRT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121730 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 14/05/2015 19h2min19s BRT
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Enviar EMail',PrintName='Enviar EMail',Description='Enviar EMail da Nota Fiscal',Help='Enviar EMail da Nota Fiscal com o XML e DANFE para Notas Fiscais modelo 55 e 56. Para RPS e Notas Fiscais de Serviço é enviado apenas o PDF da Nota Fiscal',Updated=TO_TIMESTAMP('2015-05-14 19:02:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121730 AND AD_Language='pt_BR'
;

-- 14/05/2015 19h3min46s BRT
INSERT INTO AD_Process (AD_Client_ID,AD_Org_ID,AD_Process_ID,AccessLevel,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,Help,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES (0,0,1120151,'3','org.adempierelbr.process.ProcEMailNFe','N',TO_TIMESTAMP('2015-05-14 19:03:46','YYYY-MM-DD HH24:MI:SS'),100,'Send EMail with Nota Fiscal','LBRA','Send EMail with Nota Fiscal','Y','N','N','N','N','Send EMail','Y',0,0,TO_TIMESTAMP('2015-05-14 19:03:46','YYYY-MM-DD HH24:MI:SS'),100,'LBR_SendEMail')
;

-- 14/05/2015 19h3min46s BRT
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1120151 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 14/05/2015 19h4min57s BRT
UPDATE AD_Process_Trl SET Name='Enviar EMail',Description='Enviar EMail com a Nota Fiscal',Help='Envia o EMail da Nota Fiscal com o XML e DANFE para Notas Fiscais modelo 55 e 56. Para RPS e Notas Fiscais de Serviço é enviado apenas o PDF da Nota Fiscal.',Updated=TO_TIMESTAMP('2015-05-14 19:04:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120151 AND AD_Language='pt_BR'
;

-- 14/05/2015 19h5min3s BRT
UPDATE AD_Process_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2015-05-14 19:05:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120151 AND AD_Language='pt_BR'
;

-- 14/05/2015 19h5min38s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126601,1121730,0,1120151,28,1000027,'LBR_SendEMail',TO_TIMESTAMP('2015-05-14 19:05:37','YYYY-MM-DD HH24:MI:SS'),100,'N','Send EMail with Nota Fiscal','LBRA',1,'Send EMail with Nota Fiscal','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Send EMail',0,TO_TIMESTAMP('2015-05-14 19:05:37','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/05/2015 19h5min38s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126601 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/05/2015 19h5min40s BRT
ALTER TABLE LBR_NotaFiscal ADD COLUMN LBR_SendEMail CHAR(1) DEFAULT 'N' 
;

-- 14/05/2015 19h6min52s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1126601,125,1125373,0,1000020,TO_TIMESTAMP('2015-05-14 19:06:51','YYYY-MM-DD HH24:MI:SS'),100,'Send EMail with Nota Fiscal',1,'LBRA','Send EMail with Nota Fiscal','Y','Y','Y','N','N','N','N','Y','Send EMail',716,TO_TIMESTAMP('2015-05-14 19:06:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/05/2015 19h6min52s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125373 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/05/2015 19h7min38s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1126601,125,1125374,0,1000028,TO_TIMESTAMP('2015-05-14 19:07:37','YYYY-MM-DD HH24:MI:SS'),100,'Send EMail with Nota Fiscal',1,'LBRA','Send EMail with Nota Fiscal','Y','Y','Y','N','N','N','N','Y','Send EMail',706,TO_TIMESTAMP('2015-05-14 19:07:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/05/2015 19h7min38s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125374 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/05/2015 19h20min5s BRT
UPDATE AD_Field SET DisplayLogic='@lbr_IsOwnDocument@=Y & @DocStatus@!IP & @DocStatus@!DR & @DocStatus@!WC & @DocStatus@!IN',Updated=TO_TIMESTAMP('2015-05-14 19:20:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125372
;

-- 14/05/2015 19h20min10s BRT
UPDATE AD_Field SET DisplayLogic='@lbr_IsOwnDocument@=Y & @DocStatus@!IP & @DocStatus@!DR & @DocStatus@!WC & @DocStatus@!IN',Updated=TO_TIMESTAMP('2015-05-14 19:20:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125374
;

-- 14/05/2015 19h20min25s BRT
UPDATE AD_Field SET DisplayLogic='@lbr_IsOwnDocument@=Y & @DocStatus@!IP & @DocStatus@!DR & @DocStatus@!WC & @DocStatus@!IN',Updated=TO_TIMESTAMP('2015-05-14 19:20:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125373
;

-- 14/05/2015 19h20min28s BRT
UPDATE AD_Field SET DisplayLogic='@lbr_IsOwnDocument@=Y & @DocStatus@!IP & @DocStatus@!DR & @DocStatus@!WC & @DocStatus@!IN',Updated=TO_TIMESTAMP('2015-05-14 19:20:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125370
;

-- 15/05/2015 12h42min39s BRT
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_TIMESTAMP('2015-05-15 12:42:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126601
;

-- 15/05/2015 11h27min50s BRT
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,1120033,0,TO_TIMESTAMP('2015-05-15 11:27:49','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Prezado cliente,<br><br>Anexo à este e-mail você está recebendo o arquivo XML da Nota Fiscal Eletrônica. Este arquivo deve ser armazenado eletronicamente por sua empresa pelo prazo de 05 (cinco) anos, conforme previsto na legislação tributária (Art. 173 do Código Tributário Nacional e § 4º da Lei 5.172 de 25/10/1966).<br><br>O DANFE em papel seguirá junto com a mercadoria e poderá ser arquivado para apresentação ao fisco quando solicitado. Todavia, se sua empresa também for emitente de NF-e, o arquivamento eletrônico do XML de seus fornecedores é obrigatório, sendo passível de fiscalização.<br><br>Para se certificar que esta NF-e é válida, queira por favor consultar sua autenticidade no site nacional do projeto NF-e (www.nfe.fazenda.gov.br), utilizando a chave de acesso contida no DANFE.<br><br>Atenciosamente,<br>@AD_Org_ID<Name>@.
Nota Fiscal emitida pelo sistema Kenos ERP Adempiere (www.kenos.com.br)','I',TO_TIMESTAMP('2015-05-15 11:27:49','YYYY-MM-DD HH24:MI:SS'),100,'LBR_EMailNFe')
;

-- 15/05/2015 11h27min50s BRT
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=1120033 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

UPDATE AD_Reference SET EntityType='LBRA' WHERE EntityType='U' AND AD_Reference_ID IN (1120160,1120161,1120162,1120183);
UPDATE AD_Element SET EntityType='LBRA' WHERE EntityType='U' AND AD_Element_ID IN (1121277,1121276,1121278,1121279,1121280,1121281,1121282,1121283,1121285,1121286,1121287,1121288,1121529,1121695,1121696,1121702,1121699,1121719);
UPDATE AD_Window SET EntityType='LBRA' WHERE EntityType='U' AND AD_Window_ID IN (1120079);
UPDATE AD_Ref_List SET EntityType='LBRA' WHERE EntityType='U' AND AD_Ref_List_ID IN (1121374,1121375,1121376,1121377,1121378,1121379,1121380,1121381,1121382,1121383,1121384,1121385,1121386,1121387,1121388,1121389,1121390,1121483,1121484,1121485);
UPDATE AD_Menu SET EntityType='LBRA' WHERE EntityType='U' AND AD_Menu_ID IN (1120183);
UPDATE AD_Column SET EntityType='LBRA' WHERE EntityType='U' AND AD_Column_ID IN (1124123,1124199,1124200,1124201,1124202,1124203,1124204,1124205,1124206,1124208,1124210,1124211,1124214,1124215,1124220,1124223,1124224,1124225,1124226,1124227,1124228,1124230,1125500,1126444,1126450,1126451,1126464,1126465,1126466,1126467,1126468,1126469,1126470,1126526,1126527,1126528,1126529,1126530,1126531,1126532,1126534);
UPDATE AD_Table SET EntityType='LBRA' WHERE EntityType='U' AND AD_Table_ID IN (1120333);
UPDATE AD_Field SET EntityType='LBRA' WHERE EntityType='U' AND AD_Field_ID IN (1124951,1123514,1123521,1123516,1123515,1123519,1123520,1123518,1123517,1123522,1123530,1123525,1123528,1123523,1123524,1123527,1123526,1123529,1123531,1124168,1124943,1124850,1124864,1124865,1124861,1124862,1124867,1124868,1124869,1124870,1124871,1124872,1124938,1124929,1124932,1124933,1124935,1124934,1124937,1124930);
UPDATE AD_Tab SET EntityType='LBRA' WHERE EntityType='U' AND AD_Tab_ID IN (1120119);

SELECT Register_Migration_Script ('112-FixEMailNFe.sql') FROM DUAL
;