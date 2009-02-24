-- 11/02/2008 10h26min45s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000251,'lbr_WithholdFrequency',TO_TIMESTAMP('2008-02-11 10:26:45','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Withhold Frequency','LBRA','Defines the Withhold Frequency','Y','Withhold Frequency','Withhold Frequency',TO_TIMESTAMP('2008-02-11 10:26:45','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 11/02/2008 10h26min45s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000251 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 11/02/2008 10h28min12s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Reference (AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,ValidationType) VALUES (0,1000028,TO_TIMESTAMP('2008-02-11 10:28:12','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','lbr_WithholdFrequency',TO_TIMESTAMP('2008-02-11 10:28:12','YYYY-MM-DD HH24:MI:SS'),100,0,'L')
;

-- 11/02/2008 10h28min12s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1000028 AND EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Reference_ID!=t.AD_Reference_ID)
;

-- 11/02/2008 10h28min20s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,Value) VALUES (0,1000044,1000028,TO_TIMESTAMP('2008-02-11 10:28:20','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Monthly',TO_TIMESTAMP('2008-02-11 10:28:20','YYYY-MM-DD HH24:MI:SS'),100,0,'M')
;

-- 11/02/2008 10h28min21s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000044 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- 11/02/2008 10h28min54s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000028,1000251,17,1000025,'lbr_WithholdFrequency',TO_TIMESTAMP('2008-02-11 10:28:54','YYYY-MM-DD HH24:MI:SS'),100,'''M''','Defines the Withhold Frequency','LBRA',1,'Defines the Withhold Frequency','Y','N','N','N','N','Y','N','N','N','N','Y','Withhold Frequency',0,TO_TIMESTAMP('2008-02-11 10:28:54','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000631)
;

-- 11/02/2008 10h28min54s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000631 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 11/02/2008 10h28min55s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_TaxName ADD lbr_WithholdFrequency CHAR(1) DEFAULT 'M' NOT NULL
;

-- 11/02/2008 10h29min19s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000631,0,1000431,1000018,TO_TIMESTAMP('2008-02-11 10:29:19','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Withhold Frequency',1,'LBRA','Defines the Withhold Frequency','Y','Y','Y','N','N','N','N','N','Withhold Frequency',TO_TIMESTAMP('2008-02-11 10:29:19','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 11/02/2008 10h29min19s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000431 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 11/02/2008 10h29min56s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2008-02-11 10:29:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000266
;

-- 11/02/2008 10h30min2s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@lbr_TaxType@=''S'' & @HasWithHold@=''Y''', IsSameLine='Y',Updated=TO_TIMESTAMP('2008-02-11 10:30:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000431
;

-- 11/02/2008 10h30min9s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=113,Updated=TO_TIMESTAMP('2008-02-11 10:30:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000431
;

exit
