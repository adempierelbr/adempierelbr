-- 11/02/2008 11h24min57s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000254,'lbr_ProductSource',TO_TIMESTAMP('2008-02-11 11:24:57','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Product Source','LBRA','Defines the Product Source','Y','Product Source','Product Source',TO_TIMESTAMP('2008-02-11 11:24:57','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 11/02/2008 11h24min57s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000254 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 11/02/2008 11h26min0s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Reference (AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,ValidationType) VALUES (0,1000031,TO_TIMESTAMP('2008-02-11 11:26:00','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','lbr_ProductSource',TO_TIMESTAMP('2008-02-11 11:26:00','YYYY-MM-DD HH24:MI:SS'),100,0,'L')
;

-- 11/02/2008 11h26min0s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1000031 AND EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Reference_ID!=t.AD_Reference_ID)
;

-- 11/02/2008 11h26min12s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,Value) VALUES (0,1000057,1000031,TO_TIMESTAMP('2008-02-11 11:26:12','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Domestic',TO_TIMESTAMP('2008-02-11 11:26:12','YYYY-MM-DD HH24:MI:SS'),100,0,'0')
;

-- 11/02/2008 11h26min12s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000057 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- 11/02/2008 11h26min26s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,Value) VALUES (0,1000058,1000031,TO_TIMESTAMP('2008-02-11 11:26:25','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Imported',TO_TIMESTAMP('2008-02-11 11:26:25','YYYY-MM-DD HH24:MI:SS'),100,0,'1')
;

-- 11/02/2008 11h26min26s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000058 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- 11/02/2008 11h27min11s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,Value) VALUES (0,1000059,1000031,TO_TIMESTAMP('2008-02-11 11:27:11','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Imported - Acquired from a domestic distributor',TO_TIMESTAMP('2008-02-11 11:27:11','YYYY-MM-DD HH24:MI:SS'),100,0,'2')
;

-- 11/02/2008 11h27min11s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000059 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- 11/02/2008 11h28min12s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000031,1000254,17,208,'lbr_ProductSource',TO_TIMESTAMP('2008-02-11 11:28:12','YYYY-MM-DD HH24:MI:SS'),100,'''0''','Defines the Product Source','LBRA',1,'Defines the Product Source','Y','N','N','N','N','Y','N','N','N','N','Y','Product Source',0,TO_TIMESTAMP('2008-02-11 11:28:12','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000653)
;

-- 11/02/2008 11h28min12s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000653 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 11/02/2008 11h28min13s BRST
-- Default comment for updating dictionary
ALTER TABLE M_Product ADD COLUMN lbr_ProductSource CHAR(1) DEFAULT '0' NOT NULL
;

-- 11/02/2008 11h28min41s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000653,0,1000449,180,TO_TIMESTAMP('2008-02-11 11:28:41','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Product Source',1,'LBRA','Defines the Product Source','Y','Y','Y','N','N','N','N','N','Product Source',TO_TIMESTAMP('2008-02-11 11:28:41','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 11/02/2008 11h28min41s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000449 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 11/02/2008 11h29min42s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=52015
;

-- 11/02/2008 11h29min42s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=52016
;

-- 11/02/2008 11h29min42s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=1000449
;

-- 11/02/2008 11h29min42s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=1000138
;

-- 11/02/2008 11h29min42s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=540,IsDisplayed='Y' WHERE AD_Field_ID=1000188
;

-- 11/02/2008 11h29min42s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=550,IsDisplayed='Y' WHERE AD_Field_ID=1000113
;

-- 11/02/2008 11h29min42s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=560,IsDisplayed='Y' WHERE AD_Field_ID=1000112
;

-- 11/02/2008 11h29min42s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=570,IsDisplayed='Y' WHERE AD_Field_ID=1000428
;

-- 11/02/2008 11h29min42s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=580,IsDisplayed='Y' WHERE AD_Field_ID=1000429
;

-- 11/02/2008 11h31min13s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000000,Updated=TO_TIMESTAMP('2008-02-11 11:31:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000449
;