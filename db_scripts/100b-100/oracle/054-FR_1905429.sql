-- 01/03/2008 16h53min40s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Table (AD_Org_ID,AD_Table_ID,AccessLevel,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000036,'7','N',TO_DATE('2008-03-01 16:53:37','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','Y','N','Y','N','N','N',0,'ISS Matrix','L','LBR_ISSMatrix',TO_DATE('2008-03-01 16:53:37','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 01/03/2008 16h53min40s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=1000036 AND EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Table_ID!=t.AD_Table_ID)
;

-- 01/03/2008 16h53min40s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Sequence (AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy,AD_Client_ID) VALUES (0,1000075,TO_DATE('2008-03-01 16:53:40','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LBR_ISSMatrix',1,'Y','N','Y','Y','LBR_ISSMatrix','N',1000000,TO_DATE('2008-03-01 16:53:40','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 02/03/2008 10h39min21s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000284,'LBR_ISSMatrix_ID',TO_DATE('2008-03-02 10:39:19','YYYY-MM-DD HH24:MI:SS'),100,'Defines the ISS Matrix','LBRA','Primary key table LBR_ISSMatrix','Y','ISS Matrix','ISS Matrix',TO_DATE('2008-03-02 10:39:19','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 02/03/2008 10h39min21s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000284 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 02/03/2008 10h40min9s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000284,13,1000036,'LBR_ISSMatrix_ID',TO_DATE('2008-03-02 10:40:08','YYYY-MM-DD HH24:MI:SS'),100,'Defines the ISS Matrix','LBRA',22,'Primary key table LBR_ISSMatrix','Y','N','N','Y','Y','Y','N','N','N','N','N','ISS Matrix',0,TO_DATE('2008-03-02 10:40:08','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000717)
;

-- 02/03/2008 10h40min9s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000717 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 02/03/2008 10h40min12s BRT
-- Default comment for updating dictionary
CREATE TABLE LBR_ISSMatrix (LBR_ISSMatrix_ID NUMBER(10) NOT NULL, CONSTRAINT LBR_ISSMatrix_Key PRIMARY KEY (LBR_ISSMatrix_ID))
;

-- 02/03/2008 10h40min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,113,19,1000036,104,'AD_Org_ID',TO_DATE('2008-03-02 10:40:36','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','LBRA',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','Y','N','N','N','N','N','Organization',0,TO_DATE('2008-03-02 10:40:36','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000718)
;

-- 02/03/2008 10h40min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000718 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 02/03/2008 10h40min38s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_ISSMatrix ADD AD_Org_ID NUMBER(10) NOT NULL
;

-- 02/03/2008 10h40min51s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET DefaultValue='@#AD_Org_ID@',Updated=TO_DATE('2008-03-02 10:40:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000718
;

-- 02/03/2008 10h40min51s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Organization', Description='Organizational entity within client', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.' WHERE AD_Column_ID=1000718 AND IsCentrallyMaintained='Y'
;

-- 02/03/2008 10h41min13s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,102,19,1000036,116,'AD_Client_ID',TO_DATE('2008-03-02 10:41:12','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','LBRA',22,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','Y','N','N','N','N','N','Client',0,TO_DATE('2008-03-02 10:41:12','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000719)
;

-- 02/03/2008 10h41min13s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000719 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 02/03/2008 10h41min14s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_ISSMatrix ADD AD_Client_ID NUMBER(10) NOT NULL
;

-- 02/03/2008 10h41min21s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET DefaultValue='@#AD_Client_ID@',Updated=TO_DATE('2008-03-02 10:41:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000719
;

-- 02/03/2008 10h41min21s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Client', Description='Client/Tenant for this installation.', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.' WHERE AD_Column_ID=1000719 AND IsCentrallyMaintained='Y'
;

-- 02/03/2008 10h41min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,348,20,1000036,'IsActive',TO_DATE('2008-03-02 10:41:41','YYYY-MM-DD HH24:MI:SS'),100,'''Y''','The record is active in the system','LBRA',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','Y','N','N','N','N','Y','Active',0,TO_DATE('2008-03-02 10:41:41','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000720)
;

-- 02/03/2008 10h41min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000720 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 02/03/2008 10h41min43s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_ISSMatrix ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- 02/03/2008 10h42min1s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,245,16,1000036,'Created',TO_DATE('2008-03-02 10:41:59','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','LBRA',7,'The Created field indicates the date that this record was created.','Y','N','N','N','N','Y','N','N','N','N','N','Created',0,TO_DATE('2008-03-02 10:41:59','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000721)
;

-- 02/03/2008 10h42min1s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000721 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 02/03/2008 10h42min2s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_ISSMatrix ADD Created DATE NOT NULL
;

-- 02/03/2008 10h42min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,110,246,18,1000036,'CreatedBy',TO_DATE('2008-03-02 10:42:46','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','LBRA',22,'The Created By field indicates the user who created this record.','Y','N','N','N','N','Y','N','N','N','N','N','Created By',0,TO_DATE('2008-03-02 10:42:46','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000722)
;

-- 02/03/2008 10h42min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000722 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 02/03/2008 10h42min48s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_ISSMatrix ADD CreatedBy NUMBER(10) NOT NULL
;

-- 02/03/2008 10h43min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,607,16,1000036,'Updated',TO_DATE('2008-03-02 10:43:08','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','LBRA',7,'The Updated field indicates the date that this record was updated.','Y','N','N','N','N','Y','N','N','N','N','N','Updated',0,TO_DATE('2008-03-02 10:43:08','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000723)
;

-- 02/03/2008 10h43min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000723 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 02/03/2008 10h43min9s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_ISSMatrix ADD Updated DATE NOT NULL
;

-- 02/03/2008 10h43min49s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,110,608,18,1000036,'UpdatedBy',TO_DATE('2008-03-02 10:43:49','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','LBRA',22,'The Updated By field indicates the user who updated this record.','Y','N','N','N','N','Y','N','N','N','N','N','Updated By',0,TO_DATE('2008-03-02 10:43:49','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000724)
;

-- 02/03/2008 10h43min50s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000724 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 02/03/2008 10h43min51s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_ISSMatrix ADD UpdatedBy NUMBER(10) NOT NULL
;

-- 02/03/2008 10h47min54s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Val_Rule (AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000008,'M_Product.ProductType = ''S''',TO_DATE('2008-03-02 10:47:23','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','M_Product (Service)','S',TO_DATE('2008-03-02 10:47:23','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 02/03/2008 10h48min13s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,162,454,30,1000036,1000008,'M_Product_ID',TO_DATE('2008-03-02 10:48:12','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','U',22,'Identifies an item which is either purchased or sold in this organization.','Y','N','N','N','N','N','N','N','N','N','Y','Product',0,TO_DATE('2008-03-02 10:48:12','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000725)
;

-- 02/03/2008 10h48min13s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000725 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 02/03/2008 10h48min31s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2008-03-02 10:48:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000725
;

-- 02/03/2008 10h48min31s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Product', Description='Product, Service, Item', Help='Identifies an item which is either purchased or sold in this organization.' WHERE AD_Column_ID=1000725 AND IsCentrallyMaintained='Y'
;

-- 02/03/2008 10h48min32s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_ISSMatrix ADD M_Product_ID NUMBER(10)
;

-- 02/03/2008 10h49min31s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,157,209,18,1000036,1000003,'C_Region_ID',TO_DATE('2008-03-02 10:49:28','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a geographical Region','LBRA',22,'The Region identifies a unique Region for this Country.','Y','N','N','N','N','N','N','N','N','N','Y','Region',0,TO_DATE('2008-03-02 10:49:28','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000726)
;

-- 02/03/2008 10h49min31s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000726 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 02/03/2008 10h49min34s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2008-03-02 10:49:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000726
;

-- 02/03/2008 10h49min34s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Region', Description='Identifies a geographical Region', Help='The Region identifies a unique Region for this Country.' WHERE AD_Column_ID=1000726 AND IsCentrallyMaintained='Y'
;

-- 02/03/2008 10h49min35s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_ISSMatrix ADD C_Region_ID NUMBER(10) NOT NULL
;

-- 02/03/2008 10h50min41s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Reference (AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,AD_Client_ID,ValidationType) VALUES (0,1000034,TO_DATE('2008-03-02 10:50:39','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','C_City',TO_DATE('2008-03-02 10:50:39','YYYY-MM-DD HH24:MI:SS'),100,0,'T')
;

-- 02/03/2008 10h50min41s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1000034 AND EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Reference_ID!=t.AD_Reference_ID)
;

-- 02/03/2008 10h51min3s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Ref_Table (AD_Display,AD_Key,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy,AD_Client_ID,AD_Reference_ID,AD_Table_ID) VALUES (1233,7052,0,TO_DATE('2008-03-02 10:51:03','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N',TO_DATE('2008-03-02 10:51:03','YYYY-MM-DD HH24:MI:SS'),100,0,1000034,186)
;

-- 02/03/2008 10h57min19s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Val_Rule (AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000009,'C_City.C_Region_ID = @C_Region_ID@',TO_DATE('2008-03-02 10:57:18','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','C_City (from Region)','S',TO_DATE('2008-03-02 10:57:18','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 02/03/2008 10h57min36s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000034,1830,30,1000036,1000009,'C_City_ID',TO_DATE('2008-03-02 10:57:35','YYYY-MM-DD HH24:MI:SS'),100,'City','LBRA',22,'City in a country','Y','N','N','N','N','Y','N','N','N','N','Y','City',0,TO_DATE('2008-03-02 10:57:35','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000727)
;

-- 02/03/2008 10h57min36s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000727 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 02/03/2008 10h57min37s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_ISSMatrix ADD C_City_ID NUMBER(10) NOT NULL
;

-- 02/03/2008 10h58min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000094,1000006,1000036,'LBR_Tax_ID',TO_DATE('2008-03-02 10:58:09','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_Tax','LBRA',22,'Primary key table LBR_Tax','Y','N','N','N','N','N','N','N','N','N','Y','Brazilian Tax',0,TO_DATE('2008-03-02 10:58:09','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000728)
;

-- 02/03/2008 10h58min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000728 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 02/03/2008 10h58min11s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_ISSMatrix ADD LBR_Tax_ID NUMBER(10)
;

ALTER TABLE adempiere.lbr_issmatrix
    ADD CONSTRAINT lbr_issmatrix_unique
	UNIQUE (ad_client_id, c_city_id, c_region_id, m_product_id)
;

-- 02/03/2008 11h1min46s BRT
-- Default comment for updating dictionary
UPDATE AD_Table SET AccessLevel='3',Updated=TO_DATE('2008-03-02 11:01:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1000036
;

-- 02/03/2008 11h2min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Window (AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsSOTrx,Name,Processing,Updated,UpdatedBy,WinHeight,WinWidth,AD_Client_ID,WindowType) VALUES (0,1000020,TO_DATE('2008-03-02 11:02:41','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','N','Y','ISS Matrix','N',TO_DATE('2008-03-02 11:02:41','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,'M')
;

-- 02/03/2008 11h2min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Window_Trl (AD_Language,AD_Window_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Window_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Window t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Window_ID=1000020 AND EXISTS (SELECT * FROM AD_Window_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Window_ID!=t.AD_Window_ID)
;

-- 02/03/2008 11h2min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Window_Access (AD_Org_ID,AD_Role_ID,AD_Window_ID,Created,CreatedBy,IsActive,Updated,AD_Client_ID,UpdatedBy) VALUES (0,0,1000020,TO_DATE('2008-03-02 11:02:42','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2008-03-02 11:02:42','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 02/03/2008 11h2min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Window_Access (AD_Org_ID,AD_Role_ID,AD_Window_ID,Created,CreatedBy,IsActive,Updated,AD_Client_ID,UpdatedBy) VALUES (0,102,1000020,TO_DATE('2008-03-02 11:02:42','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2008-03-02 11:02:42','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 02/03/2008 11h2min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Window_Access (AD_Org_ID,AD_Role_ID,AD_Window_ID,Created,CreatedBy,IsActive,Updated,AD_Client_ID,UpdatedBy) VALUES (0,103,1000020,TO_DATE('2008-03-02 11:02:42','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2008-03-02 11:02:42','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 02/03/2008 11h2min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Window_Access (AD_Org_ID,AD_Role_ID,AD_Window_ID,Created,CreatedBy,IsActive,Updated,AD_Client_ID,UpdatedBy) VALUES (0,50001,1000020,TO_DATE('2008-03-02 11:02:42','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2008-03-02 11:02:42','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 02/03/2008 11h3min36s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Tab (AD_Org_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy,AD_Client_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID) VALUES (0,TO_DATE('2008-03-02 11:03:35','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','N','Y','N','N','Y','N','N','N','N','ISS Matrix','N',10,0,TO_DATE('2008-03-02 11:03:35','YYYY-MM-DD HH24:MI:SS'),100,0,1000032,1000036,1000020)
;

-- 02/03/2008 11h3min36s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, Description,Help,Name,CommitWarning, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.Description,t.Help,t.Name,t.CommitWarning, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1000032 AND EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Tab_ID!=t.AD_Tab_ID)
;

-- 02/03/2008 11h3min41s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000720,0,1000032,TO_DATE('2008-03-02 11:03:40','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'LBRA','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_DATE('2008-03-02 11:03:40','YYYY-MM-DD HH24:MI:SS'),0,100,1000640)
;

-- 02/03/2008 11h3min41s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000640 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 02/03/2008 11h3min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000728,0,1000032,TO_DATE('2008-03-02 11:03:41','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_Tax',22,'LBRA','Primary key table LBR_Tax','Y','Y','Y','N','N','N','N','N','Brazilian Tax',TO_DATE('2008-03-02 11:03:41','YYYY-MM-DD HH24:MI:SS'),0,100,1000641)
;

-- 02/03/2008 11h3min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000641 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 02/03/2008 11h3min43s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000727,0,1000032,TO_DATE('2008-03-02 11:03:42','YYYY-MM-DD HH24:MI:SS'),100,'City',22,'LBRA','City in a country','Y','Y','Y','N','N','N','N','N','City',TO_DATE('2008-03-02 11:03:42','YYYY-MM-DD HH24:MI:SS'),0,100,1000642)
;

-- 02/03/2008 11h3min43s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000642 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 02/03/2008 11h3min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000719,0,1000032,TO_DATE('2008-03-02 11:03:43','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'LBRA','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_DATE('2008-03-02 11:03:43','YYYY-MM-DD HH24:MI:SS'),0,100,1000643)
;

-- 02/03/2008 11h3min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000643 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 02/03/2008 11h3min45s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000717,0,1000032,TO_DATE('2008-03-02 11:03:44','YYYY-MM-DD HH24:MI:SS'),100,'Defines the ISS Matrix',22,'LBRA','Primary key table LBR_ISSMatrix','Y','Y','N','N','N','N','N','N','ISS Matrix',TO_DATE('2008-03-02 11:03:44','YYYY-MM-DD HH24:MI:SS'),0,100,1000644)
;

-- 02/03/2008 11h3min45s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000644 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 02/03/2008 11h3min46s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000718,0,1000032,TO_DATE('2008-03-02 11:03:45','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'LBRA','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_DATE('2008-03-02 11:03:45','YYYY-MM-DD HH24:MI:SS'),0,100,1000645)
;

-- 02/03/2008 11h3min46s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000645 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 02/03/2008 11h3min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000725,0,1000032,TO_DATE('2008-03-02 11:03:46','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item',22,'LBRA','Identifies an item which is either purchased or sold in this organization.','Y','Y','Y','N','N','N','N','N','Product',TO_DATE('2008-03-02 11:03:46','YYYY-MM-DD HH24:MI:SS'),0,100,1000646)
;

-- 02/03/2008 11h3min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000646 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 02/03/2008 11h3min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000726,0,1000032,TO_DATE('2008-03-02 11:03:47','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a geographical Region',22,'LBRA','The Region identifies a unique Region for this Country.','Y','Y','Y','N','N','N','N','N','Region',TO_DATE('2008-03-02 11:03:47','YYYY-MM-DD HH24:MI:SS'),0,100,1000647)
;

-- 02/03/2008 11h3min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000647 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 02/03/2008 11h4min5s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000640
;

-- 02/03/2008 11h4min5s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=1000643
;

-- 02/03/2008 11h4min5s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=1000645
;

-- 02/03/2008 11h4min5s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1000646
;

-- 02/03/2008 11h4min5s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1000647
;

-- 02/03/2008 11h4min5s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000642
;

-- 02/03/2008 11h4min5s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000641
;

-- 02/03/2008 11h4min13s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=106,Updated=TO_DATE('2008-03-02 11:04:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000646
;

-- 02/03/2008 11h4min16s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=106,Updated=TO_DATE('2008-03-02 11:04:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000647
;

-- 02/03/2008 11h4min19s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=106,Updated=TO_DATE('2008-03-02 11:04:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000642
;

-- 02/03/2008 11h4min22s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000000,Updated=TO_DATE('2008-03-02 11:04:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000641
;

-- 02/03/2008 11h4min26s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2008-03-02 11:04:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000642
;

-- 02/03/2008 11h4min30s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2008-03-02 11:04:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000645
;

-- 02/03/2008 11h4min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Table SET AD_Window_ID=1000020,Updated=TO_DATE('2008-03-02 11:04:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1000036
;

-- 02/03/2008 11h5min30s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Menu (AD_Org_ID,AD_Menu_ID,AD_Window_ID,Action,Created,CreatedBy,EntityType,IsActive,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000028,1000020,'W',TO_DATE('2008-03-02 11:05:29','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','N','N','ISS Matrix',TO_DATE('2008-03-02 11:05:29','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 02/03/2008 11h5min30s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=1000028 AND EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Menu_ID!=t.AD_Menu_ID)
;

-- 02/03/2008 11h5min30s BRT
-- Default comment for updating dictionary
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID,0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 1000028, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000028)
;

-- 02/03/2008 11h5min49s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 02/03/2008 11h5min49s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 02/03/2008 11h5min49s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 02/03/2008 11h5min49s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 02/03/2008 11h5min49s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 02/03/2008 11h5min49s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 02/03/2008 11h5min49s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 02/03/2008 11h5min49s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 02/03/2008 11h5min49s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 02/03/2008 11h5min49s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 02/03/2008 11h5min49s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 02/03/2008 11h5min49s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53083
;

-- 02/03/2008 11h5min49s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000019
;

-- 02/03/2008 11h5min49s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000018
;

-- 02/03/2008 11h5min49s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000013
;

-- 02/03/2008 11h5min49s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000028
;

-- 02/03/2008 11h5min49s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 02/03/2008 11h5min49s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

exit
