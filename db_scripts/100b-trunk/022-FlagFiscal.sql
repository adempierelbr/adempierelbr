-- 06/02/2008 8h52min27s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000259,'lbr_HasFiscalDocument',TO_TIMESTAMP('2008-02-06 08:52:26','YYYY-MM-DD HH24:MI:SS'),100,'Identifies if has fiscal document','LBRA','Identifies if has fiscal document','Y','Has Fiscal Document','Has Fiscal Document',TO_TIMESTAMP('2008-02-06 08:52:26','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 06/02/2008 8h52min27s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000259 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 06/02/2008 8h53min26s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,1000259,20,217,'lbr_HasFiscalDocument',TO_TIMESTAMP('2008-02-06 08:53:25','YYYY-MM-DD HH24:MI:SS'),100,'''Y''','Identifies if has fiscal document','LBRA',1,'Identifies if has fiscal document','Y','N','N','N','N','Y','N','N','N','N','Y','Has Fiscal Document',0,TO_TIMESTAMP('2008-02-06 08:53:25','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000682)
;

-- 06/02/2008 8h53min26s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000682 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 06/02/2008 8h53min28s BRST
-- Default comment for updating dictionary
ALTER TABLE C_DocType ADD COLUMN lbr_HasFiscalDocument CHAR(1) DEFAULT 'Y' CHECK (lbr_HasFiscalDocument IN ('Y','N')) NOT NULL
;

-- 06/02/2008 8h56min2s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000260,'lbr_IsOwnDocument',TO_TIMESTAMP('2008-02-06 08:56:02','YYYY-MM-DD HH24:MI:SS'),100,'Identifies if this document is own by the organization','LBRA','Identifies if this document is own by the organization','Y','Is Own Document','Is Own Document',TO_TIMESTAMP('2008-02-06 08:56:02','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 06/02/2008 8h56min2s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000260 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 06/02/2008 8h57min12s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,1000260,20,217,'lbr_IsOwnDocument',TO_TIMESTAMP('2008-02-06 08:57:12','YYYY-MM-DD HH24:MI:SS'),100,'''Y''','Identifies if this document is own by the organization','LBRA',1,'Identifies if this document is own by the organization','Y','N','N','N','N','Y','N','N','N','N','Y','Is Own Document',0,TO_TIMESTAMP('2008-02-06 08:57:12','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000683)
;

-- 06/02/2008 8h57min13s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000683 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 06/02/2008 8h57min14s BRST
-- Default comment for updating dictionary
ALTER TABLE C_DocType ADD COLUMN lbr_IsOwnDocument CHAR(1) DEFAULT 'Y' CHECK (lbr_IsOwnDocument IN ('Y','N')) NOT NULL
;

-- 06/02/2008 8h57min36s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET DefaultValue='''Y''',Updated=TO_TIMESTAMP('2008-02-06 08:57:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000024
;

-- 06/02/2008 8h57min36s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='IE Exempt', Description='Business Partner is IE Exempt', Help='Business Partner is IE Exempt' WHERE AD_Column_ID=1000024 AND IsCentrallyMaintained='Y'
;

-- 06/02/2008 8h57min37s BRST
-- Default comment for updating dictionary
insert into t_alter_column values('c_bpartner','lbr_IsIEExempt','CHAR(1)',null,'Y')
;

-- 06/02/2008 8h57min37s BRST
-- Default comment for updating dictionary
UPDATE C_BPartner SET lbr_IsIEExempt='Y' WHERE lbr_IsIEExempt IS NULL
;

-- 06/02/2008 8h58min29s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000682,0,1000474,167,TO_TIMESTAMP('2008-02-06 08:58:28','YYYY-MM-DD HH24:MI:SS'),100,'Identifies if has fiscal document',1,'LBRA','Identifies if has fiscal document','Y','Y','Y','N','N','N','N','N','Has Fiscal Document',TO_TIMESTAMP('2008-02-06 08:58:28','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 06/02/2008 8h58min29s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000474 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/02/2008 8h58min29s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (15806,0,1000475,167,TO_TIMESTAMP('2008-02-06 08:58:29','YYYY-MM-DD HH24:MI:SS'),100,'Index the document for the internal search engine',1,'D','For cross document search, the document can be indexed for faster search (Container, Document Type, Request Type)','Y','Y','Y','N','N','N','N','N','Indexed',TO_TIMESTAMP('2008-02-06 08:58:29','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 06/02/2008 8h58min29s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000475 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/02/2008 8h58min29s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000683,0,1000476,167,TO_TIMESTAMP('2008-02-06 08:58:29','YYYY-MM-DD HH24:MI:SS'),100,'Identifies if this document is own by the organization',1,'LBRA','Identifies if this document is own by the organization','Y','Y','Y','N','N','N','N','N','Is Own Document',TO_TIMESTAMP('2008-02-06 08:58:29','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 06/02/2008 8h58min29s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000476 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/02/2008 8h58min43s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000475
;

-- 06/02/2008 8h58min43s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1000474
;

-- 06/02/2008 8h58min44s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1000476
;

-- 06/02/2008 8h59min35s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''API'' | @DocBaseType@=''ARI''', AD_FieldGroup_ID=1000000,Updated=TO_TIMESTAMP('2008-02-06 08:59:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000474
;

-- 06/02/2008 8h59min52s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2008-02-06 08:59:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000476
;

-- 06/02/2008 9h17min14s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''API'' | @DocBaseType@=''ARI'' & @lbr_HasFiscalDocument@=''Y''',Updated=TO_TIMESTAMP('2008-02-06 09:17:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000476
;

