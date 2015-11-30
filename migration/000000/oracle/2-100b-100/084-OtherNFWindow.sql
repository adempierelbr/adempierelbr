-- 29/08/2008 16h51min57s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Table (AD_Client_ID,AD_Org_ID,AD_Table_ID,AccessLevel,CopyColumnsFromTable,Created,CreatedBy,Description,EntityType,ImportTable,IsActive,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES (0,0,1000039,'3','N',TO_TIMESTAMP('2008-08-29 16:51:57','YYYY-MM-DD HH24:MI:SS'),100,'Other NF','LBRA','N','Y','N','Y','N','N','N',0,'Other NF','L','LBR_OtherNF',TO_TIMESTAMP('2008-08-29 16:51:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/08/2008 16h51min57s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=1000039 AND EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Table_ID!=t.AD_Table_ID)
;

-- 29/08/2008 16h51min57s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,1000121,TO_TIMESTAMP('2008-08-29 16:51:57','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LBR_OtherNF',1,'Y','N','Y','Y','LBR_OtherNF','N',1000000,TO_TIMESTAMP('2008-08-29 16:51:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/08/2008 16h55min33s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1000327,0,'LBR_OtherNF_ID',TO_TIMESTAMP('2008-08-29 16:55:33','YYYY-MM-DD HH24:MI:SS'),100,'Other NF','LBRA','Other NF','Y','Other NF','Other NF',TO_TIMESTAMP('2008-08-29 16:55:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/08/2008 16h55min33s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000327 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 29/08/2008 16h58min45s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000962,1000327,0,13,1000039,'LBR_OtherNF_ID',TO_TIMESTAMP('2008-08-29 16:58:44','YYYY-MM-DD HH24:MI:SS'),100,'Other NF','LBRA',22,'Other NF','Y','N','N','Y','Y','Y','N','N','N','N','N','Other NF',0,TO_TIMESTAMP('2008-08-29 16:58:44','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 29/08/2008 16h58min45s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000962 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 29/08/2008 16h58min47s BRT
-- Default comment for updating dictionary
CREATE TABLE LBR_OtherNF (LBR_OtherNF_ID NUMERIC(10) NOT NULL, CONSTRAINT LBR_OtherNF_Key PRIMARY KEY (LBR_OtherNF_ID))
;

-- 29/08/2008 17h2min1s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000963,102,0,19,1000039,129,'AD_Client_ID',TO_TIMESTAMP('2008-08-29 17:02:00','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Client_ID@','Client/Tenant for this installation.','LBRA',22,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','Y','N','N','N','N','N','Client',0,TO_TIMESTAMP('2008-08-29 17:02:00','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 29/08/2008 17h2min1s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000963 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 29/08/2008 17h2min4s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNF ADD AD_Client_ID NUMERIC(10) NOT NULL
;

-- 29/08/2008 17h2min59s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000964,113,0,19,1000039,104,'AD_Org_ID',TO_TIMESTAMP('2008-08-29 17:02:58','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Org_ID@','Organizational entity within client','LBRA',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','Y','N','N','N','N','N','Organization',0,TO_TIMESTAMP('2008-08-29 17:02:58','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 29/08/2008 17h2min59s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000964 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 29/08/2008 17h3min0s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNF ADD AD_Org_ID NUMERIC(10) NOT NULL
;

-- 29/08/2008 17h4min12s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000965,348,0,20,1000039,'IsActive',TO_TIMESTAMP('2008-08-29 17:04:12','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','LBRA',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','N','N','N','N','N','Y','Active',0,TO_TIMESTAMP('2008-08-29 17:04:12','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 29/08/2008 17h4min12s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000965 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 29/08/2008 17h4min13s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNF ADD IsActive CHAR(1) CHECK (IsActive IN ('Y','N'))
;

-- 29/08/2008 17h5min3s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000966,245,0,16,1000039,'Created',TO_TIMESTAMP('2008-08-29 17:05:03','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','LBRA',7,'The Created field indicates the date that this record was created.','Y','N','N','N','N','Y','N','N','N','N','N','Created',0,TO_TIMESTAMP('2008-08-29 17:05:03','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 29/08/2008 17h5min3s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000966 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 29/08/2008 17h5min5s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNF ADD Created date NOT NULL
;

-- 29/08/2008 17h5min43s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000967,246,0,18,110,1000039,'CreatedBy',TO_TIMESTAMP('2008-08-29 17:05:43','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','LBRA',22,'The Created By field indicates the user who created this record.','Y','N','N','N','N','Y','N','N','N','N','N','Created By',0,TO_TIMESTAMP('2008-08-29 17:05:43','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 29/08/2008 17h5min43s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000967 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 29/08/2008 17h5min46s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNF ADD CreatedBy NUMERIC(10) NOT NULL
;

-- 29/08/2008 17h6min1s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000968,607,0,16,1000039,'Updated',TO_TIMESTAMP('2008-08-29 17:06:01','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','LBRA',7,'The Updated field indicates the date that this record was updated.','Y','N','N','N','N','Y','N','N','N','N','N','Updated',0,TO_TIMESTAMP('2008-08-29 17:06:01','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 29/08/2008 17h6min1s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000968 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 29/08/2008 17h6min2s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNF ADD Updated date NOT NULL
;

-- 29/08/2008 17h6min45s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000969,608,0,18,110,1000039,'UpdatedBy',TO_TIMESTAMP('2008-08-29 17:06:45','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','LBRA',22,'The Updated By field indicates the user who updated this record.','Y','N','N','N','N','Y','N','N','N','N','N','Updated By',0,TO_TIMESTAMP('2008-08-29 17:06:45','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 29/08/2008 17h6min45s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000969 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 29/08/2008 17h6min47s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNF ADD UpdatedBy NUMERIC(10) NOT NULL
;

-- 29/08/2008 17h11min54s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000970,187,0,30,173,1000039,'C_BPartner_ID',TO_TIMESTAMP('2008-08-29 17:11:54','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','LBRA',22,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','N','N','N','N','N','N','N','N','N','Y','Business Partner ',0,TO_TIMESTAMP('2008-08-29 17:11:54','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 29/08/2008 17h11min54s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000970 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 29/08/2008 17h11min56s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNF ADD C_BPartner_ID NUMERIC(10)
;

-- 29/08/2008 17h12min2s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2008-08-29 17:12:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000970
;

-- 29/08/2008 17h13min7s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000971,459,0,19,1000039,'M_Warehouse_ID',TO_TIMESTAMP('2008-08-29 17:13:07','YYYY-MM-DD HH24:MI:SS'),100,'Storage Warehouse and Service Point','LBRA',22,'The Warehouse identifies a unique Warehouse where products are stored or Services are provided.','Y','N','N','N','N','N','N','N','N','N','Y','Warehouse',0,TO_TIMESTAMP('2008-08-29 17:13:07','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 29/08/2008 17h13min7s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000971 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 29/08/2008 17h13min9s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNF ADD M_Warehouse_ID NUMERIC(10)
;

-- 29/08/2008 17h13min21s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2008-08-29 17:13:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000971
;

-- 29/08/2008 17h17min57s BRT
-- Default comment for updating dictionary
UPDATE AD_Reference SET Name='LBR_OtherNFDocType',Updated=TO_TIMESTAMP('2008-08-29 17:17:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1000038
;

-- 29/08/2008 17h17min57s BRT
-- Default comment for updating dictionary
UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=1000038
;

-- 29/08/2008 17h18min16s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000972,196,0,18,1000038,1000039,'C_DocType_ID',TO_TIMESTAMP('2008-08-29 17:18:16','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules','LBRA',22,'The Document Type determines document sequence and processing rules','Y','N','N','N','N','N','N','N','N','N','Y','Document Type',0,TO_TIMESTAMP('2008-08-29 17:18:16','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 29/08/2008 17h18min16s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000972 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 29/08/2008 17h18min19s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNF ADD C_DocType_ID NUMERIC(10)
;

-- 29/08/2008 17h18min24s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2008-08-29 17:18:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000972
;

-- 29/08/2008 17h20min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000973,197,0,18,170,1000039,'C_DocTypeTarget_ID',TO_TIMESTAMP('2008-08-29 17:20:05','YYYY-MM-DD HH24:MI:SS'),100,'Target document type for conversing documents','LBRA',22,'You can convert document types (e.g. from Offer to Order or Invoice).  The conversion is then reflected in the current type.  This processing is initiated by selecting the appropriate Document Action.','Y','N','N','N','N','N','N','N','N','N','Y','Target Document Type',0,TO_TIMESTAMP('2008-08-29 17:20:05','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 29/08/2008 17h20min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000973 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 29/08/2008 17h20min7s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNF ADD C_DocTypeTarget_ID NUMERIC(10)
;

-- 29/08/2008 17h20min12s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2008-08-29 17:20:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000973
;

-- 29/08/2008 17h22min22s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000974,380,0,20,1000039,'IsGenerated',TO_TIMESTAMP('2008-08-29 17:22:22','YYYY-MM-DD HH24:MI:SS'),100,'This Line is generated','LBRA',1,'The Generated checkbox identifies a journal line that was generated from a source document.  Lines could also be entered manually or imported.','Y','N','N','N','N','N','N','N','N','N','Y','Generated',0,TO_TIMESTAMP('2008-08-29 17:22:22','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 29/08/2008 17h22min22s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000974 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 29/08/2008 17h22min23s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNF ADD IsGenerated CHAR(1) CHECK (IsGenerated IN ('Y','N'))
;

-- 29/08/2008 17h27min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000975,1047,0,20,1000039,'Processed',TO_TIMESTAMP('2008-08-29 17:27:48','YYYY-MM-DD HH24:MI:SS'),100,'''N''','The document has been processed','LBRA',1,'The Processed checkbox indicates that a document has been processed.','Y','N','N','N','N','N','N','N','N','N','Y','Processed',0,TO_TIMESTAMP('2008-08-29 17:27:48','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 29/08/2008 17h27min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000975 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 29/08/2008 17h27min49s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNF ADD Processed CHAR(1) DEFAULT 'N' CHECK (Processed IN ('Y','N'))
;

-- 29/08/2008 17h30min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1000328,0,'lbr_OutrasNF_RequestType',TO_TIMESTAMP('2008-08-29 17:30:47','YYYY-MM-DD HH24:MI:SS'),100,'Type of request for the Other NF Process','LBRA','Type of request for the Other NF Process','Y','Other NF Request Type','Other NF Request Type',TO_TIMESTAMP('2008-08-29 17:30:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/08/2008 17h30min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000328 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 29/08/2008 17h31min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET ColumnName='lbr_OutrasNF_RequestType', Name='Other NF Request Type', Description='Type of request for the Other NF Process', Help='Type of request for the Other NF Process' WHERE AD_Element_ID=1000328
;

-- 29/08/2008 17h31min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Other NF Request Type', Description='Type of request for the Other NF Process', Help='Type of request for the Other NF Process' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1000328) AND IsCentrallyMaintained='Y'
;

-- 29/08/2008 17h31min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Process_Para SET ColumnName='lbr_OutrasNF_RequestType', Name='Other NF Request Type', Description='Type of request for the Other NF Process', Help='Type of request for the Other NF Process', AD_Element_ID=1000328 WHERE UPPER(ColumnName)='LBR_OUTRASNF_REQUESTTYPE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 29/08/2008 17h31min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Process_Para SET ColumnName='lbr_OutrasNF_RequestType', Name='Other NF Request Type', Description='Type of request for the Other NF Process', Help='Type of request for the Other NF Process' WHERE AD_Element_ID=1000328 AND IsCentrallyMaintained='Y'
;

-- 29/08/2008 17h31min59s BRT
-- Default comment for updating dictionary
UPDATE AD_PrintFormatItem SET PrintName='Other NF Request Type', Name='Other NF Request Type' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1000328)
;

-- 29/08/2008 17h31min59s BRT
-- Default comment for updating dictionary
UPDATE AD_PrintFormatItem SET PrintName='Other NF Request Type', Name='Other NF Request Type' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1000328)
;

-- 29/08/2008 17h34min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Element SET ColumnName='lbr_OtherNF_RequestType',Updated=TO_TIMESTAMP('2008-08-29 17:34:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000328
;

-- 29/08/2008 17h34min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET ColumnName='lbr_OtherNF_RequestType', Name='Other NF Request Type', Description='Type of request for the Other NF Process', Help='Type of request for the Other NF Process' WHERE AD_Element_ID=1000328
;

-- 29/08/2008 17h34min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Other NF Request Type', Description='Type of request for the Other NF Process', Help='Type of request for the Other NF Process' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1000328) AND IsCentrallyMaintained='Y'
;

-- 29/08/2008 17h34min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Process_Para SET ColumnName='lbr_OtherNF_RequestType', Name='Other NF Request Type', Description='Type of request for the Other NF Process', Help='Type of request for the Other NF Process', AD_Element_ID=1000328 WHERE UPPER(ColumnName)='LBR_OTHERNF_REQUESTTYPE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 29/08/2008 17h34min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Process_Para SET ColumnName='lbr_OtherNF_RequestType', Name='Other NF Request Type', Description='Type of request for the Other NF Process', Help='Type of request for the Other NF Process' WHERE AD_Element_ID=1000328 AND IsCentrallyMaintained='Y'
;

-- 29/08/2008 17h34min0s BRT
-- Default comment for updating dictionary
UPDATE AD_PrintFormatItem SET PrintName='Other NF Request Type', Name='Other NF Request Type' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1000328)
;

-- 29/08/2008 17h34min0s BRT
-- Default comment for updating dictionary
UPDATE AD_PrintFormatItem SET PrintName='Other NF Request Type', Name='Other NF Request Type' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1000328)
;

-- 29/08/2008 17h36min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1000040,TO_TIMESTAMP('2008-08-29 17:36:47','YYYY-MM-DD HH24:MI:SS'),100,'Other NF Request Type','LBRA','Other NF Request Type','Y','N','LBR_OtherNF_RequestType',TO_TIMESTAMP('2008-08-29 17:36:47','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 29/08/2008 17h36min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1000040 AND EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Reference_ID!=t.AD_Reference_ID)
;

-- 29/08/2008 17h38min6s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1000065,1000040,TO_TIMESTAMP('2008-08-29 17:38:06','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Material Return',TO_TIMESTAMP('2008-08-29 17:38:06','YYYY-MM-DD HH24:MI:SS'),100,'MR')
;

-- 29/08/2008 17h38min6s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000065 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- 29/08/2008 17h38min35s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1000066,1000040,TO_TIMESTAMP('2008-08-29 17:38:35','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Material Invoice',TO_TIMESTAMP('2008-08-29 17:38:35','YYYY-MM-DD HH24:MI:SS'),100,'MI')
;

-- 29/08/2008 17h38min35s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000066 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- 29/08/2008 20h28min7s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000976,1000328,0,17,1000040,1000039,'lbr_OtherNF_RequestType',TO_TIMESTAMP('2008-08-29 20:28:06','YYYY-MM-DD HH24:MI:SS'),100,'Type of request for the Other NF Process','LBRA',2,'Type of request for the Other NF Process','Y','N','N','N','N','N','N','N','N','N','Y','Other NF Request Type',0,TO_TIMESTAMP('2008-08-29 20:28:06','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 29/08/2008 20h28min7s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000976 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 29/08/2008 20h28min9s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNF ADD lbr_OtherNF_RequestType nvarchar2(2)
;

-- 30/08/2008 9h58min57s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1000329,0,'lbr_GenerateOtherNF',TO_TIMESTAMP('2008-08-30 09:58:57','YYYY-MM-DD HH24:MI:SS'),100,'Generate','LBRA','Generates the Other NF Lines','Y','Generate','Generate',TO_TIMESTAMP('2008-08-30 09:58:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/08/2008 9h58min57s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000329 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 30/08/2008 10h15min12s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process (AD_Client_ID,AD_Org_ID,AD_Process_ID,AccessLevel,Classname,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES (0,0,1000014,'3','org.adempierelbr.process.ProcGenerateOtherNF',TO_TIMESTAMP('2008-08-30 10:15:12','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','N','N','N','lbr_GenerateOtherNF','Y',0,0,TO_TIMESTAMP('2008-08-30 10:15:12','YYYY-MM-DD HH24:MI:SS'),100,'lbr_GenerateOtherNF')
;

-- 30/08/2008 10h15min12s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1000014 AND EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Process_ID!=t.AD_Process_ID)
;

-- 30/08/2008 10h15min13s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,1000014,0,TO_TIMESTAMP('2008-08-30 10:15:13','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-08-30 10:15:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/08/2008 10h15min13s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,1000014,102,TO_TIMESTAMP('2008-08-30 10:15:13','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-08-30 10:15:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/08/2008 10h15min13s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,1000014,103,TO_TIMESTAMP('2008-08-30 10:15:13','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-08-30 10:15:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/08/2008 10h15min13s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,1000014,50001,TO_TIMESTAMP('2008-08-30 10:15:13','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-08-30 10:15:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/08/2008 10h15min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000977,1000329,0,1000014,28,1000039,'lbr_GenerateOtherNF',TO_TIMESTAMP('2008-08-30 10:15:43','YYYY-MM-DD HH24:MI:SS'),100,'Generate','LBRA',10,'Generates the Other NF Lines','Y','N','N','N','N','N','N','N','N','N','Y','Generate',0,TO_TIMESTAMP('2008-08-30 10:15:43','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 30/08/2008 10h15min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000977 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 30/08/2008 10h15min45s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNF ADD lbr_GenerateOtherNF CHAR(10)
;

-- 30/08/2008 10h17min22s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1000330,0,'lbr_ProcessOtherNF',TO_TIMESTAMP('2008-08-30 10:17:22','YYYY-MM-DD HH24:MI:SS'),100,'Process now','LBRA','Process Other NF','Y','Process','Process',TO_TIMESTAMP('2008-08-30 10:17:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/08/2008 10h17min22s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000330 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 30/08/2008 10h18min50s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process (AD_Client_ID,AD_Org_ID,AD_Process_ID,AccessLevel,Classname,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES (0,0,1000015,'3','org.adempierelbr.process.ProcProcessOtherNF',TO_TIMESTAMP('2008-08-30 10:18:50','YYYY-MM-DD HH24:MI:SS'),100,NULL,'LBRA','Y','N','N','N','N','lbr_ProcessOtherNF','Y',0,0,TO_TIMESTAMP('2008-08-30 10:18:50','YYYY-MM-DD HH24:MI:SS'),100,'lbr_ProcessOtherNF')
;

-- 30/08/2008 10h18min50s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1000015 AND EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Process_ID!=t.AD_Process_ID)
;

-- 30/08/2008 10h18min50s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,1000015,0,TO_TIMESTAMP('2008-08-30 10:18:50','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-08-30 10:18:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/08/2008 10h18min50s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,1000015,102,TO_TIMESTAMP('2008-08-30 10:18:50','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-08-30 10:18:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/08/2008 10h18min50s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,1000015,103,TO_TIMESTAMP('2008-08-30 10:18:50','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-08-30 10:18:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/08/2008 10h18min50s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,1000015,50001,TO_TIMESTAMP('2008-08-30 10:18:50','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-08-30 10:18:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/08/2008 10h19min22s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000978,1000330,0,1000015,28,1000039,'lbr_ProcessOtherNF',TO_TIMESTAMP('2008-08-30 10:19:22','YYYY-MM-DD HH24:MI:SS'),100,'Process now','LBRA',1,'Process Other NF','Y','N','N','N','N','N','N','N','N','N','Y','Process',0,TO_TIMESTAMP('2008-08-30 10:19:22','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 30/08/2008 10h19min22s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000978 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 30/08/2008 10h19min23s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNF ADD lbr_ProcessOtherNF CHAR(1)
;

-- 31/08/2008 19h13min6s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1000331,0,'lbr_VoidOtherNF',TO_TIMESTAMP('2008-08-31 19:13:05','YYYY-MM-DD HH24:MI:SS'),100,'Void Other NF','LBRA','Void Other NF','Y','Void','Void',TO_TIMESTAMP('2008-08-31 19:13:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 31/08/2008 19h13min6s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000331 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 31/08/2008 19h15min41s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process (AD_Client_ID,AD_Org_ID,AD_Process_ID,AccessLevel,Classname,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES (0,0,1000016,'3','org.adempierelbr.process.ProcVoidOtherNF',TO_TIMESTAMP('2008-08-31 19:15:41','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','N','N','N','lbr_VoidOtherNF','Y',0,0,TO_TIMESTAMP('2008-08-31 19:15:41','YYYY-MM-DD HH24:MI:SS'),100,'lbr_VoidOtherNF')
;

-- 31/08/2008 19h15min41s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1000016 AND EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Process_ID!=t.AD_Process_ID)
;

-- 31/08/2008 19h15min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,1000016,0,TO_TIMESTAMP('2008-08-31 19:15:42','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-08-31 19:15:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 31/08/2008 19h15min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,1000016,102,TO_TIMESTAMP('2008-08-31 19:15:42','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-08-31 19:15:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 31/08/2008 19h15min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,1000016,103,TO_TIMESTAMP('2008-08-31 19:15:42','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-08-31 19:15:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 31/08/2008 19h15min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,1000016,50001,TO_TIMESTAMP('2008-08-31 19:15:42','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-08-31 19:15:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 31/08/2008 19h16min4s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000979,1000331,0,1000016,28,1000039,'lbr_VoidOtherNF',TO_TIMESTAMP('2008-08-31 19:16:04','YYYY-MM-DD HH24:MI:SS'),100,'Void Other NF','LBRA',1,'Void Other NF','Y','Y','N','N','N','N','N','N','N','N','Y','Void',0,TO_TIMESTAMP('2008-08-31 19:16:04','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 31/08/2008 19h16min4s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000979 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 31/08/2008 19h16min7s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNF ADD lbr_VoidOtherNF CHAR(1)
;

-- 31/08/2008 19h17min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Table (AD_Client_ID,AD_Org_ID,AD_Table_ID,AccessLevel,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES (0,0,1000040,'3','N',TO_TIMESTAMP('2008-08-31 19:17:10','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','Y','N','Y','N','N','N',0,'LBR_OtherNFLine','L','LBR_OtherNFLine',TO_TIMESTAMP('2008-08-31 19:17:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 31/08/2008 19h17min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=1000040 AND EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Table_ID!=t.AD_Table_ID)
;

-- 31/08/2008 19h17min11s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,1000122,TO_TIMESTAMP('2008-08-31 19:17:10','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LBR_OtherNFLine',1,'Y','N','Y','Y','LBR_OTherNFLine','N',1000000,TO_TIMESTAMP('2008-08-31 19:17:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 31/08/2008 19h17min40s BRT
-- Default comment for updating dictionary
UPDATE AD_Sequence SET Name='LBR_OtherNFLine',Updated=TO_TIMESTAMP('2008-08-31 19:17:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Sequence_ID=1000122
;

-- 31/08/2008 19h18min34s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1000332,0,'LBR_OtherNFLine_ID',TO_TIMESTAMP('2008-08-31 19:18:34','YYYY-MM-DD HH24:MI:SS'),100,'Other NF Line','LBRA','Other NF Line','Y','Other NF Line','Other NF Line',TO_TIMESTAMP('2008-08-31 19:18:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 31/08/2008 19h18min34s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000332 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 31/08/2008 19h19min40s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000980,1000332,0,13,1000040,'LBR_OtherNFLine_ID',TO_TIMESTAMP('2008-08-31 19:19:40','YYYY-MM-DD HH24:MI:SS'),100,'Other NF Line','LBRA',22,'Other NF Line','Y','N','N','Y','Y','Y','N','N','N','N','N','Other NF Line',0,TO_TIMESTAMP('2008-08-31 19:19:40','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 31/08/2008 19h19min40s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000980 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 31/08/2008 19h19min41s BRT
-- Default comment for updating dictionary
CREATE TABLE LBR_OtherNFLine (LBR_OtherNFLine_ID NUMERIC(10) NOT NULL, CONSTRAINT LBR_OtherNFLine_Key PRIMARY KEY (LBR_OtherNFLine_ID))
;

-- 31/08/2008 19h20min20s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000981,102,0,19,1000040,129,'AD_Client_ID',TO_TIMESTAMP('2008-08-31 19:20:20','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Client_ID@','Client/Tenant for this installation.','LBRA',22,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','Y','N','N','N','N','N','Client',0,TO_TIMESTAMP('2008-08-31 19:20:20','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 31/08/2008 19h20min20s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000981 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 31/08/2008 19h20min21s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNFLine ADD AD_Client_ID NUMERIC(10) NOT NULL
;

-- 31/08/2008 19h20min57s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000982,113,0,19,1000040,104,'AD_Org_ID',TO_TIMESTAMP('2008-08-31 19:20:57','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Org_ID@','Organizational entity within client','LBRA',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','Y','N','N','N','N','N','Organization',0,TO_TIMESTAMP('2008-08-31 19:20:57','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 31/08/2008 19h20min57s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000982 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 31/08/2008 19h20min58s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNFLine ADD AD_Org_ID NUMERIC(10) NOT NULL
;

-- 31/08/2008 19h21min22s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000984,348,0,20,1000040,'IsActive',TO_TIMESTAMP('2008-08-31 19:21:22','YYYY-MM-DD HH24:MI:SS'),100,'''Y''','The record is active in the system','LBRA',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','Y','N','N','N','N','Y','Active',0,TO_TIMESTAMP('2008-08-31 19:21:22','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 31/08/2008 19h21min22s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000984 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 31/08/2008 19h21min24s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNFLine ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;


-- 31/08/2008 19h21min56s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000985,245,0,16,1000040,'Created',TO_TIMESTAMP('2008-08-31 19:21:56','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','LBRA',7,'The Created field indicates the date that this record was created.','Y','N','N','N','N','Y','N','N','N','N','N','Created',0,TO_TIMESTAMP('2008-08-31 19:21:56','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 31/08/2008 19h21min56s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000985 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 31/08/2008 19h21min57s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNFLine ADD Created date NOT NULL
;

-- 31/08/2008 19h22min32s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000986,246,0,18,110,1000040,'CreatedBy',TO_TIMESTAMP('2008-08-31 19:22:32','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','LBRA',22,'The Created By field indicates the user who created this record.','Y','N','N','N','N','Y','N','N','N','N','N','Created By',0,TO_TIMESTAMP('2008-08-31 19:22:32','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 31/08/2008 19h22min32s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000986 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 31/08/2008 19h22min34s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNFLine ADD CreatedBy NUMERIC(10) NOT NULL
;

-- 31/08/2008 19h22min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000987,607,0,16,1000040,'Updated',TO_TIMESTAMP('2008-08-31 19:22:47','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','LBRA',7,'The Updated field indicates the date that this record was updated.','Y','N','N','N','N','Y','N','N','N','N','N','Updated',0,TO_TIMESTAMP('2008-08-31 19:22:47','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 31/08/2008 19h22min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000987 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 31/08/2008 19h22min56s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNFLine ADD Updated date NOT NULL
;

-- 31/08/2008 19h23min23s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000988,608,0,18,110,1000040,'UpdatedBy',TO_TIMESTAMP('2008-08-31 19:23:23','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','LBRA',22,'The Updated By field indicates the user who updated this record.','Y','N','N','N','N','Y','N','N','N','N','N','Updated By',0,TO_TIMESTAMP('2008-08-31 19:23:23','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 31/08/2008 19h23min23s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000988 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 31/08/2008 19h23min24s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNFLine ADD UpdatedBy NUMERIC(10) NOT NULL
;

-- 31/08/2008 19h25min7s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000989,1000327,0,30,1000040,'LBR_OtherNF_ID',TO_TIMESTAMP('2008-08-31 19:25:07','YYYY-MM-DD HH24:MI:SS'),100,'Other NF','LBRA',22,'Other NF','Y','N','N','Y','N','Y','Y','N','N','N','N','Other NF',1,TO_TIMESTAMP('2008-08-31 19:25:07','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 31/08/2008 19h25min7s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000989 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 31/08/2008 19h25min9s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNFLine ADD LBR_OtherNF_ID NUMERIC(10) NOT NULL
;

-- 31/08/2008 19h26min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000990,290,0,10,1000040,'DocumentNo',TO_TIMESTAMP('2008-08-31 19:26:08','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document','LBRA',30,'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>". If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','N','N','N','N','N','N','N','N','N','Y','Document No',0,TO_TIMESTAMP('2008-08-31 19:26:08','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 31/08/2008 19h26min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000990 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 31/08/2008 19h26min10s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNFLine ADD DocumentNo nvarchar2(30)
;

-- 31/08/2008 19h27min7s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000991,454,0,30,162,1000040,'M_Product_ID',TO_TIMESTAMP('2008-08-31 19:27:07','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','LBRA',22,'Identifies an item which is either purchased or sold in this organization.','Y','N','N','N','N','N','N','N','N','N','Y','Product',0,TO_TIMESTAMP('2008-08-31 19:27:07','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 31/08/2008 19h27min7s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000991 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 31/08/2008 19h27min9s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNFLine ADD M_Product_ID NUMERIC(10)
;

-- 31/08/2008 19h27min13s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2008-08-31 19:27:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000991
;

-- 31/08/2008 19h31min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000992,448,0,31,1000040,'M_Locator_ID',TO_TIMESTAMP('2008-08-31 19:31:10','YYYY-MM-DD HH24:MI:SS'),100,'@M_Locator_ID@','Warehouse Locator','LBRA',22,'The Locator indicates where in a Warehouse a product is located.','Y','N','N','N','N','N','N','N','N','N','Y','Locator',0,TO_TIMESTAMP('2008-08-31 19:31:10','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 31/08/2008 19h31min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000992 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 31/08/2008 19h31min12s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNFLine ADD M_Locator_ID NUMERIC(10) DEFAULT NULL 
;

-- 31/08/2008 19h31min16s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2008-08-31 19:31:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000992
;

-- 31/08/2008 19h32min26s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,ValueMin,Version) VALUES (0,1000993,526,0,22,1000040,'Qty',TO_TIMESTAMP('2008-08-31 19:32:26','YYYY-MM-DD HH24:MI:SS'),100,'Quantity','LBRA',20,'The Quantity indicates the number of a specific product or item for this document.','Y','N','N','N','N','N','N','N','N','N','Y','Quantity',0,TO_TIMESTAMP('2008-08-31 19:32:26','YYYY-MM-DD HH24:MI:SS'),100,NULL,0)
;

-- 31/08/2008 19h32min26s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000993 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 31/08/2008 19h32min28s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNFLine ADD Qty NUMERIC
;

-- 31/08/2008 19h33min58s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000994,215,0,19,1000040,'C_UOM_ID',TO_TIMESTAMP('2008-08-31 19:33:57','YYYY-MM-DD HH24:MI:SS'),100,'Unit of Measure','LBRA',22,'The UOM defines a unique non monetary Unit of Measure','Y','N','N','N','N','N','N','N','N','N','Y','UOM',0,TO_TIMESTAMP('2008-08-31 19:33:57','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 31/08/2008 19h33min58s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000994 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 31/08/2008 19h33min59s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNFLine ADD C_UOM_ID NUMERIC(10)
;

-- 31/08/2008 19h34min22s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000995,1047,0,20,1000040,'Processed',TO_TIMESTAMP('2008-08-31 19:34:22','YYYY-MM-DD HH24:MI:SS'),100,'''N''','The document has been processed','LBRA',1,'The Processed checkbox indicates that a document has been processed.','Y','N','N','N','N','N','N','N','N','N','Y','Processed',0,TO_TIMESTAMP('2008-08-31 19:34:22','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 31/08/2008 19h34min22s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000995 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 31/08/2008 19h34min24s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNFLine ADD Processed CHAR(1) DEFAULT 'N' CHECK (Processed IN ('Y','N'))
;

exit
