-- 24/07/2008 13h37min32s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Table (AD_Client_ID,AD_Org_ID,AD_Table_ID,AccessLevel,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES (0,0,1000037,'3','N',TO_TIMESTAMP('2008-07-24 13:37:32','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','Y','N','Y','N','N','N',0,'Process Link','L','LBR_ProcessLink',TO_TIMESTAMP('2008-07-24 13:37:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 24/07/2008 13h37min32s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=1000037 AND EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Table_ID!=t.AD_Table_ID)
;

-- 24/07/2008 13h37min32s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,1000076,TO_TIMESTAMP('2008-07-24 13:37:32','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LBR_ProcessLink',1,'Y','N','Y','Y','LBR_ProcessLink','N',1000000,TO_TIMESTAMP('2008-07-24 13:37:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 24/07/2008 13h38min35s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000927,561,0,19,1000037,'C_OrderLine_ID',TO_TIMESTAMP('2008-07-24 13:38:34','YYYY-MM-DD HH24:MI:SS'),100,'Sales Order Line','LBRA',22,'The Sales Order Line is a unique identifier for a line in an order.','Y','N','N','N','N','Y','N','N','N','N','N','Sales Order Line',0,TO_TIMESTAMP('2008-07-24 13:38:34','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 24/07/2008 13h38min35s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000927 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 24/07/2008 13h38min36s BRT
-- Default comment for updating dictionary
CREATE TABLE LBR_ProcessLink (C_OrderLine_ID NUMERIC(10) NOT NULL)
;

-- 24/07/2008 13h39min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000928,1076,0,19,1000037,'C_InvoiceLine_ID',TO_TIMESTAMP('2008-07-24 13:39:10','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Detail Line','LBRA',22,'The Invoice Line uniquely identifies a single line of an Invoice.','Y','N','N','N','N','Y','N','N','N','N','N','Invoice Line',0,TO_TIMESTAMP('2008-07-24 13:39:10','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 24/07/2008 13h39min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000928 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 24/07/2008 13h39min11s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_ProcessLink ADD COLUMN C_InvoiceLine_ID NUMERIC(10) NOT NULL
;

-- 24/07/2008 13h40min0s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000929,102,0,19,1000037,116,'AD_Client_ID',TO_TIMESTAMP('2008-07-24 13:40:00','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','LBRA',22,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','Y','N','N','N','N','N','Client',0,TO_TIMESTAMP('2008-07-24 13:40:00','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 24/07/2008 13h40min0s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000929 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 24/07/2008 13h40min1s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_ProcessLink ADD COLUMN AD_Client_ID NUMERIC(10) NOT NULL
;

-- 24/07/2008 13h40min25s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000930,113,0,19,1000037,104,'AD_Org_ID',TO_TIMESTAMP('2008-07-24 13:40:24','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','U',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','Y','N','N','N','N','N','Organization',0,TO_TIMESTAMP('2008-07-24 13:40:24','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 24/07/2008 13h40min25s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000930 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 24/07/2008 13h40min28s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_TIMESTAMP('2008-07-24 13:40:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000930
;

-- 24/07/2008 13h40min29s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_ProcessLink ADD COLUMN AD_Org_ID NUMERIC(10) NOT NULL
;

-- 24/07/2008 13h40min51s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000931,348,0,20,1000037,'IsActive',TO_TIMESTAMP('2008-07-24 13:40:51','YYYY-MM-DD HH24:MI:SS'),100,'Y','The record is active in the system','U',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','Y','N','N','N','N','Y','Active',0,TO_TIMESTAMP('2008-07-24 13:40:51','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 24/07/2008 13h40min51s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000931 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 24/07/2008 13h40min57s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_TIMESTAMP('2008-07-24 13:40:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000931
;

-- 24/07/2008 13h40min58s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_ProcessLink ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- 24/07/2008 13h41min7s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET DefaultValue='@#AD_Org_ID@',Updated=TO_TIMESTAMP('2008-07-24 13:41:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000930
;

-- 24/07/2008 13h41min13s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET DefaultValue='@#AD_Client_ID@',Updated=TO_TIMESTAMP('2008-07-24 13:41:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000929
;

-- 24/07/2008 13h41min29s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000932,245,0,16,1000037,'Created',TO_TIMESTAMP('2008-07-24 13:41:29','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','LBRA',7,'The Created field indicates the date that this record was created.','Y','N','N','N','N','Y','N','N','N','N','N','Created',0,TO_TIMESTAMP('2008-07-24 13:41:29','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 24/07/2008 13h41min29s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000932 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 24/07/2008 13h41min30s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_ProcessLink ADD COLUMN Created TIMESTAMP NOT NULL
;

-- 24/07/2008 13h41min51s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000933,246,0,18,110,1000037,'CreatedBy',TO_TIMESTAMP('2008-07-24 13:41:51','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','LBRA',22,'The Created By field indicates the user who created this record.','Y','N','N','N','N','Y','N','N','N','N','N','Created By',0,TO_TIMESTAMP('2008-07-24 13:41:51','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 24/07/2008 13h41min51s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000933 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 24/07/2008 13h41min51s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_ProcessLink ADD COLUMN CreatedBy NUMERIC(10) NOT NULL
;

-- 24/07/2008 13h42min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000934,607,0,16,1000037,'Updated',TO_TIMESTAMP('2008-07-24 13:42:05','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','LBRA',7,'The Updated field indicates the date that this record was updated.','Y','N','N','N','N','Y','N','N','N','N','N','Updated',0,TO_TIMESTAMP('2008-07-24 13:42:05','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 24/07/2008 13h42min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000934 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 24/07/2008 13h42min6s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_ProcessLink ADD COLUMN Updated TIMESTAMP NOT NULL
;

-- 24/07/2008 13h42min26s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000935,608,0,18,110,1000037,'UpdatedBy',TO_TIMESTAMP('2008-07-24 13:42:26','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','LBRA',22,'The Updated By field indicates the user who updated this record.','Y','N','N','N','N','Y','N','N','N','N','N','Updated By',0,TO_TIMESTAMP('2008-07-24 13:42:26','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 24/07/2008 13h42min26s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000935 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 24/07/2008 13h42min27s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_ProcessLink ADD COLUMN UpdatedBy NUMERIC(10) NOT NULL
;

-- 24/07/2008 13h47min52s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1000321,0,'lbr_GenerateMovement',TO_TIMESTAMP('2008-07-24 13:47:52','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if this document generates a material movement insted of a material shipment/receipt','LBRA','Indicates if this document generates a material movement insted of a material shipment/receipt','Y','Generate Movement','Generate Movement',TO_TIMESTAMP('2008-07-24 13:47:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 24/07/2008 13h47min52s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000321 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 24/07/2008 13h50min1s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1000322,0,'LBR_DocTypeMovement_ID',TO_TIMESTAMP('2008-07-24 13:50:01','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Movement Document Type used for the Material Movement','LBRA','Defines the Movement Document Type used for the Material Movement','Y','Movement DocType','Movement DocType',TO_TIMESTAMP('2008-07-24 13:50:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 24/07/2008 13h50min1s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000322 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 24/07/2008 13h50min56s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000936,1000321,0,20,217,'lbr_GenerateMovement',TO_TIMESTAMP('2008-07-24 13:50:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Indicates if this document generates a material movement insted of a material shipment/receipt','LBRA',1,'Indicates if this document generates a material movement insted of a material shipment/receipt','Y','N','N','N','N','Y','N','N','N','N','Y','Generate Movement',0,TO_TIMESTAMP('2008-07-24 13:50:56','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 24/07/2008 13h50min56s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000936 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 24/07/2008 13h50min57s BRT
-- Default comment for updating dictionary
ALTER TABLE C_DocType ADD COLUMN lbr_GenerateMovement CHAR(1) DEFAULT 'N' CHECK (lbr_GenerateMovement IN ('Y','N')) NOT NULL
;

-- 24/07/2008 13h51min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000937,1000322,0,18,217,201,'LBR_DocTypeMovement_ID',TO_TIMESTAMP('2008-07-24 13:51:47','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Movement Document Type used for the Material Movement','LBRA',22,'Defines the Movement Document Type used for the Material Movement','Y','N','N','N','N','N','N','N','N','N','Y','Movement DocType',0,TO_TIMESTAMP('2008-07-24 13:51:47','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 24/07/2008 13h51min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000937 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 24/07/2008 13h51min48s BRT
-- Default comment for updating dictionary
ALTER TABLE C_DocType ADD COLUMN LBR_DocTypeMovement_ID NUMERIC(10)
;

-- 24/07/2008 13h51min54s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2008-07-24 13:51:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000937
;

-- 24/07/2008 13h53min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000938,459,0,18,197,217,'M_Warehouse_ID',TO_TIMESTAMP('2008-07-24 13:53:53','YYYY-MM-DD HH24:MI:SS'),100,'Storage Warehouse and Service Point','LBRA',22,'The Warehouse identifies a unique Warehouse where products are stored or Services are provided.','Y','N','N','N','N','N','N','N','N','N','Y','Warehouse',0,TO_TIMESTAMP('2008-07-24 13:53:53','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 24/07/2008 13h53min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000938 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 24/07/2008 13h53min54s BRT
-- Default comment for updating dictionary
ALTER TABLE C_DocType ADD COLUMN M_Warehouse_ID NUMERIC(10)
;

-- 24/07/2008 13h53min57s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2008-07-24 13:53:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000938
;

-- 24/07/2008 13h54min55s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Table (AD_Client_ID,AD_Org_ID,AD_Table_ID,AccessLevel,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES (0,0,1000038,'3','N',TO_TIMESTAMP('2008-07-24 13:54:55','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','Y','N','Y','N','N','N',0,'Other NF Link','L','LBR_OtherNFLink',TO_TIMESTAMP('2008-07-24 13:54:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 24/07/2008 13h54min55s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=1000038 AND EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Table_ID!=t.AD_Table_ID)
;

-- 24/07/2008 13h54min55s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,1000077,TO_TIMESTAMP('2008-07-24 13:54:55','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LBR_OtherNFLink',1,'Y','N','Y','Y','LBR_OtherNFLink','N',1000000,TO_TIMESTAMP('2008-07-24 13:54:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 24/07/2008 13h56min20s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1000323,0,'LBR_OtherNFLink_ID',TO_TIMESTAMP('2008-07-24 13:56:20','YYYY-MM-DD HH24:MI:SS'),100,'Identifies the Other NF Link','LBRA','Primary key table LBR_OtherNFLink','Y','Other NF Link','Other NF Link',TO_TIMESTAMP('2008-07-24 13:56:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 24/07/2008 13h56min20s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000323 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 24/07/2008 13h57min28s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000939,1000323,0,13,1000038,'LBR_OtherNFLink_ID',TO_TIMESTAMP('2008-07-24 13:57:28','YYYY-MM-DD HH24:MI:SS'),100,'Identifies the Other NF Link','LBRA',22,'Primary key table LBR_OtherNFLink','Y','N','N','Y','Y','Y','N','N','N','N','N','Other NF Link',0,TO_TIMESTAMP('2008-07-24 13:57:28','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 24/07/2008 13h57min28s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000939 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 24/07/2008 13h57min29s BRT
-- Default comment for updating dictionary
CREATE TABLE LBR_OtherNFLink (LBR_OtherNFLink_ID NUMERIC(10) NOT NULL, CONSTRAINT LBR_OtherNFLink_Key PRIMARY KEY (LBR_OtherNFLink_ID))
;

-- 24/07/2008 13h57min51s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000940,102,0,19,1000038,116,'AD_Client_ID',TO_TIMESTAMP('2008-07-24 13:57:51','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','LBRA',22,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','Y','N','N','N','N','N','Client',0,TO_TIMESTAMP('2008-07-24 13:57:51','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 24/07/2008 13h57min51s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000940 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 24/07/2008 13h57min52s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNFLink ADD COLUMN AD_Client_ID NUMERIC(10) NOT NULL
;

-- 24/07/2008 13h58min12s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000941,113,0,19,1000038,104,'AD_Org_ID',TO_TIMESTAMP('2008-07-24 13:58:12','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','LBRA',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','Y','N','N','N','N','N','Organization',0,TO_TIMESTAMP('2008-07-24 13:58:12','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 24/07/2008 13h58min12s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000941 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 24/07/2008 13h58min14s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNFLink ADD COLUMN AD_Org_ID NUMERIC(10) NOT NULL
;

-- 24/07/2008 13h58min34s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000942,348,0,20,1000038,'IsActive',TO_TIMESTAMP('2008-07-24 13:58:34','YYYY-MM-DD HH24:MI:SS'),100,'Y','The record is active in the system','LBRA',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','Y','N','N','N','N','Y','Active',0,TO_TIMESTAMP('2008-07-24 13:58:34','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 24/07/2008 13h58min34s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000942 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 24/07/2008 13h58min35s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNFLink ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- 24/07/2008 13h58min51s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000943,245,0,16,1000038,'Created',TO_TIMESTAMP('2008-07-24 13:58:51','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','LBRA',7,'The Created field indicates the date that this record was created.','Y','N','N','N','N','Y','N','N','N','N','N','Created',0,TO_TIMESTAMP('2008-07-24 13:58:51','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 24/07/2008 13h58min51s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000943 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 24/07/2008 13h58min52s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNFLink ADD COLUMN Created TIMESTAMP NOT NULL
;

-- 24/07/2008 13h59min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000944,246,0,18,110,1000038,'CreatedBy',TO_TIMESTAMP('2008-07-24 13:59:10','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','LBRA',22,'The Created By field indicates the user who created this record.','Y','N','N','N','N','Y','N','N','N','N','N','Created By',0,TO_TIMESTAMP('2008-07-24 13:59:10','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 24/07/2008 13h59min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000944 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 24/07/2008 13h59min11s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNFLink ADD COLUMN CreatedBy NUMERIC(10) NOT NULL
;

-- 24/07/2008 13h59min28s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000945,607,0,16,1000038,'Updated',TO_TIMESTAMP('2008-07-24 13:59:28','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','LBRA',7,'The Updated field indicates the date that this record was updated.','Y','N','N','N','N','Y','N','N','N','N','N','Updated',0,TO_TIMESTAMP('2008-07-24 13:59:28','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 24/07/2008 13h59min28s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000945 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 24/07/2008 13h59min29s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNFLink ADD COLUMN Updated TIMESTAMP NOT NULL
;

-- 24/07/2008 13h59min57s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000946,608,0,18,110,1000038,'UpdatedBy',TO_TIMESTAMP('2008-07-24 13:59:57','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','LBRA',22,'The Updated By field indicates the user who updated this record.','Y','N','N','N','N','Y','N','N','N','N','N','Updated By',0,TO_TIMESTAMP('2008-07-24 13:59:57','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 24/07/2008 13h59min57s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000946 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 24/07/2008 13h59min58s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNFLink ADD COLUMN UpdatedBy NUMERIC(10) NOT NULL
;

-- 24/07/2008 14h0min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000947,196,0,19,1000038,'C_DocType_ID',TO_TIMESTAMP('2008-07-24 14:00:42','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules','LBRA',22,'The Document Type determines document sequence and processing rules','Y','N','N','N','N','Y','Y','N','N','N','N','Document Type',0,TO_TIMESTAMP('2008-07-24 14:00:42','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 24/07/2008 14h0min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000947 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 24/07/2008 14h0min43s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNFLink ADD COLUMN C_DocType_ID NUMERIC(10) NOT NULL
;

-- 24/07/2008 14h1min19s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000948,197,0,18,170,1000038,133,'C_DocTypeTarget_ID',TO_TIMESTAMP('2008-07-24 14:01:19','YYYY-MM-DD HH24:MI:SS'),100,'Target document type for conversing documents','LBRA',22,'You can convert document types (e.g. from Offer to Order or Invoice).  The conversion is then reflected in the current type.  This processing is initiated by selecting the appropriate Document Action.','Y','N','N','N','N','Y','N','N','N','N','Y','Target Document Type',0,TO_TIMESTAMP('2008-07-24 14:01:19','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 24/07/2008 14h1min19s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000948 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 24/07/2008 14h1min20s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_OtherNFLink ADD COLUMN C_DocTypeTarget_ID NUMERIC(10) NOT NULL
;

-- 24/07/2008 14h1min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Table SET AD_Window_ID=135,Updated=TO_TIMESTAMP('2008-07-24 14:01:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1000038
;

-- 24/07/2008 14h1min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1000936,1000891,0,167,TO_TIMESTAMP('2008-07-24 14:01:53','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if this document generates a material movement insted of a material shipment/receipt',1,'LBRA','Indicates if this document generates a material movement insted of a material shipment/receipt','Y','Y','Y','N','N','N','N','N','Generate Movement',TO_TIMESTAMP('2008-07-24 14:01:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 24/07/2008 14h1min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000891 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 24/07/2008 14h1min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1000937,1000892,0,167,TO_TIMESTAMP('2008-07-24 14:01:53','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Movement Document Type used for the Material Movement',22,'LBRA','Defines the Movement Document Type used for the Material Movement','Y','Y','Y','N','N','N','N','N','Movement DocType',TO_TIMESTAMP('2008-07-24 14:01:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 24/07/2008 14h1min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000892 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 24/07/2008 14h1min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1000938,1000893,0,167,TO_TIMESTAMP('2008-07-24 14:01:53','YYYY-MM-DD HH24:MI:SS'),100,'Storage Warehouse and Service Point',22,'LBRA','The Warehouse identifies a unique Warehouse where products are stored or Services are provided.','Y','Y','Y','N','N','N','N','N','Warehouse',TO_TIMESTAMP('2008-07-24 14:01:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 24/07/2008 14h1min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000893 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 24/07/2008 14h2min9s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1000891
;

-- 24/07/2008 14h2min9s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1000892
;

-- 24/07/2008 14h2min9s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1000893
;

-- 24/07/2008 14h2min34s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000000,Updated=TO_TIMESTAMP('2008-07-24 14:02:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000460
;

-- 24/07/2008 14h2min41s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000000, DisplayLogic='C_DocTypeTarget_ID',Updated=TO_TIMESTAMP('2008-07-24 14:02:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000891
;

-- 24/07/2008 14h3min2s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''MMS'' | @DocBaseType@=''MMR''',Updated=TO_TIMESTAMP('2008-07-24 14:03:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000891
;

-- 24/07/2008 14h3min39s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000000, DisplayLogic='(@DocBaseType@=''MMS'' | @DocBaseType@=''MMR'') & @lbr_GenerateMovement@=''Y''',Updated=TO_TIMESTAMP('2008-07-24 14:03:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000892
;

-- 24/07/2008 14h3min46s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000000, DisplayLogic='(@DocBaseType@=''MMS'' | @DocBaseType@=''MMR'') & @lbr_GenerateMovement@=''Y''', IsSameLine='Y',Updated=TO_TIMESTAMP('2008-07-24 14:03:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000893
;

-- 24/07/2008 14h5min11s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Reference_Value_ID=170,Updated=TO_TIMESTAMP('2008-07-24 14:05:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000937
;

-- 24/07/2008 14h5min21s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''MMS'' | @DocBaseType@=''MMR'' & @lbr_GenerateMovement@=''Y''',Updated=TO_TIMESTAMP('2008-07-24 14:05:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000892
;

-- 24/07/2008 14h5min25s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''MMS'' | @DocBaseType@=''MMR'' & @lbr_GenerateMovement@=''Y''',Updated=TO_TIMESTAMP('2008-07-24 14:05:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000893
;

-- 24/07/2008 14h6min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,1000035,1000038,135,TO_TIMESTAMP('2008-07-24 14:06:37','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','N','Y','N','N','Y','N','N','N','N','Other NF Link','N',40,0,TO_TIMESTAMP('2008-07-24 14:06:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 24/07/2008 14h6min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1000035 AND EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Tab_ID!=t.AD_Tab_ID)
;

-- 24/07/2008 14h6min53s BRT
-- Default comment for updating dictionary
UPDATE AD_Tab SET AD_Column_ID=1000947, IsAdvancedTab='Y', TabLevel=1,Updated=TO_TIMESTAMP('2008-07-24 14:06:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000035
;

-- 24/07/2008 14h6min56s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1000942,1000894,0,1000035,TO_TIMESTAMP('2008-07-24 14:06:56','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'LBRA','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_TIMESTAMP('2008-07-24 14:06:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 24/07/2008 14h6min56s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000894 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 24/07/2008 14h6min56s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1000940,1000895,0,1000035,TO_TIMESTAMP('2008-07-24 14:06:56','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'LBRA','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_TIMESTAMP('2008-07-24 14:06:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 24/07/2008 14h6min56s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000895 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 24/07/2008 14h6min56s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1000947,1000896,0,1000035,TO_TIMESTAMP('2008-07-24 14:06:56','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules',22,'LBRA','The Document Type determines document sequence and processing rules','Y','Y','Y','N','N','N','N','N','Document Type',TO_TIMESTAMP('2008-07-24 14:06:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 24/07/2008 14h6min56s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000896 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 24/07/2008 14h6min56s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1000941,1000897,0,1000035,TO_TIMESTAMP('2008-07-24 14:06:56','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'LBRA','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_TIMESTAMP('2008-07-24 14:06:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 24/07/2008 14h6min56s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000897 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 24/07/2008 14h6min56s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1000939,1000898,0,1000035,TO_TIMESTAMP('2008-07-24 14:06:56','YYYY-MM-DD HH24:MI:SS'),100,'Identifies the Other NF Link',22,'LBRA','Primary key table LBR_OtherNFLink','Y','Y','N','N','N','N','N','N','Other NF Link',TO_TIMESTAMP('2008-07-24 14:06:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 24/07/2008 14h6min56s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000898 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 24/07/2008 14h6min56s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1000948,1000899,0,1000035,TO_TIMESTAMP('2008-07-24 14:06:56','YYYY-MM-DD HH24:MI:SS'),100,'Target document type for conversing documents',22,'LBRA','You can convert document types (e.g. from Offer to Order or Invoice).  The conversion is then reflected in the current type.  This processing is initiated by selecting the appropriate Document Action.','Y','Y','Y','N','N','N','N','N','Target Document Type',TO_TIMESTAMP('2008-07-24 14:06:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 24/07/2008 14h6min56s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000899 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 24/07/2008 14h7min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=1000895
;

-- 24/07/2008 14h7min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=1000897
;

-- 24/07/2008 14h7min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1000896
;

-- 24/07/2008 14h7min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1000894
;

-- 24/07/2008 14h7min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000899
;

-- 24/07/2008 14h7min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2008-07-24 14:07:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000897
;

-- 24/07/2008 14h7min23s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2008-07-24 14:07:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000894
;

