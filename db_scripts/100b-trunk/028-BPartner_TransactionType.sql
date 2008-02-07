-- 07/02/2008 14h38min7s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,1000024,1000147,17,291,'lbr_TransactionType',TO_TIMESTAMP('2008-02-07 14:38:06','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Transaction Type','LBRA',3,'Defines the Transaction Type','Y','N','N','N','N','N','N','N','N','N','Y','Transaction Type',0,TO_TIMESTAMP('2008-02-07 14:38:06','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000684)
;

-- 07/02/2008 14h38min7s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000684 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 07/02/2008 14h38min9s BRST
-- Default comment for updating dictionary
ALTER TABLE C_BPartner ADD COLUMN lbr_TransactionType CHAR(3)
;

-- 07/02/2008 14h38min39s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000684,0,1000477,220,TO_TIMESTAMP('2008-02-07 14:38:39','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Transaction Type',3,'LBRA','Defines the Transaction Type','Y','Y','Y','N','N','N','N','N','Transaction Type',TO_TIMESTAMP('2008-02-07 14:38:39','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 07/02/2008 14h38min39s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000477 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 07/02/2008 14h40min31s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000477
;

-- 07/02/2008 14h40min36s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000629,0,1000478,223,TO_TIMESTAMP('2008-02-07 14:40:36','YYYY-MM-DD HH24:MI:SS'),100,'Defines if the record has Substituion',1,'LBRA','Defines if the record has Substituion','Y','Y','Y','N','N','N','N','N','Has Substitution',TO_TIMESTAMP('2008-02-07 14:40:36','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 07/02/2008 14h40min36s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000478 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 07/02/2008 14h40min37s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000684,0,1000479,223,TO_TIMESTAMP('2008-02-07 14:40:36','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Transaction Type',3,'LBRA','Defines the Transaction Type','Y','Y','Y','N','N','N','N','N','Transaction Type',TO_TIMESTAMP('2008-02-07 14:40:36','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 07/02/2008 14h40min37s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000479 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 07/02/2008 14h41min14s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000478
;

-- 07/02/2008 14h41min14s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1000479
;

-- 07/02/2008 14h41min14s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1000119
;

-- 07/02/2008 14h41min14s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1000163
;

-- 07/02/2008 14h41min14s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1000398
;

-- 07/02/2008 14h41min20s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (53246,0,1000480,224,TO_TIMESTAMP('2008-02-07 14:41:20','YYYY-MM-DD HH24:MI:SS'),100,7,'D','Y','Y','Y','N','N','N','N','N','Dunning Grace',TO_TIMESTAMP('2008-02-07 14:41:20','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 07/02/2008 14h41min20s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000480 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 07/02/2008 14h41min20s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000629,0,1000481,224,TO_TIMESTAMP('2008-02-07 14:41:20','YYYY-MM-DD HH24:MI:SS'),100,'Defines if the record has Substituion',1,'LBRA','Defines if the record has Substituion','Y','Y','Y','N','N','N','N','N','Has Substitution',TO_TIMESTAMP('2008-02-07 14:41:20','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 07/02/2008 14h41min20s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000481 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 07/02/2008 14h41min21s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000592,0,1000482,224,TO_TIMESTAMP('2008-02-07 14:41:20','YYYY-MM-DD HH24:MI:SS'),100,'Description Printed on Nota Fiscal',255,'LBRA','Description Printed on Nota Fiscal','Y','Y','Y','N','N','N','N','N','Nota Fiscal Description',TO_TIMESTAMP('2008-02-07 14:41:20','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 07/02/2008 14h41min21s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000482 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 07/02/2008 14h41min21s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000684,0,1000483,224,TO_TIMESTAMP('2008-02-07 14:41:21','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Transaction Type',3,'LBRA','Defines the Transaction Type','Y','Y','Y','N','N','N','N','N','Transaction Type',TO_TIMESTAMP('2008-02-07 14:41:21','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 07/02/2008 14h41min21s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000483 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 07/02/2008 14h41min35s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000480
;

-- 07/02/2008 14h41min35s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000481
;

-- 07/02/2008 14h41min35s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000482
;

-- 07/02/2008 14h41min35s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1000483
;

-- 07/02/2008 14h41min35s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1000136
;

-- 07/02/2008 14h41min35s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1000183
;

-- 07/02/2008 14h42min22s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000000,Updated=TO_TIMESTAMP('2008-02-07 14:42:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000479
;

-- 07/02/2008 14h42min27s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@IsCustomer@=Y',Updated=TO_TIMESTAMP('2008-02-07 14:42:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000479
;

-- 07/02/2008 14h42min44s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000000,Updated=TO_TIMESTAMP('2008-02-07 14:42:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000483
;

-- 07/02/2008 14h43min2s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@IsVendor@=''Y''', AD_FieldGroup_ID=1000000,Updated=TO_TIMESTAMP('2008-02-07 14:43:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000483
;

-- 07/02/2008 14h56min1s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET Callout='org.compiere.model.CalloutOrder.bPartner;org.adempierelbr.callout.CalloutOrder.NFDescription;org.adempierelbr.callout.CalloutTax.getTransactionType',Updated=TO_TIMESTAMP('2008-02-07 14:56:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=2762
;

-- 07/02/2008 14h56min23s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET Callout='org.compiere.model.CalloutInvoice.bPartner;org.adempierelbr.callout.CalloutTax.getTransactionType',Updated=TO_TIMESTAMP('2008-02-07 14:56:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3499
;