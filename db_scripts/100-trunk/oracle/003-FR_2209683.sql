-- 01/12/2008 10h27min14s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000998,230,0,10,1000001,'Comments',TO_TIMESTAMP('2008-12-01 10:27:13','YYYY-MM-DD HH24:MI:SS'),100,'Comments or additional information','LBRA',70,'The Comments field allows for free form entry of additional information.','Y','N','N','N','N','N','N','N','N','N','Y','Comments',0,TO_TIMESTAMP('2008-12-01 10:27:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 01/12/2008 10h27min14s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000998 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 01/12/2008 10h27min15s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_Boleto ADD Comments NVARCHAR2(70)
;

-- 01/12/2008 10h27min31s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1000923,1000976,0,1000034,TO_TIMESTAMP('2008-12-01 10:27:31','YYYY-MM-DD HH24:MI:SS'),100,'Account at the Bank',22,'LBRA','The Bank Account identifies an account at this Bank.','Y','Y','Y','N','N','N','N','N','Bank Account',TO_TIMESTAMP('2008-12-01 10:27:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 01/12/2008 10h27min31s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000976 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 01/12/2008 10h27min31s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1000998,1000977,0,1000034,TO_TIMESTAMP('2008-12-01 10:27:31','YYYY-MM-DD HH24:MI:SS'),100,'Comments or additional information',70,'LBRA','The Comments field allows for free form entry of additional information.','Y','Y','Y','N','N','N','N','N','Comments',TO_TIMESTAMP('2008-12-01 10:27:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 01/12/2008 10h27min31s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000977 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 01/12/2008 10h27min56s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000976
;

-- 01/12/2008 10h27min56s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1000977
;

-- 01/12/2008 10h27min56s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1000709
;

-- 01/12/2008 10h27min56s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1000708
;

-- 01/12/2008 10h27min56s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1000717
;

-- 01/12/2008 10h27min56s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1000718
;

-- 01/12/2008 10h27min56s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1000714
;

-- 01/12/2008 10h27min56s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1000713
;

-- 01/12/2008 10h27min56s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1000864
;

-- 01/12/2008 10h27min56s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1000861
;

-- 01/12/2008 10h27min56s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1000866
;

-- 01/12/2008 10h27min56s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1000865
;

-- 01/12/2008 10h28min11s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2008-12-01 10:28:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000977
;

-- 01/12/2008 10h29min22s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1000337,0,'lbr_BoletoComments',TO_TIMESTAMP('2008-12-01 10:29:22','YYYY-MM-DD HH24:MI:SS'),100,'Define the Boleto Comments','LBRA','Define the Boleto Comments','Y','Boleto Comments','Boleto Comments',TO_TIMESTAMP('2008-12-01 10:29:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 01/12/2008 10h29min22s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000337 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 01/12/2008 10h30min15s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000999,1000337,0,10,318,'lbr_BoletoComments',TO_TIMESTAMP('2008-12-01 10:30:14','YYYY-MM-DD HH24:MI:SS'),100,'Define the Boleto Comments','LBRA',70,'Define the Boleto Comments','Y','N','N','N','N','N','N','N','N','N','Y','Boleto Comments',0,TO_TIMESTAMP('2008-12-01 10:30:14','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 01/12/2008 10h30min15s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000999 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 01/12/2008 10h30min16s BRST
-- Default comment for updating dictionary
ALTER TABLE C_Invoice ADD lbr_BoletoComments NVARCHAR2(70)
;

-- 01/12/2008 10h30min42s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1000999,1000978,0,263,TO_TIMESTAMP('2008-12-01 10:30:42','YYYY-MM-DD HH24:MI:SS'),100,'Define the Boleto Comments',70,'LBRA','Define the Boleto Comments','Y','Y','Y','N','N','N','N','N','Boleto Comments',TO_TIMESTAMP('2008-12-01 10:30:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 01/12/2008 10h30min42s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000978 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 01/12/2008 10h31min39s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000000, DisplayLogic=NULL,Updated=TO_TIMESTAMP('2008-12-01 10:31:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000978
;

-- 01/12/2008 10h31min49s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@lbr_PaymentRule@=''B''',Updated=TO_TIMESTAMP('2008-12-01 10:31:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000978
;

-- 01/12/2008 10h33min16s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@lbr_PaymentRule@=''B'' & @IsPayScheduleValid@=''N''',Updated=TO_TIMESTAMP('2008-12-01 10:33:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000978
;

-- 01/12/2008 10h34min3s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001000,1000337,0,10,551,'lbr_BoletoComments',TO_TIMESTAMP('2008-12-01 10:34:03','YYYY-MM-DD HH24:MI:SS'),100,'Define the Boleto Comments','LBRA',70,'Define the Boleto Comments','Y','N','N','N','N','N','N','N','N','N','Y','Boleto Comments',0,TO_TIMESTAMP('2008-12-01 10:34:03','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 01/12/2008 10h34min3s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001000 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 01/12/2008 10h34min4s BRST
-- Default comment for updating dictionary
ALTER TABLE C_InvoicePaySchedule ADD lbr_BoletoComments NVARCHAR2(70)
;

-- 01/12/2008 10h34min36s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001000,1000979,0,460,TO_TIMESTAMP('2008-12-01 10:34:36','YYYY-MM-DD HH24:MI:SS'),100,'Define the Boleto Comments',70,'LBRA','Define the Boleto Comments','Y','Y','Y','N','N','N','N','N','Boleto Comments',TO_TIMESTAMP('2008-12-01 10:34:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 01/12/2008 10h34min36s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000979 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 01/12/2008 10h34min57s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000000, DisplayLogic=NULL,Updated=TO_TIMESTAMP('2008-12-01 10:34:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000979
;

-- 01/12/2008 10h35min24s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@lbr_PaymentRule@=''B''',Updated=TO_TIMESTAMP('2008-12-01 10:35:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000979
;

-- 01/12/2008 10h36min39s BRST
-- Default comment for updating dictionary
UPDATE AD_SysConfig SET Value='100-trunk/003-FR_2209683.sql',Updated=TO_TIMESTAMP('2008-12-01 10:36:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_SysConfig_ID=1100006
;

exit

