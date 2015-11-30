-- 21/10/2010 13h8min30s AMST
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1103000,0,'lbr_PriceEnteredBR',TO_TIMESTAMP('2010-10-21 13:08:28','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Price Entered BR','Price Entered BR',TO_TIMESTAMP('2010-10-21 13:08:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/10/2010 13h8min30s AMST
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1103000 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 21/10/2010 13h9min5s AMST
-- Default comment for updating dictionary
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Preço Brasi',PrintName='Preço Brasil',Updated=TO_TIMESTAMP('2010-10-21 13:09:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1103000 AND AD_Language='pt_BR'
;

-- 21/10/2010 13h10min4s AMST
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1103001,0,'lbr_IsPriceBR',TO_TIMESTAMP('2010-10-21 13:10:03','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Is Price BR','Is Price BR',TO_TIMESTAMP('2010-10-21 13:10:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/10/2010 13h10min4s AMST
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1103001 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 21/10/2010 13h10min22s AMST
-- Default comment for updating dictionary
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Preço Brasil',PrintName='Preço Brasil',Updated=TO_TIMESTAMP('2010-10-21 13:10:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1103001 AND AD_Language='pt_BR'
;

-- 21/10/2010 13h10min51s AMST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1103000,1103000,0,12,260,'lbr_PriceEnteredBR',TO_TIMESTAMP('2010-10-21 13:10:50','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','N','N','N','N','N','N','N','N','N','Y','Price Entered BR',0,TO_TIMESTAMP('2010-10-21 13:10:50','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 21/10/2010 13h10min51s AMST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1103000 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 21/10/2010 13h11min0s AMST
-- Default comment for updating dictionary
ALTER TABLE C_OrderLine ADD COLUMN lbr_PriceEnteredBR NUMERIC
;

-- 21/10/2010 13h11min27s AMST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1103001,1103001,0,20,260,'lbr_IsPriceBR',TO_TIMESTAMP('2010-10-21 13:11:27','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',1,'Y','N','N','N','N','N','N','N','N','N','Y','Is Price BR',0,TO_TIMESTAMP('2010-10-21 13:11:27','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 21/10/2010 13h11min27s AMST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1103001 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 21/10/2010 13h11min29s AMST
-- Default comment for updating dictionary
ALTER TABLE C_OrderLine ADD COLUMN lbr_IsPriceBR CHAR(1) CHECK (lbr_IsPriceBR IN ('Y','N'))
;

-- 21/10/2010 13h12min51s AMST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1103000,1103000,0,187,TO_TIMESTAMP('2010-10-21 13:12:51','YYYY-MM-DD HH24:MI:SS'),100,16,'LBRA','Y','Y','Y','N','N','N','N','N','Price Entered BR',420,0,TO_TIMESTAMP('2010-10-21 13:12:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/10/2010 13h12min51s AMST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1103000 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 21/10/2010 13h13min11s AMST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1103001,1103001,0,187,TO_TIMESTAMP('2010-10-21 13:13:11','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y','Y','Y','N','N','N','N','N','Is Price BR',430,0,TO_TIMESTAMP('2010-10-21 13:13:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/10/2010 13h13min11s AMST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1103001 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 21/10/2010 13h14min30s AMST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=221,Updated=TO_TIMESTAMP('2010-10-21 13:14:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1103000
;

-- 21/10/2010 13h14min33s AMST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=222,Updated=TO_TIMESTAMP('2010-10-21 13:14:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1103001
;

-- 22/10/2010 7h36min31s AMST
-- Default comment for updating dictionary
UPDATE AD_Column SET Callout='org.adempierelbr.callout.CalloutTax.taxBR',Updated=TO_TIMESTAMP('2010-10-22 07:36:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000420
;

-- 22/10/2010 7h36min43s AMST
-- Default comment for updating dictionary
UPDATE AD_Column SET Callout='org.compiere.model.CalloutOrder.amt;org.adempierelbr.callout.CalloutTax.taxBR',Updated=TO_TIMESTAMP('2010-10-22 07:36:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=12875
;

-- 22/10/2010 7h36min49s AMST
-- Default comment for updating dictionary
UPDATE AD_Column SET Callout='org.adempierelbr.callout.CalloutTax.taxBR',Updated=TO_TIMESTAMP('2010-10-22 07:36:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1103000
;

-- 22/10/2010 7h58min4s AMST
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Reference_ID=37,Updated=TO_TIMESTAMP('2010-10-22 07:58:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1103000
;

-- 22/10/2010 7h58min8s AMST
-- Default comment for updating dictionary
insert into t_alter_column values('c_orderline','lbr_PriceEnteredBR','NUMERIC',null,'NULL')
;

-- 22/10/2010 7h58min23s AMST
-- Default comment for updating dictionary
UPDATE AD_Column SET DefaultValue='0',Updated=TO_TIMESTAMP('2010-10-22 07:58:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1103000
;

-- 22/10/2010 7h58min26s AMST
-- Default comment for updating dictionary
insert into t_alter_column values('c_orderline','lbr_PriceEnteredBR','NUMERIC',null,'0')
;

-- 22/10/2010 7h58min56s AMST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2010-10-22 07:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1103001
;

-- 22/10/2010 7h59min3s AMST
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=103,Updated=TO_TIMESTAMP('2010-10-22 07:59:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1103000
;

-- 22/10/2010 7h59min7s AMST
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=103, IsReadOnly='Y',Updated=TO_TIMESTAMP('2010-10-22 07:59:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1103001
;

UPDATE AD_SysConfig SET Value='360-trunk/031-FR_3168718.sql' WHERE AD_SysConfig_ID=1100006;
