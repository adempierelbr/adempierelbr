-- 02/06/2016 16h34min14s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122248,0,'LBR_ReverseCorrect_Invoice',TO_DATE('2016-06-02 16:34:13','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Reverse Correct Invoice','Reverse / Correct Invoice',TO_DATE('2016-06-02 16:34:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/06/2016 16h34min14s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122248 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 02/06/2016 16h34min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Estornar Fatura',PrintName='Estornar Fatura',Updated=TO_DATE('2016-06-02 16:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122248 AND AD_Language='pt_BR'
;

-- 02/06/2016 16h35min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122249,0,'LBR_ReverseCorrect_InOut',TO_DATE('2016-06-02 16:35:08','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Reverse Correct InOut','Reverse / Correct InOut',TO_DATE('2016-06-02 16:35:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/06/2016 16h35min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122249 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 02/06/2016 16h35min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Estornar Remessa / Recebimento',PrintName='Estornar Remessa / Recebimento',Updated=TO_DATE('2016-06-02 16:35:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122249 AND AD_Language='pt_BR'
;

-- 02/06/2016 16h35min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element SET EntityType='LBRA',Updated=TO_DATE('2016-06-02 16:35:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122249
;

-- 02/06/2016 16h36min39s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element SET Description='Allow to Reverse Invoice related with the NF',Updated=TO_DATE('2016-06-02 16:36:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122248
;

-- 02/06/2016 16h36min39s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=1122248
;

-- 02/06/2016 16h36min39s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET Description='Allow to Reverse Invoice related with the NF',Help=NULL,Name='Reverse Correct Invoice',PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,PrintName='Reverse / Correct Invoice',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Element_ID=1122248
;

-- 02/06/2016 16h36min39s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ColumnName='LBR_ReverseCorrect_Invoice', Name='Reverse Correct Invoice', Description='Allow to Reverse Invoice related with the NF', Help=NULL WHERE AD_Element_ID=1122248
;

-- 02/06/2016 16h36min39s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='LBR_ReverseCorrect_Invoice', Name='Reverse Correct Invoice', Description='Allow to Reverse Invoice related with the NF', Help=NULL, AD_Element_ID=1122248 WHERE UPPER(ColumnName)='LBR_REVERSECORRECT_INVOICE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 02/06/2016 16h36min39s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='LBR_ReverseCorrect_Invoice', Name='Reverse Correct Invoice', Description='Allow to Reverse Invoice related with the NF', Help=NULL WHERE AD_Element_ID=1122248 AND IsCentrallyMaintained='Y'
;

-- 02/06/2016 16h36min39s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET Name='Reverse Correct Invoice', Description='Allow to Reverse Invoice related with the NF', Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1122248) AND IsCentrallyMaintained='Y'
;

-- 02/06/2016 16h36min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element SET Description='Allow to Reverse InOut related with the NF',Updated=TO_DATE('2016-06-02 16:36:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122249
;

-- 02/06/2016 16h36min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=1122249
;

-- 02/06/2016 16h36min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET Description='Allow to Reverse InOut related with the NF',Help=NULL,Name='Reverse Correct InOut',PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,PrintName='Reverse / Correct InOut',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Element_ID=1122249
;

-- 02/06/2016 16h36min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ColumnName='LBR_ReverseCorrect_InOut', Name='Reverse Correct InOut', Description='Allow to Reverse InOut related with the NF', Help=NULL WHERE AD_Element_ID=1122249
;

-- 02/06/2016 16h36min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='LBR_ReverseCorrect_InOut', Name='Reverse Correct InOut', Description='Allow to Reverse InOut related with the NF', Help=NULL, AD_Element_ID=1122249 WHERE UPPER(ColumnName)='LBR_REVERSECORRECT_INOUT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 02/06/2016 16h36min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='LBR_ReverseCorrect_InOut', Name='Reverse Correct InOut', Description='Allow to Reverse InOut related with the NF', Help=NULL WHERE AD_Element_ID=1122249 AND IsCentrallyMaintained='Y'
;

-- 02/06/2016 16h36min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET Name='Reverse Correct InOut', Description='Allow to Reverse InOut related with the NF', Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1122249) AND IsCentrallyMaintained='Y'
;

-- 02/06/2016 16h37min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='Y',Description='Permite Estornar Fatura Relacionada a NF',Updated=TO_DATE('2016-06-02 16:37:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122248 AND AD_Language='pt_BR'
;

-- 02/06/2016 16h37min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='Y',Description='Permite Estornar Remessa / Recebimento Relacionada a NF',Updated=TO_DATE('2016-06-02 16:37:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122249 AND AD_Language='pt_BR'
;

-- 02/06/2016 16h37min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1128801,1122248,0,20,1000027,'LBR_ReverseCorrect_Invoice',TO_DATE('2016-06-02 16:37:54','YYYY-MM-DD HH24:MI:SS'),100,'N','Allow to Reverse Invoice related with the NF','U',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Reverse Correct Invoice',0,TO_DATE('2016-06-02 16:37:54','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 02/06/2016 16h37min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128801 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/06/2016 16h38min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2016-06-02 16:38:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128801
;

-- 02/06/2016 16h38min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET DefaultValue='''N''',Updated=TO_DATE('2016-06-02 16:38:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128801
;

-- 02/06/2016 16h39min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NotaFiscal ADD LBR_ReverseCorrect_Invoice CHAR(1) DEFAULT 'N' CHECK (LBR_ReverseCorrect_Invoice IN ('Y','N'))
;

-- 02/06/2016 16h39min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1128802,1122249,0,20,1000027,'LBR_ReverseCorrect_InOut',TO_DATE('2016-06-02 16:39:23','YYYY-MM-DD HH24:MI:SS'),100,'''N''','Allow to Reverse InOut related with the NF','U',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Reverse Correct InOut',0,TO_DATE('2016-06-02 16:39:23','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 02/06/2016 16h39min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128802 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/06/2016 16h39min29s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2016-06-02 16:39:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128802
;

-- 02/06/2016 16h39min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NotaFiscal ADD LBR_ReverseCorrect_InOut CHAR(1) DEFAULT 'N' CHECK (LBR_ReverseCorrect_InOut IN ('Y','N'))
;

-- 02/06/2016 16h41min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1128801,1120054,1125801,0,1000028,TO_DATE('2016-06-02 16:41:00','YYYY-MM-DD HH24:MI:SS'),100,'Allow to Reverse Invoice related with the NF',10,'LBRA','Y','Y','Y','N','N','N','N','N','Reverse Correct Invoice',941,TO_DATE('2016-06-02 16:41:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/06/2016 16h41min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125801 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/06/2016 16h41min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1128802,1120054,1125802,0,1000028,TO_DATE('2016-06-02 16:41:17','YYYY-MM-DD HH24:MI:SS'),100,'Allow to Reverse InOut related with the NF',10,'U','Y','Y','Y','N','N','N','N','Y','Reverse Correct InOut',942,TO_DATE('2016-06-02 16:41:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/06/2016 16h41min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125802 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/06/2016 16h41min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET EntityType='LBRA',Updated=TO_DATE('2016-06-02 16:41:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125802
;

-- 02/06/2016 16h42min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1128801,1120054,1125803,0,1000020,TO_DATE('2016-06-02 16:42:41','YYYY-MM-DD HH24:MI:SS'),100,'Allow to Reverse Invoice related with the NF',10,NULL,'LBRA','Y','Y','Y','N','N','N','N','N','Reverse Correct Invoice',991,TO_DATE('2016-06-02 16:42:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/06/2016 16h42min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125803 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/06/2016 16h42min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1128802,1120054,1125804,0,1000020,TO_DATE('2016-06-02 16:42:53','YYYY-MM-DD HH24:MI:SS'),100,'Allow to Reverse InOut related with the NF',10,'U','Y','Y','Y','N','N','N','N','Y','Reverse Correct InOut',992,TO_DATE('2016-06-02 16:42:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/06/2016 16h42min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125804 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/06/2016 16h42min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET EntityType='LBRA',Updated=TO_DATE('2016-06-02 16:42:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125804
;

-- 02/06/2016 18h0min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=1,Updated=TO_DATE('2016-06-02 18:00:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125801
;

-- 02/06/2016 18h0min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=1,Updated=TO_DATE('2016-06-02 18:00:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125802
;

-- 02/06/2016 18h1min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=1,Updated=TO_DATE('2016-06-02 18:01:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125803
;

-- 02/06/2016 18h1min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=1,Updated=TO_DATE('2016-06-02 18:01:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125804
;

-- 06/06/2016 11h10min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=1071,Updated=TO_DATE('2016-06-06 11:10:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125803
;

-- 06/06/2016 11h11min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=1072,Updated=TO_DATE('2016-06-06 11:11:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125804
;

-- 06/06/2016 11h12min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=911,Updated=TO_DATE('2016-06-06 11:12:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125801
;

-- 06/06/2016 11h12min33s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=912,Updated=TO_DATE('2016-06-06 11:12:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125802
;

-- 02/06/2016 18h1min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
SELECT Register_Migration_Script ('210-EstornarAutFaturaRemessaNF.sql') FROM DUAL
;

EXIT