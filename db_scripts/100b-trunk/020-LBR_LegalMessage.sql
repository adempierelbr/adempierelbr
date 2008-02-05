
-- 05/02/2008 10h50min0s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Table (AD_Org_ID,AD_Client_ID,AD_Table_ID,CopyColumnsFromTable,Created,CreatedBy,Description,EntityType,ImportTable,IsActive,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,AccessLevel,UpdatedBy) VALUES (0,0,1000032,'N',TO_TIMESTAMP('2008-02-05 10:50:00','YYYY-MM-DD HH24:MI:SS'),100,NULL,'LBRA','N','Y','N','Y','N','N','N',0,'Legal Message','L','LBR_LegalMessage',TO_TIMESTAMP('2008-02-05 10:50:00','YYYY-MM-DD HH24:MI:SS'),'3',100)
;

-- 05/02/2008 10h50min0s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=1000032 AND EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Table_ID!=t.AD_Table_ID)
;

-- 05/02/2008 10h50min0s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Sequence (AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy,AD_Client_ID) VALUES (0,1000042,TO_TIMESTAMP('2008-02-05 10:50:00','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LBR_LegalMessage',1,'Y','N','Y','Y','LBR_LegalMessage','N',1000000,TO_TIMESTAMP('2008-02-05 10:50:00','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/02/2008 10h53min21s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000258,'LBR_LegalMessage_ID',TO_TIMESTAMP('2008-02-05 10:53:21','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_LegalMessage','LBRA','Primary key table LBR_LegalMessage','Y','Legal Message','Legal Message',TO_TIMESTAMP('2008-02-05 10:53:21','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 05/02/2008 10h53min21s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000258 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 05/02/2008 11h40min19s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,1000258,13,1000032,'LBR_LegalMessage_ID',TO_TIMESTAMP('2008-02-05 11:40:19','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_LegalMessage','LBRA',22,'Primary key table LBR_LegalMessage','Y','N','N','N','Y','Y','N','N','N','N','N','Legal Message',0,TO_TIMESTAMP('2008-02-05 11:40:19','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000666)
;

-- 05/02/2008 11h40min20s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000666 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 05/02/2008 11h40min25s BRST
-- Default comment for updating dictionary
CREATE TABLE LBR_LegalMessage (LBR_LegalMessage_ID NUMERIC(10) NOT NULL, CONSTRAINT LBR_LegalMessage_Key PRIMARY KEY (LBR_LegalMessage_ID))
;

-- 05/02/2008 11h41min11s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,102,19,1000032,116,'AD_Client_ID',TO_TIMESTAMP('2008-02-05 11:41:10','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','U',22,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','Y','N','N','N','N','N','Client',0,TO_TIMESTAMP('2008-02-05 11:41:10','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000667)
;

-- 05/02/2008 11h41min11s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000667 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 05/02/2008 11h41min16s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_TIMESTAMP('2008-02-05 11:41:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000667
;

-- 05/02/2008 11h41min16s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Client', Description='Client/Tenant for this installation.', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.' WHERE AD_Column_ID=1000667 AND IsCentrallyMaintained='Y'
;

-- 05/02/2008 11h41min18s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_LegalMessage ADD COLUMN AD_Client_ID NUMERIC(10) NOT NULL
;

-- 05/02/2008 11h41min43s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,113,19,1000032,104,'AD_Org_ID',TO_TIMESTAMP('2008-02-05 11:41:43','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','LBRA',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','Y','N','N','N','N','N','Organization',0,TO_TIMESTAMP('2008-02-05 11:41:43','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000668)
;

-- 05/02/2008 11h41min43s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000668 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 05/02/2008 11h41min45s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_LegalMessage ADD COLUMN AD_Org_ID NUMERIC(10) NOT NULL
;

-- 05/02/2008 11h41min51s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET DefaultValue='@#AD_Org_ID@',Updated=TO_TIMESTAMP('2008-02-05 11:41:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000668
;

-- 05/02/2008 11h41min51s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Organization', Description='Organizational entity within client', Help='An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.' WHERE AD_Column_ID=1000668 AND IsCentrallyMaintained='Y'
;

-- 05/02/2008 11h42min10s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET DefaultValue='@#AD_Client_ID@',Updated=TO_TIMESTAMP('2008-02-05 11:42:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000667
;

-- 05/02/2008 11h42min10s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Client', Description='Client/Tenant for this installation.', Help='A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.' WHERE AD_Column_ID=1000667 AND IsCentrallyMaintained='Y'
;

-- 05/02/2008 11h42min47s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,348,20,1000032,'IsActive',TO_TIMESTAMP('2008-02-05 11:42:47','YYYY-MM-DD HH24:MI:SS'),100,'''Y''','The record is active in the system','LBRA',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','Y','N','N','N','N','Y','Active',0,TO_TIMESTAMP('2008-02-05 11:42:47','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000669)
;

-- 05/02/2008 11h42min47s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000669 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 05/02/2008 11h42min52s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_LegalMessage ADD COLUMN IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- 05/02/2008 11h43min48s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,245,16,1000032,'Created',TO_TIMESTAMP('2008-02-05 11:43:47','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','LBRA',7,'The Created field indicates the date that this record was created.','Y','N','N','N','N','Y','N','N','N','N','N','Created',0,TO_TIMESTAMP('2008-02-05 11:43:47','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000670)
;

-- 05/02/2008 11h43min48s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000670 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 05/02/2008 11h43min49s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_LegalMessage ADD COLUMN Created TIMESTAMP NOT NULL
;

-- 05/02/2008 11h44min16s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,110,246,18,1000032,'CreatedBy',TO_TIMESTAMP('2008-02-05 11:44:16','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','LBRA',22,'The Created By field indicates the user who created this record.','Y','N','N','N','N','Y','N','N','N','N','N','Created By',0,TO_TIMESTAMP('2008-02-05 11:44:16','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000671)
;

-- 05/02/2008 11h44min16s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000671 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 05/02/2008 11h44min17s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_LegalMessage ADD COLUMN CreatedBy NUMERIC(10) NOT NULL
;

-- 05/02/2008 11h44min36s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,607,16,1000032,'Updated',TO_TIMESTAMP('2008-02-05 11:44:36','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','LBRA',7,'The Updated field indicates the date that this record was updated.','Y','N','N','N','N','Y','N','N','N','N','N','Updated',0,TO_TIMESTAMP('2008-02-05 11:44:36','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000672)
;

-- 05/02/2008 11h44min36s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000672 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 05/02/2008 11h44min38s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_LegalMessage ADD COLUMN Updated TIMESTAMP NOT NULL
;

-- 05/02/2008 11h44min59s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,110,608,18,1000032,'UpdatedBy',TO_TIMESTAMP('2008-02-05 11:44:59','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','LBRA',22,'The Updated By field indicates the user who updated this record.','Y','N','N','N','N','Y','N','N','N','N','N','Updated By',0,TO_TIMESTAMP('2008-02-05 11:44:59','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000673)
;

-- 05/02/2008 11h44min59s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000673 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 05/02/2008 11h45min0s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_LegalMessage ADD COLUMN UpdatedBy NUMERIC(10) NOT NULL
;

-- 05/02/2008 11h46min48s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,2438,34,1000032,'TextMsg',TO_TIMESTAMP('2008-02-05 11:46:48','YYYY-MM-DD HH24:MI:SS'),100,'Text Message','LBRA',255,'Y','N','N','N','N','Y','N','N','N','N','Y','Text Message',0,TO_TIMESTAMP('2008-02-05 11:46:48','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000674)
;

-- 05/02/2008 11h46min48s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000674 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 05/02/2008 11h46min49s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_LegalMessage ADD COLUMN TextMsg VARCHAR(255) NOT NULL
;

-- 05/02/2008 13h33min6s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Window (AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsSOTrx,Name,Processing,Updated,UpdatedBy,WindowType,WinHeight,AD_Client_ID,WinWidth) VALUES (0,1000018,TO_TIMESTAMP('2008-02-05 13:33:06','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','N','Y','Legal Message','N',TO_TIMESTAMP('2008-02-05 13:33:06','YYYY-MM-DD HH24:MI:SS'),100,'M',0,0,0)
;

-- 05/02/2008 13h33min6s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Window_Trl (AD_Language,AD_Window_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Window_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Window t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Window_ID=1000018 AND EXISTS (SELECT * FROM AD_Window_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Window_ID!=t.AD_Window_ID)
;

-- 05/02/2008 13h33min6s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Window_Access (AD_Org_ID,AD_Role_ID,AD_Window_ID,Created,CreatedBy,IsActive,Updated,AD_Client_ID,UpdatedBy) VALUES (0,0,1000018,TO_TIMESTAMP('2008-02-05 13:33:06','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-02-05 13:33:06','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 05/02/2008 13h33min6s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Window_Access (AD_Org_ID,AD_Role_ID,AD_Window_ID,Created,CreatedBy,IsActive,Updated,AD_Client_ID,UpdatedBy) VALUES (0,102,1000018,TO_TIMESTAMP('2008-02-05 13:33:06','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-02-05 13:33:06','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 05/02/2008 13h33min7s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Window_Access (AD_Org_ID,AD_Role_ID,AD_Window_ID,Created,CreatedBy,IsActive,Updated,AD_Client_ID,UpdatedBy) VALUES (0,103,1000018,TO_TIMESTAMP('2008-02-05 13:33:06','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-02-05 13:33:06','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 05/02/2008 13h33min7s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Window_Access (AD_Org_ID,AD_Role_ID,AD_Window_ID,Created,CreatedBy,IsActive,Updated,AD_Client_ID,UpdatedBy) VALUES (0,50001,1000018,TO_TIMESTAMP('2008-02-05 13:33:07','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-02-05 13:33:07','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 05/02/2008 13h34min24s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Tab (AD_Org_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy,AD_Client_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID) VALUES (0,TO_TIMESTAMP('2008-02-05 13:34:24','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','N','Y','N','N','Y','N','N','N','N','Legal Message','N',10,0,TO_TIMESTAMP('2008-02-05 13:34:24','YYYY-MM-DD HH24:MI:SS'),100,0,1000025,1000032,1000018)
;

-- 05/02/2008 13h34min24s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, Description,Help,Name,CommitWarning, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.Description,t.Help,t.Name,t.CommitWarning, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1000025 AND EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Tab_ID!=t.AD_Tab_ID)
;

-- 05/02/2008 13h34min28s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000669,0,1000460,1000025,TO_TIMESTAMP('2008-02-05 13:34:28','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'LBRA','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_TIMESTAMP('2008-02-05 13:34:28','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 05/02/2008 13h34min28s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000460 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 05/02/2008 13h34min28s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000667,0,1000461,1000025,TO_TIMESTAMP('2008-02-05 13:34:28','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'LBRA','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_TIMESTAMP('2008-02-05 13:34:28','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 05/02/2008 13h34min29s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000461 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 05/02/2008 13h34min29s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000666,0,1000462,1000025,TO_TIMESTAMP('2008-02-05 13:34:29','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_LegalMessage',22,'LBRA','Primary key table LBR_LegalMessage','Y','Y','N','N','N','N','N','N','Legal Message',TO_TIMESTAMP('2008-02-05 13:34:29','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 05/02/2008 13h34min29s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000462 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 05/02/2008 13h34min29s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000668,0,1000463,1000025,TO_TIMESTAMP('2008-02-05 13:34:29','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'LBRA','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_TIMESTAMP('2008-02-05 13:34:29','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 05/02/2008 13h34min29s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000463 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 05/02/2008 13h34min29s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000674,0,1000464,1000025,TO_TIMESTAMP('2008-02-05 13:34:29','YYYY-MM-DD HH24:MI:SS'),100,'Text Message',255,'LBRA','Y','Y','Y','N','N','N','N','N','Text Message',TO_TIMESTAMP('2008-02-05 13:34:29','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 05/02/2008 13h34min29s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000464 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 05/02/2008 13h34min52s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000460
;

-- 05/02/2008 13h34min52s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=1000461
;

-- 05/02/2008 13h34min52s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=1000463
;

-- 05/02/2008 13h34min52s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1000464
;

-- 05/02/2008 13h34min59s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2008-02-05 13:34:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000463
;

-- 05/02/2008 13h36min43s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Reference (AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,ValidationType,AD_Client_ID) VALUES (0,1000033,TO_TIMESTAMP('2008-02-05 13:36:43','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','LBR_LegalMessage_ID',TO_TIMESTAMP('2008-02-05 13:36:43','YYYY-MM-DD HH24:MI:SS'),100,'T',0)
;

-- 05/02/2008 13h36min43s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1000033 AND EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Reference_ID!=t.AD_Reference_ID)
;

-- 05/02/2008 13h37min2s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_Table (AD_Display,AD_Key,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy,AD_Client_ID,AD_Reference_ID,AD_Table_ID) VALUES (1000674,1000666,0,TO_TIMESTAMP('2008-02-05 13:37:02','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N',TO_TIMESTAMP('2008-02-05 13:37:02','YYYY-MM-DD HH24:MI:SS'),100,0,1000033,1000032)
;

-- 05/02/2008 13h37min19s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,1000033,1000258,30,1000012,'LBR_LegalMessage_ID',TO_TIMESTAMP('2008-02-05 13:37:19','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_LegalMessage','LBRA',22,'Primary key table LBR_LegalMessage','Y','N','N','N','N','N','N','N','N','N','Y','Legal Message',0,TO_TIMESTAMP('2008-02-05 13:37:19','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000675)
;

-- 05/02/2008 13h37min19s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000675 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 05/02/2008 13h37min22s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_CFOPLine ADD COLUMN LBR_LegalMessage_ID NUMERIC(10)
;

-- 05/02/2008 14h0min2s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,1000033,1000258,30,1000009,'LBR_LegalMessage_ID',TO_TIMESTAMP('2008-02-05 14:00:02','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_LegalMessage','LBRA',22,'Primary key table LBR_LegalMessage','Y','N','N','N','N','N','N','N','N','N','Y','Legal Message',0,TO_TIMESTAMP('2008-02-05 14:00:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000676)
;

-- 05/02/2008 14h0min2s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000676 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 05/02/2008 14h0min4s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_NCM ADD COLUMN LBR_LegalMessage_ID NUMERIC(10)
;

-- 05/02/2008 14h0min37s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1000645
;

-- 05/02/2008 14h0min37s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Column WHERE AD_Column_ID=1000645
;

-- 05/02/2008 14h2min39s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Reference_Value_ID=1000033, AD_Element_ID=1000258, AD_Reference_ID=30, ColumnName='LBR_LegalMessage_ID', Description='Primary key table LBR_LegalMessage', FieldLength=22, Help='Primary key table LBR_LegalMessage', Name='Legal Message',Updated=TO_TIMESTAMP('2008-02-05 14:02:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000632
;

-- 05/02/2008 14h2min39s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Legal Message', Description='Primary key table LBR_LegalMessage', Help='Primary key table LBR_LegalMessage' WHERE AD_Column_ID=1000632 AND IsCentrallyMaintained='Y'
;

-- 05/02/2008 14h2min41s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_TaxConfig_BPartner ADD COLUMN LBR_LegalMessage_ID NUMERIC(10)
;

-- 05/02/2008 14h4min18s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Reference_Value_ID=1000033, AD_Element_ID=1000258, AD_Reference_ID=30, ColumnName='LBR_LegalMessage_ID', Description='Primary key table LBR_LegalMessage', FieldLength=22, Help='Primary key table LBR_LegalMessage', Name='Legal Message',Updated=TO_TIMESTAMP('2008-02-05 14:04:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000636
;

-- 05/02/2008 14h4min18s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Legal Message', Description='Primary key table LBR_LegalMessage', Help='Primary key table LBR_LegalMessage' WHERE AD_Column_ID=1000636 AND IsCentrallyMaintained='Y'
;

-- 05/02/2008 14h4min20s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_TaxConfig_BPGroup ADD COLUMN LBR_LegalMessage_ID NUMERIC(10)
;

-- 05/02/2008 14h6min20s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Reference_Value_ID=1000033, AD_Element_ID=1000258, AD_Reference_ID=30, ColumnName='LBR_LegalMessage_ID', Description='Primary key table LBR_LegalMessage', FieldLength=22, Help='Primary key table LBR_LegalMessage', Name='Legal Message',Updated=TO_TIMESTAMP('2008-02-05 14:06:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000639
;

-- 05/02/2008 14h6min20s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Legal Message', Description='Primary key table LBR_LegalMessage', Help='Primary key table LBR_LegalMessage' WHERE AD_Column_ID=1000639 AND IsCentrallyMaintained='Y'
;

-- 05/02/2008 14h6min21s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_TaxConfig_Product ADD COLUMN LBR_LegalMessage_ID NUMERIC(10)
;

-- 05/02/2008 14h6min48s BRST
-- Default comment for updating dictionary
insert into t_alter_column values('lbr_taxconfig_product','LBR_LegalMessage_ID','NUMERIC(10)',null,'NULL')
;

-- 05/02/2008 14h12min34s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Reference_Value_ID=1000033, AD_Element_ID=1000258, AD_Reference_ID=30, ColumnName='LBR_LegalMessage_ID', Description='Primary key table LBR_LegalMessage', FieldLength=22, Help='Primary key table LBR_LegalMessage', Name='Legal Message',Updated=TO_TIMESTAMP('2008-02-05 14:12:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000642
;

-- 05/02/2008 14h12min34s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Legal Message', Description='Primary key table LBR_LegalMessage', Help='Primary key table LBR_LegalMessage' WHERE AD_Column_ID=1000642 AND IsCentrallyMaintained='Y'
;

-- 05/02/2008 14h12min35s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_TaxConfig_ProductGroup ADD COLUMN LBR_LegalMessage_ID NUMERIC(10)
;

-- 05/02/2008 14h23min48s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Reference_Value_ID=1000033, AD_Element_ID=1000258, AD_Reference_ID=30, ColumnName='LBR_LegalMessage_ID', Description='Primary key table LBR_LegalMessage', FieldLength=22, Help='Primary key table LBR_LegalMessage', Name='Legal Message',Updated=TO_TIMESTAMP('2008-02-05 14:23:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000652
;

-- 05/02/2008 14h23min48s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Legal Message', Description='Primary key table LBR_LegalMessage', Help='Primary key table LBR_LegalMessage' WHERE AD_Column_ID=1000652 AND IsCentrallyMaintained='Y'
;

-- 05/02/2008 14h23min49s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_TaxConfig_Region ADD COLUMN LBR_LegalMessage_ID NUMERIC(10)
;

-- 05/02/2008 14h27min9s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000676,0,1000465,1000004,TO_TIMESTAMP('2008-02-05 14:27:09','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_LegalMessage',22,'LBRA','Primary key table LBR_LegalMessage','Y','Y','Y','N','N','N','N','N','Legal Message',TO_TIMESTAMP('2008-02-05 14:27:09','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 05/02/2008 14h27min9s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000465 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 05/02/2008 14h27min23s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1000448
;

-- 05/02/2008 14h27min23s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Field WHERE AD_Field_ID=1000448
;

-- 05/02/2008 14h27min46s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000675,0,1000466,1000008,TO_TIMESTAMP('2008-02-05 14:27:46','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_LegalMessage',22,'LBRA','Primary key table LBR_LegalMessage','Y','Y','Y','N','N','N','N','N','Legal Message',TO_TIMESTAMP('2008-02-05 14:27:46','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 05/02/2008 14h27min46s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000466 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 05/02/2008 14h28min26s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1000445
;

-- 05/02/2008 14h28min27s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Field WHERE AD_Field_ID=1000445
;

-- 05/02/2008 14h30min26s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1000648
;

-- 05/02/2008 14h30min26s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Column WHERE AD_Column_ID=1000648
;

-- 05/02/2008 14h33min26s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1000645
;

-- 05/02/2008 14h33min27s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Column WHERE AD_Column_ID=1000645
;

-- 05/02/2008 14h34min5s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Element_Trl WHERE AD_Element_ID=1000252
;

-- 05/02/2008 14h34min6s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Element WHERE AD_Element_ID=1000252
;

-- 05/02/2008 14h36min12s BRST
-- Default comment for updating dictionary
UPDATE AD_Table SET AD_Window_ID=1000018,Updated=TO_TIMESTAMP('2008-02-05 14:36:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1000032
;

-- 05/02/2008 14h37min15s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLength=60,Updated=TO_TIMESTAMP('2008-02-05 14:37:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000466
;

-- 05/02/2008 14h37min28s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLength=60,Updated=TO_TIMESTAMP('2008-02-05 14:37:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000465
;


ALTER TABLE adempiere.lbr_cfopline
    DROP COLUMN lbr_legalmessage
;

ALTER TABLE adempiere.lbr_ncm
    DROP COLUMN lbr_legalmessage
;


ALTER TABLE adempiere.lbr_taxconfig_bpartner
    DROP COLUMN lbr_legalmessage
;

ALTER TABLE adempiere.lbr_taxconfig_bpgroup
    DROP COLUMN lbr_legalmessage
;

ALTER TABLE adempiere.lbr_taxconfig_product
    DROP COLUMN lbr_legalmessage
;


ALTER TABLE adempiere.lbr_taxconfig_productgroup
    DROP COLUMN lbr_legalmessage
;

ALTER TABLE adempiere.lbr_taxconfig_region
    DROP COLUMN lbr_legalmessage
;


-- 05/02/2008 14h27min46s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000675,0,1000466,1000008,TO_TIMESTAMP('2008-02-05 14:27:46','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_LegalMessage',22,'LBRA','Primary key table LBR_LegalMessage','Y','Y','Y','N','N','N','N','N','Legal Message',TO_TIMESTAMP('2008-02-05 14:27:46','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 05/02/2008 14h27min46s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000466 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 05/02/2008 14h28min26s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1000445
;

-- 05/02/2008 14h28min27s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Field WHERE AD_Field_ID=1000445
;

-- 05/02/2008 14h30min26s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1000648
;

-- 05/02/2008 14h30min26s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Column WHERE AD_Column_ID=1000648
;

-- 05/02/2008 14h33min26s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1000645
;

-- 05/02/2008 14h33min27s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Column WHERE AD_Column_ID=1000645
;

-- 05/02/2008 14h34min5s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Element_Trl WHERE AD_Element_ID=1000252
;

-- 05/02/2008 14h34min6s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Element WHERE AD_Element_ID=1000252
;

-- 05/02/2008 14h36min12s BRST
-- Default comment for updating dictionary
UPDATE AD_Table SET AD_Window_ID=1000018,Updated=TO_TIMESTAMP('2008-02-05 14:36:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1000032
;

-- 05/02/2008 14h37min15s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLength=60,Updated=TO_TIMESTAMP('2008-02-05 14:37:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000466
;

-- 05/02/2008 14h37min28s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLength=60,Updated=TO_TIMESTAMP('2008-02-05 14:37:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000465
;

-- 05/02/2008 15h1min9s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,1000033,1000258,30,260,'LBR_LegalMessage_ID',TO_TIMESTAMP('2008-02-05 15:01:09','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_LegalMessage','LBRA',22,'Primary key table LBR_LegalMessage','Y','N','N','N','N','N','N','N','N','N','Y','Legal Message',0,TO_TIMESTAMP('2008-02-05 15:01:09','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000677)
;

-- 05/02/2008 15h1min9s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000677 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 05/02/2008 15h1min11s BRST
-- Default comment for updating dictionary
ALTER TABLE C_OrderLine ADD COLUMN LBR_LegalMessage_ID NUMERIC(10)
;

-- 05/02/2008 15h2min35s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,1000255,10,260,'lbr_TaxStatus_Taxing',TO_TIMESTAMP('2008-02-05 15:02:35','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',3,'Y','N','N','N','N','N','N','N','N','N','Y','Tax Status - Taxing',0,TO_TIMESTAMP('2008-02-05 15:02:35','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000678)
;

-- 05/02/2008 15h2min35s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000678 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 05/02/2008 15h2min38s BRST
-- Default comment for updating dictionary
ALTER TABLE C_OrderLine ADD COLUMN lbr_TaxStatus_Taxing VARCHAR(3)
;

-- 05/02/2008 15h3min26s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,1000033,1000258,30,333,'LBR_LegalMessage_ID',TO_TIMESTAMP('2008-02-05 15:03:26','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_LegalMessage','LBRA',22,'Primary key table LBR_LegalMessage','Y','N','N','N','N','N','N','N','N','N','Y','Legal Message',0,TO_TIMESTAMP('2008-02-05 15:03:26','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000679)
;

-- 05/02/2008 15h3min26s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000679 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 05/02/2008 15h3min27s BRST
-- Default comment for updating dictionary
ALTER TABLE C_InvoiceLine ADD COLUMN LBR_LegalMessage_ID NUMERIC(10)
;

-- 05/02/2008 15h4min22s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,1000255,10,333,'lbr_TaxStatus_Taxing',TO_TIMESTAMP('2008-02-05 15:04:22','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',3,'Y','N','N','N','N','N','N','N','N','N','Y','Tax Status - Taxing',0,TO_TIMESTAMP('2008-02-05 15:04:22','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000680)
;

-- 05/02/2008 15h4min22s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000680 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 05/02/2008 15h4min24s BRST
-- Default comment for updating dictionary
ALTER TABLE C_InvoiceLine ADD COLUMN lbr_TaxStatus_Taxing VARCHAR(3)
;

-- 05/02/2008 15h5min21s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000677,0,1000467,187,TO_TIMESTAMP('2008-02-05 15:05:21','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_LegalMessage',22,'LBRA','Primary key table LBR_LegalMessage','Y','Y','Y','N','N','N','N','N','Legal Message',TO_TIMESTAMP('2008-02-05 15:05:21','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 05/02/2008 15h5min21s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000467 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 05/02/2008 15h5min21s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000678,0,1000468,187,TO_TIMESTAMP('2008-02-05 15:05:21','YYYY-MM-DD HH24:MI:SS'),100,3,'LBRA','Y','Y','Y','N','N','N','N','N','Tax Status - Taxing',TO_TIMESTAMP('2008-02-05 15:05:21','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 05/02/2008 15h5min21s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000468 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 05/02/2008 15h5min39s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1000467
;

-- 05/02/2008 15h5min39s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=1000468
;

-- 05/02/2008 15h5min56s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=111,Updated=TO_TIMESTAMP('2008-02-05 15:05:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000467
;

-- 05/02/2008 15h6min8s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y', AD_FieldGroup_ID=111,Updated=TO_TIMESTAMP('2008-02-05 15:06:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000468
;

-- 05/02/2008 15h6min13s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2008-02-05 15:06:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000468
;

-- 05/02/2008 15h6min23s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2008-02-05 15:06:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000467
;

-- 05/02/2008 15h6min43s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (52007,0,1000469,263,TO_TIMESTAMP('2008-02-05 15:06:43','YYYY-MM-DD HH24:MI:SS'),100,'Return Material Authorization',22,'D','A Return Material Authorization may be required to accept returns and to create Credit Memos','Y','Y','Y','N','N','N','N','N','RMA',TO_TIMESTAMP('2008-02-05 15:06:43','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 05/02/2008 15h6min43s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000469 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 05/02/2008 15h6min53s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000469
;

-- 05/02/2008 15h6min53s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1000290
;

-- 05/02/2008 15h6min53s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=2954
;

-- 05/02/2008 15h6min53s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=6565
;

-- 05/02/2008 15h6min53s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=2958
;

-- 05/02/2008 15h6min53s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=2776
;

-- 05/02/2008 15h6min53s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=2766
;

-- 05/02/2008 15h6min53s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=2767
;

-- 05/02/2008 15h6min53s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=2765
;

-- 05/02/2008 15h6min53s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=2961
;

-- 05/02/2008 15h6min53s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=2770
;

-- 05/02/2008 15h6min53s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=8648
;

-- 05/02/2008 15h6min53s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=2763
;

-- 05/02/2008 15h6min53s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=3273
;

-- 05/02/2008 15h6min53s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=2953
;

-- 05/02/2008 15h6min53s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=2956
;

-- 05/02/2008 15h6min53s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=3112
;

-- 05/02/2008 15h6min53s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=2774
;

-- 05/02/2008 15h6min53s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=2775
;

-- 05/02/2008 15h6min54s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=2764
;

-- 05/02/2008 15h6min54s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=2768
;

-- 05/02/2008 15h6min54s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=6935
;

-- 05/02/2008 15h6min54s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=7794
;

-- 05/02/2008 15h6min54s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=7795
;

-- 05/02/2008 15h6min54s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=2786
;

-- 05/02/2008 15h6min54s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=2780
;

-- 05/02/2008 15h6min54s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=2778
;

-- 05/02/2008 15h6min54s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=2771
;

-- 05/02/2008 15h6min54s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=8657
;

-- 05/02/2008 15h6min54s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=10485
;

-- 05/02/2008 15h6min54s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=6564
;

-- 05/02/2008 15h6min54s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=2777
;

-- 05/02/2008 15h6min54s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=3663
;

-- 05/02/2008 15h6min54s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=3899
;

-- 05/02/2008 15h6min54s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=13700
;

-- 05/02/2008 15h6min54s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=53257
;

-- 05/02/2008 15h6min54s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=53258
;

-- 05/02/2008 15h6min58s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000679,0,1000470,270,TO_TIMESTAMP('2008-02-05 15:06:58','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_LegalMessage',22,'LBRA','Primary key table LBR_LegalMessage','Y','Y','Y','N','N','N','N','N','Legal Message',TO_TIMESTAMP('2008-02-05 15:06:58','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 05/02/2008 15h6min58s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000470 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 05/02/2008 15h6min59s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (52008,0,1000471,270,TO_TIMESTAMP('2008-02-05 15:06:58','YYYY-MM-DD HH24:MI:SS'),100,'Return Material Authorization Line',22,'D','Detail information about the returned goods','Y','Y','Y','N','N','N','N','N','RMA Line',TO_TIMESTAMP('2008-02-05 15:06:58','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 05/02/2008 15h6min59s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000471 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 05/02/2008 15h6min59s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000680,0,1000472,270,TO_TIMESTAMP('2008-02-05 15:06:59','YYYY-MM-DD HH24:MI:SS'),100,3,'LBRA','Y','Y','Y','N','N','N','N','N','Tax Status - Taxing',TO_TIMESTAMP('2008-02-05 15:06:59','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 05/02/2008 15h6min59s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000472 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 05/02/2008 15h7min6s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000471
;

-- 05/02/2008 15h7min6s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1000470
;

-- 05/02/2008 15h7min6s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1000472
;

-- 05/02/2008 15h7min16s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=111,Updated=TO_TIMESTAMP('2008-02-05 15:07:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000470
;

-- 05/02/2008 15h7min23s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y', AD_FieldGroup_ID=111,Updated=TO_TIMESTAMP('2008-02-05 15:07:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000472
;

-- 05/02/2008 15h7min34s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2008-02-05 15:07:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000472
;

-- 05/02/2008 15h7min37s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2008-02-05 15:07:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000470
;

-- 05/02/2008 15h10min21s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Menu (AD_Org_ID,AD_Client_ID,AD_Menu_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,"action",UpdatedBy) VALUES (0,0,1000024,1000018,TO_TIMESTAMP('2008-02-05 15:10:20','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','N','N','Legal Message',TO_TIMESTAMP('2008-02-05 15:10:20','YYYY-MM-DD HH24:MI:SS'),'W',100)
;

-- 05/02/2008 15h10min21s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=1000024 AND EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Menu_ID!=t.AD_Menu_ID)
;

-- 05/02/2008 15h10min21s BRST
-- Default comment for updating dictionary
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID,0, 'Y', CURRENT_TIMESTAMP, 0, CURRENT_TIMESTAMP, 0,t.AD_Tree_ID, 1000024, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000024)
;

-- 05/02/2008 15h10min33s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 05/02/2008 15h10min34s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 05/02/2008 15h10min34s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 05/02/2008 15h10min34s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 05/02/2008 15h10min34s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 05/02/2008 15h10min34s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 05/02/2008 15h10min34s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 05/02/2008 15h10min34s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 05/02/2008 15h10min34s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 05/02/2008 15h10min34s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 05/02/2008 15h10min34s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 05/02/2008 15h10min34s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 05/02/2008 15h10min34s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000019
;

-- 05/02/2008 15h10min34s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000018
;

-- 05/02/2008 15h10min34s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000013
;

-- 05/02/2008 15h10min34s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 05/02/2008 15h10min34s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=5, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 05/02/2008 15h10min34s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=6, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 05/02/2008 15h10min40s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000019
;

-- 05/02/2008 15h10min40s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000018
;

-- 05/02/2008 15h10min40s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000013
;

-- 05/02/2008 15h10min40s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 05/02/2008 15h10min40s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 05/02/2008 15h10min40s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=5, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 05/02/2008 15h10min40s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=6, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 05/02/2008 15h10min43s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000019
;

-- 05/02/2008 15h10min43s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000018
;

-- 05/02/2008 15h10min44s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000013
;

-- 05/02/2008 15h10min44s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 05/02/2008 15h10min44s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 05/02/2008 15h10min44s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=5, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 05/02/2008 15h10min44s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=6, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 05/02/2008 15h10min45s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000019
;

-- 05/02/2008 15h10min45s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000018
;

-- 05/02/2008 15h10min45s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000013
;

-- 05/02/2008 15h10min45s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000016
;

-- 05/02/2008 15h10min45s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000017
;

-- 05/02/2008 15h10min45s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=5, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 05/02/2008 15h10min45s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000015, SeqNo=6, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 05/02/2008 15h28min26s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET IsSelectionColumn='Y',Updated=TO_TIMESTAMP('2008-02-05 15:28:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000674
;

-- 05/02/2008 15h28min26s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Text Message', Description='Text Message', Help=NULL WHERE AD_Column_ID=1000674 AND IsCentrallyMaintained='Y'
;

-- 05/02/2008 15h51min11s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Reference_ID=10,Updated=TO_TIMESTAMP('2008-02-05 15:51:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000674
;