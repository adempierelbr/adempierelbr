-- 15/02/2008 7h56min20s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Table (AD_Org_ID,AD_Table_ID,AccessLevel,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000034,'3','N',TO_TIMESTAMP('2008-02-15 07:56:17','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','Y','N','Y','N','N','N',0,'Nota Fiscal Tax','L','LBR_NFTax',TO_TIMESTAMP('2008-02-15 07:56:17','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 15/02/2008 7h56min20s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=1000034 AND EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Table_ID!=t.AD_Table_ID)
;

-- 15/02/2008 7h56min21s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Sequence (AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy,AD_Client_ID) VALUES (0,1000058,TO_TIMESTAMP('2008-02-15 07:56:21','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LBR_NFTax',1,'Y','N','Y','Y','LBR_NFTax','N',1000000,TO_TIMESTAMP('2008-02-15 07:56:21','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 15/02/2008 7h58min53s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000266,'LBR_NFTax_ID',TO_TIMESTAMP('2008-02-15 07:58:52','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Nota Fiscal Tax','LBRA','Primary key table LBR_NFTax','Y','Nota Fiscal Tax','Nota Fiscal Tax',TO_TIMESTAMP('2008-02-15 07:58:52','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 15/02/2008 7h58min53s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000266 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 15/02/2008 8h0min0s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000266,13,1000034,'LBR_NFTax_ID',TO_TIMESTAMP('2008-02-15 07:59:59','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Nota Fiscal Tax','LBRA',22,'Primary key table LBR_NFTax','Y','N','N','Y','Y','Y','N','N','N','N','N','Nota Fiscal Tax',0,TO_TIMESTAMP('2008-02-15 07:59:59','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000673)
;

-- 15/02/2008 8h0min0s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000673 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 15/02/2008 8h0min3s BRST
-- Default comment for updating dictionary
CREATE TABLE LBR_NFTax (LBR_NFTax_ID NUMERIC(10) NOT NULL, CONSTRAINT LBR_NFTax_Key PRIMARY KEY (LBR_NFTax_ID))
;

-- 15/02/2008 8h0min52s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,102,19,1000034,116,'AD_Client_ID',TO_TIMESTAMP('2008-02-15 08:00:51','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','LBRA',22,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','Y','N','N','N','N','N','Client',0,TO_TIMESTAMP('2008-02-15 08:00:51','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000674)
;

-- 15/02/2008 8h0min52s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000674 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 15/02/2008 8h0min53s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_NFTax ADD AD_Client_ID NUMERIC(10) NOT NULL
;

-- 15/02/2008 8h0min59s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET DefaultValue='@#AD_Client_ID@',Updated=TO_TIMESTAMP('2008-02-15 08:00:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000674
;

-- 15/02/2008 8h0min59s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Client', Description='Client/Tenant for this installation.', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.' WHERE AD_Column_ID=1000674 AND IsCentrallyMaintained='Y'
;

-- 15/02/2008 8h1min26s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,113,19,1000034,104,'AD_Org_ID',TO_TIMESTAMP('2008-02-15 08:01:25','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','LBRA',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','Y','N','N','N','N','N','Organization',0,TO_TIMESTAMP('2008-02-15 08:01:25','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000675)
;

-- 15/02/2008 8h1min26s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000675 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 15/02/2008 8h1min26s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_NFTax ADD AD_Org_ID NUMERIC(10) NOT NULL
;

-- 15/02/2008 8h1min34s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET DefaultValue='@#AD_Org_ID@',Updated=TO_TIMESTAMP('2008-02-15 08:01:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000675
;

-- 15/02/2008 8h1min34s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Organization', Description='Organizational entity within client', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.' WHERE AD_Column_ID=1000675 AND IsCentrallyMaintained='Y'
;

-- 15/02/2008 8h1min51s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,348,20,1000034,'IsActive',TO_TIMESTAMP('2008-02-15 08:01:50','YYYY-MM-DD HH24:MI:SS'),100,'''Y''','The record is active in the system','LBRA',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','Y','N','N','N','N','Y','Active',0,TO_TIMESTAMP('2008-02-15 08:01:50','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000676)
;

-- 15/02/2008 8h1min51s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000676 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 15/02/2008 8h1min52s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_NFTax ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- 15/02/2008 8h2min11s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,245,16,1000034,'Created',TO_TIMESTAMP('2008-02-15 08:02:10','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','LBRA',7,'The Created field indicates the date that this record was created.','Y','N','N','N','N','Y','N','N','N','N','N','Created',0,TO_TIMESTAMP('2008-02-15 08:02:10','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000677)
;

-- 15/02/2008 8h2min11s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000677 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 15/02/2008 8h2min12s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_NFTax ADD Created date NOT NULL
;

-- 15/02/2008 8h2min32s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,110,246,18,1000034,'CreatedBy',TO_TIMESTAMP('2008-02-15 08:02:31','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','LBRA',22,'The Created By field indicates the user who created this record.','Y','N','N','N','N','Y','N','N','N','N','N','Created By',0,TO_TIMESTAMP('2008-02-15 08:02:31','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000678)
;

-- 15/02/2008 8h2min32s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000678 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 15/02/2008 8h2min33s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_NFTax ADD CreatedBy NUMERIC(10) NOT NULL
;

-- 15/02/2008 8h2min59s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,607,16,1000034,'Updated',TO_TIMESTAMP('2008-02-15 08:02:55','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','LBRA',7,'The Updated field indicates the date that this record was updated.','Y','N','N','N','N','Y','N','N','N','N','N','Updated',0,TO_TIMESTAMP('2008-02-15 08:02:55','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000679)
;

-- 15/02/2008 8h2min59s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000679 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 15/02/2008 8h3min0s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_NFTax ADD Updated date NOT NULL
;

-- 15/02/2008 8h3min25s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,110,608,18,1000034,'UpdatedBy',TO_TIMESTAMP('2008-02-15 08:03:24','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','LBRA',22,'The Updated By field indicates the user who updated this record.','Y','N','N','N','N','Y','N','N','N','N','N','Updated By',0,TO_TIMESTAMP('2008-02-15 08:03:24','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000680)
;

-- 15/02/2008 8h3min25s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000680 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 15/02/2008 8h3min26s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_NFTax ADD UpdatedBy NUMERIC(10) NOT NULL
;

-- 15/02/2008 8h6min5s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000026,1000177,30,1000034,'LBR_NotaFiscal_ID',TO_TIMESTAMP('2008-02-15 08:06:04','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_NotaFiscal','LBRA',22,'Primary key table LBR_NotaFiscal','Y','N','N','N','N','Y','N','N','N','N','Y','Nota Fiscal',0,TO_TIMESTAMP('2008-02-15 08:06:04','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000681)
;

-- 15/02/2008 8h6min5s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000681 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 15/02/2008 8h6min6s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_NFTax ADD LBR_NotaFiscal_ID NUMERIC(10) NOT NULL
;

-- 15/02/2008 8h7min6s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000032,1000257,18,1000034,'LBR_TaxGroup_ID',TO_TIMESTAMP('2008-02-15 08:07:05','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Tax Group','LBRA',22,'Primary key table LBR_TaxGroup','Y','N','N','N','N','Y','N','N','N','N','Y','Tax Group',0,TO_TIMESTAMP('2008-02-15 08:07:05','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000682)
;

-- 15/02/2008 8h7min6s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000682 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 15/02/2008 8h7min8s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_NFTax ADD LBR_TaxGroup_ID NUMERIC(10) NOT NULL
;

-- 15/02/2008 8h7min34s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000175,12,1000034,'lbr_TaxBaseAmt',TO_TIMESTAMP('2008-02-15 08:07:33','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Tax Base Amount','LBRA',22,'Defines the Tax Base Amount','Y','N','N','N','N','Y','N','N','N','N','Y','Tax Base Amount',0,TO_TIMESTAMP('2008-02-15 08:07:33','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000683)
;

-- 15/02/2008 8h7min34s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000683 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 15/02/2008 8h7min35s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_NFTax ADD lbr_TaxBaseAmt NUMERIC NOT NULL
;

-- 15/02/2008 8h8min37s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000130,12,1000034,'lbr_TaxAmt',TO_TIMESTAMP('2008-02-15 08:08:36','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Tax Amount','LBRA',22,'Defines the Tax Amount','Y','N','N','N','N','Y','N','N','N','N','Y','Tax Amount',0,TO_TIMESTAMP('2008-02-15 08:08:36','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000684)
;

-- 15/02/2008 8h8min37s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000684 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 15/02/2008 8h8min38s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_NFTax ADD lbr_TaxAmt NUMERIC NOT NULL
;

-- 15/02/2008 8h10min54s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Table (AD_Org_ID,AD_Table_ID,AccessLevel,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000035,'3','N',TO_TIMESTAMP('2008-02-15 08:10:53','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','Y','N','Y','N','N','N',0,'Nota Fiscal Line Tax','L','LBR_NFLineTax',TO_TIMESTAMP('2008-02-15 08:10:53','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 15/02/2008 8h10min54s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=1000035 AND EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Table_ID!=t.AD_Table_ID)
;

-- 15/02/2008 8h10min54s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Sequence (AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy,AD_Client_ID) VALUES (0,1000059,TO_TIMESTAMP('2008-02-15 08:10:54','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LBR_NFLineTax',1,'Y','N','Y','Y','LBR_NFLineTax','N',1000000,TO_TIMESTAMP('2008-02-15 08:10:54','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 15/02/2008 8h11min54s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000267,'LBR_NFLineTax_ID',TO_TIMESTAMP('2008-02-15 08:11:53','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Nota Fiscal Line Tax','LBRA','Primary key table LBR_NFLineTax','Y','Nota Fiscal Line Tax','Nota Fiscal Line Tax',TO_TIMESTAMP('2008-02-15 08:11:53','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 15/02/2008 8h11min54s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000267 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 15/02/2008 8h12min55s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000267,13,1000035,'LBR_NFLineTax_ID',TO_TIMESTAMP('2008-02-15 08:12:54','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Nota Fiscal Line Tax','LBRA',22,'Primary key table LBR_NFLineTax','Y','N','N','Y','Y','Y','N','N','N','N','N','Nota Fiscal Line Tax',0,TO_TIMESTAMP('2008-02-15 08:12:54','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000685)
;

-- 15/02/2008 8h12min55s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000685 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 15/02/2008 8h12min56s BRST
-- Default comment for updating dictionary
CREATE TABLE LBR_NFLineTax (LBR_NFLineTax_ID NUMERIC(10) NOT NULL, CONSTRAINT LBR_NFLineTax_Key PRIMARY KEY (LBR_NFLineTax_ID))
;

-- 15/02/2008 8h13min18s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,102,19,1000035,116,'AD_Client_ID',TO_TIMESTAMP('2008-02-15 08:13:17','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','LBRA',22,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','Y','N','N','N','N','N','Client',0,TO_TIMESTAMP('2008-02-15 08:13:17','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000686)
;

-- 15/02/2008 8h13min18s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000686 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 15/02/2008 8h13min19s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_NFLineTax ADD AD_Client_ID NUMERIC(10) NOT NULL
;

-- 15/02/2008 8h13min26s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET DefaultValue='@#AD_Client_ID@',Updated=TO_TIMESTAMP('2008-02-15 08:13:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000686
;

-- 15/02/2008 8h13min26s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Client', Description='Client/Tenant for this installation.', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.' WHERE AD_Column_ID=1000686 AND IsCentrallyMaintained='Y'
;

-- 15/02/2008 8h13min54s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,113,19,1000035,104,'AD_Org_ID',TO_TIMESTAMP('2008-02-15 08:13:53','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','LBRA',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','Y','N','N','N','N','N','Organization',0,TO_TIMESTAMP('2008-02-15 08:13:53','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000687)
;

-- 15/02/2008 8h13min54s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000687 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 15/02/2008 8h13min55s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_NFLineTax ADD AD_Org_ID NUMERIC(10) NOT NULL
;

-- 15/02/2008 8h14min3s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET DefaultValue='@#AD_Org_ID@',Updated=TO_TIMESTAMP('2008-02-15 08:14:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000687
;

-- 15/02/2008 8h14min3s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Organization', Description='Organizational entity within client', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.' WHERE AD_Column_ID=1000687 AND IsCentrallyMaintained='Y'
;

-- 15/02/2008 8h14min18s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,348,20,1000035,'IsActive',TO_TIMESTAMP('2008-02-15 08:14:18','YYYY-MM-DD HH24:MI:SS'),100,'''Y''','The record is active in the system','LBRA',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','Y','N','N','N','N','Y','Active',0,TO_TIMESTAMP('2008-02-15 08:14:18','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000688)
;

-- 15/02/2008 8h14min18s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000688 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 15/02/2008 8h14min20s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_NFLineTax ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- 15/02/2008 8h14min38s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,245,16,1000035,'Created',TO_TIMESTAMP('2008-02-15 08:14:37','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','LBRA',7,'The Created field indicates the date that this record was created.','Y','N','N','N','N','Y','N','N','N','N','N','Created',0,TO_TIMESTAMP('2008-02-15 08:14:37','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000689)
;

-- 15/02/2008 8h14min38s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000689 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 15/02/2008 8h14min39s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_NFLineTax ADD Created date NOT NULL
;

-- 15/02/2008 8h14min59s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,110,246,18,1000035,'CreatedBy',TO_TIMESTAMP('2008-02-15 08:14:58','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','LBRA',22,'The Created By field indicates the user who created this record.','Y','N','N','N','N','Y','N','N','N','N','N','Created By',0,TO_TIMESTAMP('2008-02-15 08:14:58','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000690)
;

-- 15/02/2008 8h14min59s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000690 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 15/02/2008 8h15min0s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_NFLineTax ADD CreatedBy NUMERIC(10) NOT NULL
;

-- 15/02/2008 8h15min22s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,607,16,1000035,'Updated',TO_TIMESTAMP('2008-02-15 08:15:21','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','LBRA',7,'The Updated field indicates the date that this record was updated.','Y','N','N','N','N','Y','N','N','N','N','N','Updated',0,TO_TIMESTAMP('2008-02-15 08:15:21','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000691)
;

-- 15/02/2008 8h15min22s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000691 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 15/02/2008 8h15min23s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_NFLineTax ADD Updated date NOT NULL
;

-- 15/02/2008 8h15min41s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,110,608,18,1000035,'UpdatedBy',TO_TIMESTAMP('2008-02-15 08:15:41','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','LBRA',22,'The Updated By field indicates the user who updated this record.','Y','N','N','N','N','Y','N','N','N','N','N','Updated By',0,TO_TIMESTAMP('2008-02-15 08:15:41','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000692)
;

-- 15/02/2008 8h15min41s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000692 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 15/02/2008 8h15min42s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_NFLineTax ADD UpdatedBy NUMERIC(10) NOT NULL
;

-- 15/02/2008 8h17min41s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Reference (AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,AD_Client_ID,ValidationType) VALUES (0,1000033,TO_TIMESTAMP('2008-02-15 08:17:40','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','LBR_NotaFiscalLine',TO_TIMESTAMP('2008-02-15 08:17:40','YYYY-MM-DD HH24:MI:SS'),100,0,'T')
;

-- 15/02/2008 8h17min41s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1000033 AND EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Reference_ID!=t.AD_Reference_ID)
;

-- 15/02/2008 8h18min38s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_Table (AD_Display,AD_Key,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy,AD_Client_ID,AD_Reference_ID,AD_Table_ID) VALUES (1000588,1000548,0,TO_TIMESTAMP('2008-02-15 08:18:38','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Y',TO_TIMESTAMP('2008-02-15 08:18:38','YYYY-MM-DD HH24:MI:SS'),100,0,1000033,1000028)
;

-- 15/02/2008 8h19min15s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000033,1000219,30,1000035,'LBR_NotaFiscalLine_ID',TO_TIMESTAMP('2008-02-15 08:19:14','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_NotaFiscalLine','LBRA',22,'Primary key table LBR_NotaFiscalLine','Y','N','N','N','N','Y','N','N','N','N','Y','Nota Fiscal Line',0,TO_TIMESTAMP('2008-02-15 08:19:14','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000693)
;

-- 15/02/2008 8h19min15s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000693 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 15/02/2008 8h19min16s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_NFLineTax ADD LBR_NotaFiscalLine_ID NUMERIC(10) NOT NULL
;

-- 15/02/2008 8h21min42s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000032,1000257,18,1000035,'LBR_TaxGroup_ID',TO_TIMESTAMP('2008-02-15 08:21:41','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Tax Group','LBRA',22,'Primary key table LBR_TaxGroup','Y','N','N','N','N','Y','N','N','N','N','Y','Tax Group',0,TO_TIMESTAMP('2008-02-15 08:21:41','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000694)
;

-- 15/02/2008 8h21min42s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000694 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 15/02/2008 8h21min42s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_NFLineTax ADD LBR_TaxGroup_ID NUMERIC(10) NOT NULL
;

-- 15/02/2008 8h22min11s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000175,12,1000035,'lbr_TaxBaseAmt',TO_TIMESTAMP('2008-02-15 08:22:10','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Tax Base Amount','LBRA',22,'Defines the Tax Base Amount','Y','N','N','N','N','Y','N','N','N','N','Y','Tax Base Amount',0,TO_TIMESTAMP('2008-02-15 08:22:10','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000695)
;

-- 15/02/2008 8h22min11s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000695 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 15/02/2008 8h22min12s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_NFLineTax ADD lbr_TaxBaseAmt NUMERIC NOT NULL
;

-- 15/02/2008 8h22min32s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000130,12,1000035,'lbr_TaxAmt',TO_TIMESTAMP('2008-02-15 08:22:30','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Tax Amount','LBRA',22,'Defines the Tax Amount','Y','N','N','N','N','Y','N','N','N','N','Y','Tax Amount',0,TO_TIMESTAMP('2008-02-15 08:22:30','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000696)
;

-- 15/02/2008 8h22min32s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000696 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 15/02/2008 8h22min34s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_NFLineTax ADD lbr_TaxAmt NUMERIC NOT NULL
;

-- 15/02/2008 8h33min26s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000026,1000177,30,318,'LBR_NotaFiscal_ID',TO_TIMESTAMP('2008-02-15 08:33:25','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_NotaFiscal','LBRA',22,'Primary key table LBR_NotaFiscal','Y','N','N','N','N','N','N','N','N','N','Y','Nota Fiscal',0,TO_TIMESTAMP('2008-02-15 08:33:25','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000698)
;

-- 15/02/2008 8h33min26s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000698 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 15/02/2008 8h33min33s BRST
-- Default comment for updating dictionary
ALTER TABLE C_Invoice ADD LBR_NotaFiscal_ID NUMERIC(10)
;

-- 15/02/2008 8h34min1s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000698,0,263,TO_TIMESTAMP('2008-02-15 08:34:00','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_NotaFiscal',22,'LBRA','Primary key table LBR_NotaFiscal','Y','Y','Y','N','N','N','N','N','Nota Fiscal',TO_TIMESTAMP('2008-02-15 08:34:00','YYYY-MM-DD HH24:MI:SS'),0,100,1000474)
;

-- 15/02/2008 8h34min1s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000474 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 15/02/2008 8h34min2s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (52007,0,263,TO_TIMESTAMP('2008-02-15 08:34:01','YYYY-MM-DD HH24:MI:SS'),100,'Return Material Authorization',22,'D','A Return Material Authorization may be required to accept returns and to create Credit Memos','Y','Y','Y','N','N','N','N','N','RMA',TO_TIMESTAMP('2008-02-15 08:34:01','YYYY-MM-DD HH24:MI:SS'),0,100,1000475)
;

-- 15/02/2008 8h34min2s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000475 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000475
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1000290
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1000474
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=2954
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=6565
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=2958
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=2776
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=2766
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=2767
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=2765
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=2961
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=2770
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=8648
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=2763
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=3273
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=2953
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=2956
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=3112
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=2774
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=2775
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=2764
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=2768
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=6935
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=7794
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=7795
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=2786
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=2780
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=2778
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=2771
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=8657
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=10485
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=6564
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=2777
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=3663
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=3899
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=13700
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=53257
;

-- 15/02/2008 8h35min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=53258
;

-- 15/02/2008 8h35min27s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsReadOnly='Y', IsSameLine='Y',Updated=TO_TIMESTAMP('2008-02-15 08:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000474
;

-- 15/02/2008 8h35min39s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (53247,0,290,TO_TIMESTAMP('2008-02-15 08:35:38','YYYY-MM-DD HH24:MI:SS'),100,7,'D','Y','Y','Y','N','N','N','N','N','Dunning Grace',TO_TIMESTAMP('2008-02-15 08:35:38','YYYY-MM-DD HH24:MI:SS'),0,100,1000476)
;

-- 15/02/2008 8h35min39s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000476 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 15/02/2008 8h35min41s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (53248,0,290,TO_TIMESTAMP('2008-02-15 08:35:39','YYYY-MM-DD HH24:MI:SS'),100,22,'D','Y','Y','Y','N','N','N','N','N','Dunning Level',TO_TIMESTAMP('2008-02-15 08:35:39','YYYY-MM-DD HH24:MI:SS'),0,100,1000477)
;

-- 15/02/2008 8h35min41s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000477 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 15/02/2008 8h35min41s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000698,0,290,TO_TIMESTAMP('2008-02-15 08:35:41','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_NotaFiscal',22,'LBRA','Primary key table LBR_NotaFiscal','Y','Y','Y','N','N','N','N','N','Nota Fiscal',TO_TIMESTAMP('2008-02-15 08:35:41','YYYY-MM-DD HH24:MI:SS'),0,100,1000478)
;

-- 15/02/2008 8h35min41s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000478 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 15/02/2008 8h35min42s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (52007,0,290,TO_TIMESTAMP('2008-02-15 08:35:41','YYYY-MM-DD HH24:MI:SS'),100,'Return Material Authorization',22,'D','A Return Material Authorization may be required to accept returns and to create Credit Memos','Y','Y','Y','N','N','N','N','N','RMA',TO_TIMESTAMP('2008-02-15 08:35:41','YYYY-MM-DD HH24:MI:SS'),0,100,1000479)
;

-- 15/02/2008 8h35min42s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000479 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000476
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000477
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000479
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1000296
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1000478
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=3344
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=3348
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=3333
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=3325
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=3326
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=3324
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=3350
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=3328
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=8649
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=3322
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=3355
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=3354
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=3346
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=3353
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=3331
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=4246
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=4247
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=3332
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=3323
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=3327
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=6936
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=7796
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=7797
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=3343
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=3337
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=3335
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=3329
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=10486
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=6532
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=3334
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=3670
;

-- 15/02/2008 8h36min25s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=3900
;

-- 15/02/2008 8h36min35s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsReadOnly='Y', IsSameLine='Y',Updated=TO_TIMESTAMP('2008-02-15 08:36:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000478
;

-- 15/02/2008 9h13min19s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,Value) VALUES (0,1000060,183,TO_TIMESTAMP('2008-02-15 09:13:18','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Nota Fiscal Brasil',TO_TIMESTAMP('2008-02-15 09:13:18','YYYY-MM-DD HH24:MI:SS'),100,0,'NFB')
;

-- 15/02/2008 9h13min19s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000060 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- 15/02/2008 15h36min1s BRST
-- Default comment for updating dictionary
UPDATE AD_Table SET AD_Window_ID=1000015,Updated=TO_TIMESTAMP('2008-02-15 15:36:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1000034
;

-- 15/02/2008 15h36min7s BRST
-- Default comment for updating dictionary
UPDATE AD_Table SET AD_Window_ID=1000015,Updated=TO_TIMESTAMP('2008-02-15 15:36:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1000035
;


-- 15/02/2008 15h38min9s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Tab (AD_Column_ID,AD_Org_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy,AD_Client_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID) VALUES (1000681,0,TO_TIMESTAMP('2008-02-15 15:38:01','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','N','Y','N','N','N','Y','N','N','N','Nota Fiscal Tax','N',30,1,TO_TIMESTAMP('2008-02-15 15:38:01','YYYY-MM-DD HH24:MI:SS'),100,0,1000026,1000034,1000015)
;

-- 15/02/2008 15h38min9s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, Description,Help,Name,CommitWarning, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.Description,t.Help,t.Name,t.CommitWarning, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1000026 AND EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Tab_ID!=t.AD_Tab_ID)
;

-- 15/02/2008 15h38min15s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000676,0,1000026,TO_TIMESTAMP('2008-02-15 15:38:13','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'LBRA','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_TIMESTAMP('2008-02-15 15:38:13','YYYY-MM-DD HH24:MI:SS'),0,100,1000480)
;

-- 15/02/2008 15h38min15s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000480 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 15/02/2008 15h38min16s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000674,0,1000026,TO_TIMESTAMP('2008-02-15 15:38:15','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'LBRA','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_TIMESTAMP('2008-02-15 15:38:15','YYYY-MM-DD HH24:MI:SS'),0,100,1000481)
;

-- 15/02/2008 15h38min16s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000481 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 15/02/2008 15h38min18s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000681,0,1000026,TO_TIMESTAMP('2008-02-15 15:38:16','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_NotaFiscal',22,'LBRA','Primary key table LBR_NotaFiscal','Y','Y','Y','N','N','N','N','N','Nota Fiscal',TO_TIMESTAMP('2008-02-15 15:38:16','YYYY-MM-DD HH24:MI:SS'),0,100,1000482)
;

-- 15/02/2008 15h38min18s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000482 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 15/02/2008 15h38min19s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000673,0,1000026,TO_TIMESTAMP('2008-02-15 15:38:18','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Nota Fiscal Tax',22,'LBRA','Primary key table LBR_NFTax','Y','Y','N','N','N','N','N','N','Nota Fiscal Tax',TO_TIMESTAMP('2008-02-15 15:38:18','YYYY-MM-DD HH24:MI:SS'),0,100,1000483)
;

-- 15/02/2008 15h38min19s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000483 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 15/02/2008 15h38min20s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000675,0,1000026,TO_TIMESTAMP('2008-02-15 15:38:19','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'LBRA','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_TIMESTAMP('2008-02-15 15:38:19','YYYY-MM-DD HH24:MI:SS'),0,100,1000484)
;

-- 15/02/2008 15h38min20s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000484 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 15/02/2008 15h38min21s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000684,0,1000026,TO_TIMESTAMP('2008-02-15 15:38:20','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Tax Amount',22,'LBRA','Defines the Tax Amount','Y','Y','Y','N','N','N','N','N','Tax Amount',TO_TIMESTAMP('2008-02-15 15:38:20','YYYY-MM-DD HH24:MI:SS'),0,100,1000485)
;

-- 15/02/2008 15h38min21s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000485 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 15/02/2008 15h38min22s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000683,0,1000026,TO_TIMESTAMP('2008-02-15 15:38:21','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Tax Base Amount',22,'LBRA','Defines the Tax Base Amount','Y','Y','Y','N','N','N','N','N','Tax Base Amount',TO_TIMESTAMP('2008-02-15 15:38:21','YYYY-MM-DD HH24:MI:SS'),0,100,1000486)
;

-- 15/02/2008 15h38min22s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000486 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 15/02/2008 15h38min23s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000682,0,1000026,TO_TIMESTAMP('2008-02-15 15:38:22','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Tax Group',22,'LBRA','Primary key table LBR_TaxGroup','Y','Y','Y','N','N','N','N','N','Tax Group',TO_TIMESTAMP('2008-02-15 15:38:22','YYYY-MM-DD HH24:MI:SS'),0,100,1000487)
;

-- 15/02/2008 15h38min23s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000487 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 15/02/2008 15h38min40s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=1000481
;

-- 15/02/2008 15h38min40s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=1000484
;

-- 15/02/2008 15h38min40s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1000482
;

-- 15/02/2008 15h38min40s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1000480
;

-- 15/02/2008 15h38min40s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000487
;

-- 15/02/2008 15h38min40s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000486
;

-- 15/02/2008 15h38min40s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1000485
;

-- 15/02/2008 15h38min46s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2008-02-15 15:38:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000484
;

-- 15/02/2008 15h38min54s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2008-02-15 15:38:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000480
;

-- 15/02/2008 15h38min59s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2008-02-15 15:38:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000485
;

-- 15/02/2008 15h40min29s BRST
-- Default comment for updating dictionary
UPDATE AD_Tab SET SeqNo=15,Updated=TO_TIMESTAMP('2008-02-15 15:40:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000026
;

-- 15/02/2008 15h57min14s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Tab (AD_Org_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy,AD_Client_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID) VALUES (0,TO_TIMESTAMP('2008-02-15 15:57:13','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','N','Y','N','N','Y','N','N','N','N','Nota Fiscal Line Tax','N',25,0,TO_TIMESTAMP('2008-02-15 15:57:13','YYYY-MM-DD HH24:MI:SS'),100,0,1000027,1000035,1000015)
;

-- 15/02/2008 15h57min14s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, Description,Help,Name,CommitWarning, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.Description,t.Help,t.Name,t.CommitWarning, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1000027 AND EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Tab_ID!=t.AD_Tab_ID)
;

-- 15/02/2008 15h57min38s BRST
-- Default comment for updating dictionary
UPDATE AD_Tab SET AD_Column_ID=1000693, IsInsertRecord='N', IsReadOnly='Y', TabLevel=2,Updated=TO_TIMESTAMP('2008-02-15 15:57:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000027
;

-- 15/02/2008 15h57min40s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000688,0,1000027,TO_TIMESTAMP('2008-02-15 15:57:40','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'LBRA','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_TIMESTAMP('2008-02-15 15:57:40','YYYY-MM-DD HH24:MI:SS'),0,100,1000488)
;

-- 15/02/2008 15h57min40s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000488 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 15/02/2008 15h57min41s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000686,0,1000027,TO_TIMESTAMP('2008-02-15 15:57:40','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'LBRA','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_TIMESTAMP('2008-02-15 15:57:40','YYYY-MM-DD HH24:MI:SS'),0,100,1000489)
;

-- 15/02/2008 15h57min41s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000489 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 15/02/2008 15h57min42s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000693,0,1000027,TO_TIMESTAMP('2008-02-15 15:57:41','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_NotaFiscalLine',22,'LBRA','Primary key table LBR_NotaFiscalLine','Y','Y','Y','N','N','N','N','N','Nota Fiscal Line',TO_TIMESTAMP('2008-02-15 15:57:41','YYYY-MM-DD HH24:MI:SS'),0,100,1000490)
;

-- 15/02/2008 15h57min42s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000490 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 15/02/2008 15h57min43s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000685,0,1000027,TO_TIMESTAMP('2008-02-15 15:57:42','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Nota Fiscal Line Tax',22,'LBRA','Primary key table LBR_NFLineTax','Y','Y','N','N','N','N','N','N','Nota Fiscal Line Tax',TO_TIMESTAMP('2008-02-15 15:57:42','YYYY-MM-DD HH24:MI:SS'),0,100,1000491)
;

-- 15/02/2008 15h57min43s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000491 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 15/02/2008 15h57min44s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000687,0,1000027,TO_TIMESTAMP('2008-02-15 15:57:43','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'LBRA','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_TIMESTAMP('2008-02-15 15:57:43','YYYY-MM-DD HH24:MI:SS'),0,100,1000492)
;

-- 15/02/2008 15h57min44s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000492 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 15/02/2008 15h57min45s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000696,0,1000027,TO_TIMESTAMP('2008-02-15 15:57:44','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Tax Amount',22,'LBRA','Defines the Tax Amount','Y','Y','Y','N','N','N','N','N','Tax Amount',TO_TIMESTAMP('2008-02-15 15:57:44','YYYY-MM-DD HH24:MI:SS'),0,100,1000493)
;

-- 15/02/2008 15h57min45s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000493 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 15/02/2008 15h57min46s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000695,0,1000027,TO_TIMESTAMP('2008-02-15 15:57:45','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Tax Base Amount',22,'LBRA','Defines the Tax Base Amount','Y','Y','Y','N','N','N','N','N','Tax Base Amount',TO_TIMESTAMP('2008-02-15 15:57:45','YYYY-MM-DD HH24:MI:SS'),0,100,1000494)
;

-- 15/02/2008 15h57min46s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000494 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 15/02/2008 15h57min47s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000694,0,1000027,TO_TIMESTAMP('2008-02-15 15:57:46','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Tax Group',22,'LBRA','Primary key table LBR_TaxGroup','Y','Y','Y','N','N','N','N','N','Tax Group',TO_TIMESTAMP('2008-02-15 15:57:46','YYYY-MM-DD HH24:MI:SS'),0,100,1000495)
;

-- 15/02/2008 15h57min47s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000495 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 15/02/2008 15h57min59s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=1000489
;

-- 15/02/2008 15h57min59s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=1000492
;

-- 15/02/2008 15h57min59s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1000490
;

-- 15/02/2008 15h57min59s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1000488
;

-- 15/02/2008 15h57min59s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000495
;

-- 15/02/2008 15h57min59s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000494
;

-- 15/02/2008 15h57min59s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1000493
;

-- 15/02/2008 15h58min3s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2008-02-15 15:58:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000492
;

-- 15/02/2008 15h58min5s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2008-02-15 15:58:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000488
;

-- 15/02/2008 15h58min9s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2008-02-15 15:58:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000493
;

-- 15/02/2008 16h9min38s BRST
-- Default comment for updating dictionary
UPDATE AD_Ref_Table SET IsValueDisplayed='N',Updated=TO_TIMESTAMP('2008-02-15 16:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1000033
;
exit
