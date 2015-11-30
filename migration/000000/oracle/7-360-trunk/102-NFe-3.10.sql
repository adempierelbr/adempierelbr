-- 09/03/2015 13h56min39s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126513,1100011,0,17,1100001,1000027,'lbr_NFeEnv',TO_DATE('2015-03-09 13:56:38','YYYY-MM-DD HH24:MI:SS'),100,'U',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','NFe Environment',0,TO_DATE('2015-03-09 13:56:38','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/03/2015 13h56min39s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126513 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/03/2015 13h56min56s BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2015-03-09 13:56:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126513
;

-- 09/03/2015 13h57min6s BRT
ALTER TABLE LBR_NotaFiscal ADD lbr_NFeEnv CHAR(1) DEFAULT NULL 
;

-- 09/03/2015 13h57min57s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1126513,1124925,0,1000020,TO_DATE('2015-03-09 13:57:56','YYYY-MM-DD HH24:MI:SS'),100,22,'U','Y','Y','Y','N','N','N','N','N','NFe Environment',9140,0,TO_DATE('2015-03-09 13:57:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/03/2015 13h57min57s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124925 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/03/2015 13h58min2s BRT
UPDATE AD_Field SET EntityType='LBRA',Updated=TO_DATE('2015-03-09 13:58:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124925
;

-- 09/03/2015 13h59min23s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2015-03-09 13:59:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124925
;

-- 09/03/2015 13h59min46s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1126513,1124926,0,1000028,TO_DATE('2015-03-09 13:59:45','YYYY-MM-DD HH24:MI:SS'),100,22,'LBRA','Y','Y','Y','N','N','N','Y','N','NFe Environment',9130,0,TO_DATE('2015-03-09 13:59:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/03/2015 13h59min46s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124926 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/03/2015 11h3min39s BRT
INSERT INTO AD_Table (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsSystemLanguage,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES ('3',0,0,1120446,'N',TO_DATE('2015-03-02 11:03:34','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','Y','Y','N','Y','N','N','N','N',0,'Authorized Access to XML','L','LBR_AuthorizedAccessXML',TO_DATE('2015-03-02 11:03:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/03/2015 11h3min39s BRT
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=1120446 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- 02/03/2015 11h3min39s BRT
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,1153242,TO_DATE('2015-03-02 11:03:39','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LBR_AuthorizedAccessXML',1,'Y','N','Y','Y','LBR_AuthorizedAccessXML','N',1000000,TO_DATE('2015-03-02 11:03:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/03/2015 11h4min28s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126452,1884,0,13,1120446,'A_Asset_ID',TO_DATE('2015-03-02 11:04:27','YYYY-MM-DD HH24:MI:SS'),100,'Asset used internally or by customers','LBRA',22,'An asset is either created by purchasing or by delivering a product.  An asset can be used internally or be a customer asset.','Y','N','N','N','N','Y','Y','N','Y','N','N','Asset',0,TO_DATE('2015-03-02 11:04:27','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 02/03/2015 11h4min28s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126452 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/03/2015 11h4min29s BRT
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121698,0,'LBR_AuthorizedAccessXML_ID',TO_DATE('2015-03-02 11:04:28','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Authorized Access to XML','Authorized Access to XML',TO_DATE('2015-03-02 11:04:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/03/2015 11h4min29s BRT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121698 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 02/03/2015 11h4min29s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126453,1121698,0,13,1120446,'LBR_AuthorizedAccessXML_ID',TO_DATE('2015-03-02 11:04:28','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',22,'Y','N','N','Y','Y','Y','N','N','Y','N','N','Authorized Access to XML',1,TO_DATE('2015-03-02 11:04:28','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 02/03/2015 11h4min29s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126453 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/03/2015 11h4min30s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126454,102,0,19,1120446,129,'AD_Client_ID',TO_DATE('2015-03-02 11:04:29','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','LBRA',22,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','Y','Y','N','Y','N','N','Client',0,TO_DATE('2015-03-02 11:04:29','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 02/03/2015 11h4min30s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126454 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/03/2015 11h4min30s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126455,113,0,19,1120446,130,'AD_Org_ID',TO_DATE('2015-03-02 11:04:30','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','LBRA',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','Y','Y','N','Y','N','N','Organization',0,TO_DATE('2015-03-02 11:04:30','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 02/03/2015 11h4min30s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126455 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/03/2015 11h4min31s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126456,245,0,15,1120446,'Created',TO_DATE('2015-03-02 11:04:30','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','LBRA',7,'The Created field indicates the date that this record was created.','Y','N','N','N','N','Y','N','N','Y','N','Y','Created',0,TO_DATE('2015-03-02 11:04:30','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 02/03/2015 11h4min31s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126456 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/03/2015 11h4min31s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126457,246,0,18,110,1120446,'CreatedBy',TO_DATE('2015-03-02 11:04:31','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','LBRA',22,'The Created By field indicates the user who created this record.','Y','N','N','N','N','Y','N','N','Y','N','Y','Created By',0,TO_DATE('2015-03-02 11:04:31','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 02/03/2015 11h4min31s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126457 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/03/2015 11h4min32s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126458,275,0,10,1120446,'Description',TO_DATE('2015-03-02 11:04:31','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','LBRA',255,'A description is limited to 255 characters.','Y','N','N','N','N','N','N','N','Y','N','Y','Description',0,TO_DATE('2015-03-02 11:04:31','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 02/03/2015 11h4min32s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126458 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/03/2015 11h4min32s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126459,348,0,20,1120446,'IsActive',TO_DATE('2015-03-02 11:04:32','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','LBRA',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','Y','N','N','Y','N','Y','Active',0,TO_DATE('2015-03-02 11:04:32','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 02/03/2015 11h4min32s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126459 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/03/2015 11h4min32s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126460,607,0,15,1120446,'Updated',TO_DATE('2015-03-02 11:04:32','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','LBRA',7,'The Updated field indicates the date that this record was updated.','Y','N','N','N','N','Y','N','N','Y','N','Y','Updated',0,TO_DATE('2015-03-02 11:04:32','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 02/03/2015 11h4min32s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126460 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/03/2015 11h4min33s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126461,608,0,18,110,1120446,'UpdatedBy',TO_DATE('2015-03-02 11:04:32','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','LBRA',22,'The Updated By field indicates the user who updated this record.','Y','N','N','N','N','Y','N','N','Y','N','Y','Updated By',0,TO_DATE('2015-03-02 11:04:32','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 02/03/2015 11h4min33s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126461 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/03/2015 11h4min34s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126462,53643,0,15,1120446,'UseDate',TO_DATE('2015-03-02 11:04:33','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',7,'Y','N','N','N','N','Y','N','N','Y','N','Y','UseDate',0,TO_DATE('2015-03-02 11:04:33','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 02/03/2015 11h4min34s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126462 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/03/2015 11h4min35s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126463,1948,0,11,1120446,'UseUnits',TO_DATE('2015-03-02 11:04:34','YYYY-MM-DD HH24:MI:SS'),100,'Currently used units of the assets','LBRA',22,'Y','N','N','N','N','Y','N','N','Y','N','Y','Use units',0,TO_DATE('2015-03-02 11:04:34','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 02/03/2015 11h4min35s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126463 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/03/2015 11h4min47s BRT
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1126458
;

-- 02/03/2015 11h4min48s BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1126458
;

-- 02/03/2015 11h4min53s BRT
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1126462
;

-- 02/03/2015 11h4min53s BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1126462
;

-- 02/03/2015 11h4min57s BRT
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1126463
;

-- 02/03/2015 11h4min57s BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1126463
;

-- 02/03/2015 11h5min5s BRT
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1126452
;

-- 02/03/2015 11h5min5s BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1126452
;

-- 02/03/2015 11h7min31s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126464,1000009,0,10,1120446,'lbr_CNPJ',TO_DATE('2015-03-02 11:07:30','YYYY-MM-DD HH24:MI:SS'),100,'00.000.000/0000-00','Used to identify Legal Entities in Brazil','U',18,'Used to identify Legal Entities in Brazil','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','CNPJ',0,TO_DATE('2015-03-02 11:07:30','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 02/03/2015 11h7min31s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126464 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/03/2015 11h8min14s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,VFormat) VALUES (0,1126465,1000010,0,10,1120446,'lbr_CPF',TO_DATE('2015-03-02 11:08:13','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify individuals in Brazil','U',14,'Used to identify individuals in Brazil','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','CPF',0,TO_DATE('2015-03-02 11:08:13','YYYY-MM-DD HH24:MI:SS'),100,0,'000.000.000-00')
;

-- 02/03/2015 11h8min14s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126465 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/03/2015 11h9min20s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126466,1000008,0,17,1000000,1120446,'lbr_BPTypeBR',TO_DATE('2015-03-02 11:09:19','YYYY-MM-DD HH24:MI:SS'),100,'Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)','U',2,'Used to identify if the Business partner is a legal entity or an individual','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Brazilian BP Type',0,TO_DATE('2015-03-02 11:09:19','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 02/03/2015 11h9min20s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126466 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/03/2015 11h9min59s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126467,187,0,30,1120446,'C_BPartner_ID',TO_DATE('2015-03-02 11:09:58','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','U',10,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Business Partner ',0,TO_DATE('2015-03-02 11:09:58','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 02/03/2015 11h9min59s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126467 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/03/2015 11h11min3s BRT
CREATE TABLE LBR_AuthorizedAccessXML (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, C_BPartner_ID NUMBER(10) DEFAULT NULL , Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, IsActive CHAR(1) CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_AuthorizedAccessXML_ID NUMBER(10) NOT NULL, lbr_BPTypeBR NVARCHAR2(2) DEFAULT NULL , lbr_CNPJ NVARCHAR2(18) DEFAULT '00.000.000/0000-00', lbr_CPF NVARCHAR2(14) DEFAULT NULL , Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, CONSTRAINT LBR_AuthorizedAccessXML_Key PRIMARY KEY (LBR_AuthorizedAccessXML_ID))
;

-- 02/03/2015 11h14min39s BRT
UPDATE AD_Table SET Name='Authorized Access to XML NFe',Updated=TO_DATE('2015-03-02 11:14:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120446
;

-- 02/03/2015 11h14min39s BRT
UPDATE AD_Table_Trl SET IsTranslated='N' WHERE AD_Table_ID=1120446
;

-- 02/03/2015 11h14min39s BRT
UPDATE AD_Table_Trl SET Name='Authorized Access to XML NFe',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Table_ID=1120446
;

-- 02/03/2015 11h14min56s BRT
UPDATE AD_Table_Trl SET Name='Autoriza Acesso ao XML da NFe',IsTranslated='Y',Updated=TO_DATE('2015-03-02 11:14:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120446 AND AD_Language='pt_BR'
;

-- 02/03/2015 11h15min12s BRT
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,1120175,1120446,123,TO_DATE('2015-03-02 11:15:10','YYYY-MM-DD HH24:MI:SS'),100,'U','N','N','Y','N','N','Y','N','N','N','N','Authorized Access to XML NFe','N',120,0,TO_DATE('2015-03-02 11:15:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/03/2015 11h15min12s BRT
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1120175 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- 02/03/2015 11h15min28s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126459,1124851,0,1120175,TO_DATE('2015-03-02 11:15:26','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'LBRA','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_DATE('2015-03-02 11:15:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/03/2015 11h15min28s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124851 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/03/2015 11h15min28s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126453,1124852,0,1120175,TO_DATE('2015-03-02 11:15:28','YYYY-MM-DD HH24:MI:SS'),100,22,'LBRA','Y','Y','N','N','N','N','N','N','Authorized Access to XML',TO_DATE('2015-03-02 11:15:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/03/2015 11h15min28s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124852 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/03/2015 11h15min29s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126466,1124853,0,1120175,TO_DATE('2015-03-02 11:15:28','YYYY-MM-DD HH24:MI:SS'),100,'Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)',2,'U','Used to identify if the Business partner is a legal entity or an individual','Y','Y','Y','N','N','N','N','N','Brazilian BP Type',TO_DATE('2015-03-02 11:15:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/03/2015 11h15min29s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124853 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/03/2015 11h15min29s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126467,1124854,0,1120175,TO_DATE('2015-03-02 11:15:29','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner',10,'U','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','Y','N','N','N','N','N','Business Partner ',TO_DATE('2015-03-02 11:15:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/03/2015 11h15min29s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124854 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/03/2015 11h15min30s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126454,1124855,0,1120175,TO_DATE('2015-03-02 11:15:29','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'LBRA','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_DATE('2015-03-02 11:15:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/03/2015 11h15min30s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124855 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/03/2015 11h15min30s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126464,1124856,0,1120175,TO_DATE('2015-03-02 11:15:30','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify Legal Entities in Brazil',18,'U','Used to identify Legal Entities in Brazil','Y','Y','Y','N','N','N','N','N','CNPJ',TO_DATE('2015-03-02 11:15:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/03/2015 11h15min30s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124856 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/03/2015 11h15min31s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126465,1124857,0,1120175,TO_DATE('2015-03-02 11:15:30','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify individuals in Brazil',14,'U','Used to identify individuals in Brazil','Y','Y','Y','N','N','N','N','N','CPF',TO_DATE('2015-03-02 11:15:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/03/2015 11h15min31s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124857 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/03/2015 11h15min32s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126455,1124858,0,1120175,TO_DATE('2015-03-02 11:15:31','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'LBRA','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_DATE('2015-03-02 11:15:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/03/2015 11h15min32s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124858 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/03/2015 11h15min40s BRT
UPDATE AD_Tab SET EntityType='LBRA',Updated=TO_DATE('2015-03-02 11:15:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120175
;

-- 02/03/2015 11h15min44s BRT
UPDATE AD_Tab SET TabLevel=1,Updated=TO_DATE('2015-03-02 11:15:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120175
;

-- 02/03/2015 11h16min17s BRT
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=1124855
;

-- 02/03/2015 11h16min17s BRT
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=1124858
;

-- 02/03/2015 11h16min17s BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1124854
;

-- 02/03/2015 11h16min17s BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1124851
;

-- 02/03/2015 11h16min17s BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1124853
;

-- 02/03/2015 11h16min17s BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1124856
;

-- 02/03/2015 11h16min17s BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1124857
;

-- 02/03/2015 11h16min29s BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2015-03-02 11:16:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124858
;

-- 02/03/2015 11h17min4s BRT
UPDATE AD_Field SET EntityType='LBRA',Updated=TO_DATE('2015-03-02 11:17:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124854
;

-- 02/03/2015 11h17min11s BRT
UPDATE AD_Field SET EntityType='LBRA',Updated=TO_DATE('2015-03-02 11:17:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124853
;

-- 02/03/2015 11h17min16s BRT
UPDATE AD_Field SET EntityType='LBRA',Updated=TO_DATE('2015-03-02 11:17:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124856
;

-- 02/03/2015 11h17min20s BRT
UPDATE AD_Field SET EntityType='LBRA',Updated=TO_DATE('2015-03-02 11:17:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124857
;

-- 02/03/2015 11h17min53s BRT
UPDATE AD_Field SET DefaultValue='@C_BPartner_ID@', IsReadOnly='Y',Updated=TO_DATE('2015-03-02 11:17:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124854
;

-- 02/03/2015 11h18min10s BRT
UPDATE AD_Tab SET AD_Column_ID=1126467,Updated=TO_DATE('2015-03-02 11:18:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120175
;

-- 02/03/2015 11h18min19s BRT
UPDATE AD_Field SET DefaultValue=NULL,Updated=TO_DATE('2015-03-02 11:18:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124854
;

-- 02/03/2015 11h19min20s BRT
UPDATE AD_Field SET DisplayLogic='@lbr_BPTypeBR@ = ''PJ''',Updated=TO_DATE('2015-03-02 11:19:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124856
;

-- 02/03/2015 11h19min24s BRT
UPDATE AD_Field SET DisplayLogic='@lbr_BPTypeBR@ = ''PF''',Updated=TO_DATE('2015-03-02 11:19:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124857
;

-- 02/03/2015 11h21min4s BRT
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,1120176,1120446,110,TO_DATE('2015-03-02 11:21:03','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','N','Y','N','N','Y','N','N','N','N','Authorized Access to XML NFe','N',50,1,TO_DATE('2015-03-02 11:21:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/03/2015 11h21min4s BRT
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1120176 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- 02/03/2015 11h21min8s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126459,1124859,0,1120176,TO_DATE('2015-03-02 11:21:08','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'LBRA','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_DATE('2015-03-02 11:21:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/03/2015 11h21min8s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124859 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/03/2015 11h21min8s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126453,1124860,0,1120176,TO_DATE('2015-03-02 11:21:08','YYYY-MM-DD HH24:MI:SS'),100,22,'LBRA','Y','Y','N','N','N','N','N','N','Authorized Access to XML',TO_DATE('2015-03-02 11:21:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/03/2015 11h21min8s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124860 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/03/2015 11h21min9s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126466,1124861,0,1120176,TO_DATE('2015-03-02 11:21:08','YYYY-MM-DD HH24:MI:SS'),100,'Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)',2,'U','Used to identify if the Business partner is a legal entity or an individual','Y','Y','Y','N','N','N','N','N','Brazilian BP Type',TO_DATE('2015-03-02 11:21:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/03/2015 11h21min9s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124861 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/03/2015 11h21min9s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126467,1124862,0,1120176,TO_DATE('2015-03-02 11:21:09','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner',10,'U','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','Y','N','N','N','N','N','Business Partner ',TO_DATE('2015-03-02 11:21:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/03/2015 11h21min9s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124862 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/03/2015 11h21min9s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126454,1124863,0,1120176,TO_DATE('2015-03-02 11:21:09','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'LBRA','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_DATE('2015-03-02 11:21:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/03/2015 11h21min9s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124863 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/03/2015 11h21min10s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126464,1124864,0,1120176,TO_DATE('2015-03-02 11:21:09','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify Legal Entities in Brazil',18,'U','Used to identify Legal Entities in Brazil','Y','Y','Y','N','N','N','N','N','CNPJ',TO_DATE('2015-03-02 11:21:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/03/2015 11h21min10s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124864 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/03/2015 11h21min10s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126465,1124865,0,1120176,TO_DATE('2015-03-02 11:21:10','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify individuals in Brazil',14,'U','Used to identify individuals in Brazil','Y','Y','Y','N','N','N','N','N','CPF',TO_DATE('2015-03-02 11:21:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/03/2015 11h21min10s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124865 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/03/2015 11h21min11s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126455,1124866,0,1120176,TO_DATE('2015-03-02 11:21:10','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'LBRA','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_DATE('2015-03-02 11:21:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/03/2015 11h21min11s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124866 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/03/2015 11h21min20s BRT
UPDATE AD_Tab SET AD_Column_ID=1126455,Updated=TO_DATE('2015-03-02 11:21:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120176
;

-- 02/03/2015 11h21min48s BRT
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=1124863
;

-- 02/03/2015 11h21min48s BRT
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=1124866
;

-- 02/03/2015 11h21min48s BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1124862
;

-- 02/03/2015 11h21min48s BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1124859
;

-- 02/03/2015 11h21min48s BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1124861
;

-- 02/03/2015 11h21min49s BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1124864
;

-- 02/03/2015 11h21min49s BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1124865
;

-- 02/03/2015 11h21min54s BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2015-03-02 11:21:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124866
;

-- 02/03/2015 11h21min57s BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2015-03-02 11:21:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124859
;

-- 02/03/2015 11h22min20s BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2015-03-02 11:22:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124851
;

-- 02/03/2015 11h31min21s BRT
UPDATE AD_Column SET DefaultValue=NULL,Updated=TO_DATE('2015-03-02 11:31:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126466
;

-- 02/03/2015 11h31min25s BRT
UPDATE AD_Column SET DefaultValue='PJ',Updated=TO_DATE('2015-03-02 11:31:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126466
;

-- 02/03/2015 11h31min30s BRT
ALTER TABLE LBR_AuthorizedAccessXML MODIFY lbr_BPTypeBR NVARCHAR2(2) DEFAULT 'PJ'
;

-- 02/03/2015 11h31min46s BRT
UPDATE AD_Field SET DisplayLogic=NULL,Updated=TO_DATE('2015-03-02 11:31:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124864
;

-- 02/03/2015 11h31min50s BRT
UPDATE AD_Field SET DisplayLogic='@lbr_BPTypeBR@ = ''PJ''',Updated=TO_DATE('2015-03-02 11:31:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124864
;

-- 02/03/2015 11h31min54s BRT
UPDATE AD_Field SET DisplayLogic=NULL,Updated=TO_DATE('2015-03-02 11:31:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124865
;

-- 02/03/2015 11h31min57s BRT
UPDATE AD_Field SET DisplayLogic='@lbr_BPTypeBR@ = ''PF''',Updated=TO_DATE('2015-03-02 11:31:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124865
;

-- 27/02/2015 17h11min9s BRT
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121695,0,'lbr_BPCityCode',TO_DATE('2015-02-27 17:11:08','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Cod. Cidade','Cod. Cidade',TO_DATE('2015-02-27 17:11:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/02/2015 17h11min9s BRT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121695 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 27/02/2015 17h11min41s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126448,1121695,0,11,1000027,'lbr_BPCityCode',TO_DATE('2015-02-27 17:11:40','YYYY-MM-DD HH24:MI:SS'),100,'U',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Cod. Cidade',0,TO_DATE('2015-02-27 17:11:40','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 27/02/2015 17h11min41s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126448 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 27/02/2015 17h11min49s BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2015-02-27 17:11:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126448
;

-- 27/02/2015 17h12min6s BRT
ALTER TABLE LBR_NotaFiscal ADD lbr_BPCityCode NUMBER(10) DEFAULT NULL 
;

-- 27/02/2015 17h13min45s BRT
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121696,0,'lbr_BPDeliveryCityCode',TO_DATE('2015-02-27 17:13:44','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Cod. Cidade','Cod. Cidade',TO_DATE('2015-02-27 17:13:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/02/2015 17h13min45s BRT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121696 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 27/02/2015 17h14min14s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126449,1121696,0,11,1000027,'lbr_BPDeliveryCityCode',TO_DATE('2015-02-27 17:14:13','YYYY-MM-DD HH24:MI:SS'),100,'U',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Cod. Cidade',0,TO_DATE('2015-02-27 17:14:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 27/02/2015 17h14min14s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126449 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 27/02/2015 17h14min21s BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2015-02-27 17:14:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126449
;

-- 27/02/2015 17h14min22s BRT
ALTER TABLE LBR_NotaFiscal ADD lbr_BPDeliveryCityCode NUMBER(10) DEFAULT NULL 
;

-- 27/02/2015 17h15min14s BRT
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121697,0,'lbr_BPCountryCode',TO_DATE('2015-02-27 17:15:14','YYYY-MM-DD HH24:MI:SS'),100,'Country Code used for issue Nota Fiscal','U','Country Code used for issue Nota Fiscal. Codes from BCB (Banco Central do Brasil)','Y','Country Code','Country Code',TO_DATE('2015-02-27 17:15:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/02/2015 17h15min14s BRT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121697 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 27/02/2015 17h15min24s BRT
UPDATE AD_Element SET EntityType='LBRA',Updated=TO_DATE('2015-02-27 17:15:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121697
;

-- 27/02/2015 17h16min9s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126450,1121697,0,10,1000027,'lbr_BPCountryCode',TO_DATE('2015-02-27 17:16:08','YYYY-MM-DD HH24:MI:SS'),100,'Country Code used for issue Nota Fiscal','U',5,'Country Code used for issue Nota Fiscal. Codes from BCB (Banco Central do Brasil)','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Country Code',0,TO_DATE('2015-02-27 17:16:08','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 27/02/2015 17h16min9s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126450 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 27/02/2015 17h16min13s BRT
ALTER TABLE LBR_NotaFiscal ADD lbr_BPCountryCode NVARCHAR2(5) DEFAULT NULL 
;

-- 27/02/2015 14h13min27s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1100012,1121532,TO_DATE('2015-02-27 14:13:26','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Devolução/Retorno de Mercadoria',TO_DATE('2015-02-27 14:13:26','YYYY-MM-DD HH24:MI:SS'),100,'4')
;

-- 27/02/2015 14h13min27s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121532 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 27/02/2015 14h21min17s BRT
UPDATE AD_Ref_List SET Name='Devolução/Retorno de Mercadoria',Updated=TO_DATE('2015-02-27 14:21:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121532
;

-- 27/02/2015 14h21min17s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121532
;

-- 27/02/2015 14h21min17s BRT
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Devolução/Retorno de Mercadoria',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121532
;

-- 27/02/2015 14h21min51s BRT
UPDATE AD_Element SET Help='1 - NFe normal
2 - NFe complementar
3 - NFe de ajuste
4 - Devolução/Retorno de Mercadoria',Updated=TO_DATE('2015-02-27 14:21:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1100066
;

-- 27/02/2015 14h21min51s BRT
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=1100066
;

-- 27/02/2015 14h21min51s BRT
UPDATE AD_Element_Trl SET Description='Define a Finalidade da NFe',Help='1 - NFe normal
2 - NFe complementar
3 - NFe de ajuste
4 - Devolução/Retorno de Mercadoria',Name='Finalidade NFe',PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,PrintName='Finalidade NFe',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Element_ID=1100066
;

-- 27/02/2015 14h21min51s BRT
UPDATE AD_Column SET ColumnName='lbr_FinNFe', Name='Finalidade NFe', Description='Define a Finalidade da NFe', Help='1 - NFe normal
2 - NFe complementar
3 - NFe de ajuste
4 - Devolução/Retorno de Mercadoria' WHERE AD_Element_ID=1100066
;

-- 27/02/2015 14h21min51s BRT
UPDATE AD_Process_Para SET ColumnName='lbr_FinNFe', Name='Finalidade NFe', Description='Define a Finalidade da NFe', Help='1 - NFe normal
2 - NFe complementar
3 - NFe de ajuste
4 - Devolução/Retorno de Mercadoria', AD_Element_ID=1100066 WHERE UPPER(ColumnName)='LBR_FINNFE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 27/02/2015 14h21min51s BRT
UPDATE AD_Process_Para SET ColumnName='lbr_FinNFe', Name='Finalidade NFe', Description='Define a Finalidade da NFe', Help='1 - NFe normal
2 - NFe complementar
3 - NFe de ajuste
4 - Devolução/Retorno de Mercadoria' WHERE AD_Element_ID=1100066 AND IsCentrallyMaintained='Y'
;

-- 27/02/2015 14h21min51s BRT
UPDATE AD_Field SET Name='Finalidade NFe', Description='Define a Finalidade da NFe', Help='1 - NFe normal
2 - NFe complementar
3 - NFe de ajuste
4 - Devolução/Retorno de Mercadoria' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1100066) AND IsCentrallyMaintained='Y'
;

-- 13/03/2015 11h54min53s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1100002,1121546,TO_DATE('2015-03-13 11:54:51','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','0 - No DANFE',TO_DATE('2015-03-13 11:54:51','YYYY-MM-DD HH24:MI:SS'),100,'0')
;

-- 13/03/2015 11h54min53s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121546 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 13/03/2015 11h55min27s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='0 - Sem Geração de DANFE',Updated=TO_DATE('2015-03-13 11:55:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121546 AND AD_Language='pt_BR'
;

-- 13/03/2015 11h56min24s BRT
UPDATE AD_Ref_List SET Name='1 - Normal DANFE - Portrait',Updated=TO_DATE('2015-03-13 11:56:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1100004
;

-- 13/03/2015 11h56min24s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1100004
;

-- 13/03/2015 11h56min24s BRT
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='1 - Normal DANFE - Portrait',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1100004
;

-- 13/03/2015 11h56min40s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='DANFE Normal - Retrato',Updated=TO_DATE('2015-03-13 11:56:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1100004 AND AD_Language='es_MX'
;

-- 13/03/2015 12h0min0s BRT
UPDATE AD_Ref_List SET Name='2 - Normal DANFE - Landscape',Updated=TO_DATE('2015-03-13 12:00:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1100005
;

-- 13/03/2015 12h0min0s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1100005
;

-- 13/03/2015 12h0min0s BRT
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='2 - Normal DANFE - Landscape',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1100005
;

-- 13/03/2015 12h0min23s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='DANFE Normal - Paisagem',Updated=TO_DATE('2015-03-13 12:00:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1100005 AND AD_Language='pt_BR'
;

-- 13/03/2015 12h0min32s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='DANFE Normal - Retrato',Updated=TO_DATE('2015-03-13 12:00:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1100004 AND AD_Language='pt_BR'
;

-- 13/03/2015 12h0min42s BRT
UPDATE AD_Ref_List_Trl SET Name='1 - Normal DANFE - Portrait',Updated=TO_DATE('2015-03-13 12:00:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1100004 AND AD_Language='es_MX'
;

-- 13/03/2015 12h0min50s BRT
UPDATE AD_Ref_List_Trl SET Name='1 - DANFE Normal - Retrato',Updated=TO_DATE('2015-03-13 12:00:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1100004 AND AD_Language='pt_BR'
;

-- 13/03/2015 12h0min59s BRT
UPDATE AD_Ref_List_Trl SET Name='2 - DANFE Normal - Paisagem',Updated=TO_DATE('2015-03-13 12:00:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1100005 AND AD_Language='pt_BR'
;

-- 13/03/2015 12h1min54s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1100002,1121547,TO_DATE('2015-03-13 12:01:53','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','3 - Simple DANFE',TO_DATE('2015-03-13 12:01:53','YYYY-MM-DD HH24:MI:SS'),100,'3')
;

-- 13/03/2015 12h1min54s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121547 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 13/03/2015 12h2min6s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='3 - DANFE Simplificada',Updated=TO_DATE('2015-03-13 12:02:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121547 AND AD_Language='pt_BR'
;

-- 13/03/2015 12h2min42s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1100002,1121548,TO_DATE('2015-03-13 12:02:41','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','4 - DANFE NFC-e',TO_DATE('2015-03-13 12:02:41','YYYY-MM-DD HH24:MI:SS'),100,'4')
;

-- 13/03/2015 12h2min42s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121548 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 13/03/2015 12h6min47s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1100002,1121549,TO_DATE('2015-03-13 12:06:46','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','5 - DANFE NFC-e in Eletronic Message',TO_DATE('2015-03-13 12:06:46','YYYY-MM-DD HH24:MI:SS'),100,'5')
;

-- 13/03/2015 12h6min47s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121549 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 13/03/2015 12h6min52s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_DATE('2015-03-13 12:06:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121548 AND AD_Language='pt_BR'
;

-- 13/03/2015 12h7min14s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='5 - DANFE NFC-e em Mensagem Eletrônica',Updated=TO_DATE('2015-03-13 12:07:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121549 AND AD_Language='pt_BR'
;

-- 13/03/2015 12h7min44s BRT
UPDATE AD_Ref_List_Trl SET Description='O envio de mensagem eletrônica pode ser feita de forma simultânea com a impressão do DANFE; usar o tpImp=5 quando esta for a única forma de disponibilização do DANFE',Updated=TO_DATE('2015-03-13 12:07:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121549 AND AD_Language='pt_BR'
;

-- 27/02/2015 15h44min7s BRT
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121694,0,'LBR_IndPres',TO_DATE('2015-02-27 15:44:06','YYYY-MM-DD HH24:MI:SS'),100,'Indicador de presença do comprador no estabelecimento comercial no momento da operação','U','Y','Indicação de Atendimento Presencial','Indicação de Atendimento Presencial',TO_DATE('2015-02-27 15:44:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/02/2015 15h44min7s BRT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121694 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 27/02/2015 15h44min11s BRT
UPDATE AD_Element_Trl SET IsTranslated='Y',Updated=TO_DATE('2015-02-27 15:44:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121694 AND AD_Language='pt_BR'
;

-- 27/02/2015 15h45min9s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126444,1121694,0,17,1000027,'LBR_IndPres',TO_DATE('2015-02-27 15:45:08','YYYY-MM-DD HH24:MI:SS'),100,'Indicador de presença do comprador no estabelecimento comercial no momento da operação','U',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Indicação de Atendimento Presencial',0,TO_DATE('2015-02-27 15:45:08','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 27/02/2015 15h45min10s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126444 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 27/02/2015 15h48min29s BRT
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120204,TO_DATE('2015-02-27 15:48:27','YYYY-MM-DD HH24:MI:SS'),100,'Indicador de presença do comprador no estabelecimento comercial no momento da operação','U','Criado para ser usado no Elemento LBR_IndPres','Y','N','Indicação de Atendimento Presencial',TO_DATE('2015-02-27 15:48:27','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 27/02/2015 15h48min29s BRT
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120204 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 27/02/2015 15h49min33s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120204,1121533,TO_DATE('2015-02-27 15:49:32','YYYY-MM-DD HH24:MI:SS'),100,'Utilizar para Nota Fiscal complementar ou de ajuste','U','Y','Não se aplica',TO_DATE('2015-02-27 15:49:32','YYYY-MM-DD HH24:MI:SS'),100,'0')
;

-- 27/02/2015 15h49min33s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121533 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 27/02/2015 15h49min50s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120204,1121534,TO_DATE('2015-02-27 15:49:49','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Operação Presencial',TO_DATE('2015-02-27 15:49:49','YYYY-MM-DD HH24:MI:SS'),100,'1')
;

-- 27/02/2015 15h49min50s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121534 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 27/02/2015 15h49min58s BRT
UPDATE AD_Ref_List SET Name='Não se Aplica',Updated=TO_DATE('2015-02-27 15:49:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121533
;

-- 27/02/2015 15h49min58s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121533
;

-- 27/02/2015 15h49min58s BRT
UPDATE AD_Ref_List_Trl SET Description='Utilizar para Nota Fiscal complementar ou de ajuste',Name='Não se Aplica',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121533
;

-- 27/02/2015 15h50min46s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120204,1121536,TO_DATE('2015-02-27 15:50:46','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Operação não Presencial, pela Internet',TO_DATE('2015-02-27 15:50:46','YYYY-MM-DD HH24:MI:SS'),100,'2')
;

-- 27/02/2015 15h50min46s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121536 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 27/02/2015 15h50min56s BRT
UPDATE AD_Ref_List SET EntityType='LBRA',Updated=TO_DATE('2015-02-27 15:50:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121536
;

-- 27/02/2015 15h51min0s BRT
UPDATE AD_Ref_List SET EntityType='LBRA',Updated=TO_DATE('2015-02-27 15:51:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121534
;

-- 27/02/2015 15h51min4s BRT
UPDATE AD_Ref_List SET EntityType='LBRA',Updated=TO_DATE('2015-02-27 15:51:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121533
;

-- 27/02/2015 15h51min20s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120204,1121537,TO_DATE('2015-02-27 15:51:20','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Operação não Presencial, Teleatendimento',TO_DATE('2015-02-27 15:51:20','YYYY-MM-DD HH24:MI:SS'),100,'3')
;

-- 27/02/2015 15h51min20s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121537 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 27/02/2015 15h51min40s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120204,1121538,TO_DATE('2015-02-27 15:51:40','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','NFC-e em Operação com Entrega em Domicílio',TO_DATE('2015-02-27 15:51:40','YYYY-MM-DD HH24:MI:SS'),100,'4')
;

-- 27/02/2015 15h51min40s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121538 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 27/02/2015 15h52min10s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120204,1121539,TO_DATE('2015-02-27 15:52:09','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Operação não Presencial, Outros',TO_DATE('2015-02-27 15:52:09','YYYY-MM-DD HH24:MI:SS'),100,'9')
;

-- 27/02/2015 15h52min10s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121539 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 27/02/2015 15h52min30s BRT
UPDATE AD_Reference SET EntityType='LBRA',Updated=TO_DATE('2015-02-27 15:52:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120204
;

-- 27/02/2015 15h52min43s BRT
UPDATE AD_Element SET EntityType='LBRA',Updated=TO_DATE('2015-02-27 15:52:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121694
;

-- 27/02/2015 15h53min13s BRT
UPDATE AD_Reference SET Name='LBR_IndPres',Updated=TO_DATE('2015-02-27 15:53:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120204
;

-- 27/02/2015 15h53min13s BRT
UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=1120204
;

-- 27/02/2015 15h53min13s BRT
UPDATE AD_Reference_Trl SET Description='Indicador de presença do comprador no estabelecimento comercial no momento da operação',Help='Criado para ser usado no Elemento LBR_IndPres',Name='LBR_IndPres',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Reference_ID=1120204
;

-- 27/02/2015 15h53min17s BRT
UPDATE AD_Column SET AD_Reference_Value_ID=1120204,Updated=TO_DATE('2015-02-27 15:53:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126444
;

-- 27/02/2015 15h56min3s BRT
UPDATE AD_Column SET DefaultValue='9',Updated=TO_DATE('2015-02-27 15:56:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126444
;

-- 27/02/2015 15h56min12s BRT
ALTER TABLE LBR_NotaFiscal ADD LBR_IndPres CHAR(1) DEFAULT '9'
;

-- 27/02/2015 15h59min27s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1126444,1124845,0,1000020,TO_DATE('2015-02-27 15:59:26','YYYY-MM-DD HH24:MI:SS'),100,'Indicador de presença do comprador no estabelecimento comercial no momento da operação',22,'LBRA','Y','Y','Y','N','N','N','N','N','Indicação de Atendimento Presencial',9120,0,TO_DATE('2015-02-27 15:59:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/02/2015 15h59min27s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124845 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 27/02/2015 16h0min20s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1126444,1124846,0,1000028,TO_DATE('2015-02-27 16:00:20','YYYY-MM-DD HH24:MI:SS'),100,'Indicador de presença do comprador no estabelecimento comercial no momento da operação',22,'U','Y','Y','Y','N','N','N','N','N','Indicação de Atendimento Presencial',9120,0,TO_DATE('2015-02-27 16:00:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/02/2015 16h0min20s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124846 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 27/02/2015 16h0min33s BRT
UPDATE AD_Field SET EntityType='LBRA',Updated=TO_DATE('2015-02-27 16:00:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124846
;

-- 27/02/2015 16h15min21s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126445,1121694,0,17,1120204,259,'LBR_IndPres',TO_DATE('2015-02-27 16:15:19','YYYY-MM-DD HH24:MI:SS'),100,'Indicador de presença do comprador no estabelecimento comercial no momento da operação','U',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Indicação de Atendimento Presencial',0,TO_DATE('2015-02-27 16:15:19','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 27/02/2015 16h15min21s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126445 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 27/02/2015 16h15min46s BRT
UPDATE AD_Reference_Trl SET IsTranslated='Y',Name='LBR_IndPres',Updated=TO_DATE('2015-02-27 16:15:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120204 AND AD_Language='pt_BR'
;

-- 27/02/2015 16h16min7s BRT
UPDATE AD_Column SET DefaultValue='9',Updated=TO_DATE('2015-02-27 16:16:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126445
;

-- 27/02/2015 16h16min10s BRT
ALTER TABLE C_Order ADD LBR_IndPres CHAR(1) DEFAULT '9'
;

-- 27/02/2015 16h16min36s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1126445,1124847,0,186,TO_DATE('2015-02-27 16:16:35','YYYY-MM-DD HH24:MI:SS'),100,'Indicador de presença do comprador no estabelecimento comercial no momento da operação',0,'U','Y','Y','Y','N','N','N','N','Y','Indicação de Atendimento Presencial',570,0,TO_DATE('2015-02-27 16:16:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/02/2015 16h16min36s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124847 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 27/02/2015 16h16min46s BRT
UPDATE AD_Field SET SeqNo=65,Updated=TO_DATE('2015-02-27 16:16:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124847
;

-- 27/02/2015 16h17min47s BRT
UPDATE AD_Field SET DisplayLogic='@lbr_TransactionType@ = ''END''',Updated=TO_DATE('2015-02-27 16:17:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124847
;

-- 27/02/2015 16h17min52s BRT
UPDATE AD_Field SET EntityType='LBRA',Updated=TO_DATE('2015-02-27 16:17:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124847
;

-- 27/02/2015 16h19min11s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126446,1121694,0,17,1120204,318,'LBR_IndPres',TO_DATE('2015-02-27 16:19:10','YYYY-MM-DD HH24:MI:SS'),100,'9','Indicador de presença do comprador no estabelecimento comercial no momento da operação','U',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Indicação de Atendimento Presencial',0,TO_DATE('2015-02-27 16:19:10','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 27/02/2015 16h19min11s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126446 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 27/02/2015 16h19min21s BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2015-02-27 16:19:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126446
;

-- 27/02/2015 16h19min24s BRT
ALTER TABLE C_Invoice ADD LBR_IndPres CHAR(1) DEFAULT '9'
;

-- 27/02/2015 16h19min45s BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2015-02-27 16:19:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126445
;

-- 27/02/2015 16h20min32s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1126446,1124848,0,263,TO_DATE('2015-02-27 16:20:31','YYYY-MM-DD HH24:MI:SS'),100,'Indicador de presença do comprador no estabelecimento comercial no momento da operação',22,'U','Y','Y','Y','N','N','N','N','N','Indicação de Atendimento Presencial',85,0,TO_DATE('2015-02-27 16:20:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/02/2015 16h20min32s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124848 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 27/02/2015 16h20min38s BRT
UPDATE AD_Field SET EntityType='LBRA',Updated=TO_DATE('2015-02-27 16:20:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124848
;

-- 27/02/2015 16h20min48s BRT
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2015-02-27 16:20:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124847
;

-- 27/02/2015 16h20min51s BRT
UPDATE AD_Field SET DisplayLogic='@lbr_TransactionType@ = ''END''',Updated=TO_DATE('2015-02-27 16:20:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124848
;

-- 27/02/2015 16h21min14s BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2015-02-27 16:21:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124848
;

-- 27/02/2015 16h24min33s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126447,1121694,0,17,1120204,228,'LBR_IndPres',TO_DATE('2015-02-27 16:24:32','YYYY-MM-DD HH24:MI:SS'),100,'Indicador de presença do comprador no estabelecimento comercial no momento da operação','LBRA',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Indicação de Atendimento Presencial',0,TO_DATE('2015-02-27 16:24:32','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 27/02/2015 16h24min33s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126447 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 27/02/2015 16h25min20s BRT
ALTER TABLE AD_OrgInfo ADD LBR_IndPres CHAR(1) DEFAULT NULL 
;

-- 27/02/2015 16h25min28s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1126447,1124849,0,170,TO_DATE('2015-02-27 16:25:27','YYYY-MM-DD HH24:MI:SS'),100,'Indicador de presença do comprador no estabelecimento comercial no momento da operação',0,'U','Y','Y','Y','N','N','N','N','N','Indicação de Atendimento Presencial',400,0,TO_DATE('2015-02-27 16:25:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/02/2015 16h25min28s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124849 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 27/02/2015 16h25min35s BRT
UPDATE AD_Field SET DisplayLength=22, EntityType='LBRA',Updated=TO_DATE('2015-02-27 16:25:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124849
;

-- 10/03/2015 9h20min43s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:20:43','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','2',1120772,'NfeInutilizacao',TO_DATE('2015-03-10 09:20:43','YYYY-MM-DD HH24:MI:SS'),100,'https://homnfe.sefaz.am.gov.br/services2/services/NfeInutilizacao2','3.10')
;

-- 10/03/2015 9h21min26s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:21:26','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','2',1120773,'NfeConsultaProtocolo',TO_DATE('2015-03-10 09:21:26','YYYY-MM-DD HH24:MI:SS'),100,'https://homnfe.sefaz.am.gov.br/services2/services/NfeConsulta2','3.10')
;

-- 10/03/2015 9h21min43s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:21:42','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','2',1120774,'NfeStatusServico',TO_DATE('2015-03-10 09:21:42','YYYY-MM-DD HH24:MI:SS'),100,'https://homnfe.sefaz.am.gov.br/services2/services/NfeStatusServico2','3.10')
;

-- 10/03/2015 9h22min1s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:22:01','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','2',1120775,'NfeConsultaCadastro',TO_DATE('2015-03-10 09:22:01','YYYY-MM-DD HH24:MI:SS'),100,'https://homnfe.sefaz.am.gov.br/services2/services/cadconsultacadastro2','3.10')
;

-- 10/03/2015 9h22min19s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:22:19','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','2',1120776,'NFeAutorizacao',TO_DATE('2015-03-10 09:22:19','YYYY-MM-DD HH24:MI:SS'),100,'https://homnfe.sefaz.am.gov.br/services2/services/NfeAutorizacao','3.10')
;

-- 10/03/2015 9h22min53s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:22:52','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','2',1120777,'NFeRetAutorizacao',TO_DATE('2015-03-10 09:22:52','YYYY-MM-DD HH24:MI:SS'),100,'https://homnfe.sefaz.am.gov.br/services2/services/NfeRetAutorizacao','3.10')
;

-- 10/03/2015 9h23min14s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:23:14','YYYY-MM-DD HH24:MI:SS'),100,445,'Y','2',1120778,'NfeConsultaCadastro',TO_DATE('2015-03-10 09:23:14','YYYY-MM-DD HH24:MI:SS'),100,'https://hnfe.sefaz.ba.gov.br/webservices/nfenw/CadConsultaCadastro2.asmx','3.10')
;

-- 10/03/2015 9h23min33s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:23:33','YYYY-MM-DD HH24:MI:SS'),100,445,'Y','2',1120779,'RecepcaoEvento',TO_DATE('2015-03-10 09:23:33','YYYY-MM-DD HH24:MI:SS'),100,'https://hnfe.sefaz.ba.gov.br/webservices/sre/recepcaoevento.asmx','3.10')
;

-- 10/03/2015 9h23min51s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:23:51','YYYY-MM-DD HH24:MI:SS'),100,445,'Y','2',1120780,'NfeInutilizacao',TO_DATE('2015-03-10 09:23:51','YYYY-MM-DD HH24:MI:SS'),100,'https://hnfe.sefaz.ba.gov.br/webservices/NfeInutilizacao/NfeInutilizacao.asmx','3.10')
;

-- 10/03/2015 9h24min12s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:24:12','YYYY-MM-DD HH24:MI:SS'),100,445,'Y','2',1120781,'NfeConsultaProtocolo',TO_DATE('2015-03-10 09:24:12','YYYY-MM-DD HH24:MI:SS'),100,'https://hnfe.sefaz.ba.gov.br/webservices/NfeConsulta/NfeConsulta.asmx','3.10')
;

-- 10/03/2015 9h24min31s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:24:31','YYYY-MM-DD HH24:MI:SS'),100,445,'Y','2',1120782,'NfeStatusServico',TO_DATE('2015-03-10 09:24:31','YYYY-MM-DD HH24:MI:SS'),100,'https://hnfe.sefaz.ba.gov.br/webservices/NfeStatusServico/NfeStatusServico.asmx','3.10')
;

-- 10/03/2015 9h25min16s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:25:16','YYYY-MM-DD HH24:MI:SS'),100,445,'Y','2',1120783,'NFeAutorizacao',TO_DATE('2015-03-10 09:25:16','YYYY-MM-DD HH24:MI:SS'),100,'https://hnfe.sefaz.ba.gov.br/webservices/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 10/03/2015 9h25min34s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:25:34','YYYY-MM-DD HH24:MI:SS'),100,445,'Y','2',1120784,'NFeRetAutorizacao',TO_DATE('2015-03-10 09:25:34','YYYY-MM-DD HH24:MI:SS'),100,'https://hnfe.sefaz.ba.gov.br/webservices/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 9h26min13s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:26:12','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','2',1120785,'NfeInutilizacao',TO_DATE('2015-03-10 09:26:12','YYYY-MM-DD HH24:MI:SS'),100,'https://nfeh.sefaz.ce.gov.br/nfe2/services/NfeInutilizacao2?wsdl','3.10')
;

-- 10/03/2015 9h26min28s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:26:28','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','2',1120786,'NfeConsultaProtocolo',TO_DATE('2015-03-10 09:26:28','YYYY-MM-DD HH24:MI:SS'),100,'https://nfeh.sefaz.ce.gov.br/nfe2/services/NfeConsulta2?wsdl','3.10')
;

-- 10/03/2015 9h26min53s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:26:53','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','2',1120787,'NfeStatusServico',TO_DATE('2015-03-10 09:26:53','YYYY-MM-DD HH24:MI:SS'),100,'https://nfeh.sefaz.ce.gov.br/nfe2/services/NfeStatusServico2?wsdl','3.10')
;

-- 10/03/2015 9h27min9s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:27:09','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','2',1120788,'NfeConsultaCadastro',TO_DATE('2015-03-10 09:27:09','YYYY-MM-DD HH24:MI:SS'),100,'https://nfeh.sefaz.ce.gov.br/nfe2/services/CadConsultaCadastro2?wsdl','3.10')
;

-- 10/03/2015 9h27min28s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:27:28','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','2',1120789,'NfeDownloadNF',TO_DATE('2015-03-10 09:27:28','YYYY-MM-DD HH24:MI:SS'),100,'https://nfeh.sefaz.ce.gov.br/nfe2/services/NfeDownloadNF?wsdl','3.10')
;

-- 10/03/2015 9h27min47s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:27:46','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','2',1120790,'NFeAutorizacao',TO_DATE('2015-03-10 09:27:46','YYYY-MM-DD HH24:MI:SS'),100,'https://nfeh.sefaz.ce.gov.br/nfe2/services/NfeAutorizacao?wsdl','3.10')
;

-- 10/03/2015 9h28min3s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:28:03','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','2',1120791,'NFeRetAutorizacao',TO_DATE('2015-03-10 09:28:03','YYYY-MM-DD HH24:MI:SS'),100,'https://nfeh.sefaz.ce.gov.br/nfe2/services/NfeRetAutorizacao?wsdl','3.10')
;

-- 10/03/2015 9h29min41s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:29:41','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','2',1120792,'NfeInutilizacao',TO_DATE('2015-03-10 09:29:41','YYYY-MM-DD HH24:MI:SS'),100,'https://homolog.sefaz.go.gov.br/nfe/services/v2/NfeInutilizacao2?wsdl','3.10')
;

-- 10/03/2015 9h30min24s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:30:24','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','2',1120793,'NfeConsultaProtocolo',TO_DATE('2015-03-10 09:30:24','YYYY-MM-DD HH24:MI:SS'),100,'https://homolog.sefaz.go.gov.br/nfe/services/v2/NfeConsulta2?wsdl','3.10')
;

-- 10/03/2015 9h30min44s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:30:43','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','2',1120794,'NfeStatusServico',TO_DATE('2015-03-10 09:30:43','YYYY-MM-DD HH24:MI:SS'),100,'https://homolog.sefaz.go.gov.br/nfe/services/v2/NfeStatusServico2?wsdl','3.10')
;

-- 10/03/2015 9h31min6s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:31:06','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','2',1120795,'NfeConsultaCadastro',TO_DATE('2015-03-10 09:31:06','YYYY-MM-DD HH24:MI:SS'),100,'https://homolog.sefaz.go.gov.br/nfe/services/v2/CadConsultaCadastro2?wsdl','3.10')
;

-- 10/03/2015 9h31min22s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:31:22','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','2',1120796,'NFeAutorizacao',TO_DATE('2015-03-10 09:31:22','YYYY-MM-DD HH24:MI:SS'),100,'https://homolog.sefaz.go.gov.br/nfe/services/v2/NfeAutorizacao?wsdl','3.10')
;

-- 10/03/2015 9h31min38s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:31:38','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','2',1120797,'NFeRetAutorizacao',TO_DATE('2015-03-10 09:31:38','YYYY-MM-DD HH24:MI:SS'),100,'https://homolog.sefaz.go.gov.br/nfe/services/v2/NfeRetAutorizacao?wsdl','3.10')
;

-- 10/03/2015 9h32min4s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:32:03','YYYY-MM-DD HH24:MI:SS'),100,453,'Y','2',1120798,'NfeInutilizacao',TO_DATE('2015-03-10 09:32:03','YYYY-MM-DD HH24:MI:SS'),100,'https://hnfe.fazenda.mg.gov.br/nfe2/services/NfeInutilizacao2','3.10')
;

-- 10/03/2015 9h32min28s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:32:28','YYYY-MM-DD HH24:MI:SS'),100,453,'Y','2',1120799,'NfeConsultaProtocolo',TO_DATE('2015-03-10 09:32:28','YYYY-MM-DD HH24:MI:SS'),100,'https://hnfe.fazenda.mg.gov.br/nfe2/services/NfeConsulta2','3.10')
;

-- 10/03/2015 9h32min42s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:32:42','YYYY-MM-DD HH24:MI:SS'),100,453,'Y','2',1120800,'NfeStatusServico',TO_DATE('2015-03-10 09:32:42','YYYY-MM-DD HH24:MI:SS'),100,'https://hnfe.fazenda.mg.gov.br/nfe2/services/NfeStatusServico2','3.10')
;

-- 10/03/2015 9h33min1s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:33:01','YYYY-MM-DD HH24:MI:SS'),100,453,'Y','2',1120801,'NfeConsultaCadastro',TO_DATE('2015-03-10 09:33:01','YYYY-MM-DD HH24:MI:SS'),100,'https://hnfe.fazenda.mg.gov.br/nfe2/services/cadconsultacadastro2','3.10')
;

-- 10/03/2015 9h33min16s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:33:16','YYYY-MM-DD HH24:MI:SS'),100,453,'Y','2',1120802,'NFeAutorizacao',TO_DATE('2015-03-10 09:33:16','YYYY-MM-DD HH24:MI:SS'),100,'https://hnfe.fazenda.mg.gov.br/nfe2/services/NfeAutorizacao','3.10')
;

-- 10/03/2015 9h33min32s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:33:32','YYYY-MM-DD HH24:MI:SS'),100,453,'Y','2',1120803,'NFeRetAutorizacao',TO_DATE('2015-03-10 09:33:32','YYYY-MM-DD HH24:MI:SS'),100,'https://hnfe.fazenda.mg.gov.br/nfe2/services/NfeRetAutorizacao','3.10')
;

-- 10/03/2015 9h33min59s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:33:59','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','2',1120804,'NfeInutilizacao',TO_DATE('2015-03-10 09:33:59','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.ms.gov.br/homologacao/services2/NfeInutilizacao2','3.10')
;

-- 10/03/2015 9h34min14s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:34:14','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','2',1120805,'NfeConsultaProtocolo',TO_DATE('2015-03-10 09:34:14','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.ms.gov.br/homologacao/services2/NfeConsulta2','3.10')
;

-- 10/03/2015 9h34min38s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:34:37','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','2',1120806,'NfeStatusServico',TO_DATE('2015-03-10 09:34:37','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.ms.gov.br/homologacao/services2/NfeStatusServico2','3.10')
;

-- 10/03/2015 9h34min58s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:34:58','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','2',1120807,'NFeAutorizacao',TO_DATE('2015-03-10 09:34:58','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.ms.gov.br/homologacao/services2/NfeAutorizacao','3.10')
;

-- 10/03/2015 9h35min19s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:35:19','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','2',1120808,'NFeRetAutorizacao',TO_DATE('2015-03-10 09:35:19','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.ms.gov.br/homologacao/services2/NfeRetAutorizacao','3.10')
;

-- 10/03/2015 9h35min37s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:35:37','YYYY-MM-DD HH24:MI:SS'),100,451,'Y','2',1120809,'NfeConsultaCadastro',TO_DATE('2015-03-10 09:35:37','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.sefaz.mt.gov.br/nfews/v2/services/CadConsultaCadastro2?wsdl','3.10')
;

-- 10/03/2015 9h35min54s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:35:54','YYYY-MM-DD HH24:MI:SS'),100,451,'Y','2',1120810,'NFeAutorizacao',TO_DATE('2015-03-10 09:35:54','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.sefaz.mt.gov.br/nfews/v2/services/NfeAutorizacao?wsdl','3.10')
;

-- 10/03/2015 9h36min9s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:36:09','YYYY-MM-DD HH24:MI:SS'),100,451,'Y','2',1120811,'NFeRetAutorizacao',TO_DATE('2015-03-10 09:36:09','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.sefaz.mt.gov.br/nfews/v2/services/NfeRetAutorizacao?wsdl','3.10')
;

-- 10/03/2015 9h36min26s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:36:26','YYYY-MM-DD HH24:MI:SS'),100,457,'Y','2',1120812,'NfeInutilizacao',TO_DATE('2015-03-10 09:36:26','YYYY-MM-DD HH24:MI:SS'),100,'https://nfehomolog.sefaz.pe.gov.br/nfe-service/services/NfeInutilizacao2','3.10')
;

-- 10/03/2015 9h36min52s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:36:52','YYYY-MM-DD HH24:MI:SS'),100,457,'Y','2',1120813,'NfeConsultaProtocolo',TO_DATE('2015-03-10 09:36:52','YYYY-MM-DD HH24:MI:SS'),100,'https://nfehomolog.sefaz.pe.gov.br/nfe-service/services/NfeConsulta2','3.10')
;

-- 10/03/2015 9h37min9s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:37:09','YYYY-MM-DD HH24:MI:SS'),100,457,'Y','2',1120814,'NfeStatusServico',TO_DATE('2015-03-10 09:37:09','YYYY-MM-DD HH24:MI:SS'),100,'https://nfehomolog.sefaz.pe.gov.br/nfe-service/services/NfeStatusServico2','3.10')
;

-- 10/03/2015 9h37min24s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:37:24','YYYY-MM-DD HH24:MI:SS'),100,457,'Y','2',1120815,'NFeAutorizacao',TO_DATE('2015-03-10 09:37:24','YYYY-MM-DD HH24:MI:SS'),100,'https://nfehomolog.sefaz.pe.gov.br/nfe-service/services/NfeAutorizacao?wsdl','3.10')
;

-- 10/03/2015 9h37min41s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:37:41','YYYY-MM-DD HH24:MI:SS'),100,457,'Y','2',1120816,'NFeRetAutorizacao',TO_DATE('2015-03-10 09:37:41','YYYY-MM-DD HH24:MI:SS'),100,'https://nfehomolog.sefaz.pe.gov.br/nfe-service/services/NfeRetAutorizacao?wsdl','3.10')
;

-- 10/03/2015 9h38min17s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:38:17','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','2',1120817,'NfeInutilizacao',TO_DATE('2015-03-10 09:38:17','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.fazenda.pr.gov.br/nfe/NFeInutilizacao3?wsdl','3.10')
;

-- 10/03/2015 9h38min34s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:38:34','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','2',1120818,'NfeConsultaProtocolo',TO_DATE('2015-03-10 09:38:34','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.fazenda.pr.gov.br/nfe/NFeConsulta3?wsdl','3.10')
;

-- 10/03/2015 9h38min51s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:38:51','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','2',1120819,'NfeStatusServico',TO_DATE('2015-03-10 09:38:51','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.fazenda.pr.gov.br/nfe/NFeStatusServico3?wsdl','3.10')
;

-- 10/03/2015 9h39min8s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:39:08','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','2',1120820,'NfeConsultaCadastro',TO_DATE('2015-03-10 09:39:08','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.fazenda.pr.gov.br/nfe/CadConsultaCadastro2?wsdl','3.10')
;

-- 10/03/2015 9h39min22s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:39:22','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','2',1120821,'RecepcaoEvento',TO_DATE('2015-03-10 09:39:22','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.fazenda.pr.gov.br/nfe/NFeRecepcaoEvento?wsdl','3.10')
;

-- 10/03/2015 9h39min40s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:39:40','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','2',1120822,'NFeAutorizacao',TO_DATE('2015-03-10 09:39:40','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.fazenda.pr.gov.br/nfe/NFeAutorizacao3?wsdl','3.10')
;

-- 10/03/2015 9h39min57s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:39:57','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','2',1120823,'NFeRetAutorizacao',TO_DATE('2015-03-10 09:39:57','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.fazenda.pr.gov.br/nfe/NFeRetAutorizacao3?wsdl','3.10')
;

-- 10/03/2015 9h40min46s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:40:45','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','2',1120824,'NfeInutilizacao',TO_DATE('2015-03-10 09:40:45','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefaz.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','3.10')
;

-- 10/03/2015 9h41min43s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:41:43','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','2',1120825,'NfeConsultaPsrotocolo',TO_DATE('2015-03-10 09:41:43','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefaz.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 9h42min2s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:42:02','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','2',1120826,'NfeStatusServico',TO_DATE('2015-03-10 09:42:02','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefaz.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 9h42min19s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:42:19','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','2',1120827,'NFeAutorizacao',TO_DATE('2015-03-10 09:42:19','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefaz.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 10/03/2015 9h42min37s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:42:37','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','2',1120828,'NFeRetAutorizacao',TO_DATE('2015-03-10 09:42:37','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefaz.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 9h43min1s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:43:00','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','2',1120829,'NfeInutilizacao',TO_DATE('2015-03-10 09:43:00','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.fazenda.sp.gov.br/ws/nfeinutilizacao2.asmx','3.10')
;

-- 10/03/2015 9h43min17s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:43:17','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','2',1120830,'NfeConsultaProtocolo',TO_DATE('2015-03-10 09:43:17','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.fazenda.sp.gov.br/ws/nfeconsulta2.asmx','3.10')
;

-- 10/03/2015 9h43min38s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:43:38','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','2',1120831,'NfeStatusServico',TO_DATE('2015-03-10 09:43:38','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.fazenda.sp.gov.br/ws/nfestatusservico2.asmx','3.10')
;

-- 10/03/2015 9h44min3s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:44:02','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','2',1120832,'NfeConsultaCadastro',TO_DATE('2015-03-10 09:44:02','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.fazenda.sp.gov.br/ws/cadconsultacadastro2.asmx','3.10')
;

-- 10/03/2015 9h44min34s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:44:34','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','2',1120833,'RecepcaoEvento',TO_DATE('2015-03-10 09:44:34','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.fazenda.sp.gov.br/ws/recepcaoevento.asmx','3.10')
;

-- 10/03/2015 9h44min50s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:44:50','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','2',1120834,'NFeAutorizacao',TO_DATE('2015-03-10 09:44:50','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.fazenda.sp.gov.br/ws/nfeautorizacao.asmx','3.10')
;

-- 10/03/2015 9h45min8s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:45:08','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','2',1120835,'NFeRetAutorizacao',TO_DATE('2015-03-10 09:45:08','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.fazenda.sp.gov.br/ws/nferetautorizacao.asmx','3.10')
;

-- 10/03/2015 9h46min12s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,450,'Y','2',1120836,'NfeInutilizacao',TO_DATE('2015-03-10 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeInutilizacao2/NfeInutilizacao2.asmx','3.10')
;

-- 10/03/2015 9h46min24s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:46:24','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','2',1120837,'NfeInutilizacao',TO_DATE('2015-03-10 09:46:24','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeInutilizacao2/NfeInutilizacao2.asmx','3.10')
;

-- 10/03/2015 9h46min37s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:46:37','YYYY-MM-DD HH24:MI:SS'),100,458,'Y','2',1120838,'NfeInutilizacao',TO_DATE('2015-03-10 09:46:37','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeInutilizacao2/NfeInutilizacao2.asmx','3.10')
;

-- 10/03/2015 9h47min0s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:47:00','YYYY-MM-DD HH24:MI:SS'),100,450,'Y','2',1120839,'NfeConsultaProtocolo',TO_DATE('2015-03-10 09:47:00','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 9h47min7s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:47:07','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','2',1120840,'NfeConsultaProtocolo',TO_DATE('2015-03-10 09:47:07','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 9h47min15s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:47:15','YYYY-MM-DD HH24:MI:SS'),100,458,'Y','2',1120841,'NfeConsultaProtocolo',TO_DATE('2015-03-10 09:47:15','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 9h47min46s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:47:46','YYYY-MM-DD HH24:MI:SS'),100,450,'Y','2',1120842,'NfeStatusServico',TO_DATE('2015-03-10 09:47:46','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 9h47min52s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:47:52','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','2',1120843,'NfeStatusServico',TO_DATE('2015-03-10 09:47:52','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 9h47min57s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:47:57','YYYY-MM-DD HH24:MI:SS'),100,458,'Y','2',1120844,'NfeStatusServico',TO_DATE('2015-03-10 09:47:57','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 9h48min16s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:48:16','YYYY-MM-DD HH24:MI:SS'),100,450,'Y','2',1120845,'NfeDownloadNF',TO_DATE('2015-03-10 09:48:16','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeDownloadNF/NfeDownloadNF.asmx','3.10')
;

-- 10/03/2015 9h48min21s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:48:21','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','2',1120846,'NfeDownloadNF',TO_DATE('2015-03-10 09:48:21','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeDownloadNF/NfeDownloadNF.asmx','3.10')
;

-- 10/03/2015 9h48min27s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:48:27','YYYY-MM-DD HH24:MI:SS'),100,458,'Y','2',1120847,'NfeDownloadNF',TO_DATE('2015-03-10 09:48:27','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeDownloadNF/NfeDownloadNF.asmx','3.10')
;

-- 10/03/2015 9h49min38s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:49:38','YYYY-MM-DD HH24:MI:SS'),100,450,'Y','2',1120848,'NFeAutorizacao',TO_DATE('2015-03-10 09:49:38','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 10/03/2015 9h49min45s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:49:45','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','2',1120849,'NFeAutorizacao',TO_DATE('2015-03-10 09:49:45','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 10/03/2015 9h49min51s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:49:51','YYYY-MM-DD HH24:MI:SS'),100,458,'Y','2',1120850,'NFeAutorizacao',TO_DATE('2015-03-10 09:49:51','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 10/03/2015 9h50min17s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:50:17','YYYY-MM-DD HH24:MI:SS'),100,450,'Y','2',1120851,'NFeRetAutorizacao',TO_DATE('2015-03-10 09:50:17','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 9h50min23s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:50:23','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','2',1120852,'NFeRetAutorizacao',TO_DATE('2015-03-10 09:50:23','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 9h50min32s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:50:31','YYYY-MM-DD HH24:MI:SS'),100,458,'Y','2',1120853,'NFeRetAutorizacao',TO_DATE('2015-03-10 09:50:31','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 9h53min20s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:53:20','YYYY-MM-DD HH24:MI:SS'),100,441,'Y','2',1120854,'NfeInutilizacao',TO_DATE('2015-03-10 09:53:20','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','3.10')
;

-- 10/03/2015 9h53min29s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:53:29','YYYY-MM-DD HH24:MI:SS'),100,442,'Y','2',1120855,'NfeInutilizacao',TO_DATE('2015-03-10 09:53:29','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','3.10')
;

-- 10/03/2015 9h53min37s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:53:36','YYYY-MM-DD HH24:MI:SS'),100,443,'Y','2',1120856,'NfeInutilizacao',TO_DATE('2015-03-10 09:53:36','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','3.10')
;

-- 10/03/2015 9h53min43s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:53:43','YYYY-MM-DD HH24:MI:SS'),100,447,'Y','2',1120857,'NfeInutilizacao',TO_DATE('2015-03-10 09:53:43','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','3.10')
;

-- 10/03/2015 9h53min51s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:53:51','YYYY-MM-DD HH24:MI:SS'),100,455,'Y','2',1120858,'NfeInutilizacao',TO_DATE('2015-03-10 09:53:51','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','3.10')
;

-- 10/03/2015 9h54min0s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:54:00','YYYY-MM-DD HH24:MI:SS'),100,459,'Y','2',1120859,'NfeInutilizacao',TO_DATE('2015-03-10 09:54:00','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','3.10')
;

-- 10/03/2015 9h54min7s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:54:07','YYYY-MM-DD HH24:MI:SS'),100,460,'Y','2',1120860,'NfeInutilizacao',TO_DATE('2015-03-10 09:54:07','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','3.10')
;

-- 10/03/2015 9h54min13s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:54:13','YYYY-MM-DD HH24:MI:SS'),100,462,'Y','2',1120861,'NfeInutilizacao',TO_DATE('2015-03-10 09:54:13','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','3.10')
;

-- 10/03/2015 9h54min18s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:54:18','YYYY-MM-DD HH24:MI:SS'),100,463,'Y','2',1120862,'NfeInutilizacao',TO_DATE('2015-03-10 09:54:18','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','3.10')
;

-- 10/03/2015 9h54min24s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:54:24','YYYY-MM-DD HH24:MI:SS'),100,464,'Y','2',1120863,'NfeInutilizacao',TO_DATE('2015-03-10 09:54:24','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','3.10')
;

-- 10/03/2015 9h54min30s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:54:30','YYYY-MM-DD HH24:MI:SS'),100,466,'Y','2',1120864,'NfeInutilizacao',TO_DATE('2015-03-10 09:54:30','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','3.10')
;

-- 10/03/2015 9h54min35s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:54:35','YYYY-MM-DD HH24:MI:SS'),100,467,'Y','2',1120865,'NfeInutilizacao',TO_DATE('2015-03-10 09:54:35','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','3.10')
;

-- 10/03/2015 9h54min58s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:54:58','YYYY-MM-DD HH24:MI:SS'),100,441,'Y','2',1120866,'NfeConsultaProtocolo',TO_DATE('2015-03-10 09:54:58','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 9h55min3s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:55:03','YYYY-MM-DD HH24:MI:SS'),100,442,'Y','2',1120867,'NfeConsultaProtocolo',TO_DATE('2015-03-10 09:55:03','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 9h55min9s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:55:09','YYYY-MM-DD HH24:MI:SS'),100,443,'Y','2',1120868,'NfeConsultaProtocolo',TO_DATE('2015-03-10 09:55:09','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 9h55min15s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:55:15','YYYY-MM-DD HH24:MI:SS'),100,447,'Y','2',1120869,'NfeConsultaProtocolo',TO_DATE('2015-03-10 09:55:15','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 9h55min21s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:55:21','YYYY-MM-DD HH24:MI:SS'),100,455,'Y','2',1120870,'NfeConsultaProtocolo',TO_DATE('2015-03-10 09:55:21','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 9h55min25s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:55:25','YYYY-MM-DD HH24:MI:SS'),100,459,'Y','2',1120871,'NfeConsultaProtocolo',TO_DATE('2015-03-10 09:55:25','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 9h55min32s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:55:32','YYYY-MM-DD HH24:MI:SS'),100,460,'Y','2',1120872,'NfeConsultaProtocolo',TO_DATE('2015-03-10 09:55:32','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 9h55min40s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:55:40','YYYY-MM-DD HH24:MI:SS'),100,462,'Y','2',1120873,'NfeConsultaProtocolo',TO_DATE('2015-03-10 09:55:40','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 9h55min49s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:55:49','YYYY-MM-DD HH24:MI:SS'),100,463,'Y','2',1120874,'NfeConsultaProtocolo',TO_DATE('2015-03-10 09:55:49','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 9h55min55s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:55:55','YYYY-MM-DD HH24:MI:SS'),100,464,'Y','2',1120875,'NfeConsultaProtocolo',TO_DATE('2015-03-10 09:55:55','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 9h56min0s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:56:00','YYYY-MM-DD HH24:MI:SS'),100,466,'Y','2',1120876,'NfeConsultaProtocolo',TO_DATE('2015-03-10 09:56:00','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 9h56min4s BRT
UPDATE LBR_NFeWebService SET C_Region_ID=467,Updated=TO_DATE('2015-03-10 09:56:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120876
;

-- 10/03/2015 9h56min28s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:56:28','YYYY-MM-DD HH24:MI:SS'),100,441,'Y','2',1120877,'NfeStatusServico',TO_DATE('2015-03-10 09:56:28','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 9h56min33s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:56:33','YYYY-MM-DD HH24:MI:SS'),100,442,'Y','2',1120878,'NfeStatusServico',TO_DATE('2015-03-10 09:56:33','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 9h56min38s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:56:38','YYYY-MM-DD HH24:MI:SS'),100,443,'Y','2',1120879,'NfeStatusServico',TO_DATE('2015-03-10 09:56:38','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 9h56min43s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:56:43','YYYY-MM-DD HH24:MI:SS'),100,447,'Y','2',1120880,'NfeStatusServico',TO_DATE('2015-03-10 09:56:43','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 9h56min48s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:56:48','YYYY-MM-DD HH24:MI:SS'),100,455,'Y','2',1120881,'NfeStatusServico',TO_DATE('2015-03-10 09:56:48','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 9h56min55s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:56:55','YYYY-MM-DD HH24:MI:SS'),100,459,'Y','2',1120882,'NfeStatusServico',TO_DATE('2015-03-10 09:56:55','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 9h56min59s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:56:59','YYYY-MM-DD HH24:MI:SS'),100,460,'Y','2',1120883,'NfeStatusServico',TO_DATE('2015-03-10 09:56:59','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 9h57min5s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:57:05','YYYY-MM-DD HH24:MI:SS'),100,462,'Y','2',1120884,'NfeStatusServico',TO_DATE('2015-03-10 09:57:05','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 9h57min10s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:57:10','YYYY-MM-DD HH24:MI:SS'),100,463,'Y','2',1120885,'NfeStatusServico',TO_DATE('2015-03-10 09:57:10','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 9h57min18s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:57:18','YYYY-MM-DD HH24:MI:SS'),100,464,'Y','2',1120886,'NfeStatusServico',TO_DATE('2015-03-10 09:57:18','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 9h57min23s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:57:23','YYYY-MM-DD HH24:MI:SS'),100,466,'Y','2',1120887,'NfeStatusServico',TO_DATE('2015-03-10 09:57:23','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 9h57min29s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:57:28','YYYY-MM-DD HH24:MI:SS'),100,467,'Y','2',1120888,'NfeStatusServico',TO_DATE('2015-03-10 09:57:28','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 9h57min50s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:57:50','YYYY-MM-DD HH24:MI:SS'),100,441,'Y','2',1120889,'NFeAutorizacao',TO_DATE('2015-03-10 09:57:50','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 10/03/2015 9h58min8s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:58:08','YYYY-MM-DD HH24:MI:SS'),100,442,'Y','2',1120890,'NFeAutorizacao',TO_DATE('2015-03-10 09:58:08','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 10/03/2015 9h58min12s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:58:12','YYYY-MM-DD HH24:MI:SS'),100,443,'Y','2',1120891,'NFeAutorizacao',TO_DATE('2015-03-10 09:58:12','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 10/03/2015 9h58min18s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:58:18','YYYY-MM-DD HH24:MI:SS'),100,447,'Y','2',1120892,'NFeAutorizacao',TO_DATE('2015-03-10 09:58:18','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 10/03/2015 9h58min24s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:58:24','YYYY-MM-DD HH24:MI:SS'),100,455,'Y','2',1120893,'NFeAutorizacao',TO_DATE('2015-03-10 09:58:24','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 10/03/2015 9h58min30s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:58:30','YYYY-MM-DD HH24:MI:SS'),100,459,'Y','2',1120894,'NFeAutorizacao',TO_DATE('2015-03-10 09:58:30','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 10/03/2015 9h58min37s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:58:36','YYYY-MM-DD HH24:MI:SS'),100,460,'Y','2',1120895,'NFeAutorizacao',TO_DATE('2015-03-10 09:58:36','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 10/03/2015 9h58min44s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:58:44','YYYY-MM-DD HH24:MI:SS'),100,462,'Y','2',1120896,'NFeAutorizacao',TO_DATE('2015-03-10 09:58:44','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 10/03/2015 9h58min55s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:58:55','YYYY-MM-DD HH24:MI:SS'),100,463,'Y','2',1120897,'NFeAutorizacao',TO_DATE('2015-03-10 09:58:55','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 10/03/2015 9h59min1s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:59:01','YYYY-MM-DD HH24:MI:SS'),100,464,'Y','2',1120898,'NFeAutorizacao',TO_DATE('2015-03-10 09:59:01','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 10/03/2015 9h59min8s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:59:08','YYYY-MM-DD HH24:MI:SS'),100,466,'Y','2',1120899,'NFeAutorizacao',TO_DATE('2015-03-10 09:59:08','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 10/03/2015 9h59min14s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:59:14','YYYY-MM-DD HH24:MI:SS'),100,467,'Y','2',1120900,'NFeAutorizacao',TO_DATE('2015-03-10 09:59:14','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 10/03/2015 9h59min59s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 09:59:59','YYYY-MM-DD HH24:MI:SS'),100,441,'Y','2',1120901,'NFeRetAutorizacao',TO_DATE('2015-03-10 09:59:59','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h0min54s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:00:54','YYYY-MM-DD HH24:MI:SS'),100,442,'Y','2',1120902,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:00:54','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h0min59s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:00:59','YYYY-MM-DD HH24:MI:SS'),100,443,'Y','2',1120903,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:00:59','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h1min3s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:01:03','YYYY-MM-DD HH24:MI:SS'),100,447,'Y','2',1120904,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:01:03','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h1min14s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:01:14','YYYY-MM-DD HH24:MI:SS'),100,455,'Y','2',1120905,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:01:14','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h1min19s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:01:19','YYYY-MM-DD HH24:MI:SS'),100,459,'Y','2',1120906,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:01:19','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h1min30s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:01:29','YYYY-MM-DD HH24:MI:SS'),100,460,'Y','2',1120907,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:01:29','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h1min36s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:01:36','YYYY-MM-DD HH24:MI:SS'),100,462,'Y','2',1120908,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:01:36','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h1min41s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:01:41','YYYY-MM-DD HH24:MI:SS'),100,463,'Y','2',1120909,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:01:41','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h1min48s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:01:48','YYYY-MM-DD HH24:MI:SS'),100,464,'Y','2',1120910,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:01:48','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h2min1s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:02:01','YYYY-MM-DD HH24:MI:SS'),100,466,'Y','2',1120911,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:02:01','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h2min31s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:02:31','YYYY-MM-DD HH24:MI:SS'),100,467,'Y','2',1120912,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:02:31','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h8min57s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:08:57','YYYY-MM-DD HH24:MI:SS'),100,441,'Y','2',1120913,'NfeConsultaProtocolo',TO_DATE('2015-03-10 10:08:57','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 10h9min3s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:09:03','YYYY-MM-DD HH24:MI:SS'),100,442,'Y','2',1120914,'NfeConsultaProtocolo',TO_DATE('2015-03-10 10:09:03','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 10h9min9s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:09:09','YYYY-MM-DD HH24:MI:SS'),100,443,'Y','2',1120915,'NfeConsultaProtocolo',TO_DATE('2015-03-10 10:09:09','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 10h9min17s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:09:17','YYYY-MM-DD HH24:MI:SS'),100,447,'Y','2',1120916,'NfeConsultaProtocolo',TO_DATE('2015-03-10 10:09:17','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 10h9min23s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:09:23','YYYY-MM-DD HH24:MI:SS'),100,448,'Y','2',1120917,'NfeConsultaProtocolo',TO_DATE('2015-03-10 10:09:23','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 10h9min29s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:09:29','YYYY-MM-DD HH24:MI:SS'),100,453,'Y','2',1120918,'NfeConsultaProtocolo',TO_DATE('2015-03-10 10:09:29','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 10h9min35s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:09:35','YYYY-MM-DD HH24:MI:SS'),100,455,'Y','2',1120919,'NfeConsultaProtocolo',TO_DATE('2015-03-10 10:09:35','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 10h9min42s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:09:42','YYYY-MM-DD HH24:MI:SS'),100,459,'Y','2',1120920,'NfeConsultaProtocolo',TO_DATE('2015-03-10 10:09:42','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 10h9min48s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:09:48','YYYY-MM-DD HH24:MI:SS'),100,460,'Y','2',1120921,'NfeConsultaProtocolo',TO_DATE('2015-03-10 10:09:48','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 10h9min53s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:09:53','YYYY-MM-DD HH24:MI:SS'),100,462,'Y','2',1120922,'NfeConsultaProtocolo',TO_DATE('2015-03-10 10:09:53','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 10h9min59s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:09:59','YYYY-MM-DD HH24:MI:SS'),100,463,'Y','2',1120923,'NfeConsultaProtocolo',TO_DATE('2015-03-10 10:09:59','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 10h10min7s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:10:07','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','2',1120924,'NfeConsultaProtocolo',TO_DATE('2015-03-10 10:10:07','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 10h10min16s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:10:15','YYYY-MM-DD HH24:MI:SS'),100,464,'Y','2',1120925,'NfeConsultaProtocolo',TO_DATE('2015-03-10 10:10:15','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 10h10min22s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:10:22','YYYY-MM-DD HH24:MI:SS'),100,466,'Y','2',1120926,'NfeConsultaProtocolo',TO_DATE('2015-03-10 10:10:22','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 10h10min30s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:10:30','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','2',1120927,'NfeConsultaProtocolo',TO_DATE('2015-03-10 10:10:30','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 10h10min36s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:10:36','YYYY-MM-DD HH24:MI:SS'),100,467,'Y','2',1120928,'NfeConsultaProtocolo',TO_DATE('2015-03-10 10:10:36','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 10h11min14s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:11:14','YYYY-MM-DD HH24:MI:SS'),100,441,'Y','2',1120929,'NfeStatusServico',TO_DATE('2015-03-10 10:11:14','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 10h11min21s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:11:21','YYYY-MM-DD HH24:MI:SS'),100,442,'Y','2',1120930,'NfeStatusServico',TO_DATE('2015-03-10 10:11:21','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 10h11min28s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:11:27','YYYY-MM-DD HH24:MI:SS'),100,443,'Y','2',1120931,'NfeStatusServico',TO_DATE('2015-03-10 10:11:27','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 10h11min33s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:11:33','YYYY-MM-DD HH24:MI:SS'),100,447,'Y','2',1120932,'NfeStatusServico',TO_DATE('2015-03-10 10:11:33','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 10h11min38s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:11:38','YYYY-MM-DD HH24:MI:SS'),100,448,'Y','2',1120933,'NfeStatusServico',TO_DATE('2015-03-10 10:11:38','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 10h11min45s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:11:45','YYYY-MM-DD HH24:MI:SS'),100,453,'Y','2',1120934,'NfeStatusServico',TO_DATE('2015-03-10 10:11:45','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 10h11min51s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:11:51','YYYY-MM-DD HH24:MI:SS'),100,455,'Y','2',1120935,'NfeStatusServico',TO_DATE('2015-03-10 10:11:51','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 10h12min0s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:12:00','YYYY-MM-DD HH24:MI:SS'),100,459,'Y','2',1120936,'NfeStatusServico',TO_DATE('2015-03-10 10:12:00','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 10h12min7s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:12:07','YYYY-MM-DD HH24:MI:SS'),100,460,'Y','2',1120937,'NfeStatusServico',TO_DATE('2015-03-10 10:12:07','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 10h12min13s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:12:13','YYYY-MM-DD HH24:MI:SS'),100,462,'Y','2',1120938,'NfeStatusServico',TO_DATE('2015-03-10 10:12:13','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 10h12min18s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:12:18','YYYY-MM-DD HH24:MI:SS'),100,463,'Y','2',1120939,'NfeStatusServico',TO_DATE('2015-03-10 10:12:18','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 10h12min23s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:12:23','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','2',1120940,'NfeStatusServico',TO_DATE('2015-03-10 10:12:23','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 10h12min31s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:12:31','YYYY-MM-DD HH24:MI:SS'),100,464,'Y','2',1120941,'NfeStatusServico',TO_DATE('2015-03-10 10:12:31','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 10h12min41s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:12:41','YYYY-MM-DD HH24:MI:SS'),100,466,'Y','2',1120942,'NfeStatusServico',TO_DATE('2015-03-10 10:12:41','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 10h12min51s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:12:51','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','2',1120943,'NfeStatusServico',TO_DATE('2015-03-10 10:12:51','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 10h12min57s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:12:57','YYYY-MM-DD HH24:MI:SS'),100,467,'Y','2',1120944,'NfeStatusServico',TO_DATE('2015-03-10 10:12:57','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 10h13min33s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:13:33','YYYY-MM-DD HH24:MI:SS'),100,441,'Y','2',1120945,'NFeAutorizacao',TO_DATE('2015-03-10 10:13:33','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h13min40s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:13:40','YYYY-MM-DD HH24:MI:SS'),100,442,'Y','2',1120946,'NFeAutorizacao',TO_DATE('2015-03-10 10:13:40','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h13min48s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:13:48','YYYY-MM-DD HH24:MI:SS'),100,443,'Y','2',1120947,'NFeAutorizacao',TO_DATE('2015-03-10 10:13:48','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h13min56s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:13:56','YYYY-MM-DD HH24:MI:SS'),100,447,'Y','2',1120948,'NFeAutorizacao',TO_DATE('2015-03-10 10:13:56','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h14min1s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:14:01','YYYY-MM-DD HH24:MI:SS'),100,448,'Y','2',1120949,'NFeAutorizacao',TO_DATE('2015-03-10 10:14:01','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h14min7s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:14:07','YYYY-MM-DD HH24:MI:SS'),100,453,'Y','2',1120950,'NFeAutorizacao',TO_DATE('2015-03-10 10:14:07','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h14min19s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:14:18','YYYY-MM-DD HH24:MI:SS'),100,455,'Y','2',1120951,'NFeAutorizacao',TO_DATE('2015-03-10 10:14:18','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h14min25s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:14:25','YYYY-MM-DD HH24:MI:SS'),100,459,'Y','2',1120952,'NFeAutorizacao',TO_DATE('2015-03-10 10:14:25','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h14min30s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:14:30','YYYY-MM-DD HH24:MI:SS'),100,460,'Y','2',1120953,'NFeAutorizacao',TO_DATE('2015-03-10 10:14:30','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h14min36s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:14:36','YYYY-MM-DD HH24:MI:SS'),100,462,'Y','2',1120954,'NFeAutorizacao',TO_DATE('2015-03-10 10:14:36','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h14min55s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:14:55','YYYY-MM-DD HH24:MI:SS'),100,463,'Y','2',1120955,'NFeAutorizacao',TO_DATE('2015-03-10 10:14:55','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h15min2s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:15:02','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','2',1120956,'NFeAutorizacao',TO_DATE('2015-03-10 10:15:02','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h15min9s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:15:09','YYYY-MM-DD HH24:MI:SS'),100,464,'Y','2',1120957,'NFeAutorizacao',TO_DATE('2015-03-10 10:15:09','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h15min14s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:15:14','YYYY-MM-DD HH24:MI:SS'),100,466,'Y','2',1120958,'NFeAutorizacao',TO_DATE('2015-03-10 10:15:14','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h15min23s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:15:23','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','2',1120959,'NFeAutorizacao',TO_DATE('2015-03-10 10:15:23','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h15min29s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:15:29','YYYY-MM-DD HH24:MI:SS'),100,467,'Y','2',1120960,'NFeAutorizacao',TO_DATE('2015-03-10 10:15:29','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h16min7s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:16:07','YYYY-MM-DD HH24:MI:SS'),100,441,'Y','2',1120961,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:16:07','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h16min13s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:16:13','YYYY-MM-DD HH24:MI:SS'),100,442,'Y','2',1120962,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:16:13','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h16min20s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:16:20','YYYY-MM-DD HH24:MI:SS'),100,443,'Y','2',1120963,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:16:20','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h16min27s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:16:27','YYYY-MM-DD HH24:MI:SS'),100,447,'Y','2',1120964,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:16:27','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h16min33s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:16:33','YYYY-MM-DD HH24:MI:SS'),100,448,'Y','2',1120965,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:16:33','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h16min39s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:16:39','YYYY-MM-DD HH24:MI:SS'),100,453,'Y','2',1120966,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:16:39','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h16min46s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:16:46','YYYY-MM-DD HH24:MI:SS'),100,455,'Y','2',1120967,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:16:46','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h16min54s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:16:54','YYYY-MM-DD HH24:MI:SS'),100,459,'Y','2',1120968,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:16:54','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h16min59s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:16:59','YYYY-MM-DD HH24:MI:SS'),100,460,'Y','2',1120969,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:16:59','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h17min5s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:17:05','YYYY-MM-DD HH24:MI:SS'),100,462,'Y','2',1120970,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:17:05','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h17min15s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:17:15','YYYY-MM-DD HH24:MI:SS'),100,463,'Y','2',1120971,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:17:15','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h17min22s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:17:22','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','2',1120972,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:17:22','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h17min28s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:17:28','YYYY-MM-DD HH24:MI:SS'),100,464,'Y','2',1120973,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:17:28','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h17min33s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:17:33','YYYY-MM-DD HH24:MI:SS'),100,466,'Y','2',1120974,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:17:33','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h17min38s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:17:38','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','2',1120975,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:17:38','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h17min43s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:17:43','YYYY-MM-DD HH24:MI:SS'),100,467,'Y','2',1120976,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:17:43','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.svc.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h21min40s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:21:40','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','2',1120977,'NfeConsultaProtocolo',TO_DATE('2015-03-10 10:21:40','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 10h21min44s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:21:44','YYYY-MM-DD HH24:MI:SS'),100,445,'Y','2',1120978,'NfeConsultaProtocolo',TO_DATE('2015-03-10 10:21:44','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 10h21min49s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:21:49','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','2',1120979,'NfeConsultaProtocolo',TO_DATE('2015-03-10 10:21:49','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 10h21min54s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:21:54','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','2',1120980,'NfeConsultaProtocolo',TO_DATE('2015-03-10 10:21:54','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 10h22min1s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:22:01','YYYY-MM-DD HH24:MI:SS'),100,450,'Y','2',1120981,'NfeConsultaProtocolo',TO_DATE('2015-03-10 10:22:01','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 10h22min8s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:22:08','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','2',1120982,'NfeConsultaProtocolo',TO_DATE('2015-03-10 10:22:08','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 10h26min19s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:26:18','YYYY-MM-DD HH24:MI:SS'),100,451,'Y','2',1120983,'NfeConsultaProtocolo',TO_DATE('2015-03-10 10:26:18','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 10h26min25s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:26:25','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','2',1120984,'NfeConsultaProtocolo',TO_DATE('2015-03-10 10:26:25','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 10h26min31s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:26:31','YYYY-MM-DD HH24:MI:SS'),100,457,'Y','2',1120985,'NfeConsultaProtocolo',TO_DATE('2015-03-10 10:26:31','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 10h26min40s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:26:40','YYYY-MM-DD HH24:MI:SS'),100,458,'Y','2',1120986,'NfeConsultaProtocolo',TO_DATE('2015-03-10 10:26:40','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 10h26min53s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:26:53','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','2',1120987,'NfeConsultaProtocolo',TO_DATE('2015-03-10 10:26:53','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 10/03/2015 10h27min16s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:27:15','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','2',1120988,'NfeStatusServico',TO_DATE('2015-03-10 10:27:15','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 10h27min24s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:27:24','YYYY-MM-DD HH24:MI:SS'),100,445,'Y','2',1120989,'NfeStatusServico',TO_DATE('2015-03-10 10:27:24','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 10h27min28s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:27:28','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','2',1120990,'NfeStatusServico',TO_DATE('2015-03-10 10:27:28','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 10h27min32s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:27:32','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','2',1120991,'NfeStatusServico',TO_DATE('2015-03-10 10:27:32','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 10h27min37s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:27:37','YYYY-MM-DD HH24:MI:SS'),100,450,'Y','2',1120992,'NfeStatusServico',TO_DATE('2015-03-10 10:27:37','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 10h27min42s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:27:42','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','2',1120993,'NfeStatusServico',TO_DATE('2015-03-10 10:27:42','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 10h27min48s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:27:48','YYYY-MM-DD HH24:MI:SS'),100,451,'Y','2',1120994,'NfeStatusServico',TO_DATE('2015-03-10 10:27:48','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 10h27min54s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:27:54','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','2',1120995,'NfeStatusServico',TO_DATE('2015-03-10 10:27:54','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 10h27min58s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:27:58','YYYY-MM-DD HH24:MI:SS'),100,457,'Y','2',1120996,'NfeStatusServico',TO_DATE('2015-03-10 10:27:58','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 10h28min2s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:28:02','YYYY-MM-DD HH24:MI:SS'),100,458,'Y','2',1120997,'NfeStatusServico',TO_DATE('2015-03-10 10:28:02','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 10h28min12s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:28:12','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','2',1120998,'NfeStatusServico',TO_DATE('2015-03-10 10:28:12','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 10/03/2015 10h28min44s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:28:43','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','2',1120999,'NFeAutorizacao',TO_DATE('2015-03-10 10:28:43','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h28min53s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:28:52','YYYY-MM-DD HH24:MI:SS'),100,445,'Y','2',1121000,'NFeAutorizacao',TO_DATE('2015-03-10 10:28:52','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h28min58s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:28:58','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','2',1121001,'NFeAutorizacao',TO_DATE('2015-03-10 10:28:58','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h29min4s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:29:04','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','2',1121002,'NFeAutorizacao',TO_DATE('2015-03-10 10:29:04','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h29min9s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:29:09','YYYY-MM-DD HH24:MI:SS'),100,450,'Y','2',1121003,'NFeAutorizacao',TO_DATE('2015-03-10 10:29:09','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h29min14s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:29:14','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','2',1121004,'NFeAutorizacao',TO_DATE('2015-03-10 10:29:14','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h29min19s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:29:19','YYYY-MM-DD HH24:MI:SS'),100,451,'Y','2',1121005,'NFeAutorizacao',TO_DATE('2015-03-10 10:29:19','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h29min24s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:29:24','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','2',1121006,'NFeAutorizacao',TO_DATE('2015-03-10 10:29:24','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h29min29s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:29:29','YYYY-MM-DD HH24:MI:SS'),100,457,'Y','2',1121007,'NFeAutorizacao',TO_DATE('2015-03-10 10:29:29','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h29min34s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:29:34','YYYY-MM-DD HH24:MI:SS'),100,458,'Y','2',1121008,'NFeAutorizacao',TO_DATE('2015-03-10 10:29:34','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h29min40s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:29:40','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','2',1121009,'NFeAutorizacao',TO_DATE('2015-03-10 10:29:40','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h30min11s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:30:11','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','2',1121010,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:30:11','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h30min17s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:30:17','YYYY-MM-DD HH24:MI:SS'),100,445,'Y','2',1121011,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:30:17','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h30min24s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:30:24','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','2',1121012,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:30:24','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h31min30s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:31:30','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','2',1121013,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:31:30','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h31min34s BRT
UPDATE LBR_NFeWebService SET C_Region_ID=450,Updated=TO_DATE('2015-03-10 10:31:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1121013
;

-- 10/03/2015 10h31min39s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:31:39','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','2',1121014,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:31:39','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h31min44s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:31:44','YYYY-MM-DD HH24:MI:SS'),100,451,'Y','2',1121015,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:31:44','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h31min50s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:31:50','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','2',1121016,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:31:50','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h31min53s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:31:53','YYYY-MM-DD HH24:MI:SS'),100,457,'Y','2',1121017,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:31:53','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h31min58s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:31:58','YYYY-MM-DD HH24:MI:SS'),100,458,'Y','2',1121018,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:31:58','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 10/03/2015 10h32min3s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-10 10:32:03','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','2',1121019,'NFeRetAutorizacao',TO_DATE('2015-03-10 10:32:03','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 13h28min39s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 13:28:38','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','1',1120521,'NfeInutilizacao',TO_DATE('2015-03-09 13:28:38','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.am.gov.br/services2/services/NfeInutilizacao2','3.10')
;

-- 09/03/2015 13h39min59s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 13:39:59','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','1',1120522,'NfeConsultaProtocolo',TO_DATE('2015-03-09 13:39:59','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.am.gov.br/services2/services/NfeConsulta2','3.10')
;

-- 09/03/2015 13h43min1s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 13:43:01','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','1',1120523,'NfeStatusServico',TO_DATE('2015-03-09 13:43:01','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.am.gov.br/services2/services/NfeStatusServico2','3.10')
;

-- 09/03/2015 13h43min28s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 13:43:27','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','1',1120524,'NfeConsultaCadastro',TO_DATE('2015-03-09 13:43:27','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.am.gov.br/services2/services/cadconsultacadastro2','3.10')
;

-- 09/03/2015 13h44min8s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 13:44:08','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','1',1120525,'NFeAutorizacao',TO_DATE('2015-03-09 13:44:08','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.am.gov.br/services2/services/NfeAutorizacao','3.10')
;

-- 09/03/2015 13h46min52s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 13:46:52','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','1',1120526,'NFeRetAutorizacao',TO_DATE('2015-03-09 13:46:52','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.am.gov.br/services2/services/NfeRetAutorizacao','3.10')
;

-- 09/03/2015 13h47min34s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 13:47:34','YYYY-MM-DD HH24:MI:SS'),100,445,'Y','1',1120527,'NfeConsultaCadastro',TO_DATE('2015-03-09 13:47:34','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.ba.gov.br/webservices/nfenw/CadConsultaCadastro2.asmx','3.10')
;

-- 09/03/2015 13h48min4s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 13:48:04','YYYY-MM-DD HH24:MI:SS'),100,445,'Y','1',1120528,'RecepcaoEvento',TO_DATE('2015-03-09 13:48:04','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.ba.gov.br/webservices/sre/recepcaoevento.asmx','3.10')
;

-- 09/03/2015 13h48min25s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 13:48:25','YYYY-MM-DD HH24:MI:SS'),100,445,'Y','1',1120529,'NfeInutilizacao',TO_DATE('2015-03-09 13:48:25','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.ba.gov.br/webservices/NfeInutilizacao/NfeInutilizacao.asmx','3.10')
;

-- 09/03/2015 13h48min45s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 13:48:45','YYYY-MM-DD HH24:MI:SS'),100,445,'Y','1',1120530,'NfeConsultaProtocolo',TO_DATE('2015-03-09 13:48:45','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.ba.gov.br/webservices/NfeConsulta/NfeConsulta.asmx','3.10')
;

-- 09/03/2015 13h49min5s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 13:49:05','YYYY-MM-DD HH24:MI:SS'),100,445,'Y','1',1120531,'NfeStatusServico',TO_DATE('2015-03-09 13:49:05','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.ba.gov.br/webservices/NfeStatusServico/NfeStatusServico.asmx','3.10')
;

-- 09/03/2015 13h49min25s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 13:49:25','YYYY-MM-DD HH24:MI:SS'),100,445,'Y','1',1120532,'NFeAutorizacao',TO_DATE('2015-03-09 13:49:25','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.ba.gov.br/webservices/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 09/03/2015 13h49min49s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 13:49:48','YYYY-MM-DD HH24:MI:SS'),100,445,'Y','1',1120533,'NFeRetAutorizacao',TO_DATE('2015-03-09 13:49:48','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.ba.gov.br/webservices/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 13h50min24s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 13:50:24','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','1',1120534,'NfeInutilizacao',TO_DATE('2015-03-09 13:50:24','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.ce.gov.br/nfe2/services/NfeInutilizacao2?wsdl','3.10')
;

-- 09/03/2015 13h51min27s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 13:51:27','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','1',1120535,'NfeConsultaProtocolo',TO_DATE('2015-03-09 13:51:27','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.ce.gov.br/nfe2/services/NfeConsulta2?wsdl','3.10')
;

-- 09/03/2015 13h52min10s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 13:52:10','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','1',1120536,'NfeStatusServico',TO_DATE('2015-03-09 13:52:10','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.ce.gov.br/nfe2/services/NfeStatusServico2?wsdl','3.10')
;

-- 09/03/2015 13h52min32s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 13:52:32','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','1',1120537,'NfeConsultaCadastro',TO_DATE('2015-03-09 13:52:32','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.ce.gov.br/nfe2/services/CadConsultaCadastro2?wsdl','3.10')
;

-- 09/03/2015 13h52min56s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 13:52:56','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','1',1120538,'NfeDownloadNF',TO_DATE('2015-03-09 13:52:56','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.ce.gov.br/nfe2/services/NfeDownloadNF?wsdl','3.10')
;

-- 09/03/2015 13h53min16s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 13:53:16','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','1',1120539,'NFeAutorizacao',TO_DATE('2015-03-09 13:53:16','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.ce.gov.br/nfe2/services/NfeAutorizacao?wsdl','3.10')
;

-- 09/03/2015 13h53min45s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 13:53:45','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','1',1120540,'NFeRetAutorizacao',TO_DATE('2015-03-09 13:53:45','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.ce.gov.br/nfe2/services/NfeRetAutorizacao?wsdl','3.10')
;

-- 09/03/2015 13h54min11s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 13:54:11','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','1',1120541,'NfeInutilizacao',TO_DATE('2015-03-09 13:54:11','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.go.gov.br/nfe/services/v2/NfeInutilizacao2?wsdl','3.10')
;

-- 09/03/2015 13h54min34s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 13:54:34','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','1',1120542,'NfeConsultaProtocolo',TO_DATE('2015-03-09 13:54:34','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.go.gov.br/nfe/services/v2/NfeConsulta2?wsdl','3.10')
;

-- 09/03/2015 13h54min55s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 13:54:55','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','1',1120543,'NfeStatusServico',TO_DATE('2015-03-09 13:54:55','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.go.gov.br/nfe/services/v2/NfeStatusServico2?wsdl','3.10')
;

-- 09/03/2015 13h55min19s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 13:55:19','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','1',1120544,'NfeConsultaCadastro',TO_DATE('2015-03-09 13:55:19','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.go.gov.br/nfe/services/v2/CadConsultaCadastro2?wsdl','3.10')
;

-- 09/03/2015 13h56min5s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 13:56:05','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','1',1120545,'NFeAutorizacao',TO_DATE('2015-03-09 13:56:05','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.go.gov.br/nfe/services/v2/NfeAutorizacao?wsdl','3.10')
;

-- 09/03/2015 13h56min42s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 13:56:42','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','1',1120546,'NFeRetAutorizacao',TO_DATE('2015-03-09 13:56:42','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.go.gov.br/nfe/services/v2/NfeRetAutorizacao?wsdl','3.10')
;

-- 09/03/2015 13h57min15s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 13:57:15','YYYY-MM-DD HH24:MI:SS'),100,453,'Y','1',1120547,'NFeAutorizacao',TO_DATE('2015-03-09 13:57:15','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.mg.gov.br/nfe2/services/NfeAutorizacao','3.10')
;

-- 09/03/2015 13h57min41s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 13:57:41','YYYY-MM-DD HH24:MI:SS'),100,453,'Y','1',1120548,'NFeRetAutorizacao',TO_DATE('2015-03-09 13:57:41','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.mg.gov.br/nfe2/services/NfeRetAutorizacao','3.10')
;

-- 09/03/2015 13h59min32s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 13:59:32','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','1',1120549,'NfeInutilizacao',TO_DATE('2015-03-09 13:59:32','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.ms.gov.br/producao/services2/NfeInutilizacao2','3.10')
;

-- 09/03/2015 13h59min54s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 13:59:54','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','1',1120550,'NfeConsultaProtocolo',TO_DATE('2015-03-09 13:59:54','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.ms.gov.br/producao/services2/NfeConsulta2','3.10')
;

-- 09/03/2015 14h3min41s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:03:41','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','1',1120551,'NfeStatusServico',TO_DATE('2015-03-09 14:03:41','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.ms.gov.br/producao/services2/NfeStatusServico2','3.10')
;

-- 09/03/2015 14h4min1s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:04:01','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','1',1120552,'NFeAutorizacao',TO_DATE('2015-03-09 14:04:01','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.ms.gov.br/producao/services2/NfeAutorizacao','3.10')
;

-- 09/03/2015 14h4min22s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:04:22','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','1',1120553,'NFeRetAutorizacao',TO_DATE('2015-03-09 14:04:22','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.ms.gov.br/producao/services2/NfeRetAutorizacao','3.10')
;

-- 09/03/2015 14h8min26s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:08:26','YYYY-MM-DD HH24:MI:SS'),100,451,'Y','1',1120554,'NfeInutilizacao',TO_DATE('2015-03-09 14:08:26','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.mt.gov.br/nfews/v2/services/NfeInutilizacao2?wsdl','3.10')
;

-- 09/03/2015 14h8min48s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:08:48','YYYY-MM-DD HH24:MI:SS'),100,451,'Y','1',1120555,'NfeConsultaProtocolo',TO_DATE('2015-03-09 14:08:48','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.mt.gov.br/nfews/v2/services/NfeConsulta2?wsdl','3.10')
;

-- 09/03/2015 14h9min8s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:09:08','YYYY-MM-DD HH24:MI:SS'),100,451,'Y','1',1120556,'NfeStatusServico',TO_DATE('2015-03-09 14:09:08','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.mt.gov.br/nfews/v2/services/NfeStatusServico2?wsdl','3.10')
;

-- 09/03/2015 14h9min42s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:09:42','YYYY-MM-DD HH24:MI:SS'),100,451,'Y','1',1120557,'NfeConsultaCadastro',TO_DATE('2015-03-09 14:09:42','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.mt.gov.br/nfews/v2/services/CadConsultaCadastro2?wsdl','3.10')
;

-- 09/03/2015 14h10min7s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:10:07','YYYY-MM-DD HH24:MI:SS'),100,451,'Y','1',1120558,'RecepcaoEvento',TO_DATE('2015-03-09 14:10:07','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.mt.gov.br/nfews/v2/services/RecepcaoEvento?wsdl','3.10')
;

-- 09/03/2015 14h10min26s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:10:26','YYYY-MM-DD HH24:MI:SS'),100,451,'Y','1',1120559,'NFeAutorizacao',TO_DATE('2015-03-09 14:10:26','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.mt.gov.br/nfews/v2/services/NfeAutorizacao?wsdl','3.10')
;

-- 09/03/2015 14h10min52s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:10:52','YYYY-MM-DD HH24:MI:SS'),100,451,'Y','1',1120560,'NFeRetAutorizacao',TO_DATE('2015-03-09 14:10:52','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.mt.gov.br/nfews/v2/services/NfeRetAutorizacao?wsdl','3.10')
;

-- 09/03/2015 14h11min50s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:11:50','YYYY-MM-DD HH24:MI:SS'),100,457,'Y','1',1120561,'NfeInutilizacao',TO_DATE('2015-03-09 14:11:50','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.pe.gov.br/nfe-service/services/NfeInutilizacao2','3.10')
;

-- 09/03/2015 14h12min8s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:12:08','YYYY-MM-DD HH24:MI:SS'),100,457,'Y','1',1120562,'NfeConsultaProtocolo',TO_DATE('2015-03-09 14:12:08','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.pe.gov.br/nfe-service/services/NfeConsulta2','3.10')
;

-- 09/03/2015 14h12min27s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:12:27','YYYY-MM-DD HH24:MI:SS'),100,457,'Y','1',1120563,'NfeStatusServico',TO_DATE('2015-03-09 14:12:27','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.pe.gov.br/nfe-service/services/NfeStatusServico2','3.10')
;

-- 09/03/2015 14h12min48s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:12:48','YYYY-MM-DD HH24:MI:SS'),100,457,'Y','1',1120564,'NfeConsultaCadastro',TO_DATE('2015-03-09 14:12:48','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.pe.gov.br/nfe-service/services/CadConsultaCadastro2','3.10')
;

-- 09/03/2015 14h13min11s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:13:11','YYYY-MM-DD HH24:MI:SS'),100,457,'Y','1',1120565,'NFeAutorizacao',TO_DATE('2015-03-09 14:13:11','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.pe.gov.br/nfe-service/services/NfeAutorizacao?wsdl','3.10')
;

-- 09/03/2015 14h13min28s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:13:28','YYYY-MM-DD HH24:MI:SS'),100,457,'Y','1',1120566,'NFeRetAutorizacao',TO_DATE('2015-03-09 14:13:28','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.pe.gov.br/nfe-service/services/NfeRetAutorizacao?wsdl','3.10')
;

-- 09/03/2015 14h14min16s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:14:16','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','1',1120567,'NfeInutilizacao',TO_DATE('2015-03-09 14:14:16','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.pr.gov.br/nfe/NFeInutilizacao3?wsdl','3.10')
;

-- 09/03/2015 14h14min41s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:14:41','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','1',1120568,'NfeConsultaProtocolo',TO_DATE('2015-03-09 14:14:41','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.pr.gov.br/nfe/NFeConsulta3?wsdl','3.10')
;

-- 09/03/2015 14h15min0s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:15:00','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','1',1120569,'NfeStatusServico',TO_DATE('2015-03-09 14:15:00','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.pr.gov.br/nfe/NFeStatusServico3?wsdl','3.10')
;

-- 09/03/2015 14h15min20s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:15:20','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','1',1120570,'NfeConsultaCadastro',TO_DATE('2015-03-09 14:15:20','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.pr.gov.br/nfe/CadConsultaCadastro2?wsdl','3.10')
;

-- 09/03/2015 14h15min50s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:15:50','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','1',1120571,'RecepcaoEvento',TO_DATE('2015-03-09 14:15:50','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.pr.gov.br/nfe/NFeRecepcaoEvento?wsdl','3.10')
;

-- 09/03/2015 14h16min12s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:16:12','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','1',1120572,'NFeAutorizacao',TO_DATE('2015-03-09 14:16:12','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.pr.gov.br/nfe/NFeAutorizacao3?wsdl','3.10')
;

-- 09/03/2015 14h16min33s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:16:33','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','1',1120573,'NFeRetAutorizacao',TO_DATE('2015-03-09 14:16:33','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.pr.gov.br/nfe/NFeRetAutorizacao3?wsdl','3.10')
;

-- 09/03/2015 14h17min58s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:17:58','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','1',1120574,'NfeInutilizacao',TO_DATE('2015-03-09 14:17:58','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.rs.gov.br/ws/NfeInutilizacao/NfeInutilizacao2.asmx','3.10')
;

-- 09/03/2015 14h18min19s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:18:19','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','1',1120575,'NfeConsultaProtocolo',TO_DATE('2015-03-09 14:18:19','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 14h18min37s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:18:37','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','1',1120576,'NfeStatusServico',TO_DATE('2015-03-09 14:18:37','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 14h18min57s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:18:57','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','1',1120577,'NFeAutorizacao',TO_DATE('2015-03-09 14:18:57','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 09/03/2015 14h19min14s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:19:14','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','1',1120578,'NFeRetAutorizacao',TO_DATE('2015-03-09 14:19:14','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 14h20min49s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:20:49','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','1',1120579,'NfeInutilizacao',TO_DATE('2015-03-09 14:20:49','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.sp.gov.br/ws/nfeinutilizacao2.asmx','3.10')
;

-- 09/03/2015 14h21min14s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:21:14','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','1',1120580,'NfeConsultaProtocolo',TO_DATE('2015-03-09 14:21:14','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.sp.gov.br/ws/nfeconsulta2.asmx','3.10')
;

-- 09/03/2015 14h23min15s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:23:15','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','1',1120581,'NfeStatusServico',TO_DATE('2015-03-09 14:23:15','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.sp.gov.br/ws/nfestatusservico2.asmx','3.10')
;

-- 09/03/2015 14h23min34s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:23:34','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','1',1120582,'NfeConsultaCadastro',TO_DATE('2015-03-09 14:23:34','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.sp.gov.br/ws/cadconsultacadastro2.asmx','3.10')
;

-- 09/03/2015 14h23min52s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:23:52','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','1',1120583,'RecepcaoEvento',TO_DATE('2015-03-09 14:23:52','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.sp.gov.br/ws/recepcaoevento.asmx','3.10')
;

-- 09/03/2015 14h24min12s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:24:12','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','1',1120584,'NFeAutorizacao',TO_DATE('2015-03-09 14:24:12','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.sp.gov.br/ws/nfeautorizacao.asmx','3.10')
;

-- 09/03/2015 14h24min30s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:24:30','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','1',1120585,'NFeRetAutorizacao',TO_DATE('2015-03-09 14:24:30','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.sp.gov.br/ws/nferetautorizacao.asmx','3.10')
;

-- 09/03/2015 14h42min19s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:42:19','YYYY-MM-DD HH24:MI:SS'),100,450,'Y','1',1120586,'NfeInutilizacao',TO_DATE('2015-03-09 14:42:19','YYYY-MM-DD HH24:MI:SS'),100,'https://www.sefazvirtual.fazenda.gov.br/NfeInutilizacao2/NfeInutilizacao2.asmx','3.10')
;

-- 09/03/2015 14h42min38s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:42:38','YYYY-MM-DD HH24:MI:SS'),100,450,'Y','1',1120587,'NfeConsultaProtocolo',TO_DATE('2015-03-09 14:42:38','YYYY-MM-DD HH24:MI:SS'),100,'https://www.sefazvirtual.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 14h43min0s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:43:00','YYYY-MM-DD HH24:MI:SS'),100,450,'Y','1',1120588,'NfeStatusServico',TO_DATE('2015-03-09 14:43:00','YYYY-MM-DD HH24:MI:SS'),100,'https://www.sefazvirtual.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 14h43min24s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:43:24','YYYY-MM-DD HH24:MI:SS'),100,450,'Y','1',1120589,'NfeDownloadNF',TO_DATE('2015-03-09 14:43:24','YYYY-MM-DD HH24:MI:SS'),100,'https://www.sefazvirtual.fazenda.gov.br/NfeDownloadNF/NfeDownloadNF.asmx','3.10')
;

-- 09/03/2015 14h43min42s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:43:42','YYYY-MM-DD HH24:MI:SS'),100,450,'Y','1',1120590,'NFeAutorizacao',TO_DATE('2015-03-09 14:43:42','YYYY-MM-DD HH24:MI:SS'),100,'https://www.sefazvirtual.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 09/03/2015 14h44min1s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:44:01','YYYY-MM-DD HH24:MI:SS'),100,450,'Y','1',1120591,'NFeRetAutorizacao',TO_DATE('2015-03-09 14:44:01','YYYY-MM-DD HH24:MI:SS'),100,'https://www.sefazvirtual.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 14h54min37s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:54:37','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','1',1120592,'NfeInutilizacao',TO_DATE('2015-03-09 14:54:37','YYYY-MM-DD HH24:MI:SS'),100,'https://www.sefazvirtual.fazenda.gov.br/NfeInutilizacao2/NfeInutilizacao2.asmx','3.10')
;

-- 09/03/2015 14h55min0s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:55:00','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','1',1120593,'NfeConsultaProtocolo',TO_DATE('2015-03-09 14:55:00','YYYY-MM-DD HH24:MI:SS'),100,'https://www.sefazvirtual.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 14h55min33s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:55:33','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','1',1120594,'NfeStatusServico',TO_DATE('2015-03-09 14:55:33','YYYY-MM-DD HH24:MI:SS'),100,'https://www.sefazvirtual.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 14h56min13s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:56:13','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','1',1120595,'NfeDownloadNF',TO_DATE('2015-03-09 14:56:13','YYYY-MM-DD HH24:MI:SS'),100,'https://www.sefazvirtual.fazenda.gov.br/NfeDownloadNF/NfeDownloadNF.asmx','3.10')
;

-- 09/03/2015 14h57min11s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:57:11','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','1',1120596,'NFeAutorizacao',TO_DATE('2015-03-09 14:57:11','YYYY-MM-DD HH24:MI:SS'),100,'https://www.sefazvirtual.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 09/03/2015 14h57min30s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 14:57:30','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','1',1120597,'NFeRetAutorizacao',TO_DATE('2015-03-09 14:57:30','YYYY-MM-DD HH24:MI:SS'),100,'https://www.sefazvirtual.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 15h11min17s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:11:17','YYYY-MM-DD HH24:MI:SS'),100,458,'Y','1',1120598,'NfeInutilizacao',TO_DATE('2015-03-09 15:11:17','YYYY-MM-DD HH24:MI:SS'),100,'https://www.sefazvirtual.fazenda.gov.br/NfeInutilizacao2/NfeInutilizacao2.asmx','3.10')
;

-- 09/03/2015 15h11min47s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:11:46','YYYY-MM-DD HH24:MI:SS'),100,458,'Y','1',1120599,'NfeConsultaProtocolo',TO_DATE('2015-03-09 15:11:46','YYYY-MM-DD HH24:MI:SS'),100,'https://www.sefazvirtual.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 15h12min6s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:12:05','YYYY-MM-DD HH24:MI:SS'),100,458,'Y','1',1120600,'NfeStatusServico',TO_DATE('2015-03-09 15:12:05','YYYY-MM-DD HH24:MI:SS'),100,'https://www.sefazvirtual.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 15h12min32s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:12:32','YYYY-MM-DD HH24:MI:SS'),100,458,'Y','1',1120601,'NfeDownloadNF',TO_DATE('2015-03-09 15:12:32','YYYY-MM-DD HH24:MI:SS'),100,'https://www.sefazvirtual.fazenda.gov.br/NfeDownloadNF/NfeDownloadNF.asmx','3.10')
;

-- 09/03/2015 15h13min15s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:13:15','YYYY-MM-DD HH24:MI:SS'),100,458,'Y','1',1120602,'NFeAutorizacao',TO_DATE('2015-03-09 15:13:15','YYYY-MM-DD HH24:MI:SS'),100,'https://www.sefazvirtual.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 09/03/2015 15h13min39s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:13:39','YYYY-MM-DD HH24:MI:SS'),100,458,'Y','1',1120603,'NFeRetAutorizacao',TO_DATE('2015-03-09 15:13:39','YYYY-MM-DD HH24:MI:SS'),100,'https://www.sefazvirtual.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 15h16min52s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:16:52','YYYY-MM-DD HH24:MI:SS'),100,441,'Y','1',1120604,'NfeInutilizacao',TO_DATE('2015-03-09 15:16:52','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','3.10')
;

-- 09/03/2015 15h17min11s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:17:10','YYYY-MM-DD HH24:MI:SS'),100,441,'Y','1',1120605,'NfeConsultaProtocolo',TO_DATE('2015-03-09 15:17:10','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 15h17min35s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:17:35','YYYY-MM-DD HH24:MI:SS'),100,441,'Y','1',1120606,'NfeStatusServico',TO_DATE('2015-03-09 15:17:35','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 15h17min54s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:17:54','YYYY-MM-DD HH24:MI:SS'),100,441,'Y','1',1120607,'NFeAutorizacao',TO_DATE('2015-03-09 15:17:54','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 09/03/2015 15h18min11s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:18:11','YYYY-MM-DD HH24:MI:SS'),100,441,'Y','1',1120608,'NFeRetAutorizacao',TO_DATE('2015-03-09 15:18:11','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 15h18min32s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:18:32','YYYY-MM-DD HH24:MI:SS'),100,442,'Y','1',1120609,'NfeInutilizacao',TO_DATE('2015-03-09 15:18:32','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','3.10')
;

-- 09/03/2015 15h18min48s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:18:48','YYYY-MM-DD HH24:MI:SS'),100,442,'Y','1',1120610,'NfeConsultaProtocolo',TO_DATE('2015-03-09 15:18:48','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 15h19min6s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:19:06','YYYY-MM-DD HH24:MI:SS'),100,442,'Y','1',1120611,'NfeStatusServico',TO_DATE('2015-03-09 15:19:06','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 15h19min25s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:19:25','YYYY-MM-DD HH24:MI:SS'),100,442,'Y','1',1120612,'NFeAutorizacao',TO_DATE('2015-03-09 15:19:25','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 09/03/2015 15h19min45s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:19:45','YYYY-MM-DD HH24:MI:SS'),100,442,'Y','1',1120613,'NFeRetAutorizacao',TO_DATE('2015-03-09 15:19:45','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 15h20min6s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:20:06','YYYY-MM-DD HH24:MI:SS'),100,443,'Y','1',1120614,'NfeInutilizacao',TO_DATE('2015-03-09 15:20:06','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','3.10')
;

-- 09/03/2015 15h21min2s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:21:02','YYYY-MM-DD HH24:MI:SS'),100,443,'Y','1',1120615,'NfeConsultaProtocolo',TO_DATE('2015-03-09 15:21:02','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 15h21min23s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:21:23','YYYY-MM-DD HH24:MI:SS'),100,443,'Y','1',1120616,'NfeStatusServico',TO_DATE('2015-03-09 15:21:23','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 15h24min3s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:24:03','YYYY-MM-DD HH24:MI:SS'),100,443,'Y','1',1120617,'NFeAutorizacao',TO_DATE('2015-03-09 15:24:03','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 09/03/2015 15h24min31s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:24:31','YYYY-MM-DD HH24:MI:SS'),100,443,'Y','1',1120618,'NFeRetAutorizacao',TO_DATE('2015-03-09 15:24:31','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 15h27min59s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:27:59','YYYY-MM-DD HH24:MI:SS'),100,447,'Y','1',1120619,'NfeInutilizacao',TO_DATE('2015-03-09 15:27:59','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','3.10')
;

-- 09/03/2015 15h28min21s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:28:21','YYYY-MM-DD HH24:MI:SS'),100,447,'Y','1',1120620,'NfeConsultaProtocolo',TO_DATE('2015-03-09 15:28:21','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 15h28min45s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:28:45','YYYY-MM-DD HH24:MI:SS'),100,447,'Y','1',1120621,'NfeStatusServico',TO_DATE('2015-03-09 15:28:45','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 15h29min0s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:29:00','YYYY-MM-DD HH24:MI:SS'),100,447,'Y','1',1120622,'NFeAutorizacao',TO_DATE('2015-03-09 15:29:00','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 09/03/2015 15h29min17s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:29:17','YYYY-MM-DD HH24:MI:SS'),100,447,'Y','1',1120623,'NFeRetAutorizacao',TO_DATE('2015-03-09 15:29:17','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 15h29min49s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:29:49','YYYY-MM-DD HH24:MI:SS'),100,455,'Y','1',1120624,'NfeInutilizacao',TO_DATE('2015-03-09 15:29:49','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','3.10')
;

-- 09/03/2015 15h30min9s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:30:09','YYYY-MM-DD HH24:MI:SS'),100,455,'Y','1',1120625,'NfeConsultaProtocolo',TO_DATE('2015-03-09 15:30:09','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 15h30min36s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:30:36','YYYY-MM-DD HH24:MI:SS'),100,455,'Y','1',1120626,'NfeStatusServico',TO_DATE('2015-03-09 15:30:36','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 15h30min54s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:30:54','YYYY-MM-DD HH24:MI:SS'),100,455,'Y','1',1120627,'NFeAutorizacao',TO_DATE('2015-03-09 15:30:54','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 09/03/2015 15h31min18s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:31:18','YYYY-MM-DD HH24:MI:SS'),100,455,'Y','1',1120628,'NFeRetAutorizacao',TO_DATE('2015-03-09 15:31:18','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 15h34min11s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:34:11','YYYY-MM-DD HH24:MI:SS'),100,459,'Y','1',1120629,'NfeInutilizacao',TO_DATE('2015-03-09 15:34:11','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','3.10')
;

-- 09/03/2015 15h34min35s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:34:34','YYYY-MM-DD HH24:MI:SS'),100,459,'Y','1',1120630,'NfeConsultaProtocolo',TO_DATE('2015-03-09 15:34:34','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 15h35min5s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:35:05','YYYY-MM-DD HH24:MI:SS'),100,459,'Y','1',1120631,'NfeStatusServico',TO_DATE('2015-03-09 15:35:05','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 15h35min21s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:35:21','YYYY-MM-DD HH24:MI:SS'),100,459,'Y','1',1120632,'NFeAutorizacao',TO_DATE('2015-03-09 15:35:21','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 09/03/2015 15h35min38s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:35:38','YYYY-MM-DD HH24:MI:SS'),100,459,'Y','1',1120633,'NFeRetAutorizacao',TO_DATE('2015-03-09 15:35:38','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 15h36min0s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:35:59','YYYY-MM-DD HH24:MI:SS'),100,460,'Y','1',1120634,'NfeInutilizacao',TO_DATE('2015-03-09 15:35:59','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','3.10')
;

-- 09/03/2015 15h36min15s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:36:14','YYYY-MM-DD HH24:MI:SS'),100,460,'Y','1',1120635,'NfeConsultaProtocolo',TO_DATE('2015-03-09 15:36:14','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 15h36min31s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:36:31','YYYY-MM-DD HH24:MI:SS'),100,460,'Y','1',1120636,'NfeStatusServico',TO_DATE('2015-03-09 15:36:31','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 15h36min46s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:36:46','YYYY-MM-DD HH24:MI:SS'),100,460,'Y','1',1120637,'NFeAutorizacao',TO_DATE('2015-03-09 15:36:46','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 09/03/2015 15h37min0s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:37:00','YYYY-MM-DD HH24:MI:SS'),100,460,'Y','1',1120638,'NFeRetAutorizacao',TO_DATE('2015-03-09 15:37:00','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 15h37min24s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:37:24','YYYY-MM-DD HH24:MI:SS'),100,462,'Y','1',1120639,'NfeInutilizacao',TO_DATE('2015-03-09 15:37:24','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','3.10')
;

-- 09/03/2015 15h37min42s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:37:41','YYYY-MM-DD HH24:MI:SS'),100,462,'Y','1',1120640,'NfeConsultaProtocolo',TO_DATE('2015-03-09 15:37:41','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 15h37min57s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:37:57','YYYY-MM-DD HH24:MI:SS'),100,462,'Y','1',1120641,'NfeStatusServico',TO_DATE('2015-03-09 15:37:57','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 15h38min15s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:38:15','YYYY-MM-DD HH24:MI:SS'),100,462,'Y','1',1120642,'NFeAutorizacao',TO_DATE('2015-03-09 15:38:15','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 09/03/2015 15h38min31s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:38:31','YYYY-MM-DD HH24:MI:SS'),100,462,'Y','1',1120643,'NFeRetAutorizacao',TO_DATE('2015-03-09 15:38:31','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 15h38min57s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:38:57','YYYY-MM-DD HH24:MI:SS'),100,463,'Y','1',1120644,'NfeInutilizacao',TO_DATE('2015-03-09 15:38:57','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','3.10')
;

-- 09/03/2015 15h39min17s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:39:17','YYYY-MM-DD HH24:MI:SS'),100,463,'Y','1',1120645,'NfeConsultaProtocolo',TO_DATE('2015-03-09 15:39:17','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 15h39min35s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:39:35','YYYY-MM-DD HH24:MI:SS'),100,463,'Y','1',1120646,'NfeStatusServico',TO_DATE('2015-03-09 15:39:35','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 15h39min51s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:39:51','YYYY-MM-DD HH24:MI:SS'),100,463,'Y','1',1120647,'NFeAutorizacao',TO_DATE('2015-03-09 15:39:51','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 09/03/2015 15h40min12s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:40:12','YYYY-MM-DD HH24:MI:SS'),100,463,'Y','1',1120648,'NFeRetAutorizacao',TO_DATE('2015-03-09 15:40:12','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 15h40min38s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:40:38','YYYY-MM-DD HH24:MI:SS'),100,464,'Y','1',1120649,'NfeInutilizacao',TO_DATE('2015-03-09 15:40:38','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','3.10')
;

-- 09/03/2015 15h40min54s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:40:54','YYYY-MM-DD HH24:MI:SS'),100,464,'Y','1',1120650,'NfeConsultaProtocolo',TO_DATE('2015-03-09 15:40:54','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 15h41min16s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:41:16','YYYY-MM-DD HH24:MI:SS'),100,464,'Y','1',1120651,'NfeStatusServico',TO_DATE('2015-03-09 15:41:16','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 15h41min54s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:41:54','YYYY-MM-DD HH24:MI:SS'),100,464,'Y','1',1120652,'NFeAutorizacao',TO_DATE('2015-03-09 15:41:54','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 09/03/2015 15h42min26s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:42:26','YYYY-MM-DD HH24:MI:SS'),100,464,'Y','1',1120653,'NFeRetAutorizacao',TO_DATE('2015-03-09 15:42:26','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 15h44min16s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:44:16','YYYY-MM-DD HH24:MI:SS'),100,466,'Y','1',1120654,'NfeInutilizacao',TO_DATE('2015-03-09 15:44:16','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','3.10')
;

-- 09/03/2015 15h44min36s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:44:36','YYYY-MM-DD HH24:MI:SS'),100,466,'Y','1',1120655,'NfeConsultaProtocolo',TO_DATE('2015-03-09 15:44:36','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 15h44min53s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:44:53','YYYY-MM-DD HH24:MI:SS'),100,464,'Y','1',1120656,'NfeStatusServico',TO_DATE('2015-03-09 15:44:53','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 15h45min10s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:45:10','YYYY-MM-DD HH24:MI:SS'),100,466,'Y','1',1120657,'NFeAutorizacao',TO_DATE('2015-03-09 15:45:10','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 09/03/2015 15h45min26s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:45:26','YYYY-MM-DD HH24:MI:SS'),100,466,'Y','1',1120658,'NFeRetAutorizacao',TO_DATE('2015-03-09 15:45:26','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 15h45min47s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:45:47','YYYY-MM-DD HH24:MI:SS'),100,467,'Y','1',1120659,'NfeInutilizacao',TO_DATE('2015-03-09 15:45:47','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','3.10')
;

-- 09/03/2015 15h46min5s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:46:05','YYYY-MM-DD HH24:MI:SS'),100,467,'Y','1',1120660,'NfeConsultaProtocolo',TO_DATE('2015-03-09 15:46:05','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 15h46min24s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:46:24','YYYY-MM-DD HH24:MI:SS'),100,467,'Y','1',1120661,'NfeStatusServico',TO_DATE('2015-03-09 15:46:24','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 15h46min44s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:46:44','YYYY-MM-DD HH24:MI:SS'),100,467,'Y','1',1120662,'NFeAutorizacao',TO_DATE('2015-03-09 15:46:44','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 09/03/2015 15h48min7s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:48:07','YYYY-MM-DD HH24:MI:SS'),100,467,'Y','1',1120663,'NFeRetAutorizacao',TO_DATE('2015-03-09 15:48:07','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 15h54min42s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:54:42','YYYY-MM-DD HH24:MI:SS'),100,441,'Y','1',1120664,'NfeConsultaProtocolo',TO_DATE('2015-03-09 15:54:42','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 15h55min2s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:55:02','YYYY-MM-DD HH24:MI:SS'),100,441,'Y','1',1120665,'NfeStatusServico',TO_DATE('2015-03-09 15:55:02','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 15h55min18s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:55:17','YYYY-MM-DD HH24:MI:SS'),100,441,'Y','1',1120666,'NFeAutorizacao',TO_DATE('2015-03-09 15:55:17','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 09/03/2015 15h55min43s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:55:43','YYYY-MM-DD HH24:MI:SS'),100,441,'Y','1',1120667,'NFeRetAutorizacao',TO_DATE('2015-03-09 15:55:43','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 15h56min11s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:56:11','YYYY-MM-DD HH24:MI:SS'),100,442,'Y','1',1120668,'NfeConsultaProtocolo',TO_DATE('2015-03-09 15:56:11','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 15h56min36s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:56:36','YYYY-MM-DD HH24:MI:SS'),100,442,'Y','1',1120669,'NfeStatusServico',TO_DATE('2015-03-09 15:56:36','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 15h56min57s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:56:57','YYYY-MM-DD HH24:MI:SS'),100,442,'Y','1',1120670,'NFeAutorizacao',TO_DATE('2015-03-09 15:56:57','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 09/03/2015 15h57min17s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:57:16','YYYY-MM-DD HH24:MI:SS'),100,442,'Y','1',1120671,'NFeRetAutorizacao',TO_DATE('2015-03-09 15:57:16','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 15h57min48s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:57:47','YYYY-MM-DD HH24:MI:SS'),100,443,'Y','1',1120672,'NfeConsultaProtocolo',TO_DATE('2015-03-09 15:57:47','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 15h58min5s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:58:05','YYYY-MM-DD HH24:MI:SS'),100,443,'Y','1',1120673,'NfeStatusServico',TO_DATE('2015-03-09 15:58:05','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 15h58min24s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:58:23','YYYY-MM-DD HH24:MI:SS'),100,443,'Y','1',1120674,'NFeAutorizacao',TO_DATE('2015-03-09 15:58:23','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 09/03/2015 15h58min40s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:58:40','YYYY-MM-DD HH24:MI:SS'),100,443,'Y','1',1120675,'NFeRetAutorizacao',TO_DATE('2015-03-09 15:58:40','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 15h59min29s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:59:29','YYYY-MM-DD HH24:MI:SS'),100,447,'Y','1',1120676,'NfeConsultaProtocolo',TO_DATE('2015-03-09 15:59:29','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 15h59min47s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 15:59:47','YYYY-MM-DD HH24:MI:SS'),100,447,'Y','1',1120677,'NfeStatusServico',TO_DATE('2015-03-09 15:59:47','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 16h0min4s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:00:04','YYYY-MM-DD HH24:MI:SS'),100,447,'Y','1',1120678,'NFeAutorizacao',TO_DATE('2015-03-09 16:00:04','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h0min24s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:00:24','YYYY-MM-DD HH24:MI:SS'),100,447,'Y','1',1120679,'NFeRetAutorizacao',TO_DATE('2015-03-09 16:00:24','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h0min47s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:00:47','YYYY-MM-DD HH24:MI:SS'),100,448,'Y','1',1120680,'NfeConsultaProtocolo',TO_DATE('2015-03-09 16:00:47','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 16h1min5s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:01:05','YYYY-MM-DD HH24:MI:SS'),100,448,'Y','1',1120681,'NfeStatusServico',TO_DATE('2015-03-09 16:01:05','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 16h1min24s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:01:24','YYYY-MM-DD HH24:MI:SS'),100,448,'Y','1',1120682,'NFeAutorizacao',TO_DATE('2015-03-09 16:01:24','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h1min48s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:01:47','YYYY-MM-DD HH24:MI:SS'),100,448,'Y','1',1120683,'NFeRetAutorizacao',TO_DATE('2015-03-09 16:01:47','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h2min11s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:02:11','YYYY-MM-DD HH24:MI:SS'),100,453,'Y','1',1120684,'NfeConsultaProtocolo',TO_DATE('2015-03-09 16:02:11','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 16h2min27s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:02:27','YYYY-MM-DD HH24:MI:SS'),100,453,'Y','1',1120685,'NfeStatusServico',TO_DATE('2015-03-09 16:02:27','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 16h2min55s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:02:55','YYYY-MM-DD HH24:MI:SS'),100,453,'Y','1',1120686,'NFeAutorizacao',TO_DATE('2015-03-09 16:02:55','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h3min13s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:03:13','YYYY-MM-DD HH24:MI:SS'),100,453,'Y','1',1120687,'NFeRetAutorizacao',TO_DATE('2015-03-09 16:03:13','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h3min39s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:03:39','YYYY-MM-DD HH24:MI:SS'),100,455,'Y','1',1120688,'NfeConsultaProtocolo',TO_DATE('2015-03-09 16:03:39','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 16h3min57s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:03:57','YYYY-MM-DD HH24:MI:SS'),100,455,'Y','1',1120689,'NfeStatusServico',TO_DATE('2015-03-09 16:03:57','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 16h4min14s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:04:14','YYYY-MM-DD HH24:MI:SS'),100,455,'Y','1',1120690,'NFeAutorizacao',TO_DATE('2015-03-09 16:04:14','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h4min31s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:04:31','YYYY-MM-DD HH24:MI:SS'),100,455,'Y','1',1120691,'NFeRetAutorizacao',TO_DATE('2015-03-09 16:04:31','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h5min5s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:05:05','YYYY-MM-DD HH24:MI:SS'),100,459,'Y','1',1120692,'NfeConsultaProtocolo',TO_DATE('2015-03-09 16:05:05','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 16h5min29s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:05:29','YYYY-MM-DD HH24:MI:SS'),100,459,'Y','1',1120693,'NfeStatusServico',TO_DATE('2015-03-09 16:05:29','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 16h5min45s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:05:45','YYYY-MM-DD HH24:MI:SS'),100,459,'Y','1',1120694,'NFeAutorizacao',TO_DATE('2015-03-09 16:05:45','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h6min2s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:06:02','YYYY-MM-DD HH24:MI:SS'),100,459,'Y','1',1120695,'NFeRetAutorizacao',TO_DATE('2015-03-09 16:06:02','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h11min29s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:11:29','YYYY-MM-DD HH24:MI:SS'),100,460,'Y','1',1120696,'NfeConsultaProtocolo',TO_DATE('2015-03-09 16:11:29','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 16h11min45s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:11:45','YYYY-MM-DD HH24:MI:SS'),100,460,'Y','1',1120697,'NfeStatusServico',TO_DATE('2015-03-09 16:11:45','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 16h12min2s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:12:01','YYYY-MM-DD HH24:MI:SS'),100,460,'Y','1',1120698,'NFeAutorizacao',TO_DATE('2015-03-09 16:12:01','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h12min14s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:12:14','YYYY-MM-DD HH24:MI:SS'),100,460,'Y','1',1120699,'NFeRetAutorizacao',TO_DATE('2015-03-09 16:12:14','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h14min41s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:14:41','YYYY-MM-DD HH24:MI:SS'),100,462,'Y','1',1120700,'NfeConsultaProtocolo',TO_DATE('2015-03-09 16:14:41','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 16h17min45s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:17:45','YYYY-MM-DD HH24:MI:SS'),100,462,'Y','1',1120701,'NfeStatusServico',TO_DATE('2015-03-09 16:17:45','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 16h18min6s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:18:06','YYYY-MM-DD HH24:MI:SS'),100,462,'Y','1',1120702,'NFeAutorizacao',TO_DATE('2015-03-09 16:18:06','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h18min24s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:18:24','YYYY-MM-DD HH24:MI:SS'),100,462,'Y','1',1120703,'NFeRetAutorizacao',TO_DATE('2015-03-09 16:18:24','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h18min50s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:18:50','YYYY-MM-DD HH24:MI:SS'),100,463,'Y','1',1120704,'NfeConsultaProtocolo',TO_DATE('2015-03-09 16:18:50','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 16h19min6s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:19:06','YYYY-MM-DD HH24:MI:SS'),100,463,'Y','1',1120705,'NfeStatusServico',TO_DATE('2015-03-09 16:19:06','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 16h19min23s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:19:23','YYYY-MM-DD HH24:MI:SS'),100,463,'Y','1',1120706,'NFeAutorizacao',TO_DATE('2015-03-09 16:19:23','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h19min43s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:19:43','YYYY-MM-DD HH24:MI:SS'),100,463,'Y','1',1120707,'NFeRetAutorizacao',TO_DATE('2015-03-09 16:19:43','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h20min20s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:20:20','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','1',1120708,'NfeConsultaProtocolo',TO_DATE('2015-03-09 16:20:20','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 16h21min13s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:21:13','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','1',1120709,'NfeStatusServico',TO_DATE('2015-03-09 16:21:13','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 16h21min36s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:21:36','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','1',1120710,'NFeAutorizacao',TO_DATE('2015-03-09 16:21:36','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h22min25s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:22:25','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','1',1120711,'NFeRetAutorizacao',TO_DATE('2015-03-09 16:22:25','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h22min58s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:22:58','YYYY-MM-DD HH24:MI:SS'),100,464,'Y','1',1120712,'NfeConsultaProtocolo',TO_DATE('2015-03-09 16:22:58','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 16h32min31s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:32:31','YYYY-MM-DD HH24:MI:SS'),100,464,'Y','1',1120713,'NfeStatusServico',TO_DATE('2015-03-09 16:32:31','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 16h32min49s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:32:49','YYYY-MM-DD HH24:MI:SS'),100,464,'Y','1',1120714,'NFeAutorizacao',TO_DATE('2015-03-09 16:32:49','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h33min7s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:33:07','YYYY-MM-DD HH24:MI:SS'),100,464,'Y','1',1120715,'NFeRetAutorizacao',TO_DATE('2015-03-09 16:33:07','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h33min31s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:33:31','YYYY-MM-DD HH24:MI:SS'),100,466,'Y','1',1120716,'NfeConsultaProtocolo',TO_DATE('2015-03-09 16:33:31','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 16h33min48s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:33:48','YYYY-MM-DD HH24:MI:SS'),100,466,'Y','1',1120717,'NfeStatusServico',TO_DATE('2015-03-09 16:33:48','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 16h34min3s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:34:03','YYYY-MM-DD HH24:MI:SS'),100,466,'Y','1',1120718,'NFeAutorizacao',TO_DATE('2015-03-09 16:34:03','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h34min23s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:34:23','YYYY-MM-DD HH24:MI:SS'),100,466,'Y','1',1120719,'NFeRetAutorizacao',TO_DATE('2015-03-09 16:34:23','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h34min53s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:34:53','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','1',1120720,'NfeConsultaProtocolo',TO_DATE('2015-03-09 16:34:53','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 16h35min23s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:35:23','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','1',1120721,'NfeStatusServico',TO_DATE('2015-03-09 16:35:23','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 16h35min39s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:35:39','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','1',1120722,'NFeAutorizacao',TO_DATE('2015-03-09 16:35:39','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h35min58s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:35:58','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','1',1120723,'NFeRetAutorizacao',TO_DATE('2015-03-09 16:35:58','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h36min30s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:36:30','YYYY-MM-DD HH24:MI:SS'),100,467,'Y','1',1120724,'NfeConsultaProtocolo',TO_DATE('2015-03-09 16:36:30','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 16h36min51s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:36:51','YYYY-MM-DD HH24:MI:SS'),100,467,'Y','1',1120725,'NfeStatusServico',TO_DATE('2015-03-09 16:36:51','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 16h37min9s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:37:09','YYYY-MM-DD HH24:MI:SS'),100,467,'Y','1',1120726,'NFeAutorizacao',TO_DATE('2015-03-09 16:37:09','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeAutorizacao/NfeAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h37min28s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:37:27','YYYY-MM-DD HH24:MI:SS'),100,467,'Y','1',1120727,'NFeRetAutorizacao',TO_DATE('2015-03-09 16:37:27','YYYY-MM-DD HH24:MI:SS'),100,'https://www.svc.fazenda.gov.br/NfeRetAutorizacao/NfeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h47min25s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:47:25','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','1',1120728,'NfeConsultaProtocolo',TO_DATE('2015-03-09 16:47:25','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 16h48min3s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:48:03','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','1',1120729,'NfeStatusServico',TO_DATE('2015-03-09 16:48:03','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 16h48min19s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:48:18','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','1',1120730,'NFeAutorizacao',TO_DATE('2015-03-09 16:48:18','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h48min38s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:48:38','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','1',1120731,'NFeRetAutorizacao',TO_DATE('2015-03-09 16:48:38','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h49min9s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:49:09','YYYY-MM-DD HH24:MI:SS'),100,445,'Y','1',1120732,'NfeConsultaProtocolo',TO_DATE('2015-03-09 16:49:09','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 16h49min24s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:49:24','YYYY-MM-DD HH24:MI:SS'),100,445,'Y','1',1120733,'NfeStatusServico',TO_DATE('2015-03-09 16:49:24','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 16h49min50s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:49:50','YYYY-MM-DD HH24:MI:SS'),100,445,'Y','1',1120734,'NFeAutorizacao',TO_DATE('2015-03-09 16:49:50','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h50min8s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:50:08','YYYY-MM-DD HH24:MI:SS'),100,445,'Y','1',1120735,'NFeRetAutorizacao',TO_DATE('2015-03-09 16:50:08','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h50min27s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:50:27','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','1',1120736,'NfeConsultaProtocolo',TO_DATE('2015-03-09 16:50:27','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 16h50min40s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:50:40','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','1',1120737,'NfeStatusServico',TO_DATE('2015-03-09 16:50:40','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 16h50min55s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:50:55','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','1',1120738,'NFeAutorizacao',TO_DATE('2015-03-09 16:50:55','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h51min36s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:51:36','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','1',1120739,'NFeRetAutorizacao',TO_DATE('2015-03-09 16:51:36','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h52min1s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:52:00','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','1',1120740,'NfeConsultaProtocolo',TO_DATE('2015-03-09 16:52:00','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 16h52min24s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:52:23','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','1',1120741,'NfeStatusServico',TO_DATE('2015-03-09 16:52:23','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 16h52min41s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:52:41','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','1',1120742,'NFeAutorizacao',TO_DATE('2015-03-09 16:52:41','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h52min56s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:52:56','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','1',1120743,'NFeRetAutorizacao',TO_DATE('2015-03-09 16:52:56','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h53min20s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:53:20','YYYY-MM-DD HH24:MI:SS'),100,450,'Y','1',1120744,'NfeConsultaProtocolo',TO_DATE('2015-03-09 16:53:20','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 16h53min37s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:53:37','YYYY-MM-DD HH24:MI:SS'),100,450,'Y','1',1120745,'NfeStatusServico',TO_DATE('2015-03-09 16:53:37','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 16h53min52s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:53:52','YYYY-MM-DD HH24:MI:SS'),100,450,'Y','1',1120746,'NFeAutorizacao',TO_DATE('2015-03-09 16:53:52','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h54min7s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:54:07','YYYY-MM-DD HH24:MI:SS'),100,450,'Y','1',1120747,'NFeRetAutorizacao',TO_DATE('2015-03-09 16:54:07','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h54min41s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:54:41','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','1',1120748,'NfeConsultaProtocolo',TO_DATE('2015-03-09 16:54:41','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 16h54min57s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:54:57','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','1',1120749,'NfeStatusServico',TO_DATE('2015-03-09 16:54:57','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 16h55min17s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:55:17','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','1',1120750,'NFeAutorizacao',TO_DATE('2015-03-09 16:55:17','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h55min32s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:55:31','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','1',1120751,'NFeRetAutorizacao',TO_DATE('2015-03-09 16:55:31','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h56min18s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:56:18','YYYY-MM-DD HH24:MI:SS'),100,451,'Y','1',1120752,'NfeConsultaProtocolo',TO_DATE('2015-03-09 16:56:18','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 16h56min38s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:56:38','YYYY-MM-DD HH24:MI:SS'),100,451,'Y','1',1120753,'NfeStatusServico',TO_DATE('2015-03-09 16:56:38','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 16h56min57s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:56:57','YYYY-MM-DD HH24:MI:SS'),100,451,'Y','1',1120754,'NFeAutorizacao',TO_DATE('2015-03-09 16:56:57','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h57min13s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:57:13','YYYY-MM-DD HH24:MI:SS'),100,451,'Y','1',1120755,'NFeRetAutorizacao',TO_DATE('2015-03-09 16:57:13','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h57min40s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:57:40','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','1',1120756,'NfeConsultaProtocolo',TO_DATE('2015-03-09 16:57:40','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 16h58min2s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:58:02','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','1',1120757,'NfeStatusServico',TO_DATE('2015-03-09 16:58:02','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 16h58min25s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:58:25','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','1',1120758,'NFeAutorizacao',TO_DATE('2015-03-09 16:58:25','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h58min43s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:58:43','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','1',1120759,'NFeRetAutorizacao',TO_DATE('2015-03-09 16:58:43','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 16h59min14s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:59:14','YYYY-MM-DD HH24:MI:SS'),100,457,'Y','1',1120760,'NfeConsultaProtocolo',TO_DATE('2015-03-09 16:59:14','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 16h59min34s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:59:34','YYYY-MM-DD HH24:MI:SS'),100,457,'Y','1',1120761,'NfeStatusServico',TO_DATE('2015-03-09 16:59:34','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 16h59min50s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 16:59:50','YYYY-MM-DD HH24:MI:SS'),100,457,'Y','1',1120762,'NFeAutorizacao',TO_DATE('2015-03-09 16:59:50','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 09/03/2015 17h0min11s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 17:00:11','YYYY-MM-DD HH24:MI:SS'),100,457,'Y','1',1120763,'NFeRetAutorizacao',TO_DATE('2015-03-09 17:00:11','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 17h0min33s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 17:00:33','YYYY-MM-DD HH24:MI:SS'),100,458,'Y','1',1120764,'NfeConsultaProtocolo',TO_DATE('2015-03-09 17:00:33','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 17h0min52s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 17:00:52','YYYY-MM-DD HH24:MI:SS'),100,458,'Y','1',1120765,'NfeStatusServico',TO_DATE('2015-03-09 17:00:52','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 17h1min7s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 17:01:07','YYYY-MM-DD HH24:MI:SS'),100,458,'Y','1',1120766,'NFeAutorizacao',TO_DATE('2015-03-09 17:01:07','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 09/03/2015 17h1min26s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 17:01:26','YYYY-MM-DD HH24:MI:SS'),100,458,'Y','1',1120767,'NFeRetAutorizacao',TO_DATE('2015-03-09 17:01:26','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 09/03/2015 17h2min23s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 17:02:23','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','1',1120768,'NfeConsultaProtocolo',TO_DATE('2015-03-09 17:02:23','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','3.10')
;

-- 09/03/2015 17h2min43s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 17:02:43','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','1',1120769,'NfeStatusServico',TO_DATE('2015-03-09 17:02:43','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','3.10')
;

-- 09/03/2015 17h2min58s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 17:02:58','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','1',1120770,'NFeAutorizacao',TO_DATE('2015-03-09 17:02:58','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeAutorizacao/NFeAutorizacao.asmx','3.10')
;

-- 09/03/2015 17h3min15s BRT
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2015-03-09 17:03:15','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','1',1120771,'NFeRetAutorizacao',TO_DATE('2015-03-09 17:03:15','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetAutorizacao/NFeRetAutorizacao.asmx','3.10')
;

-- 04/03/2015 16h14min34s BRT
INSERT INTO AD_Table (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,CopyColumnsFromTable,Created,CreatedBy,Description,EntityType,Help,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsSystemLanguage,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES ('3',0,0,1120447,'N',TO_DATE('2015-03-04 16:14:31','YYYY-MM-DD HH24:MI:SS'),100,'NF-e that can be related with another NF-e','LBRA','Fiscal Document Referenced is a NF-e that is related with another NF-e','N','Y','Y','N','Y','N','N','N','N',0,'Referenced Documents','L','LBR_NotaFiscalDocRef',TO_DATE('2015-03-04 16:14:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 04/03/2015 16h14min34s BRT
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=1120447 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- 04/03/2015 16h14min35s BRT
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,1153243,TO_DATE('2015-03-04 16:14:34','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LBR_NotaFiscalDocRef',1,'Y','N','Y','Y','LBR_NotaFiscalDocRef','N',1000000,TO_DATE('2015-03-04 16:14:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 04/03/2015 16h15min1s BRT
UPDATE AD_Table_Trl SET Name='Documento Fiscal Referenciado',IsTranslated='Y',Updated=TO_DATE('2015-03-04 16:15:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120447 AND AD_Language='pt_BR'
;

-- 04/03/2015 16h15min16s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126471,1884,0,13,1120447,'A_Asset_ID',TO_DATE('2015-03-04 16:15:15','YYYY-MM-DD HH24:MI:SS'),100,'Asset used internally or by customers','LBRA',22,'An asset is either created by purchasing or by delivering a product.  An asset can be used internally or be a customer asset.','Y','N','N','N','N','Y','Y','N','Y','N','N','Asset',0,TO_DATE('2015-03-04 16:15:15','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 04/03/2015 16h15min16s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126471 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 04/03/2015 16h15min16s BRT
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121701,0,'LBR_NotaFiscalDocRef_ID',TO_DATE('2015-03-04 16:15:16','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Referenced Documents','Referenced Documents',TO_DATE('2015-03-04 16:15:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 04/03/2015 16h15min16s BRT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121701 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 04/03/2015 16h15min17s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126472,1121701,0,13,1120447,'LBR_NotaFiscalDocRef_ID',TO_DATE('2015-03-04 16:15:16','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',22,'Y','N','N','Y','Y','Y','N','N','Y','N','N','Referenced Documents',1,TO_DATE('2015-03-04 16:15:16','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 04/03/2015 16h15min17s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126472 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 04/03/2015 16h15min17s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126473,102,0,19,1120447,129,'AD_Client_ID',TO_DATE('2015-03-04 16:15:17','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','LBRA',22,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','Y','Y','N','Y','N','N','Client',0,TO_DATE('2015-03-04 16:15:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 04/03/2015 16h15min17s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126473 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 04/03/2015 16h15min17s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126474,113,0,19,1120447,130,'AD_Org_ID',TO_DATE('2015-03-04 16:15:17','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','LBRA',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','Y','Y','N','Y','N','N','Organization',0,TO_DATE('2015-03-04 16:15:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 04/03/2015 16h15min17s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126474 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 04/03/2015 16h15min18s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126475,245,0,15,1120447,'Created',TO_DATE('2015-03-04 16:15:17','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','LBRA',7,'The Created field indicates the date that this record was created.','Y','N','N','N','N','Y','N','N','Y','N','Y','Created',0,TO_DATE('2015-03-04 16:15:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 04/03/2015 16h15min18s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126475 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 04/03/2015 16h15min18s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126476,246,0,18,110,1120447,'CreatedBy',TO_DATE('2015-03-04 16:15:18','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','LBRA',22,'The Created By field indicates the user who created this record.','Y','N','N','N','N','Y','N','N','Y','N','Y','Created By',0,TO_DATE('2015-03-04 16:15:18','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 04/03/2015 16h15min18s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126476 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 04/03/2015 16h15min19s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126477,275,0,10,1120447,'Description',TO_DATE('2015-03-04 16:15:18','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','LBRA',255,'A description is limited to 255 characters.','Y','N','N','N','N','N','N','N','Y','N','Y','Description',0,TO_DATE('2015-03-04 16:15:18','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 04/03/2015 16h15min19s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126477 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 04/03/2015 16h15min19s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126478,348,0,20,1120447,'IsActive',TO_DATE('2015-03-04 16:15:19','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','LBRA',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','Y','N','N','Y','N','Y','Active',0,TO_DATE('2015-03-04 16:15:19','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 04/03/2015 16h15min19s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126478 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 04/03/2015 16h15min19s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126479,607,0,15,1120447,'Updated',TO_DATE('2015-03-04 16:15:19','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','LBRA',7,'The Updated field indicates the date that this record was updated.','Y','N','N','N','N','Y','N','N','Y','N','Y','Updated',0,TO_DATE('2015-03-04 16:15:19','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 04/03/2015 16h15min19s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126479 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 04/03/2015 16h15min20s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126480,608,0,18,110,1120447,'UpdatedBy',TO_DATE('2015-03-04 16:15:19','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','LBRA',22,'The Updated By field indicates the user who updated this record.','Y','N','N','N','N','Y','N','N','Y','N','Y','Updated By',0,TO_DATE('2015-03-04 16:15:19','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 04/03/2015 16h15min20s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126480 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 04/03/2015 16h15min21s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126481,53643,0,15,1120447,'UseDate',TO_DATE('2015-03-04 16:15:20','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',7,'Y','N','N','N','N','Y','N','N','Y','N','Y','UseDate',0,TO_DATE('2015-03-04 16:15:20','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 04/03/2015 16h15min21s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126481 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 04/03/2015 16h15min21s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126482,1948,0,11,1120447,'UseUnits',TO_DATE('2015-03-04 16:15:21','YYYY-MM-DD HH24:MI:SS'),100,'Currently used units of the assets','LBRA',22,'Y','N','N','N','N','Y','N','N','Y','N','Y','Use units',0,TO_DATE('2015-03-04 16:15:21','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 04/03/2015 16h15min21s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126482 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 04/03/2015 16h15min47s BRT
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1126471
;

-- 04/03/2015 16h15min47s BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1126471
;

-- 04/03/2015 16h15min54s BRT
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1126477
;

-- 04/03/2015 16h15min54s BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1126477
;

-- 04/03/2015 16h16min0s BRT
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1126481
;

-- 04/03/2015 16h16min0s BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1126481
;

-- 04/03/2015 16h16min3s BRT
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1126482
;

-- 04/03/2015 16h16min3s BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1126482
;

-- 04/03/2015 16h21min15s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126483,209,0,19,1120447,'C_Region_ID',TO_DATE('2015-03-04 16:21:14','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a geographical Region','U',22,'The Region identifies a unique Region for this Country.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Region',0,TO_DATE('2015-03-04 16:21:14','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 04/03/2015 16h21min15s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126483 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 04/03/2015 16h23min56s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126484,1000008,0,17,1000000,1120447,'lbr_BPTypeBR',TO_DATE('2015-03-04 16:23:55','YYYY-MM-DD HH24:MI:SS'),100,'Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)','U',2,'Used to identify if the Business partner is a legal entity or an individual','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Brazilian BP Type',0,TO_DATE('2015-03-04 16:23:55','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 04/03/2015 16h23min56s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126484 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 04/03/2015 16h24min4s BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2015-03-04 16:24:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126484
;

-- 04/03/2015 16h24min10s BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2015-03-04 16:24:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126483
;

-- 04/03/2015 16h25min31s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,VFormat) VALUES (0,1126485,1000009,0,10,1120447,'lbr_CNPJ',TO_DATE('2015-03-04 16:25:30','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify Legal Entities in Brazil','U',18,'Used to identify Legal Entities in Brazil','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','CNPJ',0,TO_DATE('2015-03-04 16:25:30','YYYY-MM-DD HH24:MI:SS'),100,0,'00.000.000/0000-00')
;

-- 04/03/2015 16h25min31s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126485 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 04/03/2015 16h26min10s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,VFormat) VALUES (0,1126486,1000010,0,10,1120447,'lbr_CPF',TO_DATE('2015-03-04 16:26:10','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify individuals in Brazil','U',14,'Used to identify individuals in Brazil','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','CPF',0,TO_DATE('2015-03-04 16:26:10','YYYY-MM-DD HH24:MI:SS'),100,0,'000.000.000-00')
;

-- 04/03/2015 16h26min10s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126486 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 04/03/2015 16h26min29s BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2015-03-04 16:26:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126486
;

-- 04/03/2015 16h26min34s BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2015-03-04 16:26:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126485
;

-- 04/03/2015 16h30min31s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126487,265,0,15,1120447,'DateDoc',TO_DATE('2015-03-04 16:30:30','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','U',7,'The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Document Date',0,TO_DATE('2015-03-04 16:30:30','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 04/03/2015 16h30min31s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126487 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 04/03/2015 16h35min24s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126488,1100009,0,17,1120009,1120447,'lbr_NFModel',TO_DATE('2015-03-04 16:35:24','YYYY-MM-DD HH24:MI:SS'),100,'Identifies the model of Nota Fiscal','U',5,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','NF Model',0,TO_DATE('2015-03-04 16:35:24','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 04/03/2015 16h35min24s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126488 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 04/03/2015 16h35min28s BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2015-03-04 16:35:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126488
;

-- 04/03/2015 16h36min32s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126489,1100010,0,10,1120447,'lbr_NFSerie',TO_DATE('2015-03-04 16:36:31','YYYY-MM-DD HH24:MI:SS'),100,'U',3,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','NF Serie',0,TO_DATE('2015-03-04 16:36:31','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 04/03/2015 16h36min32s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126489 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 04/03/2015 16h36min38s BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2015-03-04 16:36:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126489
;

-- 04/03/2015 16h38min6s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126490,290,0,10,1120447,'DocumentNo',TO_DATE('2015-03-04 16:38:05','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document','U',30,'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".
If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Document No',0,TO_DATE('2015-03-04 16:38:05','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 04/03/2015 16h38min6s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126490 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 04/03/2015 16h41min7s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126491,1100017,0,10,1120447,'lbr_NFeID',TO_DATE('2015-03-04 16:41:06','YYYY-MM-DD HH24:MI:SS'),100,'Identification of NFe','U',255,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','NFe ID',0,TO_DATE('2015-03-04 16:41:06','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 04/03/2015 16h41min7s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126491 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 04/03/2015 16h51min58s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126492,1000014,0,10,1120447,'lbr_IE',TO_DATE('2015-03-04 16:51:57','YYYY-MM-DD HH24:MI:SS'),100,'Used to Identify the IE (State Tax ID)','U',30,'Used to Identify the IE (State Tax ID)','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','IE',0,TO_DATE('2015-03-04 16:51:57','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 04/03/2015 16h51min58s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126492 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 04/03/2015 16h53min14s BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2015-03-04 16:53:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126492
;

-- 04/03/2015 16h53min17s BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2015-03-04 16:53:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126491
;

-- 04/03/2015 16h53min19s BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2015-03-04 16:53:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126490
;

-- 04/03/2015 16h57min37s BRT
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121702,0,'LBR_COOno',TO_DATE('2015-03-04 16:57:36','YYYY-MM-DD HH24:MI:SS'),100,NULL,'U','Y','CCO Number','CCO Number',TO_DATE('2015-03-04 16:57:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 04/03/2015 16h57min37s BRT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121702 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 04/03/2015 16h57min41s BRT
UPDATE AD_Element_Trl SET IsTranslated='Y',Updated=TO_DATE('2015-03-04 16:57:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121702 AND AD_Language='pt_BR'
;

-- 04/03/2015 16h58min33s BRT
UPDATE AD_Element_Trl SET Name='No CCO',PrintName='No CCO',Description='Número do Contador de Ordem de Operação - COO',Updated=TO_DATE('2015-03-04 16:58:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121702 AND AD_Language='pt_BR'
;

-- 04/03/2015 16h59min49s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126493,1121702,0,10,1120447,'LBR_COOno',TO_DATE('2015-03-04 16:59:49','YYYY-MM-DD HH24:MI:SS'),100,'U',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','CCO Number',0,TO_DATE('2015-03-04 16:59:49','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 04/03/2015 16h59min49s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126493 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 04/03/2015 17h1min58s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126494,1000015,0,20,1120447,'lbr_IsIEExempt',TO_DATE('2015-03-04 17:01:57','YYYY-MM-DD HH24:MI:SS'),100,'Business Partner is IE Exempt','U',1,'Business Partner is IE Exempt','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','IE Exempt',0,TO_DATE('2015-03-04 17:01:57','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 04/03/2015 17h1min58s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126494 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 04/03/2015 17h3min51s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126495,1000177,0,19,1120447,'LBR_NotaFiscal_ID',TO_DATE('2015-03-04 17:03:50','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_NotaFiscal','U',10,'Primary key table LBR_NotaFiscal','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Nota Fiscal',0,TO_DATE('2015-03-04 17:03:50','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 04/03/2015 17h3min51s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126495 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 04/03/2015 17h5min11s BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2015-03-04 17:05:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126495
;

-- 04/03/2015 17h5min14s BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2015-03-04 17:05:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126494
;

-- 04/03/2015 17h5min18s BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2015-03-04 17:05:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126493
;

-- 04/03/2015 17h5min28s BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2015-03-04 17:05:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126487
;

-- 04/03/2015 17h5min39s BRT
CREATE TABLE LBR_NotaFiscalDocRef (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, C_Region_ID NUMBER(10) DEFAULT NULL , DateDoc DATE DEFAULT NULL , DocumentNo NVARCHAR2(30) DEFAULT NULL , IsActive CHAR(1) CHECK (IsActive IN ('Y','N')) NOT NULL, lbr_BPTypeBR NVARCHAR2(2) DEFAULT NULL , lbr_CNPJ NVARCHAR2(18) DEFAULT NULL , LBR_COOno NVARCHAR2(10) DEFAULT NULL , lbr_CPF NVARCHAR2(14) DEFAULT NULL , lbr_IE NVARCHAR2(30) DEFAULT NULL , lbr_IsIEExempt CHAR(1) DEFAULT NULL  CHECK (lbr_IsIEExempt IN ('Y','N')), lbr_NFeID NVARCHAR2(255) DEFAULT NULL , lbr_NFModel NVARCHAR2(5) DEFAULT NULL , lbr_NFSerie NVARCHAR2(3) DEFAULT NULL , LBR_NotaFiscalDocRef_ID NUMBER(10) NOT NULL, LBR_NotaFiscal_ID NUMBER(10) DEFAULT NULL , Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, CONSTRAINT LBR_NotaFiscalDocRef_Key PRIMARY KEY (LBR_NotaFiscalDocRef_ID))
;

-- 06/03/2015 11h41min58s BRT
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,1120177,1120447,1000015,TO_DATE('2015-03-06 11:41:57','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','N','Y','N','N','Y','N','N','N','N','Referenced Documents','N',35,1,TO_DATE('2015-03-06 11:41:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 11h41min59s BRT
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1120177 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- 06/03/2015 11h42min5s BRT
UPDATE AD_Tab_Trl SET IsTranslated='Y',Name='Documento Fiscal Referenciado',Updated=TO_DATE('2015-03-06 11:42:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120177 AND AD_Language='pt_BR'
;

-- 06/03/2015 11h42min17s BRT
UPDATE AD_Tab SET AD_Column_ID=1126495,Updated=TO_DATE('2015-03-06 11:42:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120177
;

-- 06/03/2015 11h42min25s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126478,1124889,0,1120177,TO_DATE('2015-03-06 11:42:24','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'LBRA','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_DATE('2015-03-06 11:42:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 11h42min25s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124889 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 11h42min26s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126484,1124890,0,1120177,TO_DATE('2015-03-06 11:42:25','YYYY-MM-DD HH24:MI:SS'),100,'Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)',2,'LBRA','Used to identify if the Business partner is a legal entity or an individual','Y','Y','Y','N','N','N','N','N','Brazilian BP Type',TO_DATE('2015-03-06 11:42:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 11h42min26s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124890 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 11h42min26s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126493,1124891,0,1120177,TO_DATE('2015-03-06 11:42:26','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','Y','N','N','N','N','N','CCO Number',TO_DATE('2015-03-06 11:42:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 11h42min26s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124891 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 11h42min27s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126473,1124892,0,1120177,TO_DATE('2015-03-06 11:42:26','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'LBRA','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_DATE('2015-03-06 11:42:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 11h42min27s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124892 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 11h42min27s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126485,1124893,0,1120177,TO_DATE('2015-03-06 11:42:27','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify Legal Entities in Brazil',18,'LBRA','Used to identify Legal Entities in Brazil','Y','Y','Y','N','N','N','N','N','CNPJ',TO_DATE('2015-03-06 11:42:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 11h42min27s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124893 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 11h42min28s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126486,1124894,0,1120177,TO_DATE('2015-03-06 11:42:27','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify individuals in Brazil',14,'LBRA','Used to identify individuals in Brazil','Y','Y','Y','N','N','N','N','N','CPF',TO_DATE('2015-03-06 11:42:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 11h42min28s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124894 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 11h42min28s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126487,1124895,0,1120177,TO_DATE('2015-03-06 11:42:28','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document',7,'LBRA','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','Y','N','N','N','N','N','Document Date',TO_DATE('2015-03-06 11:42:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 11h42min28s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124895 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 11h42min29s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126490,1124896,0,1120177,TO_DATE('2015-03-06 11:42:28','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document',30,'LBRA','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".
If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Y','Y','N','N','N','N','N','Document No',TO_DATE('2015-03-06 11:42:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 11h42min29s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124896 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 11h42min29s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126472,1124897,0,1120177,TO_DATE('2015-03-06 11:42:29','YYYY-MM-DD HH24:MI:SS'),100,22,'LBRA','Y','Y','N','N','N','N','N','N','Referenced Documents',TO_DATE('2015-03-06 11:42:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 11h42min29s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124897 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 11h42min29s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126492,1124898,0,1120177,TO_DATE('2015-03-06 11:42:29','YYYY-MM-DD HH24:MI:SS'),100,'Used to Identify the IE (State Tax ID)',30,'LBRA','Used to Identify the IE (State Tax ID)','Y','Y','Y','N','N','N','N','N','IE',TO_DATE('2015-03-06 11:42:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 11h42min29s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124898 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 11h42min30s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126494,1124899,0,1120177,TO_DATE('2015-03-06 11:42:29','YYYY-MM-DD HH24:MI:SS'),100,'Business Partner is IE Exempt',1,'LBRA','Business Partner is IE Exempt','Y','Y','Y','N','N','N','N','N','IE Exempt',TO_DATE('2015-03-06 11:42:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 11h42min30s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124899 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 11h42min30s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126491,1124900,0,1120177,TO_DATE('2015-03-06 11:42:30','YYYY-MM-DD HH24:MI:SS'),100,'Identification of NFe',255,'LBRA','Y','Y','Y','N','N','N','N','N','NFe ID',TO_DATE('2015-03-06 11:42:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 11h42min30s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124900 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 11h42min31s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126488,1124901,0,1120177,TO_DATE('2015-03-06 11:42:30','YYYY-MM-DD HH24:MI:SS'),100,'Identifies the model of Nota Fiscal',5,'LBRA','Y','Y','Y','N','N','N','N','N','NF Model',TO_DATE('2015-03-06 11:42:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 11h42min31s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124901 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 11h42min31s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126489,1124902,0,1120177,TO_DATE('2015-03-06 11:42:31','YYYY-MM-DD HH24:MI:SS'),100,3,'LBRA','Y','Y','Y','N','N','N','N','N','NF Serie',TO_DATE('2015-03-06 11:42:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 11h42min31s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124902 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 11h42min31s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126495,1124903,0,1120177,TO_DATE('2015-03-06 11:42:31','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_NotaFiscal',10,'LBRA','Primary key table LBR_NotaFiscal','Y','Y','Y','N','N','N','N','N','Nota Fiscal',TO_DATE('2015-03-06 11:42:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 11h42min31s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124903 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 11h42min32s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126474,1124904,0,1120177,TO_DATE('2015-03-06 11:42:31','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'LBRA','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_DATE('2015-03-06 11:42:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 11h42min32s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124904 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 11h42min32s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126483,1124905,0,1120177,TO_DATE('2015-03-06 11:42:32','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a geographical Region',22,'LBRA','The Region identifies a unique Region for this Country.','Y','Y','Y','N','N','N','N','N','Region',TO_DATE('2015-03-06 11:42:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 11h42min32s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124905 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 11h45min41s BRT
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121715,0,'LBR_FiscalDocRefType',TO_DATE('2015-03-06 11:45:40','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Type Fiscal Document Referenced','Type Fiscal Document Referenced',TO_DATE('2015-03-06 11:45:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 11h45min41s BRT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121715 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 06/03/2015 11h47min12s BRT
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Tipo de Documento Fiscal Referenciado',PrintName='Tipo de Documento Fiscal Referenciado',Updated=TO_DATE('2015-03-06 11:47:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121715 AND AD_Language='pt_BR'
;

-- 06/03/2015 11h47min28s BRT
UPDATE AD_Element_Trl SET PrintName='Tipo Doc. Fiscal Referenciado',Updated=TO_DATE('2015-03-06 11:47:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121715 AND AD_Language='pt_BR'
;

-- 06/03/2015 11h47min56s BRT
UPDATE AD_Element SET EntityType='LBRA',Updated=TO_DATE('2015-03-06 11:47:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121715
;

-- 06/03/2015 11h50min56s BRT
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120208,TO_DATE('2015-03-06 11:50:55','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','LBR_FiscalDocRefType',TO_DATE('2015-03-06 11:50:55','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 06/03/2015 11h50min56s BRT
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120208 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 06/03/2015 11h51min28s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120208,1121542,TO_DATE('2015-03-06 11:51:27','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Nota Fiscal Manual (1/1A)',TO_DATE('2015-03-06 11:51:27','YYYY-MM-DD HH24:MI:SS'),100,'M')
;

-- 06/03/2015 11h51min28s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121542 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/03/2015 11h51min54s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120208,1121543,TO_DATE('2015-03-06 11:51:53','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Nota Fiscal Produtor Rural',TO_DATE('2015-03-06 11:51:53','YYYY-MM-DD HH24:MI:SS'),100,'R')
;

-- 06/03/2015 11h51min54s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121543 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/03/2015 11h52min6s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120208,1121544,TO_DATE('2015-03-06 11:52:05','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Cupom Fiscal',TO_DATE('2015-03-06 11:52:05','YYYY-MM-DD HH24:MI:SS'),100,'C')
;

-- 06/03/2015 11h52min6s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121544 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/03/2015 11h52min30s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126512,1121715,0,17,1120208,1120447,'LBR_FiscalDocRefType',TO_DATE('2015-03-06 11:52:29','YYYY-MM-DD HH24:MI:SS'),100,'U',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Type Fiscal Document Referenced',0,TO_DATE('2015-03-06 11:52:29','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 06/03/2015 11h52min30s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126512 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 06/03/2015 11h52min36s BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2015-03-06 11:52:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126512
;

-- 06/03/2015 11h52min38s BRT
ALTER TABLE LBR_NotaFiscalDocRef ADD LBR_FiscalDocRefType CHAR(1) DEFAULT NULL 
;

-- 06/03/2015 11h52min45s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126512,1124906,0,1120177,TO_DATE('2015-03-06 11:52:44','YYYY-MM-DD HH24:MI:SS'),100,1,'LBRA','Y','Y','Y','N','N','N','N','N','Type Fiscal Document Referenced',TO_DATE('2015-03-06 11:52:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 11h52min45s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124906 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 12h6min21s BRT
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=1124892
;

-- 06/03/2015 12h6min21s BRT
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=1124904
;

-- 06/03/2015 12h6min21s BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1124903
;

-- 06/03/2015 12h6min21s BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1124889
;

-- 06/03/2015 12h6min21s BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1124906
;

-- 06/03/2015 12h6min21s BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1124901
;

-- 06/03/2015 12h6min21s BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1124902
;

-- 06/03/2015 12h6min21s BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1124900
;

-- 06/03/2015 12h6min21s BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1124896
;

-- 06/03/2015 12h6min21s BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1124891
;

-- 06/03/2015 12h6min21s BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1124895
;

-- 06/03/2015 12h6min21s BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1124890
;

-- 06/03/2015 12h6min21s BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1124893
;

-- 06/03/2015 12h6min21s BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1124894
;

-- 06/03/2015 12h6min21s BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1124905
;

-- 06/03/2015 12h6min21s BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1124899
;

-- 06/03/2015 12h6min21s BRT
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1124898
;

-- 06/03/2015 12h12min7s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120208,1121545,TO_DATE('2015-03-06 12:12:06','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Nota Fiscal Eletronica',TO_DATE('2015-03-06 12:12:06','YYYY-MM-DD HH24:MI:SS'),100,'N')
;

-- 06/03/2015 12h12min7s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121545 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/03/2015 12h12min24s BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2015-03-06 12:12:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124904
;

-- 06/03/2015 12h12min29s BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2015-03-06 12:12:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124889
;

-- 06/03/2015 12h12min39s BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2015-03-06 12:12:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124902
;

-- 06/03/2015 12h12min50s BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2015-03-06 12:12:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124891
;

-- 06/03/2015 12h13min1s BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2015-03-06 12:13:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124893
;

-- 06/03/2015 12h13min3s BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2015-03-06 12:13:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124894
;

-- 06/03/2015 12h18min12s BRT
UPDATE AD_Ref_List SET Name='NF Manual (1/1A)',Updated=TO_DATE('2015-03-06 12:18:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121542
;

-- 06/03/2015 12h18min12s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121542
;

-- 06/03/2015 12h18min12s BRT
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='NF Manual (1/1A)',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121542
;

-- 06/03/2015 12h18min17s BRT
UPDATE AD_Ref_List SET Name='NF-e',Updated=TO_DATE('2015-03-06 12:18:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121545
;

-- 06/03/2015 12h18min17s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121545
;

-- 06/03/2015 12h18min17s BRT
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='NF-e',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121545
;

-- 06/03/2015 12h18min40s BRT
UPDATE AD_Ref_List SET Name='CT-e (Produtor Rural)',Updated=TO_DATE('2015-03-06 12:18:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121543
;

-- 06/03/2015 12h18min40s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121543
;

-- 06/03/2015 12h18min40s BRT
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='CT-e (Produtor Rural)',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121543
;

-- 06/03/2015 12h18min46s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='CT-e (Produtor Rural)',Updated=TO_DATE('2015-03-06 12:18:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121543 AND AD_Language='pt_BR'
;

-- 06/03/2015 12h18min51s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='NF-e',Updated=TO_DATE('2015-03-06 12:18:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121545 AND AD_Language='pt_BR'
;

-- 06/03/2015 12h18min59s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='NF Manual (1/1A)',Updated=TO_DATE('2015-03-06 12:18:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121542 AND AD_Language='pt_BR'
;

-- 06/03/2015 12h19min19s BRT
UPDATE AD_Ref_List SET Name='Cupom Fiscal (ECF)',Updated=TO_DATE('2015-03-06 12:19:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121544
;

-- 06/03/2015 12h19min19s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121544
;

-- 06/03/2015 12h19min19s BRT
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Cupom Fiscal (ECF)',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121544
;

-- 06/03/2015 12h19min27s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Cupom Fiscal (ECF)',Updated=TO_DATE('2015-03-06 12:19:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121544 AND AD_Language='pt_BR'
;

-- 06/03/2015 12h20min57s BRT
UPDATE AD_Field SET DisplayLogic='@LBR_FiscalDocRefType@ ! N',Updated=TO_DATE('2015-03-06 12:20:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124901
;

-- 06/03/2015 12h21min5s BRT
UPDATE AD_Field SET DisplayLogic='@LBR_FiscalDocRefType@ | N',Updated=TO_DATE('2015-03-06 12:21:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124901
;

-- 06/03/2015 12h22min41s BRT
UPDATE AD_Field SET DisplayLogic='@LBR_FiscalDocRefType@ = M | @LBR_FiscalDocRefType@ = R',Updated=TO_DATE('2015-03-06 12:22:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124902
;

-- 06/03/2015 12h22min46s BRT
UPDATE AD_Field SET DisplayLogic='@LBR_FiscalDocRefType@ ! N',Updated=TO_DATE('2015-03-06 12:22:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124901
;

-- 06/03/2015 12h23min47s BRT
UPDATE AD_Field SET DisplayLogic='@LBR_FiscalDocRefType@ = N | @LBR_FiscalDocRefType@ = R',Updated=TO_DATE('2015-03-06 12:23:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124900
;

-- 06/03/2015 12h24min9s BRT
UPDATE AD_Field SET DisplayLogic='@LBR_FiscalDocRefType@ ! N',Updated=TO_DATE('2015-03-06 12:24:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124896
;

-- 06/03/2015 12h24min21s BRT
UPDATE AD_Field SET DisplayLogic='@LBR_FiscalDocRefType@ = C',Updated=TO_DATE('2015-03-06 12:24:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124891
;

-- 06/03/2015 12h24min42s BRT
UPDATE AD_Field SET DisplayLogic='@LBR_FiscalDocRefType@ = M | @LBR_FiscalDocRefType@ = R',Updated=TO_DATE('2015-03-06 12:24:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124895
;

-- 06/03/2015 12h24min55s BRT
UPDATE AD_Field SET DisplayLogic='@LBR_FiscalDocRefType@ = M | @LBR_FiscalDocRefType@ = R',Updated=TO_DATE('2015-03-06 12:24:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124890
;

-- 06/03/2015 12h25min9s BRT
UPDATE AD_Field SET DisplayLogic='@LBR_FiscalDocRefType@ = M | @LBR_FiscalDocRefType@ = R',Updated=TO_DATE('2015-03-06 12:25:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124893
;

-- 06/03/2015 12h25min29s BRT
UPDATE AD_Field SET DisplayLogic='(@LBR_FiscalDocRefType@ = M | @LBR_FiscalDocRefType@ = R) & @lbr_BPTypeBR@ = PJ',Updated=TO_DATE('2015-03-06 12:25:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124893
;

-- 06/03/2015 12h25min33s BRT
UPDATE AD_Field SET DisplayLogic='(@LBR_FiscalDocRefType@ = M | @LBR_FiscalDocRefType@ = R) & @lbr_BPTypeBR@ = PF',Updated=TO_DATE('2015-03-06 12:25:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124894
;

-- 06/03/2015 12h25min56s BRT
UPDATE AD_Field SET DisplayLogic='@LBR_FiscalDocRefType@ = M | @LBR_FiscalDocRefType@ = R',Updated=TO_DATE('2015-03-06 12:25:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124905
;

-- 06/03/2015 12h26min12s BRT
UPDATE AD_Field SET DisplayLogic='@LBR_FiscalDocRefType@ = R',Updated=TO_DATE('2015-03-06 12:26:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124899
;

-- 06/03/2015 12h26min15s BRT
UPDATE AD_Field SET DisplayLogic='@LBR_FiscalDocRefType@ = R',Updated=TO_DATE('2015-03-06 12:26:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124898
;

-- 06/03/2015 12h27min20s BRT
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,1120178,1120447,1000019,TO_DATE('2015-03-06 12:27:19','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','N','Y','N','N','Y','N','N','N','N','Referenced Documents','N',50,1,TO_DATE('2015-03-06 12:27:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 12h27min20s BRT
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1120178 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- 06/03/2015 12h27min32s BRT
UPDATE AD_Tab SET AD_Column_ID=1126495,Updated=TO_DATE('2015-03-06 12:27:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120178
;

-- 06/03/2015 12h27min51s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1126473,1124907,0,1120178,TO_DATE('2015-03-06 12:27:50','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'LBRA','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',10,TO_DATE('2015-03-06 12:27:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 12h27min51s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124907 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 12h27min52s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1126474,1124908,0,1120178,TO_DATE('2015-03-06 12:27:51','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'LBRA','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','Y','Organization',20,TO_DATE('2015-03-06 12:27:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 12h27min52s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124908 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 12h27min52s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1126495,1124909,0,1120178,TO_DATE('2015-03-06 12:27:52','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_NotaFiscal',10,'LBRA','Primary key table LBR_NotaFiscal','Y','Y','Y','N','N','N','N','N','Nota Fiscal',30,TO_DATE('2015-03-06 12:27:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 12h27min52s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124909 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 12h27min53s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1126478,1124910,0,1120178,TO_DATE('2015-03-06 12:27:52','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'LBRA','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','Y','Active',40,TO_DATE('2015-03-06 12:27:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 12h27min53s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124910 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 12h27min53s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1126512,1124911,0,1120178,TO_DATE('2015-03-06 12:27:53','YYYY-MM-DD HH24:MI:SS'),100,1,'LBRA','Y','Y','Y','N','N','N','N','N','Type Fiscal Document Referenced',50,TO_DATE('2015-03-06 12:27:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 12h27min53s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124911 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 12h27min54s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1126488,1124912,0,1120178,TO_DATE('2015-03-06 12:27:53','YYYY-MM-DD HH24:MI:SS'),100,'Identifies the model of Nota Fiscal',5,'@LBR_FiscalDocRefType@ ! N','LBRA','Y','Y','Y','N','N','N','N','N','NF Model',60,TO_DATE('2015-03-06 12:27:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 12h27min54s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124912 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 12h27min54s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1126489,1124913,0,1120178,TO_DATE('2015-03-06 12:27:54','YYYY-MM-DD HH24:MI:SS'),100,3,'@LBR_FiscalDocRefType@ = M | @LBR_FiscalDocRefType@ = R','LBRA','Y','Y','Y','N','N','N','N','Y','NF Serie',70,TO_DATE('2015-03-06 12:27:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 12h27min54s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124913 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 12h27min55s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1126491,1124914,0,1120178,TO_DATE('2015-03-06 12:27:54','YYYY-MM-DD HH24:MI:SS'),100,'Identification of NFe',255,'@LBR_FiscalDocRefType@ = N | @LBR_FiscalDocRefType@ = R','LBRA','Y','Y','Y','N','N','N','N','N','NFe ID',80,TO_DATE('2015-03-06 12:27:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 12h27min55s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124914 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 12h27min55s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1126490,1124915,0,1120178,TO_DATE('2015-03-06 12:27:55','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document',30,'@LBR_FiscalDocRefType@ ! N','LBRA','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".
If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Y','Y','N','N','N','N','N','Document No',90,TO_DATE('2015-03-06 12:27:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 12h27min55s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124915 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 12h27min56s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1126493,1124916,0,1120178,TO_DATE('2015-03-06 12:27:55','YYYY-MM-DD HH24:MI:SS'),100,10,'@LBR_FiscalDocRefType@ = C','LBRA','Y','Y','Y','N','N','N','N','Y','CCO Number',100,TO_DATE('2015-03-06 12:27:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 12h27min56s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124916 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 12h27min56s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1126487,1124917,0,1120178,TO_DATE('2015-03-06 12:27:56','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document',7,'@LBR_FiscalDocRefType@ = M | @LBR_FiscalDocRefType@ = R','LBRA','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','Y','N','N','N','N','N','Document Date',110,TO_DATE('2015-03-06 12:27:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 12h27min56s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124917 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 12h27min57s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1126484,1124918,0,1120178,TO_DATE('2015-03-06 12:27:56','YYYY-MM-DD HH24:MI:SS'),100,'Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)',2,'@LBR_FiscalDocRefType@ = M | @LBR_FiscalDocRefType@ = R','LBRA','Used to identify if the Business partner is a legal entity or an individual','Y','Y','Y','N','N','N','N','N','Brazilian BP Type',120,TO_DATE('2015-03-06 12:27:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 12h27min57s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124918 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 12h27min57s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1126485,1124919,0,1120178,TO_DATE('2015-03-06 12:27:57','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify Legal Entities in Brazil',18,'(@LBR_FiscalDocRefType@ = M | @LBR_FiscalDocRefType@ = R) & @lbr_BPTypeBR@ = PJ','LBRA','Used to identify Legal Entities in Brazil','Y','Y','Y','N','N','N','N','Y','CNPJ',130,TO_DATE('2015-03-06 12:27:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 12h27min57s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124919 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 12h27min57s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1126486,1124920,0,1120178,TO_DATE('2015-03-06 12:27:57','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify individuals in Brazil',14,'(@LBR_FiscalDocRefType@ = M | @LBR_FiscalDocRefType@ = R) & @lbr_BPTypeBR@ = PF','LBRA','Used to identify individuals in Brazil','Y','Y','Y','N','N','N','N','Y','CPF',140,TO_DATE('2015-03-06 12:27:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 12h27min57s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124920 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 12h27min58s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1126483,1124921,0,1120178,TO_DATE('2015-03-06 12:27:58','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a geographical Region',22,'@LBR_FiscalDocRefType@ = M | @LBR_FiscalDocRefType@ = R','LBRA','The Region identifies a unique Region for this Country.','Y','Y','Y','N','N','N','N','N','Region',150,TO_DATE('2015-03-06 12:27:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 12h27min58s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124921 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 12h27min59s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1126494,1124922,0,1120178,TO_DATE('2015-03-06 12:27:58','YYYY-MM-DD HH24:MI:SS'),100,'Business Partner is IE Exempt',1,'@LBR_FiscalDocRefType@ = R','LBRA','Business Partner is IE Exempt','Y','Y','Y','N','N','N','N','N','IE Exempt',160,TO_DATE('2015-03-06 12:27:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 12h27min59s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124922 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 12h27min59s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1126492,1124923,0,1120178,TO_DATE('2015-03-06 12:27:59','YYYY-MM-DD HH24:MI:SS'),100,'Used to Identify the IE (State Tax ID)',30,'@LBR_FiscalDocRefType@ = R','LBRA','Used to Identify the IE (State Tax ID)','Y','Y','Y','N','N','N','N','N','IE',170,TO_DATE('2015-03-06 12:27:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 12h27min59s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124923 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/03/2015 12h28min0s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126472,1124924,0,1120178,TO_DATE('2015-03-06 12:27:59','YYYY-MM-DD HH24:MI:SS'),100,22,'LBRA','Y','Y','N','N','N','N','N','N','Referenced Documents',TO_DATE('2015-03-06 12:27:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/03/2015 12h28min0s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124924 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/03/2015 11h37min52s BRT
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2015-03-09 11:37:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124896
;

-- 09/03/2015 11h38min32s BRT
UPDATE AD_Field SET DisplayLogic='@LBR_FiscalDocRefType@ = M | @LBR_FiscalDocRefType@ = R & @lbr_BPTypeBR@ = PJ',Updated=TO_DATE('2015-03-09 11:38:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124893
;

-- 09/03/2015 11h38min39s BRT
UPDATE AD_Field SET DisplayLogic='@LBR_FiscalDocRefType@ = M | @LBR_FiscalDocRefType@ = R & @lbr_BPTypeBR@ = PF',Updated=TO_DATE('2015-03-09 11:38:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124894
;

-- 09/03/2015 11h40min1s BRT
UPDATE AD_Field SET DisplayLength=22, IsSameLine='Y',Updated=TO_DATE('2015-03-09 11:40:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124898
;

-- 09/03/2015 11h41min3s BRT
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2015-03-09 11:41:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124915
;

-- 09/03/2015 11h41min14s BRT
UPDATE AD_Field SET DisplayLogic='@LBR_FiscalDocRefType@ = M | @LBR_FiscalDocRefType@ = R & @lbr_BPTypeBR@ = PJ',Updated=TO_DATE('2015-03-09 11:41:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124919
;

-- 09/03/2015 11h41min19s BRT
UPDATE AD_Field SET DisplayLogic='@LBR_FiscalDocRefType@ = M | @LBR_FiscalDocRefType@ = R & @lbr_BPTypeBR@ = PF',Updated=TO_DATE('2015-03-09 11:41:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124920
;

-- 09/03/2015 11h41min26s BRT
UPDATE AD_Field SET DisplayLength=22, IsSameLine='Y',Updated=TO_DATE('2015-03-09 11:41:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124923
;

-- 09/03/2015 11h42min3s BRT
UPDATE AD_Field SET DefaultValue='PJ',Updated=TO_DATE('2015-03-09 11:42:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124918
;

-- 09/03/2015 11h42min30s BRT
UPDATE AD_Field SET DefaultValue='PJ',Updated=TO_DATE('2015-03-09 11:42:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124890
;

-- 02/03/2015 12h11min17s BRT
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121699,0,'lbr_BPShipperAddress',TO_DATE('2015-03-02 12:11:16','YYYY-MM-DD HH24:MI:SS'),100,'BP Shipper Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books','U','BP Shipper Address on a String','Y','BP Shipper Address','BP Shipper Address',TO_DATE('2015-03-02 12:11:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/03/2015 12h11min17s BRT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121699 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 02/03/2015 12h11min52s BRT
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Endereço da Transportadora',PrintName='Endereço da Transportadora',Description='Endereço da Transportadora',Help='Endereço da Transportadora',Updated=TO_DATE('2015-03-02 12:11:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121699 AND AD_Language='pt_BR'
;

-- 02/03/2015 12h12min58s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126468,1121699,0,10,1000027,'lbr_BPShipperAddress',TO_DATE('2015-03-02 12:12:57','YYYY-MM-DD HH24:MI:SS'),100,'BP Shipper Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books','U',255,'BP Shipper Address on a String','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','BP Shipper Address',0,TO_DATE('2015-03-02 12:12:57','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 02/03/2015 12h12min58s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126468 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/03/2015 12h13min14s BRT
UPDATE AD_Element SET Description='BP Shipper Address on a String',Updated=TO_DATE('2015-03-02 12:13:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121699
;

-- 02/03/2015 12h13min14s BRT
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=1121699
;

-- 02/03/2015 12h13min14s BRT
UPDATE AD_Element_Trl SET Description='BP Shipper Address on a String',Help='BP Shipper Address on a String',Name='BP Shipper Address',PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,PrintName='BP Shipper Address',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Element_ID=1121699
;

-- 02/03/2015 12h13min14s BRT
UPDATE AD_Column SET ColumnName='lbr_BPShipperAddress', Name='BP Shipper Address', Description='BP Shipper Address on a String', Help='BP Shipper Address on a String' WHERE AD_Element_ID=1121699
;

-- 02/03/2015 12h13min14s BRT
UPDATE AD_Process_Para SET ColumnName='lbr_BPShipperAddress', Name='BP Shipper Address', Description='BP Shipper Address on a String', Help='BP Shipper Address on a String', AD_Element_ID=1121699 WHERE UPPER(ColumnName)='LBR_BPSHIPPERADDRESS' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 02/03/2015 12h13min14s BRT
UPDATE AD_Process_Para SET ColumnName='lbr_BPShipperAddress', Name='BP Shipper Address', Description='BP Shipper Address on a String', Help='BP Shipper Address on a String' WHERE AD_Element_ID=1121699 AND IsCentrallyMaintained='Y'
;

-- 02/03/2015 12h13min14s BRT
UPDATE AD_Field SET Name='BP Shipper Address', Description='BP Shipper Address on a String', Help='BP Shipper Address on a String' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121699) AND IsCentrallyMaintained='Y'
;

-- 02/03/2015 12h14min23s BRT
ALTER TABLE LBR_NotaFiscal ADD lbr_BPShipperAddress NVARCHAR2(255) DEFAULT NULL 
;

-- 02/03/2015 12h15min28s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1126468,1124867,0,1000020,TO_DATE('2015-03-02 12:15:27','YYYY-MM-DD HH24:MI:SS'),100,'BP Shipper Address on a String',0,'U','BP Shipper Address on a String','Y','Y','Y','N','N','N','N','N','BP Shipper Address',9140,0,TO_DATE('2015-03-02 12:15:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/03/2015 12h15min28s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124867 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/03/2015 12h15min39s BRT
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2015-03-02 12:15:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124867
;

-- 02/03/2015 12h16min4s BRT
UPDATE AD_Field SET SeqNo=740,Updated=TO_DATE('2015-03-02 12:16:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124867
;

-- 02/03/2015 12h17min37s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:17:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000337
;

-- 02/03/2015 12h17min38s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:17:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000340
;

-- 02/03/2015 12h17min41s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:17:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000338
;

-- 02/03/2015 12h17min48s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:17:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000342
;

-- 02/03/2015 12h17min49s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:17:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000341
;

-- 02/03/2015 12h17min49s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:17:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000339
;

-- 02/03/2015 12h17min51s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:17:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000333
;

-- 02/03/2015 12h17min52s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:17:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000334
;

-- 02/03/2015 12h17min53s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:17:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000335
;

-- 02/03/2015 12h18min8s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:18:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000336
;

-- 02/03/2015 12h18min32s BRT
UPDATE AD_Field SET AD_FieldGroup_ID=130,Updated=TO_DATE('2015-03-02 12:18:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124867
;

-- 02/03/2015 12h21min8s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:21:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000349
;

-- 02/03/2015 12h21min9s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:21:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000324
;

-- 02/03/2015 12h21min10s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:21:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000327
;

-- 02/03/2015 12h21min11s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:21:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000325
;

-- 02/03/2015 12h21min12s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:21:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000328
;

-- 02/03/2015 12h21min13s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:21:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000368
;

-- 02/03/2015 12h21min13s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:21:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000326
;

-- 02/03/2015 12h21min16s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:21:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000320
;

-- 02/03/2015 12h21min16s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:21:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000321
;

-- 02/03/2015 12h21min17s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:21:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000322
;

-- 02/03/2015 12h21min24s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:21:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000323
;

-- 02/03/2015 12h23min56s BRT
UPDATE AD_Field SET DisplayLength=255,Updated=TO_DATE('2015-03-02 12:23:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124867
;

-- 02/03/2015 12h29min41s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1126468,130,1124868,0,1000028,TO_DATE('2015-03-02 12:29:40','YYYY-MM-DD HH24:MI:SS'),100,'BP Shipper Address on a String',255,'U','BP Shipper Address on a String','Y','Y','Y','N','N','N','N','N','BP Shipper Address',9130,0,TO_DATE('2015-03-02 12:29:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/03/2015 12h29min41s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124868 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/03/2015 12h29min50s BRT
UPDATE AD_Field SET SeqNo=640,Updated=TO_DATE('2015-03-02 12:29:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124868
;

-- 02/03/2015 12h30min20s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:30:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000559
;

-- 02/03/2015 12h30min22s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:30:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000560
;

-- 02/03/2015 12h30min22s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:30:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000561
;

-- 02/03/2015 12h30min23s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:30:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000563
;

-- 02/03/2015 12h30min24s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:30:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000562
;

-- 02/03/2015 12h30min25s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:30:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000564
;

-- 02/03/2015 12h30min26s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:30:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000565
;

-- 02/03/2015 12h30min27s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:30:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000566
;

-- 02/03/2015 12h30min28s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:30:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000567
;

-- 02/03/2015 12h30min31s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:30:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000568
;

-- 02/03/2015 12h30min47s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:30:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000545
;

-- 02/03/2015 12h30min48s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:30:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000546
;

-- 02/03/2015 12h30min49s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:30:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000547
;

-- 02/03/2015 12h30min50s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:30:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000548
;

-- 02/03/2015 12h30min52s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:30:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000549
;

-- 02/03/2015 12h30min54s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:30:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000550
;

-- 02/03/2015 12h30min54s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:30:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000551
;

-- 02/03/2015 12h30min58s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:30:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000552
;

-- 02/03/2015 12h31min3s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:31:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000553
;

-- 02/03/2015 12h31min7s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:31:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000554
;

-- 02/03/2015 12h31min13s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-02 12:31:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000555
;

-- 27/02/2015 15h25min24s BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1100019
;

-- 27/02/2015 15h25min24s BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1100019
;

-- 27/02/2015 15h26min25s BRT
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1100047
;

-- 27/02/2015 15h26min25s BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1100047
;

ALTER TABLE C_DocType DROP COLUMN lbr_NFeEnv;

-- 02/03/2015 14h16min21s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126469,1000008,0,17,1000000,1000027,'lbr_BPTypeBR',TO_DATE('2015-03-02 14:16:20','YYYY-MM-DD HH24:MI:SS'),100,'Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)','U',2,'Used to identify if the Business partner is a legal entity or an individual','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Brazilian BP Type',0,TO_DATE('2015-03-02 14:16:20','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 02/03/2015 14h16min21s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126469 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/03/2015 14h16min26s BRT
ALTER TABLE LBR_NotaFiscal ADD lbr_BPTypeBR NVARCHAR2(2) DEFAULT NULL 
;

-- 02/03/2015 14h18min34s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1126469,1124869,0,1000020,TO_DATE('2015-03-02 14:18:33','YYYY-MM-DD HH24:MI:SS'),100,'Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)',0,'U','Used to identify if the Business partner is a legal entity or an individual','Y','Y','Y','N','N','N','N','N','Brazilian BP Type',9140,0,TO_DATE('2015-03-02 14:18:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/03/2015 14h18min34s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124869 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/03/2015 14h20min22s BRT
UPDATE AD_Field SET DisplayLength=22, SeqNo=365,Updated=TO_DATE('2015-03-02 14:20:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124869
;

-- 02/03/2015 14h21min22s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1126469,1124870,0,1000028,TO_DATE('2015-03-02 14:21:21','YYYY-MM-DD HH24:MI:SS'),100,'Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)',22,'U','Used to identify if the Business partner is a legal entity or an individual','Y','Y','Y','N','N','N','N','N','Brazilian BP Type',9130,0,TO_DATE('2015-03-02 14:21:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/03/2015 14h21min22s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124870 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/03/2015 14h22min41s BRT
UPDATE AD_Field SET SeqNo=265,Updated=TO_DATE('2015-03-02 14:22:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124870
;

-- 02/03/2015 14h23min0s BRT
UPDATE AD_Field SET AD_FieldGroup_ID=107,Updated=TO_DATE('2015-03-02 14:23:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124870
;

-- 02/03/2015 14h24min0s BRT
UPDATE AD_Field SET AD_FieldGroup_ID=107,Updated=TO_DATE('2015-03-02 14:24:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124869
;

-- Atualizar Tipo de Parceiro nas NFe de Pessoa Juridicas
UPDATE LBR_NotaFiscal SET lbr_BPTypeBR = 'PJ' WHERE C_BPartner_ID IN 
(SELECT C_BPartner_ID FROM C_BPartner WHERE lbr_BPTypeBR = 'PJ');

-- Atualizar Tipo de Parceiro nas NFe de Pessoa Física
UPDATE LBR_NotaFiscal SET lbr_BPTypeBR = 'PF' WHERE C_BPartner_ID IN 
(SELECT C_BPartner_ID FROM C_BPartner WHERE lbr_BPTypeBR = 'PF');
-- 02/03/2015 14h58min53s BRT
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121700,0,'LBR_IndTot',TO_DATE('2015-03-02 14:58:51','YYYY-MM-DD HH24:MI:SS'),100,'Indicates which NFe''s lines composes the NFe''s total value','U','Y','Composes NFe Total','Composes NFe Total',TO_DATE('2015-03-02 14:58:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/03/2015 14h58min53s BRT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121700 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 02/03/2015 14h58min56s BRT
UPDATE AD_Element SET EntityType='LBRA',Updated=TO_DATE('2015-03-02 14:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121700
;

-- 02/03/2015 14h59min35s BRT
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Compõe o Total da NFe',PrintName='Compõe o Total da NFe',Description='Indica se o valor da linha compõe o valor total da NFe',Updated=TO_DATE('2015-03-02 14:59:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121700 AND AD_Language='pt_BR'
;

-- 02/03/2015 15h0min54s BRT
UPDATE AD_Element_Trl SET Description='Indica se o valor da linha entra no valor total da NFe',Updated=TO_DATE('2015-03-02 15:00:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121700 AND AD_Language='pt_BR'
;

-- 02/03/2015 15h1min58s BRT
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120205,TO_DATE('2015-03-02 15:01:57','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','LBR_IndTot',TO_DATE('2015-03-02 15:01:57','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 02/03/2015 15h1min58s BRT
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120205 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 02/03/2015 15h2min27s BRT
DELETE  FROM  AD_Reference_Trl WHERE AD_Reference_ID=1120205
;

-- 02/03/2015 15h2min27s BRT
DELETE FROM AD_Reference WHERE AD_Reference_ID=1120205
;

-- 02/03/2015 15h2min47s BRT
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120206,TO_DATE('2015-03-02 15:02:46','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','N','LBR_IndTot',TO_DATE('2015-03-02 15:02:46','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 02/03/2015 15h2min47s BRT
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120206 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 02/03/2015 15h2min49s BRT
DELETE  FROM  AD_Reference_Trl WHERE AD_Reference_ID=1120206
;

-- 02/03/2015 15h2min49s BRT
DELETE FROM AD_Reference WHERE AD_Reference_ID=1120206
;

-- 02/03/2015 15h3min6s BRT
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120207,TO_DATE('2015-03-02 15:03:06','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','LBR_IndTot',TO_DATE('2015-03-02 15:03:06','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 02/03/2015 15h3min6s BRT
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120207 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 02/03/2015 15h3min32s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120207,1121540,TO_DATE('2015-03-02 15:03:32','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Not Compose',TO_DATE('2015-03-02 15:03:32','YYYY-MM-DD HH24:MI:SS'),100,'0')
;

-- 02/03/2015 15h3min32s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121540 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 02/03/2015 15h3min44s BRT
UPDATE AD_Ref_List SET Name='Not Composes',Updated=TO_DATE('2015-03-02 15:03:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121540
;

-- 02/03/2015 15h3min44s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121540
;

-- 02/03/2015 15h3min44s BRT
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Not Composes',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121540
;

-- 02/03/2015 15h3min54s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Não Compõe',Updated=TO_DATE('2015-03-02 15:03:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121540 AND AD_Language='pt_BR'
;

-- 02/03/2015 15h4min6s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120207,1121541,TO_DATE('2015-03-02 15:04:06','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Composes',TO_DATE('2015-03-02 15:04:06','YYYY-MM-DD HH24:MI:SS'),100,'1')
;

-- 02/03/2015 15h4min6s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121541 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 02/03/2015 15h5min58s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Compõe',Updated=TO_DATE('2015-03-02 15:05:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121541 AND AD_Language='pt_BR'
;

-- 02/03/2015 15h6min21s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126470,1121700,0,17,1120207,1000028,'LBR_IndTot',TO_DATE('2015-03-02 15:06:20','YYYY-MM-DD HH24:MI:SS'),100,'Indicates which NFe''s lines composes the NFe''s total value','U',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Composes NFe Total',0,TO_DATE('2015-03-02 15:06:20','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 02/03/2015 15h6min21s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126470 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/03/2015 15h6min28s BRT
ALTER TABLE LBR_NotaFiscalLine ADD LBR_IndTot CHAR(1) DEFAULT NULL 
;

-- 02/03/2015 15h7min54s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1126470,1124871,0,1000030,TO_DATE('2015-03-02 15:07:53','YYYY-MM-DD HH24:MI:SS'),100,'Indicates which NFe''s lines composes the NFe''s total value',22,'U','Y','Y','Y','N','N','N','N','N','Composes NFe Total',215,0,TO_DATE('2015-03-02 15:07:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/03/2015 15h7min54s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124871 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/03/2015 15h8min18s BRT
UPDATE AD_Field SET AD_FieldGroup_ID=103,Updated=TO_DATE('2015-03-02 15:08:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124871
;

-- 02/03/2015 15h8min59s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1126470,1124872,0,1000021,TO_DATE('2015-03-02 15:08:58','YYYY-MM-DD HH24:MI:SS'),100,'Indicates which NFe''s lines composes the NFe''s total value',22,'U','Y','Y','Y','N','N','N','N','N','Composes NFe Total',235,0,TO_DATE('2015-03-02 15:08:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/03/2015 15h8min59s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124872 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/03/2015 15h9min9s BRT
UPDATE AD_Field SET AD_FieldGroup_ID=103,Updated=TO_DATE('2015-03-02 15:09:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124872
;

-- 02/03/2015 10h29min58s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126451,274,0,17,151,1000027,'DeliveryViaRule',TO_DATE('2015-03-02 10:29:56','YYYY-MM-DD HH24:MI:SS'),100,'P','How the order will be delivered','U',1,'The Delivery Via indicates how the products should be delivered. For example, will the order be picked up or shipped.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Delivery Via',0,TO_DATE('2015-03-02 10:29:56','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 02/03/2015 10h29min58s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126451 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/03/2015 10h30min5s BRT
ALTER TABLE LBR_NotaFiscal ADD DeliveryViaRule CHAR(1) DEFAULT 'P'
;

-- 02/03/2015 10h30min34s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1126451,1124850,0,1000020,TO_DATE('2015-03-02 10:30:33','YYYY-MM-DD HH24:MI:SS'),100,'How the order will be delivered',22,'U','The Delivery Via indicates how the products should be delivered. For example, will the order be picked up or shipped.','Y','Y','Y','N','N','N','N','N','Delivery Via',9130,0,TO_DATE('2015-03-02 10:30:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/03/2015 10h30min34s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124850 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/03/2015 10h40min40s BRT
UPDATE AD_Column SET AD_Reference_Value_ID=152,Updated=TO_DATE('2015-03-02 10:40:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126451
;

-- 13/03/2015 16h22min10s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126533,1474,0,20,1000027,'IsManual',TO_DATE('2015-03-13 16:22:09','YYYY-MM-DD HH24:MI:SS'),100,'N','This is a manual process','U',1,'The Manual check box indicates if the process will done manually.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Manual',0,TO_DATE('2015-03-13 16:22:09','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/03/2015 16h22min10s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126533 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/03/2015 16h22min23s BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2015-03-13 16:22:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126533
;

-- 13/03/2015 16h22min24s BRT
ALTER TABLE LBR_NotaFiscal ADD IsManual CHAR(1) DEFAULT 'N' CHECK (IsManual IN ('Y','N')) NOT NULL
;

-- 13/03/2015 16h24min37s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126535,289,0,17,131,1000027,'DocStatus',TO_DATE('2015-03-13 16:24:36','YYYY-MM-DD HH24:MI:SS'),100,'DR','The current status of the document','U',2,'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Document Status',0,TO_DATE('2015-03-13 16:24:36','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/03/2015 16h24min37s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126535 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/03/2015 16h24min42s BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2015-03-13 16:24:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126535
;

-- 13/03/2015 16h24min43s BRT
ALTER TABLE LBR_NotaFiscal ADD DocStatus NVARCHAR2(2) DEFAULT 'DR' NOT NULL
;

-- 13/03/2015 16h26min1s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126536,287,0,28,135,1000027,'DocAction',TO_DATE('2015-03-13 16:26:00','YYYY-MM-DD HH24:MI:SS'),100,'CO','The targeted status of the document','LBRA',2,'You find the current status in the Document Status field. The options are listed in a popup','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Document Action',0,TO_DATE('2015-03-13 16:26:00','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/03/2015 16h26min1s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126536 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/03/2015 16h26min7s BRT
ALTER TABLE LBR_NotaFiscal ADD DocAction CHAR(2) DEFAULT 'CO'
;

-- 13/03/2015 16h27min5s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1100177,1124939,0,1000020,TO_DATE('2015-03-13 16:27:04','YYYY-MM-DD HH24:MI:SS'),100,'Defines the BP Suframa',30,'LBRA','Y','Y','Y','N','N','N','N','N','BP Suframa',TO_DATE('2015-03-13 16:27:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/03/2015 16h27min5s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124939 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/03/2015 16h27min6s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106073,1124940,0,1000020,TO_DATE('2015-03-13 16:27:05','YYYY-MM-DD HH24:MI:SS'),100,'Brand transport volumes',60,'LBRA','Brand transport volumes','Y','Y','Y','N','N','N','N','N','Brand',TO_DATE('2015-03-13 16:27:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/03/2015 16h27min6s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124940 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/03/2015 16h27min6s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126448,1124941,0,1000020,TO_DATE('2015-03-13 16:27:06','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','Y','N','N','N','N','N','Cod. Cidade',TO_DATE('2015-03-13 16:27:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/03/2015 16h27min6s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124941 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/03/2015 16h27min7s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126449,1124942,0,1000020,TO_DATE('2015-03-13 16:27:06','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','Y','N','N','N','N','N','Cod. Cidade',TO_DATE('2015-03-13 16:27:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/03/2015 16h27min7s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124942 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/03/2015 16h27min7s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126450,1124943,0,1000020,TO_DATE('2015-03-13 16:27:07','YYYY-MM-DD HH24:MI:SS'),100,'Country Code used for issue Nota Fiscal',5,'U','Country Code used for issue Nota Fiscal. Codes from BCB (Banco Central do Brasil)','Y','Y','Y','N','N','N','N','N','Country Code',TO_DATE('2015-03-13 16:27:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/03/2015 16h27min7s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124943 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/03/2015 16h27min8s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120211,1124944,0,1000020,TO_DATE('2015-03-13 16:27:07','YYYY-MM-DD HH24:MI:SS'),100,22,'LBRA','Y','Y','Y','N','N','N','N','N','DE',TO_DATE('2015-03-13 16:27:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/03/2015 16h27min8s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124944 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/03/2015 16h27min8s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1123545,1124945,0,1000020,TO_DATE('2015-03-13 16:27:08','YYYY-MM-DD HH24:MI:SS'),100,'Print Discount on Invoice and Order',1,'LBRA','The Discount Printed Checkbox indicates if the discount will be printed on the document.','Y','Y','Y','N','N','N','N','N','Discount Printed',TO_DATE('2015-03-13 16:27:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/03/2015 16h27min8s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124945 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/03/2015 16h27min9s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126536,1124946,0,1000020,TO_DATE('2015-03-13 16:27:08','YYYY-MM-DD HH24:MI:SS'),100,'The targeted status of the document',2,'LBRA','You find the current status in the Document Status field. The options are listed in a popup','Y','Y','Y','N','N','N','N','N','Document Action',TO_DATE('2015-03-13 16:27:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/03/2015 16h27min9s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124946 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/03/2015 16h27min9s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126535,1124947,0,1000020,TO_DATE('2015-03-13 16:27:09','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document',2,'LBRA','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','Y','Y','N','N','N','N','N','Document Status',TO_DATE('2015-03-13 16:27:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/03/2015 16h27min9s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124947 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/03/2015 16h27min10s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1100019,1124948,0,1000020,TO_DATE('2015-03-13 16:27:09','YYYY-MM-DD HH24:MI:SS'),100,'Identifies this is an own document',1,'LBRA','Identifies this is an own document','Y','Y','Y','N','N','N','N','N','Is Own Document',TO_DATE('2015-03-13 16:27:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/03/2015 16h27min10s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124948 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/03/2015 16h27min10s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126533,1124949,0,1000020,TO_DATE('2015-03-13 16:27:10','YYYY-MM-DD HH24:MI:SS'),100,'This is a manual process',1,'LBRA','The Manual check box indicates if the process will done manually.','Y','Y','Y','N','N','N','N','N','Manual',TO_DATE('2015-03-13 16:27:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/03/2015 16h27min10s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124949 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/03/2015 16h27min11s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120112,1124950,0,1000020,TO_DATE('2015-03-13 16:27:10','YYYY-MM-DD HH24:MI:SS'),100,'Identifies the model of Nota Fiscal',2,'LBRA','Y','Y','Y','N','N','N','N','N','NF Model',TO_DATE('2015-03-13 16:27:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/03/2015 16h27min11s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124950 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/03/2015 16h27min11s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124123,1124951,0,1000020,TO_DATE('2015-03-13 16:27:11','YYYY-MM-DD HH24:MI:SS'),100,3,'U','Y','Y','Y','N','N','N','N','N','NF Serie',TO_DATE('2015-03-13 16:27:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/03/2015 16h27min11s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124951 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/03/2015 16h27min12s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1100176,1124952,0,1000020,TO_DATE('2015-03-13 16:27:11','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Transaction Type',3,'LBRA','Defines the Transaction Type','Y','Y','Y','N','N','N','N','N','Transaction Type',TO_DATE('2015-03-13 16:27:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/03/2015 16h27min12s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124952 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/03/2015 16h27min21s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1100099,1124953,0,1000021,TO_DATE('2015-03-13 16:27:21','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','Y','N','N','N','N','N','DI',TO_DATE('2015-03-13 16:27:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/03/2015 16h27min21s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124953 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/03/2015 16h27min22s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001050,1124954,0,1000021,TO_DATE('2015-03-13 16:27:21','YYYY-MM-DD HH24:MI:SS'),100,'The total CIF for the line',22,'LBRA','The total Cost, Insurance and Freight for the Line','Y','Y','Y','N','N','N','N','N','Line Total CIF',TO_DATE('2015-03-13 16:27:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/03/2015 16h27min22s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124954 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/03/2015 16h27min22s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001051,1124955,0,1000021,TO_DATE('2015-03-13 16:27:22','YYYY-MM-DD HH24:MI:SS'),100,'The total SISCOMEX for the Line',22,'LBRA','The total SISCOMEX for the Line','Y','Y','Y','N','N','N','N','N','Line Total SISCOMEX',TO_DATE('2015-03-13 16:27:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/03/2015 16h27min22s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124955 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/03/2015 16h27min23s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1100103,1124956,0,1000021,TO_DATE('2015-03-13 16:27:22','YYYY-MM-DD HH24:MI:SS'),100,'Manufacturer of the Product',60,'LBRA','The manufacturer of the Product (used if different from the Business Partner / Vendor)','Y','Y','Y','N','N','N','N','N','Manufacturer',TO_DATE('2015-03-13 16:27:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/03/2015 16h27min23s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124956 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/03/2015 16h27min23s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1100101,1124957,0,1000021,TO_DATE('2015-03-13 16:27:23','YYYY-MM-DD HH24:MI:SS'),100,3,'LBRA','Y','Y','Y','N','N','N','N','N','Numero da adição',TO_DATE('2015-03-13 16:27:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/03/2015 16h27min23s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124957 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/03/2015 16h27min24s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1100102,1124958,0,1000021,TO_DATE('2015-03-13 16:27:23','YYYY-MM-DD HH24:MI:SS'),100,3,'LBRA','Y','Y','Y','N','N','N','N','N','Núm. Seq. Item',TO_DATE('2015-03-13 16:27:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/03/2015 16h27min24s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124958 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/03/2015 16h27min31s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1123537,1124959,0,1000027,TO_DATE('2015-03-13 16:27:31','YYYY-MM-DD HH24:MI:SS'),100,'Quantity',10,'LBRA','The Quantity indicates the number of a specific product or item for this document.','Y','Y','Y','N','N','N','N','N','Quantity',TO_DATE('2015-03-13 16:27:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/03/2015 16h27min31s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124959 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/03/2015 16h27min32s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1123536,1124960,0,1000027,TO_DATE('2015-03-13 16:27:31','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','Y','N','N','N','N','N','Tax Base Type',TO_DATE('2015-03-13 16:27:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/03/2015 16h27min32s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124960 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/03/2015 16h27min33s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1123538,1124961,0,1000027,TO_DATE('2015-03-13 16:27:32','YYYY-MM-DD HH24:MI:SS'),100,13,'LBRA','Valor da taxa Fixa estipulado pelo governo.','Y','Y','Y','N','N','N','N','N','Tax List Amt',TO_DATE('2015-03-13 16:27:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/03/2015 16h27min33s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124961 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/03/2015 16h29min13s BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1000341
;

-- 13/03/2015 16h29min13s BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1000341
;

-- 13/03/2015 16h29min13s BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1000337
;

-- 13/03/2015 16h29min13s BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1000337
;

-- 13/03/2015 16h29min13s BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1000338
;

-- 13/03/2015 16h29min13s BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1000338
;

-- 13/03/2015 16h29min13s BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1000342
;

-- 13/03/2015 16h29min13s BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1000342
;

-- 13/03/2015 16h29min13s BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1000340
;

-- 13/03/2015 16h29min13s BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1000340
;

-- 13/03/2015 16h29min13s BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1000339
;

-- 13/03/2015 16h29min13s BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1000339
;

-- 13/03/2015 16h29min13s BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1000333
;

-- 13/03/2015 16h29min13s BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1000333
;

-- 13/03/2015 16h29min13s BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1000334
;

-- 13/03/2015 16h29min13s BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1000334
;

-- 13/03/2015 16h29min13s BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1000335
;

-- 13/03/2015 16h29min13s BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1000335
;

-- 13/03/2015 16h29min13s BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1000336
;

-- 13/03/2015 16h29min13s BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1000336
;

-- 13/03/2015 16h29min13s BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1000368
;

-- 13/03/2015 16h29min13s BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1000368
;

-- 13/03/2015 16h29min13s BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1000324
;

-- 13/03/2015 16h29min13s BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1000324
;

-- 13/03/2015 16h29min13s BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1000325
;

-- 13/03/2015 16h29min13s BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1000325
;

-- 13/03/2015 16h29min13s BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1000328
;

-- 13/03/2015 16h29min13s BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1000328
;

-- 13/03/2015 16h29min13s BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1000327
;

-- 13/03/2015 16h29min13s BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1000327
;

-- 13/03/2015 16h29min13s BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1000326
;

-- 13/03/2015 16h29min13s BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1000326
;

-- 13/03/2015 16h29min13s BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1000320
;

-- 13/03/2015 16h29min13s BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1000320
;

-- 13/03/2015 16h29min13s BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1000321
;

-- 13/03/2015 16h29min13s BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1000321
;

-- 13/03/2015 16h29min13s BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1000322
;

-- 13/03/2015 16h29min13s BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1000322
;

-- 13/03/2015 16h29min13s BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1000323
;

-- 13/03/2015 16h29min13s BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1000323
;

-- 13/03/2015 16h29min13s BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1000349
;

-- 13/03/2015 16h29min13s BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1000349
;

-- 13/03/2015 17h30min37s BRT
INSERT INTO AD_FieldGroup (AD_Client_ID,AD_FieldGroup_ID,AD_Org_ID,Created,CreatedBy,EntityType,FieldGroupType,IsActive,IsCollapsedByDefault,Name,Updated,UpdatedBy) VALUES (0,1120049,0,TO_DATE('2015-03-13 17:30:36','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','C','Y','Y','NF Detalhes do Parceiro de Negócios',TO_DATE('2015-03-13 17:30:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/03/2015 17h30min37s BRT
INSERT INTO AD_FieldGroup_Trl (AD_Language,AD_FieldGroup_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_FieldGroup_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_FieldGroup t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_FieldGroup_ID=1120049 AND NOT EXISTS (SELECT * FROM AD_FieldGroup_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_FieldGroup_ID=t.AD_FieldGroup_ID)
;

-- 13/03/2015 17h38min57s BRT
INSERT INTO AD_FieldGroup (AD_Client_ID,AD_FieldGroup_ID,AD_Org_ID,Created,CreatedBy,EntityType,FieldGroupType,IsActive,IsCollapsedByDefault,Name,Updated,UpdatedBy) VALUES (0,1120050,0,TO_DATE('2015-03-13 17:38:56','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','C','Y','Y','NF Local de Entrega ou Retirada',TO_DATE('2015-03-13 17:38:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/03/2015 17h38min57s BRT
INSERT INTO AD_FieldGroup_Trl (AD_Language,AD_FieldGroup_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_FieldGroup_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_FieldGroup t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_FieldGroup_ID=1120050 AND NOT EXISTS (SELECT * FROM AD_FieldGroup_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_FieldGroup_ID=t.AD_FieldGroup_ID)
;

-- 13/03/2015 17h51min45s BRT
INSERT INTO AD_FieldGroup (AD_Client_ID,AD_FieldGroup_ID,AD_Org_ID,Created,CreatedBy,EntityType,FieldGroupType,IsActive,IsCollapsedByDefault,Name,Updated,UpdatedBy) VALUES (0,1120051,0,TO_DATE('2015-03-13 17:51:44','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','C','Y','Y','NF Transportadora e Volumes',TO_DATE('2015-03-13 17:51:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/03/2015 17h51min45s BRT
INSERT INTO AD_FieldGroup_Trl (AD_Language,AD_FieldGroup_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_FieldGroup_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_FieldGroup t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_FieldGroup_ID=1120051 AND NOT EXISTS (SELECT * FROM AD_FieldGroup_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_FieldGroup_ID=t.AD_FieldGroup_ID)
;

-- 13/03/2015 17h54min31s BRT
UPDATE AD_FieldGroup SET Name='NF Transportadora',Updated=TO_DATE('2015-03-13 17:54:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1120051
;

-- 13/03/2015 17h54min31s BRT
UPDATE AD_FieldGroup_Trl SET IsTranslated='N' WHERE AD_FieldGroup_ID=1120051
;

-- 13/03/2015 17h54min31s BRT
UPDATE AD_FieldGroup_Trl SET Name='NF Transportadora',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_FieldGroup_ID=1120051
;

-- 13/03/2015 17h54min43s BRT
INSERT INTO AD_FieldGroup (AD_Client_ID,AD_FieldGroup_ID,AD_Org_ID,Created,CreatedBy,EntityType,FieldGroupType,IsActive,IsCollapsedByDefault,Name,Updated,UpdatedBy) VALUES (0,1120052,0,TO_DATE('2015-03-13 17:54:43','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','C','Y','Y','NF Detalhes da Transportadora',TO_DATE('2015-03-13 17:54:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/03/2015 17h54min43s BRT
INSERT INTO AD_FieldGroup_Trl (AD_Language,AD_FieldGroup_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_FieldGroup_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_FieldGroup t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_FieldGroup_ID=1120052 AND NOT EXISTS (SELECT * FROM AD_FieldGroup_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_FieldGroup_ID=t.AD_FieldGroup_ID)
;

-- 13/03/2015 17h55min2s BRT
UPDATE AD_FieldGroup SET IsCollapsedByDefault='N',Updated=TO_DATE('2015-03-13 17:55:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1120051
;

-- 14/03/2015 10h48min20s BRT
UPDATE AD_Column SET AD_Reference_ID=11,Updated=TO_DATE('2015-03-14 10:48:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000570
;

-- 14/03/2015 10h48min25s BRT
ALTER TABLE LBR_NotaFiscal MODIFY NoPackages NUMBER(10) DEFAULT NULL 
;

-- 14/03/2015 11h0min4s BRT
INSERT INTO AD_FieldGroup (AD_Client_ID,AD_FieldGroup_ID,AD_Org_ID,Created,CreatedBy,EntityType,FieldGroupType,IsActive,IsCollapsedByDefault,Name,Updated,UpdatedBy) VALUES (0,1120053,0,TO_DATE('2015-03-14 11:00:03','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','C','Y','Y','NF Detalhes da Organização',TO_DATE('2015-03-14 11:00:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/03/2015 11h0min4s BRT
INSERT INTO AD_FieldGroup_Trl (AD_Language,AD_FieldGroup_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_FieldGroup_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_FieldGroup t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_FieldGroup_ID=1120053 AND NOT EXISTS (SELECT * FROM AD_FieldGroup_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_FieldGroup_ID=t.AD_FieldGroup_ID)
;

-- 16/03/2015 15h44min41s BRT
INSERT INTO AD_FieldGroup (AD_Client_ID,AD_FieldGroup_ID,AD_Org_ID,Created,CreatedBy,EntityType,FieldGroupType,IsActive,IsCollapsedByDefault,Name,Updated,UpdatedBy) VALUES (0,1120054,0,TO_DATE('2015-03-16 15:44:40','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','C','Y','Y','NF Cancelamento',TO_DATE('2015-03-16 15:44:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/03/2015 15h44min41s BRT
INSERT INTO AD_FieldGroup_Trl (AD_Language,AD_FieldGroup_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_FieldGroup_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_FieldGroup t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_FieldGroup_ID=1120054 AND NOT EXISTS (SELECT * FROM AD_FieldGroup_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_FieldGroup_ID=t.AD_FieldGroup_ID)
;

-- 16/03/2015 15h44min56s BRT
INSERT INTO AD_FieldGroup (AD_Client_ID,AD_FieldGroup_ID,AD_Org_ID,Created,CreatedBy,EntityType,FieldGroupType,IsActive,IsCollapsedByDefault,Name,Updated,UpdatedBy) VALUES (0,1120055,0,TO_DATE('2015-03-16 15:44:55','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','C','Y','Y','NF Contingencia',TO_DATE('2015-03-16 15:44:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/03/2015 15h44min56s BRT
INSERT INTO AD_FieldGroup_Trl (AD_Language,AD_FieldGroup_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_FieldGroup_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_FieldGroup t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_FieldGroup_ID=1120055 AND NOT EXISTS (SELECT * FROM AD_FieldGroup_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_FieldGroup_ID=t.AD_FieldGroup_ID)
;

-- 16/03/2015 15h45min2s BRT
UPDATE AD_FieldGroup_Trl SET Name='NF Contingência',Updated=TO_DATE('2015-03-16 15:45:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1120055 AND AD_Language='pt_BR'
;

-- 16/03/2015 15h46min51s BRT
UPDATE AD_Column SET AD_Reference_ID=14,Updated=TO_DATE('2015-03-16 15:46:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120454
;

-- 16/03/2015 15h47min2s BRT
UPDATE AD_Column SET AD_Reference_ID=14,Updated=TO_DATE('2015-03-16 15:47:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1100105
;

-- 16/03/2015 15h47min13s BRT
UPDATE AD_Field SET DisplayLength=40,Updated=TO_DATE('2015-03-16 15:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120314
;

-- 16/03/2015 15h48min7s BRT
UPDATE AD_Field SET IsReadOnly='N',Updated=TO_DATE('2015-03-16 15:48:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124925
;

-- 16/03/2015 15h50min5s BRT
UPDATE AD_Column SET AD_Reference_ID=14,Updated=TO_DATE('2015-03-16 15:50:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1001043
;

-- 16/03/2015 15h50min18s BRT
UPDATE AD_Column SET AD_Reference_ID=14,Updated=TO_DATE('2015-03-16 15:50:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000492
;

-- 16/03/2015 15h52min29s BRT
UPDATE AD_Tab SET IsReadOnly='N',Updated=TO_DATE('2015-03-16 15:52:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000026
;

-- 16/03/2015 15h52min42s BRT
UPDATE AD_Tab SET IsInsertRecord='Y',Updated=TO_DATE('2015-03-16 15:52:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000026
;

-- 16/03/2015 15h54min12s BRT
UPDATE AD_Column SET AD_Reference_ID=30,Updated=TO_DATE('2015-03-16 15:54:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000556
;

-- 16/03/2015 16h2min57s BRT
INSERT INTO AD_FieldGroup (AD_Client_ID,AD_FieldGroup_ID,AD_Org_ID,Created,CreatedBy,EntityType,FieldGroupType,IsActive,IsCollapsedByDefault,Name,Updated,UpdatedBy) VALUES (0,1120056,0,TO_DATE('2015-03-16 16:02:56','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','C','Y','N','NF Importação',TO_DATE('2015-03-16 16:02:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/03/2015 16h2min57s BRT
INSERT INTO AD_FieldGroup_Trl (AD_Language,AD_FieldGroup_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_FieldGroup_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_FieldGroup t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_FieldGroup_ID=1120056 AND NOT EXISTS (SELECT * FROM AD_FieldGroup_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_FieldGroup_ID=t.AD_FieldGroup_ID)
;

--	Correção dos campos na janela de Nota Fiscal
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1100002, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=740, SortNo=null, IsSameLine='N', IsReadOnly='Y' WHERE AD_Field_ID=1100049;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1100002, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=750, SortNo=null, IsSameLine='Y', IsReadOnly='Y' WHERE AD_Field_ID=1100044;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1100002, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=760, SortNo=null, IsSameLine='N', IsReadOnly='Y' WHERE AD_Field_ID=1100048;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1100002, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=770, SortNo=0, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1124925;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120049, IsDisplayed='Y', DisplayLogic='', DisplayLength=2, SeqNo=340, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000332;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120049, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=260, SortNo=0, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1124869;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120049, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=290, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000303;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120049, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=300, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000304;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120049, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=320, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000331;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120049, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=330, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000307;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120049, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=350, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000308;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120049, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=360, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000330;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120049, IsDisplayed='Y', DisplayLogic='', DisplayLength=30, SeqNo=270, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1124939;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120049, IsDisplayed='Y', DisplayLogic='', DisplayLength=60, SeqNo=250, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000329;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120049, IsDisplayed='Y', DisplayLogic='', DisplayLength=60, SeqNo=280, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000302;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120049, IsDisplayed='Y', DisplayLogic='', DisplayLength=60, SeqNo=310, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000305;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120050, IsDisplayed='Y', DisplayLogic='', DisplayLength=2, SeqNo=450, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000318;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120050, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=370, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000313;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120050, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=380, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000316;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120050, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=400, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000310;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120050, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=410, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000311;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120050, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=430, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000317;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120050, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=440, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000314;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120050, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=460, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000315;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120050, IsDisplayed='Y', DisplayLogic='', DisplayLength=255, SeqNo=470, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1001093;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120050, IsDisplayed='Y', DisplayLogic='', DisplayLength=60, SeqNo=390, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000309;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120050, IsDisplayed='Y', DisplayLogic='', DisplayLength=60, SeqNo=420, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000312;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120051, IsDisplayed='N', DisplayLogic='', DisplayLength=1, SeqNo=0, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000374;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120051, IsDisplayed='Y', DisplayLogic='', DisplayLength=1, SeqNo=540, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1123448;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120051, IsDisplayed='Y', DisplayLogic='', DisplayLength=10, SeqNo=520, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000376;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120051, IsDisplayed='Y', DisplayLogic='', DisplayLength=10, SeqNo=530, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000380;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120051, IsDisplayed='Y', DisplayLogic='', DisplayLength=10, SeqNo=550, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000381;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120051, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=480, SortNo=0, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1124850;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120051, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=500, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1001092;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120051, IsDisplayed='Y', DisplayLogic='', DisplayLength=60, SeqNo=510, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000660;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120051, IsDisplayed='Y', DisplayLogic='', DisplayLength=7, SeqNo=560, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000882;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120051, IsDisplayed='Y', DisplayLogic='@DeliveryViaRule@=S', DisplayLength=22, SeqNo=490, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000356;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120052, IsDisplayed='Y', DisplayLogic='@DeliveryViaRule@=S', DisplayLength=255, SeqNo=570, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000625;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120052, IsDisplayed='Y', DisplayLogic='@DeliveryViaRule@=S', DisplayLength=255, SeqNo=580, SortNo=0, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1124867;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120052, IsDisplayed='Y', DisplayLogic='@DeliveryViaRule@=S', DisplayLength=8, SeqNo=590, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000659;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120053, IsDisplayed='Y', DisplayLogic='', DisplayLength=10, SeqNo=860, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1001089;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120053, IsDisplayed='Y', DisplayLogic='', DisplayLength=18, SeqNo=790, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000370;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120053, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=800, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000377;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120053, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=810, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1001079;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120053, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=830, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1001081;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120053, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=840, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1001082;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120053, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=870, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1001085;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120053, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=880, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1001090;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120053, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=890, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1001086;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120053, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=910, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1001088;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120053, IsDisplayed='Y', DisplayLogic='', DisplayLength=5, SeqNo=900, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1124943;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120053, IsDisplayed='Y', DisplayLogic='', DisplayLength=60, SeqNo=780, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1001087;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120053, IsDisplayed='Y', DisplayLogic='', DisplayLength=60, SeqNo=820, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1001080;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120053, IsDisplayed='Y', DisplayLogic='', DisplayLength=60, SeqNo=850, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1001083;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120054, IsDisplayed='Y', DisplayLogic='', DisplayLength=40, SeqNo=920, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1100077;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120055, IsDisplayed='Y', DisplayLogic='', DisplayLength=40, SeqNo=940, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1120314;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120055, IsDisplayed='Y', DisplayLogic='', DisplayLength=7, SeqNo=930, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1120313;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=125, IsDisplayed='Y', DisplayLogic='', DisplayLength=64, SeqNo=600, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1001075;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='', DisplayLength=1, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000382;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='', DisplayLength=1, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000497;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='', DisplayLength=1, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1100037;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='', DisplayLength=1, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1124945;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='', DisplayLength=1, SeqNo=0, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000353;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='', DisplayLength=1, SeqNo=0, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000354;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='', DisplayLength=1, SeqNo=0, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000618;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='', DisplayLength=1, SeqNo=0, SortNo=null, IsSameLine='Y', IsReadOnly='Y' WHERE AD_Field_ID=1000298;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='', DisplayLength=10, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1124941;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='', DisplayLength=10, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1124942;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='', DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1001073;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='', DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1001074;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='', DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1001076;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='', DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1001091;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='', DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1124944;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='', DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='Y' WHERE AD_Field_ID=1100051;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='', DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000352;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='', DisplayLength=255, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1001070;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='', DisplayLength=255, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1001071;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='', DisplayLength=255, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1001072;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='', DisplayLength=30, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1001084;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='', DisplayLength=300, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000369;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='', DisplayLength=300, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000372;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='', DisplayLength=300, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000379;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='', DisplayLength=5, SeqNo=0, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000883;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='', DisplayLength=6, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1001077;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='', DisplayLength=60, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1124940;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='', DisplayLength=60, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='Y' WHERE AD_Field_ID=1100046;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='@lbr_FinNFe@=2', DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1120327;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='@Processed@=''Y''', DisplayLength=1, SeqNo=0, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000890;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=0, SeqNo=670, SortNo=0, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1120081;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=1, SeqNo=100, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1124948;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=1, SeqNo=110, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1124949;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=1, SeqNo=720, SortNo=null, IsSameLine='N', IsReadOnly='Y' WHERE AD_Field_ID=1000344;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=1, SeqNo=730, SortNo=null, IsSameLine='Y', IsReadOnly='Y' WHERE AD_Field_ID=1000383;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=13, SeqNo=680, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1122767;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=2, SeqNo=30, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1124950;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=2, SeqNo=700, SortNo=null, IsSameLine='N', IsReadOnly='Y' WHERE AD_Field_ID=1124947;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=2, SeqNo=710, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1124946;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=20, SeqNo=130, SortNo=0, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1100146;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=10, SortNo=null, IsSameLine='N', IsReadOnly='Y' WHERE AD_Field_ID=1000299;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=120, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000350;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=140, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000348;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=150, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000355;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=160, SortNo=0, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1124845;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=170, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1120264;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=20, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000301;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=210, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000343;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=220, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000351;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=230, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000306;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=240, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000319;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=50, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000346;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=620, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000384;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=630, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000375;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=640, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000373;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=650, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000378;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=660, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000496;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=690, SortNo=null, IsSameLine='Y', IsReadOnly='Y' WHERE AD_Field_ID=1000347;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=70, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000357;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=255, SeqNo=610, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000345;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=3, SeqNo=40, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1124951;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=3, SeqNo=80, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1124952;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=300, SeqNo=90, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000637;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=60, SeqNo=180, SortNo=null, IsSameLine='N', IsReadOnly='Y' WHERE AD_Field_ID=1100050;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=60, SeqNo=190, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1001078;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=60, SeqNo=200, SortNo=null, IsSameLine='N', IsReadOnly='Y' WHERE AD_Field_ID=1100047;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=7, SeqNo=60, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000371;

UPDATE AD_Field SET IsCentrallyMaintained='N',  AD_FieldGroup_ID=103, IsDisplayed='Y', DisplayLogic='', DisplayLength=10, SeqNo=190, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000387;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=103, IsDisplayed='Y', DisplayLogic='', DisplayLength=0, SeqNo=200, SortNo=0, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1122353;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=103, IsDisplayed='Y', DisplayLogic='', DisplayLength=10, SeqNo=170, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000396;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=103, IsDisplayed='Y', DisplayLogic='', DisplayLength=10, SeqNo=180, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000393;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=103, IsDisplayed='Y', DisplayLogic='', DisplayLength=10, SeqNo=210, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000389;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=103, IsDisplayed='Y', DisplayLogic='', DisplayLength=13, SeqNo=220, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1122777;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=103, IsDisplayed='Y', DisplayLogic='@lbr_IsService@=''Y''', DisplayLength=1000, SeqNo=230, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000633;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=106, IsDisplayed='N', DisplayLogic='', DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000391;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=106, IsDisplayed='N', DisplayLogic='', DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000397;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=106, IsDisplayed='N', DisplayLogic='', DisplayLength=3, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000616;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=106, IsDisplayed='N', DisplayLogic='', DisplayLength=3, SeqNo=0, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1120000;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=106, IsDisplayed='Y', DisplayLogic='', DisplayLength=1, SeqNo=100, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1122914;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=106, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=120, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000394;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=106, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=130, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000392;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=106, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=140, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000367;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=106, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=150, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000362;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=106, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=160, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000615;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=106, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=90, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000366;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=106, IsDisplayed='Y', DisplayLogic='', DisplayLength=60, SeqNo=110, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000395;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120056, IsDisplayed='Y', DisplayLogic='', DisplayLength=10, SeqNo=240, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1124953;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120056, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=260, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1124956;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120056, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=280, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1124954;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120056, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=290, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1124955;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120056, IsDisplayed='Y', DisplayLogic='', DisplayLength=3, SeqNo=250, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1124957;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120056, IsDisplayed='Y', DisplayLogic='', DisplayLength=3, SeqNo=270, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1124958;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=125, IsDisplayed='N', DisplayLogic='', DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000385;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='', DisplayLength=1, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000358;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='', DisplayLength=10, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000390;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='', DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000363;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=1, SeqNo=30, SortNo=0, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000619;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=10, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000360;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=20, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000365;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=40, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000361;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=60, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000359;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=22, SeqNo=70, SortNo=0, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1124872;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=255, SeqNo=80, SortNo=null, IsSameLine='N', IsReadOnly='N' WHERE AD_Field_ID=1000386;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='', DisplayLength=3, SeqNo=50, SortNo=null, IsSameLine='Y', IsReadOnly='N' WHERE AD_Field_ID=1000388;

UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y' WHERE AD_Table_ID=1000027 AND ColumnName NOT IN ('IsManual', 'DocAction')
;

UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y' WHERE AD_Table_ID=1000028
;

UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y' WHERE AD_Table_ID=1000034
;

UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y' WHERE AD_Table_ID=1000035
;

UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y' WHERE AD_Table_ID=1100002
;

UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y' WHERE AD_Table_ID=1120447
;

UPDATE LBR_NotaFiscal SET IsManual='Y'
;

--	NF-e Entrada
-- 25/03/2015 9h53min36s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1100177,1124995,0,1000028,TO_DATE('2015-03-25 09:53:35','YYYY-MM-DD HH24:MI:SS'),100,'Defines the BP Suframa',30,'LBRA','Y','Y','Y','N','N','N','N','N','BP Suframa',TO_DATE('2015-03-25 09:53:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/03/2015 9h53min36s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124995 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/03/2015 9h53min37s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106073,1124996,0,1000028,TO_DATE('2015-03-25 09:53:36','YYYY-MM-DD HH24:MI:SS'),100,'Brand transport volumes',60,'LBRA','Brand transport volumes','Y','Y','Y','N','N','N','N','N','Brand',TO_DATE('2015-03-25 09:53:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/03/2015 9h53min37s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124996 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/03/2015 9h53min37s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126449,1124997,0,1000028,TO_DATE('2015-03-25 09:53:37','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','Y','N','N','N','N','N','Cod. Cidade',TO_DATE('2015-03-25 09:53:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/03/2015 9h53min37s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124997 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/03/2015 9h53min37s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126448,1124998,0,1000028,TO_DATE('2015-03-25 09:53:37','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','Y','N','N','N','N','N','Cod. Cidade',TO_DATE('2015-03-25 09:53:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/03/2015 9h53min37s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124998 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/03/2015 9h53min38s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126450,1124999,0,1000028,TO_DATE('2015-03-25 09:53:37','YYYY-MM-DD HH24:MI:SS'),100,'Country Code used for issue Nota Fiscal',5,'LBRA','Country Code used for issue Nota Fiscal. Codes from BCB (Banco Central do Brasil)','Y','Y','Y','N','N','N','N','N','Country Code',TO_DATE('2015-03-25 09:53:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/03/2015 9h53min38s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124999 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/03/2015 9h53min38s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120211,1125000,0,1000028,TO_DATE('2015-03-25 09:53:38','YYYY-MM-DD HH24:MI:SS'),100,22,'LBRA','Y','Y','Y','N','N','N','N','N','DE',TO_DATE('2015-03-25 09:53:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/03/2015 9h53min38s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125000 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/03/2015 9h53min38s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126451,1125001,0,1000028,TO_DATE('2015-03-25 09:53:38','YYYY-MM-DD HH24:MI:SS'),100,'How the order will be delivered',1,'LBRA','The Delivery Via indicates how the products should be delivered. For example, will the order be picked up or shipped.','Y','Y','Y','N','N','N','N','N','Delivery Via',TO_DATE('2015-03-25 09:53:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/03/2015 9h53min38s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125001 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/03/2015 9h53min39s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1100082,1125002,0,1000028,TO_DATE('2015-03-25 09:53:38','YYYY-MM-DD HH24:MI:SS'),100,255,'LBRA','Y','Y','Y','N','N','N','N','N','Digest Value',TO_DATE('2015-03-25 09:53:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/03/2015 9h53min39s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125002 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/03/2015 9h53min39s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1123545,1125003,0,1000028,TO_DATE('2015-03-25 09:53:39','YYYY-MM-DD HH24:MI:SS'),100,'Print Discount on Invoice and Order',1,'LBRA','The Discount Printed Checkbox indicates if the discount will be printed on the document.','Y','Y','Y','N','N','N','N','N','Discount Printed',TO_DATE('2015-03-25 09:53:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/03/2015 9h53min39s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125003 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/03/2015 9h53min40s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126536,1125004,0,1000028,TO_DATE('2015-03-25 09:53:39','YYYY-MM-DD HH24:MI:SS'),100,'The targeted status of the document',2,'LBRA','You find the current status in the Document Status field. The options are listed in a popup','Y','Y','Y','N','N','N','N','N','Document Action',TO_DATE('2015-03-25 09:53:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/03/2015 9h53min40s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125004 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/03/2015 9h53min40s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126535,1125005,0,1000028,TO_DATE('2015-03-25 09:53:40','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document',2,'LBRA','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','Y','Y','N','N','N','N','N','Document Status',TO_DATE('2015-03-25 09:53:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/03/2015 9h53min40s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125005 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/03/2015 9h53min40s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1100073,1125006,0,1000028,TO_DATE('2015-03-25 09:53:40','YYYY-MM-DD HH24:MI:SS'),100,1,'LBRA','Y','Y','Y','N','N','N','N','N','Generate NFe XML',TO_DATE('2015-03-25 09:53:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/03/2015 9h53min40s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125006 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/03/2015 9h53min41s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1100019,1125007,0,1000028,TO_DATE('2015-03-25 09:53:40','YYYY-MM-DD HH24:MI:SS'),100,'Identifies this is an own document',1,'LBRA','Identifies this is an own document','Y','Y','Y','N','N','N','N','N','Is Own Document',TO_DATE('2015-03-25 09:53:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/03/2015 9h53min41s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125007 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/03/2015 9h53min41s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126533,1125008,0,1000028,TO_DATE('2015-03-25 09:53:41','YYYY-MM-DD HH24:MI:SS'),100,'This is a manual process',1,'LBRA','The Manual check box indicates if the process will done manually.','Y','Y','Y','N','N','N','N','N','Manual',TO_DATE('2015-03-25 09:53:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/03/2015 9h53min41s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125008 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/03/2015 9h53min41s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1100105,1125009,0,1000028,TO_DATE('2015-03-25 09:53:41','YYYY-MM-DD HH24:MI:SS'),100,'Motivo do Cancelamento (Entre 15 e 255 caracteres)',255,'LBRA','Campo para ser lancado o motivo do cancelamento da NF, deve conter entre 15 e 255 caracteres e é obrigatório para cancelar uma NF-e.','Y','Y','Y','N','N','N','N','N','Motivo do Cancelamento',TO_DATE('2015-03-25 09:53:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/03/2015 9h53min41s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125009 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/03/2015 9h53min42s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1100080,1125010,0,1000028,TO_DATE('2015-03-25 09:53:41','YYYY-MM-DD HH24:MI:SS'),100,'Description of NFe',512,'LBRA','Y','Y','Y','N','N','N','N','N','NFe Description',TO_DATE('2015-03-25 09:53:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/03/2015 9h53min42s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125010 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/03/2015 9h53min42s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1100064,1125011,0,1000028,TO_DATE('2015-03-25 09:53:42','YYYY-MM-DD HH24:MI:SS'),100,'Identification of NFe',255,'LBRA','Y','Y','Y','N','N','N','N','N','NFe ID',TO_DATE('2015-03-25 09:53:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/03/2015 9h53min42s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125011 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/03/2015 9h53min42s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1100071,1125012,0,1000028,TO_DATE('2015-03-25 09:53:42','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','Y','N','N','N','N','N','NFe Lot',TO_DATE('2015-03-25 09:53:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/03/2015 9h53min42s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125012 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/03/2015 9h53min43s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1100081,1125013,0,1000028,TO_DATE('2015-03-25 09:53:42','YYYY-MM-DD HH24:MI:SS'),100,60,'LBRA','Y','Y','Y','N','N','N','N','N','NFe Protocol',TO_DATE('2015-03-25 09:53:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/03/2015 9h53min43s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125013 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/03/2015 9h53min43s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1100065,1125014,0,1000028,TO_DATE('2015-03-25 09:53:43','YYYY-MM-DD HH24:MI:SS'),100,'Status of NFe',3,'LBRA','Y','Y','Y','N','N','N','N','N','NFe Status',TO_DATE('2015-03-25 09:53:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/03/2015 9h53min43s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125014 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/03/2015 9h53min43s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120112,1125015,0,1000028,TO_DATE('2015-03-25 09:53:43','YYYY-MM-DD HH24:MI:SS'),100,'Identifies the model of Nota Fiscal',2,'LBRA','Y','Y','Y','N','N','N','N','N','NF Model',TO_DATE('2015-03-25 09:53:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/03/2015 9h53min43s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125015 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/03/2015 9h53min44s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124123,1125016,0,1000028,TO_DATE('2015-03-25 09:53:43','YYYY-MM-DD HH24:MI:SS'),100,3,'LBRA','Y','Y','Y','N','N','N','N','N','NF Serie',TO_DATE('2015-03-25 09:53:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/03/2015 9h53min44s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125016 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/03/2015 9h53min44s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120390,1125017,0,1000028,TO_DATE('2015-03-25 09:53:44','YYYY-MM-DD HH24:MI:SS'),100,1,'LBRA','Y','Y','Y','N','N','N','N','N','RPS Status',TO_DATE('2015-03-25 09:53:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/03/2015 9h53min44s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125017 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/03/2015 9h53min45s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1100083,1125018,0,1000028,TO_DATE('2015-03-25 09:53:44','YYYY-MM-DD HH24:MI:SS'),100,'Transaction Date',7,'LBRA','The Transaction Date indicates the date of the transaction.','Y','Y','Y','N','N','N','N','N','Transaction Date',TO_DATE('2015-03-25 09:53:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/03/2015 9h53min45s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125018 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/03/2015 9h53min45s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1100176,1125019,0,1000028,TO_DATE('2015-03-25 09:53:45','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Transaction Type',3,'LBRA','Defines the Transaction Type','Y','Y','Y','N','N','N','N','N','Transaction Type',TO_DATE('2015-03-25 09:53:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/03/2015 9h53min45s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125019 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120049, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=60, SeqNo=300, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000534;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120049, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=290, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000533;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=1, SeqNo=0, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000617;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=1, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000515;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120051, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=60, SeqNo=500, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000658;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=230, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000525;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120049, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=2, SeqNo=330, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000527;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120051, IsDisplayed='Y', DisplayLogic='@DeliveryViaRule@=S', DisplayLength=22, SeqNo=480, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000558;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120051, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=10, SeqNo=540, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000569;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=255, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1001096;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1001116;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='@Processed@=''Y''', DisplayLength=1, SeqNo=0, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1001115;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120053, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=790, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000499;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120053, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=18, SeqNo=780, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000500;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120049, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=280, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000532;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120049, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=310, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000528;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120049, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=340, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000530;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=610, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000556;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120051, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=1, SeqNo=0, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000570;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=630, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000571;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=640, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000572;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120051, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=10, SeqNo=510, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000573;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120051, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=10, SeqNo=520, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000574;

UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=650, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000620;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120052, IsDisplayed='Y', DisplayLogic='@DeliveryViaRule@=S', DisplayLength=255, SeqNo=560, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000624;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=1, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000498;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=5, SeqNo=0, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000881;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1001100;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120053, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=60, SeqNo=810, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1001104;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120053, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=830, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1001106;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=255, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1001095;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=125, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=64, SeqNo=590, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1001099;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic='@lbr_NFENo@!''''', DisplayLength=60, SeqNo=180, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1001102;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120053, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=800, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1001103;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120053, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=900, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1001112;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120049, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=320, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000526;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=0, SeqNo=660, SortNo=0, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1120082;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic='@lbr_FinNFe@=2', DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1120326;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=13, SeqNo=670, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1122769;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120051, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=1, SeqNo=530, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1123452;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=210, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000522;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=120, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000511;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=150, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000512;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1100002, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=760, SortNo=0, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1124926;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=20, SeqNo=130, SortNo=0, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1100147;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=160, SortNo=0, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1124846;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=1, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1125006;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1100002, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=750, SortNo=null, IsSameLine='N', IsReadOnly='Y', DefaultValue=NULL WHERE AD_Field_ID=1125012;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1100002, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=730, SortNo=null, IsSameLine='N', IsReadOnly='Y', DefaultValue=NULL WHERE AD_Field_ID=1125013;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1100002, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=740, SortNo=null, IsSameLine='Y', IsReadOnly='Y', DefaultValue=NULL WHERE AD_Field_ID=1125002;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120049, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=350, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000529;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120049, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=30, SeqNo=260, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1124995;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120049, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=60, SeqNo=240, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000523;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120049, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=60, SeqNo=270, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000531;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120052, IsDisplayed='Y', DisplayLogic='@DeliveryViaRule@=S', DisplayLength=255, SeqNo=570, SortNo=0, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1124868;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=130, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000559;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=130, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000560;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=130, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000561;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=130, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000563;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=130, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=2, SeqNo=0, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000562;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=130, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000564;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=130, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=60, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000565;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=130, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=60, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000566;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=130, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=60, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000567;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=130, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=60, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000568;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=131, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000545;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=131, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000546;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=131, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000547;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=131, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000548;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=131, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=2, SeqNo=0, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000549;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=131, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000550;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=131, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000551;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=131, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=60, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000552;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=131, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=60, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000553;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=131, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=60, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000554;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=131, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=60, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000555;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120049, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=250, SortNo=0, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1124870;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120050, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=2, SeqNo=440, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000538;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120050, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=370, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000536;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120050, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=390, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000542;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120050, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=400, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000543;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120050, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=420, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000539;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120050, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=430, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000537;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120050, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=450, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000540;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120050, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=255, SeqNo=460, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1001118;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120050, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=60, SeqNo=380, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000541;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120050, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=60, SeqNo=410, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000544;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120051, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=470, SortNo=0, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1125001;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120051, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=490, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1001117;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120051, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=7, SeqNo=550, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000880;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120052, IsDisplayed='Y', DisplayLogic='@DeliveryViaRule@=S', DisplayLength=8, SeqNo=580, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000657;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120053, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=10, SeqNo=850, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1001113;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120053, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=820, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1001105;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120053, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=860, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1001109;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120053, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=870, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1001114;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120053, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=880, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1001110;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120053, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=5, SeqNo=890, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1124999;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120053, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=60, SeqNo=770, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1001111;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120053, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=60, SeqNo=840, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1001107;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120054, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=40, SeqNo=910, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1125009;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120055, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=40, SeqNo=930, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1120325;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120055, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=7, SeqNo=920, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1120324;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=1, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1125003;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=1, SeqNo=0, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000507;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=1, SeqNo=0, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000509;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=70, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000506;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=1, SeqNo=0, SortNo=null, IsSameLine='Y', IsReadOnly='Y', DefaultValue=NULL WHERE AD_Field_ID=1000505;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=10, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1124998;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=10, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1124997;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1001097;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1001098;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1125000;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='Y', DefaultValue=NULL WHERE AD_Field_ID=1125018;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000514;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=255, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1001094;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=30, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1001108;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=300, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000520;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=300, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000518;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=300, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000519;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=6, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1001101;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=60, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1124996;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=60, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='Y', DefaultValue=NULL WHERE AD_Field_ID=1125010;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=1, SeqNo=100, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue='Y' WHERE AD_Field_ID=1125007;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=1, SeqNo=110, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue='Y' WHERE AD_Field_ID=1125008;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=1, SeqNo=710, SortNo=null, IsSameLine='N', IsReadOnly='Y', DefaultValue=NULL WHERE AD_Field_ID=1000504;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=1, SeqNo=720, SortNo=null, IsSameLine='Y', IsReadOnly='Y', DefaultValue=NULL WHERE AD_Field_ID=1000516;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=2, SeqNo=30, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1125015;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=2, SeqNo=690, SortNo=null, IsSameLine='N', IsReadOnly='Y', DefaultValue=NULL WHERE AD_Field_ID=1125005;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=2, SeqNo=700, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1125004;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=10, SortNo=null, IsSameLine='N', IsReadOnly='Y', DefaultValue=NULL WHERE AD_Field_ID=1000502;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=140, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000513;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=20, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000503;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=220, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000524;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=50, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000508;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=620, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000557;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=680, SortNo=null, IsSameLine='Y', IsReadOnly='Y', DefaultValue=NULL WHERE AD_Field_ID=1000501;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=255, SeqNo=600, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000510;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=3, SeqNo=40, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1125016;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=3, SeqNo=80, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1125019;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=300, SeqNo=90, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000636;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=60, SeqNo=170, SortNo=null, IsSameLine='N', IsReadOnly='Y', DefaultValue=NULL WHERE AD_Field_ID=1125014;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=60, SeqNo=190, SortNo=null, IsSameLine='N', IsReadOnly='Y', DefaultValue=NULL WHERE AD_Field_ID=1125011;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=7, SeqNo=60, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000517;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1125017;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=200, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000521;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120050, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=360, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000535;

-- 20/03/2015 9h43min9s BRT
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121725,0,'LBR_WSType',TO_DATE('2015-03-20 09:43:08','YYYY-MM-DD HH24:MI:SS'),100,'WebService Type','LBRA','Y','WS Type','WS Type',TO_DATE('2015-03-20 09:43:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 20/03/2015 9h43min9s BRT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121725 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 20/03/2015 9h44min57s BRT
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Tipo de WS',PrintName='Tipo de WS',Description='Tipo de WebService para a transmissão da chamada',Help='O tipo de WebService define para qual ambiente será destinada a chamada da emissão da NF-e. Ex. Normal para o documento ser emitido para a UF do emitente ou SCAN para ser emitido no Sistema de Contingência do Ambiente Nacional',Updated=TO_DATE('2015-03-20 09:44:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121725 AND AD_Language='pt_BR'
;

-- 20/03/2015 9h45min38s BRT
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120210,TO_DATE('2015-03-20 09:45:37','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','LBR_NFeWebService - LBR_WSType',TO_DATE('2015-03-20 09:45:37','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 20/03/2015 9h45min38s BRT
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120210 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 20/03/2015 9h48min30s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121552,1120210,TO_DATE('2015-03-20 09:48:28','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Normal',TO_DATE('2015-03-20 09:48:28','YYYY-MM-DD HH24:MI:SS'),100,'1')
;

-- 20/03/2015 9h48min30s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121552 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 20/03/2015 9h48min56s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121553,1120210,TO_DATE('2015-03-20 09:48:56','YYYY-MM-DD HH24:MI:SS'),100,'Sistema de Contingencia do Ambiente Nacional','LBRA','Y','SCAN',TO_DATE('2015-03-20 09:48:56','YYYY-MM-DD HH24:MI:SS'),100,'2')
;

-- 20/03/2015 9h48min56s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121553 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 20/03/2015 9h49min32s BRT
UPDATE AD_Ref_List_Trl SET Description='Sistema de Contingência do Ambiente Nacional',Updated=TO_DATE('2015-03-20 09:49:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121553 AND AD_Language='pt_BR'
;

-- 20/03/2015 9h50min10s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126593,1121725,0,17,1120210,1120000,'LBR_WSType',TO_DATE('2015-03-20 09:50:09','YYYY-MM-DD HH24:MI:SS'),100,'1','WebService Type','LBRA',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','WS Type',0,TO_DATE('2015-03-20 09:50:09','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 20/03/2015 9h50min10s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126593 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/03/2015 9h50min11s BRT
ALTER TABLE LBR_NFeWebService ADD LBR_WSType CHAR(1) DEFAULT '1'
;

-- 20/03/2015 9h50min25s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126593,1124994,0,1120000,TO_DATE('2015-03-20 09:50:24','YYYY-MM-DD HH24:MI:SS'),100,'WebService Type',1,'LBRA','Y','Y','Y','N','N','N','N','N','WS Type',TO_DATE('2015-03-20 09:50:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 20/03/2015 9h50min25s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124994 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 20/03/2015 9h51min25s BRT
UPDATE AD_Field SET IsSameLine='Y', SeqNo=35,Updated=TO_DATE('2015-03-20 09:51:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124994
;

-- 27/03/2015 17h0min39s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:00:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120664
;

-- 27/03/2015 17h1min33s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:01:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120665
;

-- 27/03/2015 17h1min49s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:01:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120666
;

-- 27/03/2015 17h1min55s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:01:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120667
;

-- 27/03/2015 17h4min14s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:04:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120913
;

-- 27/03/2015 17h4min21s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:04:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120929
;

-- 27/03/2015 17h4min28s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:04:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120945
;

-- 27/03/2015 17h4min38s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:04:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120961
;

-- 27/03/2015 17h5min11s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:05:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120668
;

-- 27/03/2015 17h5min14s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:05:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120669
;

-- 27/03/2015 17h5min17s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:05:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120670
;

-- 27/03/2015 17h5min22s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:05:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120671
;

-- 27/03/2015 17h5min30s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:05:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120914
;

-- 27/03/2015 17h5min35s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:05:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120930
;

-- 27/03/2015 17h5min38s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:05:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120946
;

-- 27/03/2015 17h5min43s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:05:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120962
;

-- 27/03/2015 17h9min38s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120728
;

-- 27/03/2015 17h9min41s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:09:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120729
;

-- 27/03/2015 17h9min44s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:09:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120730
;

-- 27/03/2015 17h9min49s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:09:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120731
;

-- 27/03/2015 17h10min12s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:10:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120977
;

-- 27/03/2015 17h10min15s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:10:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120988
;

-- 27/03/2015 17h10min18s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:10:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120999
;

-- 27/03/2015 17h10min24s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:10:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1121010
;

-- 27/03/2015 17h12min42s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:12:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120672
;

-- 27/03/2015 17h12min44s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:12:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120673
;

-- 27/03/2015 17h12min48s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:12:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120674
;

-- 27/03/2015 17h12min58s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:12:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120675
;

-- 27/03/2015 17h13min6s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:13:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120915
;

-- 27/03/2015 17h13min9s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:13:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120931
;

-- 27/03/2015 17h13min12s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:13:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120947
;

-- 27/03/2015 17h13min35s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:13:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120963
;

-- 27/03/2015 17h14min32s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:14:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120732
;

-- 27/03/2015 17h14min34s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:14:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120733
;

-- 27/03/2015 17h14min38s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:14:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120734
;

-- 27/03/2015 17h14min42s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:14:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120735
;

-- 27/03/2015 17h14min57s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:14:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120978
;

-- 27/03/2015 17h15min0s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:15:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120989
;

-- 27/03/2015 17h15min2s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:15:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1121000
;

-- 27/03/2015 17h15min6s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:15:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1121011
;

-- 27/03/2015 17h15min28s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:15:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120736
;

-- 27/03/2015 17h15min32s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:15:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120737
;

-- 27/03/2015 17h15min36s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:15:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120738
;

-- 27/03/2015 17h15min52s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:15:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120739
;

-- 27/03/2015 17h16min4s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:16:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120979
;

-- 27/03/2015 17h16min8s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120990
;

-- 27/03/2015 17h16min12s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:16:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1121001
;

-- 27/03/2015 17h16min15s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:16:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1121012
;

-- 27/03/2015 17h16min42s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:16:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120676
;

-- 27/03/2015 17h16min45s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:16:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120677
;

-- 27/03/2015 17h16min48s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:16:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120678
;

-- 27/03/2015 17h16min58s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:16:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120679
;

-- 27/03/2015 17h17min7s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:17:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120916
;

-- 27/03/2015 17h17min9s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:17:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120932
;

-- 27/03/2015 17h17min15s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:17:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120948
;

-- 27/03/2015 17h17min23s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:17:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120964
;

-- 27/03/2015 17h19min21s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:19:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120680
;

-- 27/03/2015 17h19min24s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:19:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120681
;

-- 27/03/2015 17h19min27s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:19:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120682
;

-- 27/03/2015 17h19min30s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:19:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120683
;

-- 27/03/2015 17h19min33s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:19:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120917
;

-- 27/03/2015 17h19min35s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:19:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120933
;

-- 27/03/2015 17h19min39s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:19:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120949
;

-- 27/03/2015 17h19min43s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:19:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120965
;

-- 27/03/2015 17h20min18s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:20:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120740
;

-- 27/03/2015 17h20min21s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:20:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120741
;

-- 27/03/2015 17h20min23s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:20:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120742
;

-- 27/03/2015 17h20min29s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:20:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120743
;

-- 27/03/2015 17h20min43s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:20:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120980
;

-- 27/03/2015 17h20min48s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:20:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120991
;

-- 27/03/2015 17h20min51s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:20:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1121002
;

-- 27/03/2015 17h21min31s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:21:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120744
;

-- 27/03/2015 17h21min34s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:21:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120745
;

-- 27/03/2015 17h21min37s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:21:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120746
;

-- 27/03/2015 17h21min43s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:21:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120747
;

-- 27/03/2015 17h25min35s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:25:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120981
;

-- 27/03/2015 17h25min38s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:25:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120992
;

-- 27/03/2015 17h25min42s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:25:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1121003
;

-- 27/03/2015 17h25min45s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:25:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1121013
;

-- 27/03/2015 17h27min30s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:27:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120684
;

-- 27/03/2015 17h27min32s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:27:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120685
;

-- 27/03/2015 17h27min36s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:27:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120686
;

-- 27/03/2015 17h27min44s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:27:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120687
;

-- 27/03/2015 17h27min48s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:27:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120918
;

-- 27/03/2015 17h27min50s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:27:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120934
;

-- 27/03/2015 17h27min53s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:27:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120950
;

-- 27/03/2015 17h27min55s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:27:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120966
;

-- 27/03/2015 17h28min46s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:28:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120748
;

-- 27/03/2015 17h28min48s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:28:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120749
;

-- 27/03/2015 17h28min50s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:28:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120750
;

-- 27/03/2015 17h28min54s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:28:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120751
;

-- 27/03/2015 17h29min9s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:29:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120982
;

-- 27/03/2015 17h29min11s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:29:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120993
;

-- 27/03/2015 17h29min14s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:29:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1121004
;

-- 27/03/2015 17h29min18s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:29:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1121014
;

-- 27/03/2015 17h29min33s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:29:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120752
;

-- 27/03/2015 17h29min35s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:29:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120753
;

-- 27/03/2015 17h29min39s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:29:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120754
;

-- 27/03/2015 17h29min45s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:29:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120755
;

-- 27/03/2015 17h29min54s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:29:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120983
;

-- 27/03/2015 17h29min58s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:29:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120994
;

-- 27/03/2015 17h30min0s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:30:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1121005
;

-- 27/03/2015 17h30min5s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:30:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1121015
;

-- 27/03/2015 17h32min16s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:32:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120756
;

-- 27/03/2015 17h32min18s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:32:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120757
;

-- 27/03/2015 17h32min21s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:32:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120758
;

-- 27/03/2015 17h32min26s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:32:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120759
;

-- 27/03/2015 17h32min29s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:32:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120984
;

-- 27/03/2015 17h32min32s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:32:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120995
;

-- 27/03/2015 17h32min35s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:32:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1121006
;

-- 27/03/2015 17h32min39s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:32:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1121016
;

-- 27/03/2015 17h33min6s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:33:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120688
;

-- 27/03/2015 17h33min8s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:33:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120689
;

-- 27/03/2015 17h33min11s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:33:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120690
;

-- 27/03/2015 17h33min14s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:33:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120691
;

-- 27/03/2015 17h33min27s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:33:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120919
;

-- 27/03/2015 17h33min30s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:33:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120935
;

-- 27/03/2015 17h33min33s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:33:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120951
;

-- 27/03/2015 17h33min35s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:33:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120967
;

-- 27/03/2015 17h33min49s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:33:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120760
;

-- 27/03/2015 17h33min51s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:33:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120761
;

-- 27/03/2015 17h33min54s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:33:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120762
;

-- 27/03/2015 17h33min56s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:33:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120763
;

-- 27/03/2015 17h34min10s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:34:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120985
;

-- 27/03/2015 17h34min12s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:34:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1121017
;

-- 27/03/2015 17h34min15s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:34:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1121007
;

-- 27/03/2015 17h34min23s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:34:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120996
;

-- 27/03/2015 17h34min27s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:34:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120764
;

-- 27/03/2015 17h34min30s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120765
;

-- 27/03/2015 17h34min34s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:34:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120767
;

-- 27/03/2015 17h34min36s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:34:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120766
;

-- 27/03/2015 17h35min8s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:35:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120986
;

-- 27/03/2015 17h35min11s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:35:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1121018
;

-- 27/03/2015 17h35min13s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:35:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1121008
;

-- 27/03/2015 17h35min15s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:35:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120997
;

-- 27/03/2015 17h35min26s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:35:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120768
;

-- 27/03/2015 17h35min29s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:35:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120769
;

-- 27/03/2015 17h35min32s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:35:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120770
;

-- 27/03/2015 17h35min35s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:35:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120771
;

-- 27/03/2015 17h35min44s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:35:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120987
;

-- 27/03/2015 17h35min47s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:35:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120998
;

-- 27/03/2015 17h35min49s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:35:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1121009
;

-- 27/03/2015 17h35min52s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:35:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1121019
;

-- 27/03/2015 17h36min3s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:36:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120692
;

-- 27/03/2015 17h36min5s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:36:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120693
;

-- 27/03/2015 17h36min8s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:36:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120694
;

-- 27/03/2015 17h36min13s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:36:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120695
;

-- 27/03/2015 17h36min18s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:36:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120920
;

-- 27/03/2015 17h36min21s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:36:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120936
;

-- 27/03/2015 17h36min27s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:36:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120952
;

-- 27/03/2015 17h36min29s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:36:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120968
;

-- 27/03/2015 17h37min43s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:37:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120696
;

-- 27/03/2015 17h37min45s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:37:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120697
;

-- 27/03/2015 17h37min47s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:37:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120698
;

-- 27/03/2015 17h37min49s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:37:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120699
;

-- 27/03/2015 17h37min56s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:37:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120921
;

-- 27/03/2015 17h37min58s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:37:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120937
;

-- 27/03/2015 17h38min0s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:38:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120953
;

-- 27/03/2015 17h38min8s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:38:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120969
;

-- 27/03/2015 17h38min13s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:38:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120700
;

-- 27/03/2015 17h38min15s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:38:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120701
;

-- 27/03/2015 17h38min17s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:38:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120702
;

-- 27/03/2015 17h38min20s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:38:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120703
;

-- 27/03/2015 17h38min26s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:38:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120922
;

-- 27/03/2015 17h38min29s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:38:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120938
;

-- 27/03/2015 17h38min32s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:38:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120954
;

-- 27/03/2015 17h38min33s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:38:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120970
;

-- 27/03/2015 17h38min47s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:38:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120704
;

-- 27/03/2015 17h38min49s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:38:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120705
;

-- 27/03/2015 17h38min52s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:38:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120706
;

-- 27/03/2015 17h38min54s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:38:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120707
;

-- 27/03/2015 17h39min5s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:39:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120923
;

-- 27/03/2015 17h39min7s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:39:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120939
;

-- 27/03/2015 17h39min10s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:39:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120955
;

-- 27/03/2015 17h39min12s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:39:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120971
;

-- 27/03/2015 17h39min55s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:39:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120708
;

-- 27/03/2015 17h39min58s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:39:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120709
;

-- 27/03/2015 17h40min0s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:40:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120710
;

-- 27/03/2015 17h40min2s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:40:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120711
;

-- 27/03/2015 17h40min9s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:40:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120924
;

-- 27/03/2015 17h40min11s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:40:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120940
;

-- 27/03/2015 17h40min14s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:40:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120956
;

-- 27/03/2015 17h40min16s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:40:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120972
;

-- 27/03/2015 17h40min27s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:40:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120712
;

-- 27/03/2015 17h40min29s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:40:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120713
;

-- 27/03/2015 17h40min32s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:40:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120714
;

-- 27/03/2015 17h40min34s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:40:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120715
;

-- 27/03/2015 17h40min44s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:40:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120925
;

-- 27/03/2015 17h40min47s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:40:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120941
;

-- 27/03/2015 17h40min49s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:40:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120957
;

-- 27/03/2015 17h40min52s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:40:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120973
;

-- 27/03/2015 17h41min17s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:41:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120716
;

-- 27/03/2015 17h41min19s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:41:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120717
;

-- 27/03/2015 17h41min22s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:41:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120718
;

-- 27/03/2015 17h41min24s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:41:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120719
;

-- 27/03/2015 17h41min28s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:41:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120926
;

-- 27/03/2015 17h41min30s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:41:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120942
;

-- 27/03/2015 17h41min33s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:41:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120958
;

-- 27/03/2015 17h41min35s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:41:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120974
;

-- 27/03/2015 17h41min55s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:41:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120720
;

-- 27/03/2015 17h41min57s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:41:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120721
;

-- 27/03/2015 17h41min59s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:41:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120722
;

-- 27/03/2015 17h42min1s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:42:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120723
;

-- 27/03/2015 17h42min10s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:42:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120927
;

-- 27/03/2015 17h42min12s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:42:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120943
;

-- 27/03/2015 17h42min15s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:42:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120959
;

-- 27/03/2015 17h42min17s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:42:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120975
;

-- 27/03/2015 17h42min28s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:42:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120724
;

-- 27/03/2015 17h42min30s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:42:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120725
;

-- 27/03/2015 17h42min33s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:42:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120726
;

-- 27/03/2015 17h42min35s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:42:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120727
;

-- 27/03/2015 17h42min41s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:42:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120928
;

-- 27/03/2015 17h42min43s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:42:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120944
;

-- 27/03/2015 17h42min46s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:42:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120960
;

-- 27/03/2015 17h42min48s BRT
UPDATE LBR_NFeWebService SET LBR_WSType='2',Updated=TO_DATE('2015-03-27 17:42:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120976
;

SELECT register_migration_script('102-NFe-3.10.sql') FROM dual;

EXIT