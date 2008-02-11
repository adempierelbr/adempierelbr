-- 11/02/2008 12h1min22s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000255,'lbr_HasFiscalDocument',TO_TIMESTAMP('2008-02-11 12:01:21','YYYY-MM-DD HH24:MI:SS'),100,'Identifies if the this document has fiscal document','LBRA','Identifies if the this document has fiscal document','Y','Has Fiscal Document','Has Fiscal Document',TO_TIMESTAMP('2008-02-11 12:01:21','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 11/02/2008 12h1min22s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000255 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 11/02/2008 12h2min38s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000256,'lbr_IsOwnDocument',TO_TIMESTAMP('2008-02-11 12:02:38','YYYY-MM-DD HH24:MI:SS'),100,'Identifies this is an own document','LBRA','Identifies this is an own document','Y','Is Own Document','Is Own Document',TO_TIMESTAMP('2008-02-11 12:02:38','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 11/02/2008 12h2min38s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000256 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 11/02/2008 12h3min38s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000255,20,217,'lbr_HasFiscalDocument',TO_TIMESTAMP('2008-02-11 12:03:38','YYYY-MM-DD HH24:MI:SS'),100,'''Y''','Identifies if the this document has fiscal document','LBRA',1,'Identifies if the this document has fiscal document','Y','N','N','N','N','Y','N','N','N','N','Y','Has Fiscal Document',0,TO_TIMESTAMP('2008-02-11 12:03:38','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000658)
;

-- 11/02/2008 12h3min38s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000658 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 11/02/2008 12h3min40s BRST
-- Default comment for updating dictionary
ALTER TABLE C_DocType ADD COLUMN lbr_HasFiscalDocument CHAR(1) DEFAULT 'Y' CHECK (lbr_HasFiscalDocument IN ('Y','N')) NOT NULL
;

-- 11/02/2008 12h4min22s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000256,20,217,'lbr_IsOwnDocument',TO_TIMESTAMP('2008-02-11 12:04:22','YYYY-MM-DD HH24:MI:SS'),100,'''Y''','Identifies this is an own document','LBRA',1,'Identifies this is an own document','Y','N','N','N','N','Y','N','N','N','N','Y','Is Own Document',0,TO_TIMESTAMP('2008-02-11 12:04:22','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000659)
;

-- 11/02/2008 12h4min22s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000659 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 11/02/2008 12h4min23s BRST
-- Default comment for updating dictionary
ALTER TABLE C_DocType ADD COLUMN lbr_IsOwnDocument CHAR(1) DEFAULT 'Y' CHECK (lbr_IsOwnDocument IN ('Y','N')) NOT NULL
;

-- 11/02/2008 12h5min42s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000658,0,1000458,167,TO_TIMESTAMP('2008-02-11 12:05:42','YYYY-MM-DD HH24:MI:SS'),100,'Identifies if the this document has fiscal document',1,'LBRA','Identifies if the this document has fiscal document','Y','Y','Y','N','N','N','N','N','Has Fiscal Document',TO_TIMESTAMP('2008-02-11 12:05:42','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 11/02/2008 12h5min42s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000458 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 11/02/2008 12h5min42s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (15806,0,1000459,167,TO_TIMESTAMP('2008-02-11 12:05:42','YYYY-MM-DD HH24:MI:SS'),100,'Index the document for the internal search engine',1,'D','For cross document search, the document can be indexed for faster search (Container, Document Type, Request Type)','Y','Y','Y','N','N','N','N','N','Indexed',TO_TIMESTAMP('2008-02-11 12:05:42','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 11/02/2008 12h5min42s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000459 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 11/02/2008 12h5min42s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000659,0,1000460,167,TO_TIMESTAMP('2008-02-11 12:05:42','YYYY-MM-DD HH24:MI:SS'),100,'Identifies this is an own document',1,'LBRA','Identifies this is an own document','Y','Y','Y','N','N','N','N','N','Is Own Document',TO_TIMESTAMP('2008-02-11 12:05:42','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 11/02/2008 12h5min42s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000460 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 11/02/2008 12h5min58s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000459
;

-- 11/02/2008 12h5min58s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1000458
;

-- 11/02/2008 12h5min58s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1000460
;

-- 11/02/2008 12h6min5s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2008-02-11 12:06:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000460
;

-- 11/02/2008 12h6min22s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''API'' | @DocBaseType@=''ARI''', AD_FieldGroup_ID=1000000,Updated=TO_TIMESTAMP('2008-02-11 12:06:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000458
;

-- 11/02/2008 12h7min44s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''API'' | @DocBaseType@=''ARI'' & @lbr_HasFiscalDocument@=''Y''',Updated=TO_TIMESTAMP('2008-02-11 12:07:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000460
;