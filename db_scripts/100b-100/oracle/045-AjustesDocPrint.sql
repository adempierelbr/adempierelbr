-- 26/02/2008 17h25min33s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000277,'lbr_SubDoc2_ID',TO_DATE('2008-02-26 17:25:32','YYYY-MM-DD HH24:MI:SS'),100,'Identifies the ID of the SubDocument','LBRA','Identifies the ID of the SubDocument','Y','SubDoc_ID (2)','SubDoc_ID (2)',TO_DATE('2008-02-26 17:25:32','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 26/02/2008 17h25min33s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000277 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 26/02/2008 17h26min3s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000002,1000277,30,1000004,1000000,'lbr_SubDoc2_ID',TO_DATE('2008-02-26 17:26:00','YYYY-MM-DD HH24:MI:SS'),100,'Identifies the ID of the SubDocument','LBRA',22,'Identifies the ID of the SubDocument','Y','N','N','N','N','N','N','N','N','N','Y','SubDoc_ID (2)',0,TO_DATE('2008-02-26 17:26:00','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000707)
;

-- 26/02/2008 17h26min3s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000707 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 26/02/2008 17h26min5s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_DocPrint ADD lbr_SubDoc2_ID NUMBER(10)
;

-- 26/02/2008 17h26min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000278,'lbr_SubDoc2Row',TO_DATE('2008-02-26 17:26:42','YYYY-MM-DD HH24:MI:SS'),100,'Identifies the Starter Row of the SubDocument','LBRA','Identifies the Starter Row of the SubDocument','Y','SubDoc Row (2)','SubDoc Row (2)',TO_DATE('2008-02-26 17:26:42','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 26/02/2008 17h26min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000278 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 26/02/2008 17h27min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000278,11,1000004,'lbr_SubDoc2Row',TO_DATE('2008-02-26 17:27:40','YYYY-MM-DD HH24:MI:SS'),100,'Identifies the Starter Row of the SubDocument','LBRA',10,'Identifies the Starter Row of the SubDocument','Y','N','N','N','N','N','N','N','N','N','Y','SubDoc Row (2)',0,TO_DATE('2008-02-26 17:27:40','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000708)
;

-- 26/02/2008 17h27min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000708 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 26/02/2008 17h27min43s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_DocPrint ADD lbr_SubDoc2Row NUMBER(10)
;

-- 26/02/2008 17h29min4s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000708,0,1000001,TO_DATE('2008-02-26 17:28:55','YYYY-MM-DD HH24:MI:SS'),100,'Identifies the Starter Row of the SubDocument',10,'LBRA','Identifies the Starter Row of the SubDocument','Y','Y','Y','N','N','N','N','N','SubDoc Row (2)',TO_DATE('2008-02-26 17:28:55','YYYY-MM-DD HH24:MI:SS'),0,100,1000626)
;

-- 26/02/2008 17h29min4s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000626 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 26/02/2008 17h29min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000707,0,1000001,TO_DATE('2008-02-26 17:29:04','YYYY-MM-DD HH24:MI:SS'),100,'Identifies the ID of the SubDocument',22,'LBRA','Identifies the ID of the SubDocument','Y','Y','Y','N','N','N','N','N','SubDoc_ID (2)',TO_DATE('2008-02-26 17:29:04','YYYY-MM-DD HH24:MI:SS'),0,100,1000627)
;

-- 26/02/2008 17h29min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000627 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 26/02/2008 17h29min18s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1000031
;

-- 26/02/2008 17h29min18s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1000043
;

-- 26/02/2008 17h29min18s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1000042
;

-- 26/02/2008 17h29min18s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1000627
;

-- 26/02/2008 17h29min18s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1000626
;

-- 26/02/2008 17h29min25s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2008-02-26 17:29:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000626
;

-- 26/02/2008 17h29min50s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=104,Updated=TO_DATE('2008-02-26 17:29:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000043
;

-- 26/02/2008 17h29min56s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=104,Updated=TO_DATE('2008-02-26 17:29:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000042
;

-- 26/02/2008 17h30min2s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@lbr_HasSubDoc@=''Y''', AD_FieldGroup_ID=104,Updated=TO_DATE('2008-02-26 17:30:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000627
;

-- 26/02/2008 17h30min6s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@lbr_HasSubDoc@=''Y''', AD_FieldGroup_ID=104,Updated=TO_DATE('2008-02-26 17:30:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000626
;

exit
