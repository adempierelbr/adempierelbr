-- 18/03/2008 9h4min22s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000305,'lbr_PaymentRule',TO_TIMESTAMP('2008-03-18 09:04:22','YYYY-MM-DD HH24:MI:SS'),100,'How you pay the invoice','LBRA','The Payment Rule indicates the method of invoice payment.','Y','Payment Rule','Payment Rule',TO_TIMESTAMP('2008-03-18 09:04:22','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 18/03/2008 9h4min22s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000305 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 18/03/2008 9h8min12s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Reference (AD_Org_ID,AD_Reference_ID,Created,CreatedBy,Description,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,AD_Client_ID,ValidationType) VALUES (0,1000035,TO_TIMESTAMP('2008-03-18 09:08:12','YYYY-MM-DD HH24:MI:SS'),100,NULL,'LBRA','Y','N','lbr_PaymentRule',TO_TIMESTAMP('2008-03-18 09:08:12','YYYY-MM-DD HH24:MI:SS'),100,0,'L')
;

-- 18/03/2008 9h8min12s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1000035 AND EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Reference_ID!=t.AD_Reference_ID)
;

-- 18/03/2008 9h8min29s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,Value) VALUES (0,1000061,1000035,TO_TIMESTAMP('2008-03-18 09:08:29','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Cash',TO_TIMESTAMP('2008-03-18 09:08:29','YYYY-MM-DD HH24:MI:SS'),100,0,'X')
;

-- 18/03/2008 9h8min29s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000061 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- 18/03/2008 9h8min57s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,Value) VALUES (0,1000062,1000035,TO_TIMESTAMP('2008-03-18 09:08:57','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Check',TO_TIMESTAMP('2008-03-18 09:08:57','YYYY-MM-DD HH24:MI:SS'),100,0,'C')
;

-- 18/03/2008 9h8min57s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000062 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- 18/03/2008 9h9min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,Value) VALUES (0,1000063,1000035,TO_TIMESTAMP('2008-03-18 09:09:10','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Bill',TO_TIMESTAMP('2008-03-18 09:09:10','YYYY-MM-DD HH24:MI:SS'),100,0,'B')
;

-- 18/03/2008 9h9min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000063 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- 18/03/2008 9h9min25s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,Value) VALUES (0,1000064,1000035,TO_TIMESTAMP('2008-03-18 09:09:25','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Direct Deposit',TO_TIMESTAMP('2008-03-18 09:09:25','YYYY-MM-DD HH24:MI:SS'),100,0,'D')
;

-- 18/03/2008 9h9min25s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000064 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- 18/03/2008 9h10min4s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000035,1000305,17,291,'lbr_PaymentRule',TO_TIMESTAMP('2008-03-18 09:10:04','YYYY-MM-DD HH24:MI:SS'),100,'How you pay the invoice','LBRA',1,'The Payment Rule indicates the method of invoice payment.','Y','N','N','N','N','N','N','N','N','N','Y','Payment Rule',TO_TIMESTAMP('2008-03-18 09:10:04','YYYY-MM-DD HH24:MI:SS'),100,0,1,1000903)
;

-- 18/03/2008 9h10min4s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000903 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 18/03/2008 9h10min6s BRT
-- Default comment for updating dictionary
ALTER TABLE C_BPartner ADD COLUMN lbr_PaymentRule CHAR(1)
;

-- 18/03/2008 9h14min21s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Reference (AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,AD_Client_ID,ValidationType) VALUES (0,1000036,TO_TIMESTAMP('2008-03-18 09:14:21','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','C_BankAccount ',TO_TIMESTAMP('2008-03-18 09:14:21','YYYY-MM-DD HH24:MI:SS'),100,0,'T')
;

-- 18/03/2008 9h14min21s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1000036 AND EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Reference_ID!=t.AD_Reference_ID)
;

-- 18/03/2008 9h14min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Ref_Table (AD_Display,AD_Key,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy,AD_Client_ID,AD_Reference_ID,AD_Table_ID) VALUES (3074,3077,0,TO_TIMESTAMP('2008-03-18 09:14:42','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N',TO_TIMESTAMP('2008-03-18 09:14:42','YYYY-MM-DD HH24:MI:SS'),100,0,1000036,297)
;

-- 18/03/2008 9h14min54s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000036,836,30,291,'C_BankAccount_ID',TO_TIMESTAMP('2008-03-18 09:14:54','YYYY-MM-DD HH24:MI:SS'),100,'Account at the Bank','LBRA',22,'The Bank Account identifies an account at this Bank.','Y','N','N','N','N','N','N','N','N','N','Y','Bank Account',0,TO_TIMESTAMP('2008-03-18 09:14:54','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000904)
;

-- 18/03/2008 9h14min54s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000904 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 18/03/2008 9h14min55s BRT
-- Default comment for updating dictionary
ALTER TABLE C_BPartner ADD COLUMN C_BankAccount_ID NUMERIC(10)
;

-- 18/03/2008 9h16min27s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000035,1000305,17,259,'lbr_PaymentRule',TO_TIMESTAMP('2008-03-18 09:16:26','YYYY-MM-DD HH24:MI:SS'),100,'How you pay the invoice','LBRA',1,'The Payment Rule indicates the method of invoice payment.','Y','N','N','N','N','N','N','N','N','N','Y','Payment Rule',0,TO_TIMESTAMP('2008-03-18 09:16:26','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000905)
;

-- 18/03/2008 9h16min27s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000905 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 18/03/2008 9h16min28s BRT
-- Default comment for updating dictionary
ALTER TABLE C_Order ADD COLUMN lbr_PaymentRule CHAR(1)
;

-- 18/03/2008 9h19min55s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000036,836,30,259,'C_BankAccount_ID',TO_TIMESTAMP('2008-03-18 09:19:54','YYYY-MM-DD HH24:MI:SS'),100,'Account at the Bank','LBRA',22,'The Bank Account identifies an account at this Bank.','Y','N','N','N','N','N','N','N','N','N','Y','Bank Account',0,TO_TIMESTAMP('2008-03-18 09:19:54','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000906)
;

-- 18/03/2008 9h19min55s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000906 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 18/03/2008 9h19min56s BRT
-- Default comment for updating dictionary
ALTER TABLE C_Order ADD COLUMN C_BankAccount_ID NUMERIC(10)
;

-- 18/03/2008 9h20min39s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000035,1000305,17,318,'lbr_PaymentRule',TO_TIMESTAMP('2008-03-18 09:20:38','YYYY-MM-DD HH24:MI:SS'),100,'How you pay the invoice','LBRA',1,'The Payment Rule indicates the method of invoice payment.','Y','N','N','N','N','N','N','N','N','N','Y','Payment Rule',0,TO_TIMESTAMP('2008-03-18 09:20:38','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000907)
;

-- 18/03/2008 9h20min39s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000907 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 18/03/2008 9h20min40s BRT
-- Default comment for updating dictionary
ALTER TABLE C_Invoice ADD COLUMN lbr_PaymentRule CHAR(1)
;

-- 18/03/2008 9h21min28s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000904,0,223,TO_TIMESTAMP('2008-03-18 09:21:28','YYYY-MM-DD HH24:MI:SS'),100,'Account at the Bank',22,'LBRA','The Bank Account identifies an account at this Bank.','Y','Y','Y','N','N','N','N','N','Bank Account',TO_TIMESTAMP('2008-03-18 09:21:28','YYYY-MM-DD HH24:MI:SS'),0,100,1000871)
;

-- 18/03/2008 9h21min28s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000871 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/03/2008 9h21min28s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000903,0,223,TO_TIMESTAMP('2008-03-18 09:21:28','YYYY-MM-DD HH24:MI:SS'),100,'How you pay the invoice',1,'LBRA','The Payment Rule indicates the method of invoice payment.','Y','Y','Y','N','N','N','N','N','Payment Rule',TO_TIMESTAMP('2008-03-18 09:21:28','YYYY-MM-DD HH24:MI:SS'),0,100,1000872)
;

-- 18/03/2008 9h21min28s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000872 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/03/2008 9h24min12s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1000872
;

-- 18/03/2008 9h24min12s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1000871
;

-- 18/03/2008 9h24min21s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2008-03-18 09:24:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000871
;

-- 18/03/2008 9h24min45s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@lbr_PaymentRule@=''B'' | @lbr_PaymentRule@=''D''',Updated=TO_TIMESTAMP('2008-03-18 09:24:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000871
;

-- 18/03/2008 9h25min49s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2008-03-18 09:25:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3114
;

-- 18/03/2008 9h26min28s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET DefaultValue='''P''',Updated=TO_TIMESTAMP('2008-03-18 09:26:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3084
;

-- 18/03/2008 9h26min28s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Payment Rule', Description='How you pay the invoice', Help='The Payment Rule indicates the method of invoice payment.' WHERE AD_Column_ID=3084 AND IsCentrallyMaintained='Y'
;

-- 18/03/2008 9h26min49s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET DefaultValue='''P''',Updated=TO_TIMESTAMP('2008-03-18 09:26:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=4019
;

-- 18/03/2008 9h26min49s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Payment Rule', Description='How you pay the invoice', Help='The Payment Rule indicates the method of invoice payment.' WHERE AD_Column_ID=4019 AND IsCentrallyMaintained='Y'
;

-- 18/03/2008 9h27min7s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET DefaultValue='''P''',Updated=TO_TIMESTAMP('2008-03-18 09:27:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=4020
;

-- 18/03/2008 9h27min7s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Payment Rule', Description='How you pay the invoice', Help='The Payment Rule indicates the method of invoice payment.' WHERE AD_Column_ID=4020 AND IsCentrallyMaintained='Y'
;

-- 18/03/2008 9h28min26s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000906,0,186,TO_TIMESTAMP('2008-03-18 09:28:26','YYYY-MM-DD HH24:MI:SS'),100,'Account at the Bank',22,'LBRA','The Bank Account identifies an account at this Bank.','Y','Y','Y','N','N','N','N','N','Bank Account',TO_TIMESTAMP('2008-03-18 09:28:26','YYYY-MM-DD HH24:MI:SS'),0,100,1000873)
;

-- 18/03/2008 9h28min26s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000873 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/03/2008 9h28min26s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000729,0,186,TO_TIMESTAMP('2008-03-18 09:28:26','YYYY-MM-DD HH24:MI:SS'),100,'Process to Create PO Lines from Requisition',1,'LBRA','Process to Create PO Lines from Requisition','Y','Y','Y','N','N','N','N','N','Create PO',TO_TIMESTAMP('2008-03-18 09:28:26','YYYY-MM-DD HH24:MI:SS'),0,100,1000874)
;

-- 18/03/2008 9h28min26s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000874 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/03/2008 9h28min26s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000905,0,186,TO_TIMESTAMP('2008-03-18 09:28:26','YYYY-MM-DD HH24:MI:SS'),100,'How you pay the invoice',1,'LBRA','The Payment Rule indicates the method of invoice payment.','Y','Y','Y','N','N','N','N','N','Payment Rule',TO_TIMESTAMP('2008-03-18 09:28:26','YYYY-MM-DD HH24:MI:SS'),0,100,1000875)
;

-- 18/03/2008 9h28min26s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000875 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/03/2008 9h28min27s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000672,0,186,TO_TIMESTAMP('2008-03-18 09:28:27','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Withhold Order',22,'LBRA','Defines the Withhold Order','Y','Y','Y','N','N','N','N','N','Withhold Order',TO_TIMESTAMP('2008-03-18 09:28:27','YYYY-MM-DD HH24:MI:SS'),0,100,1000878)
;

-- 18/03/2008 9h28min27s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000878 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/03/2008 9h29min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000874
;

-- 18/03/2008 9h29min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=52014
;

-- 18/03/2008 9h29min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000876
;

-- 18/03/2008 9h29min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000877
;

-- 18/03/2008 9h29min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000878
;

-- 18/03/2008 9h29min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000277
;

-- 18/03/2008 9h29min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1085
;

-- 18/03/2008 9h29min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=6562
;

-- 18/03/2008 9h29min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1093
;

-- 18/03/2008 9h29min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1094
;

-- 18/03/2008 9h29min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1573
;

-- 18/03/2008 9h29min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=6559
;

-- 18/03/2008 9h29min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=2590
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=6561
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1572
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=6558
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=2877
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1110
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1114
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=10124
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1108
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1109
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=2878
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1107
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1104
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1077
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1103
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=8653
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1098
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=3272
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=2112
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=2109
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=3113
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1099
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=2593
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=2589
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1324
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=7038
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=7826
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=7825
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=1112
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=1113
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=1082
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=1084
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=6560
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=1083
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=3660
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=1000873
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=1000399
;

-- 18/03/2008 9h29min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=1000875
;

-- 18/03/2008 9h30min11s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET DefaultValue='P',Updated=TO_TIMESTAMP('2008-03-18 09:30:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=4019
;

-- 18/03/2008 9h30min11s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Payment Rule', Description='How you pay the invoice', Help='The Payment Rule indicates the method of invoice payment.' WHERE AD_Column_ID=4019 AND IsCentrallyMaintained='Y'
;

-- 18/03/2008 9h30min24s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET DefaultValue='P',Updated=TO_TIMESTAMP('2008-03-18 09:30:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=4020
;

-- 18/03/2008 9h30min24s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Payment Rule', Description='How you pay the invoice', Help='The Payment Rule indicates the method of invoice payment.' WHERE AD_Column_ID=4020 AND IsCentrallyMaintained='Y'
;

-- 18/03/2008 9h30min40s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET DefaultValue='P',Updated=TO_TIMESTAMP('2008-03-18 09:30:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3084
;

-- 18/03/2008 9h30min40s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Payment Rule', Description='How you pay the invoice', Help='The Payment Rule indicates the method of invoice payment.' WHERE AD_Column_ID=3084 AND IsCentrallyMaintained='Y'
;

-- 18/03/2008 9h31min15s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=1000399
;

-- 18/03/2008 9h31min15s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=1000875
;

-- 18/03/2008 9h31min15s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=1000873
;

-- 18/03/2008 9h31min21s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000000,Updated=TO_TIMESTAMP('2008-03-18 09:31:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000875
;

-- 18/03/2008 9h31min24s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000000,Updated=TO_TIMESTAMP('2008-03-18 09:31:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000873
;

-- 18/03/2008 9h31min44s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@lbr_PaymentRule@=''B'' | @lbr_PaymentRule@=''D''',Updated=TO_TIMESTAMP('2008-03-18 09:31:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000873
;

-- 18/03/2008 9h32min19s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000907,0,263,TO_TIMESTAMP('2008-03-18 09:32:19','YYYY-MM-DD HH24:MI:SS'),100,'How you pay the invoice',1,'LBRA','The Payment Rule indicates the method of invoice payment.','Y','Y','Y','N','N','N','N','N','Payment Rule',TO_TIMESTAMP('2008-03-18 09:32:19','YYYY-MM-DD HH24:MI:SS'),0,100,1000879)
;

-- 18/03/2008 9h32min19s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000879 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/03/2008 9h33min9s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=1000879
;

-- 18/03/2008 9h33min9s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=1000287
;

-- 18/03/2008 9h33min9s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=1000868
;

-- 18/03/2008 9h33min9s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=1000288
;

-- 18/03/2008 9h33min26s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000000,Updated=TO_TIMESTAMP('2008-03-18 09:33:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000879
;

-- 18/03/2008 9h33min45s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@lbr_PaymentRule@=''B'' | @lbr_PaymentRule@=''D''', AD_FieldGroup_ID=1000000,Updated=TO_TIMESTAMP('2008-03-18 09:33:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000287
;

-- 18/03/2008 9h33min53s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000000,Updated=TO_TIMESTAMP('2008-03-18 09:33:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000868
;

-- 18/03/2008 9h33min56s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000000,Updated=TO_TIMESTAMP('2008-03-18 09:33:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000288
;

-- 18/03/2008 9h34min10s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@lbr_IsBillPrinted@=''Y''', IsReadOnly='Y',Updated=TO_TIMESTAMP('2008-03-18 09:34:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000288
;

-- 18/03/2008 9h34min17s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2008-03-18 09:34:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000288
;

-- 18/03/2008 9h34min40s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2008-03-18 09:34:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000288
;

-- 18/03/2008 9h34min43s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2008-03-18 09:34:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000287
;

-- 18/03/2008 9h35min1s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2008-03-18 09:35:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000873
;

-- 18/03/2008 9h37min29s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Reference_Value_ID=1000036, AD_Reference_ID=30,Updated=TO_TIMESTAMP('2008-03-18 09:37:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000254
;

-- 18/03/2008 9h37min29s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Bank Account', Description='Account at the Bank', Help='The Bank Account identifies an account at this Bank.' WHERE AD_Column_ID=1000254 AND IsCentrallyMaintained='Y'
;

-- 18/03/2008 9h54min57s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_TIMESTAMP('2008-03-18 09:54:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000907
;

-- 18/03/2008 9h54min57s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Payment Rule', Description='How you pay the invoice', Help='The Payment Rule indicates the method of invoice payment.' WHERE AD_Column_ID=1000907 AND IsCentrallyMaintained='Y'
;

-- 18/03/2008 9h55min16s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_TIMESTAMP('2008-03-18 09:55:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000254
;

-- 18/03/2008 9h55min16s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Bank Account', Description='Account at the Bank', Help='The Bank Account identifies an account at this Bank.' WHERE AD_Column_ID=1000254 AND IsCentrallyMaintained='Y'
;

-- 18/03/2008 10h6min19s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET Callout='org.compiere.model.CalloutOrder.bPartner;org.adempierelbr.callout.CalloutOrder.NFDescription;org.adempierelbr.callout.CalloutTax.getTransactionType;org.adempierelbr.callout.CalloutOrder.PaymentRule',Updated=TO_TIMESTAMP('2008-03-18 10:06:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=2762
;

-- 18/03/2008 10h6min19s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Business Partner ', Description='Identifies a Business Partner', Help='A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson' WHERE AD_Column_ID=2762 AND IsCentrallyMaintained='Y'
;

-- 18/03/2008 10h6min51s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET Callout='org.compiere.model.CalloutInvoice.bPartner;org.adempierelbr.callout.CalloutTax.getTransactionType;org.adempierelbr.callout.CalloutInvoice.PaymentRule',Updated=TO_TIMESTAMP('2008-03-18 10:06:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3499
;

-- 18/03/2008 10h6min51s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Business Partner ', Description='Identifies a Business Partner', Help='A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson' WHERE AD_Column_ID=3499 AND IsCentrallyMaintained='Y'
;

