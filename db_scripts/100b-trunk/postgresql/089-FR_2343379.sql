-- 25/11/2008 10h56min33s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000997,1000078,0,18,1000002,228,1000004,'LBR_DocPrint_ID',TO_TIMESTAMP('2008-11-25 10:56:33','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_DocPrint','LBRA',22,'Primary key table LBR_DocPrint','Y','N','N','N','N','N','N','N','N','N','Y','DocPrint',0,TO_TIMESTAMP('2008-11-25 10:56:33','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 25/11/2008 10h56min33s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000997 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 25/11/2008 10h56min35s BRST
-- Default comment for updating dictionary
ALTER TABLE AD_OrgInfo ADD COLUMN LBR_DocPrint_ID NUMERIC(10)
;

-- 25/11/2008 10h56min54s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1000997,1000975,0,170,TO_TIMESTAMP('2008-11-25 10:56:53','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_DocPrint',22,'LBRA','Primary key table LBR_DocPrint','Y','Y','Y','N','N','N','N','N','DocPrint',TO_TIMESTAMP('2008-11-25 10:56:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/11/2008 10h58min31s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=8729
;

-- 25/11/2008 10h58min31s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=8728
;

-- 25/11/2008 10h58min31s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1000975
;

-- 25/11/2008 10h58min43s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2008-11-25 10:58:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000975
;

-- TRADUCAO
INSERT INTO adempiere.ad_field_trl(ad_field_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, istranslated)
  VALUES(1000975, 'pt_BR', 0, 0, 'Y', '2008-11-25 10:56:53.0', 100, '2008-11-25 10:59:15.294', 100, 'Documento Nota Fiscal', 'Define o Documento base para Impressão da Nota Fiscal', 'Define o Documento base para Impressão da Nota Fiscal', 'Y');

