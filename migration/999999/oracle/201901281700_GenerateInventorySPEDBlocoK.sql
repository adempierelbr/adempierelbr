SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 21/01/2019 15h58min4s BRST
INSERT INTO AD_Table (AD_Table_ID,Name,Description,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,IsSystemLanguage) VALUES (1120608,'Book Inventory','Book Inventory for SPED','LBR_BookInventory',0,'3',0,0,'Y',TO_DATE('2019-01-21 15:58:03','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-21 15:58:03','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','N','N','LBRA','N','Y','L','N','Y','N')
;

-- 21/01/2019 15h58min4s BRST
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys) VALUES ('LBR_BookInventory',1000000,'N','N','Table LBR_BookInventory','Y','Y',0,0,TO_DATE('2019-01-21 15:58:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-21 15:58:04','YYYY-MM-DD HH24:MI:SS'),100,1153609,'Y',1000000,1,200000)
;

-- 21/01/2019 15h58min37s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging) VALUES (1130578,0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120608,129,'AD_Client_ID','@#AD_Client_ID@',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_DATE('2019-01-21 15:58:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-21 15:58:36','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','U','N','N','N','Y')
;

-- 21/01/2019 15h58min43s BRST
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2019-01-21 15:58:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130578
;

-- 21/01/2019 15h58min53s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging) VALUES (1130579,0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120608,104,'AD_Org_ID','@#AD_Org_ID@',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_DATE('2019-01-21 15:58:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-21 15:58:53','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N','N','N','Y')
;

-- 21/01/2019 15h59min1s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging) VALUES (1130580,0,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120608,'IsActive','Y',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_DATE('2019-01-21 15:59:01','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-21 15:59:01','YYYY-MM-DD HH24:MI:SS'),100,348,'Y','N','LBRA','N','N','N','Y')
;

-- 21/01/2019 15h59min18s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging) VALUES (1130581,0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120608,'Created','SYSDATE',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_DATE('2019-01-21 15:59:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-21 15:59:17','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N','N','N','Y')
;

-- 21/01/2019 15h59min25s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,FKConstraintType) VALUES (1130582,0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120608,'CreatedBy',22,'N','N','N','N','N',0,'N',18,110,0,0,'Y',TO_DATE('2019-01-21 15:59:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-21 15:59:25','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N','N','N','Y')
;

-- 21/01/2019 15h59min39s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging) VALUES (1130583,0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120608,'Updated','SYSDATE',7,'N','N','N','N','N',0,'N',16,0,0,'Y',TO_DATE('2019-01-21 15:59:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-21 15:59:38','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N','N','N','Y')
;

-- 21/01/2019 15h59min47s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,FKConstraintType) VALUES (1130584,0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120608,'UpdatedBy',22,'N','N','N','N','N',0,'N',18,110,0,0,'Y',TO_DATE('2019-01-21 15:59:46','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-21 15:59:46','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N','N','N','Y')
;

-- 21/01/2019 16h0min49s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging) VALUES (1130585,0,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120608,'M_Product_ID',22,'N','N','N','N','N',0,'N',30,0,0,'Y',TO_DATE('2019-01-21 16:00:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-21 16:00:48','YYYY-MM-DD HH24:MI:SS'),100,454,'N','N','LBRA','N','N','N','Y')
;

-- 21/01/2019 16h0min59s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging) VALUES (1130586,0,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120608,'C_BPartner_ID',22,'N','N','N','N','N',0,'N',30,0,0,'Y',TO_DATE('2019-01-21 16:00:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-21 16:00:59','YYYY-MM-DD HH24:MI:SS'),100,187,'N','N','U','N','N','N','Y')
;

-- 21/01/2019 16h1min4s BRST
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2019-01-21 16:01:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130586
;

-- 21/01/2019 16h1min13s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging) VALUES (1130587,0,'Movement Date','Date a product was moved in or out of inventory','The Movement Date indicates the date that a product moved in or out of inventory.  This is the result of a shipment, receipt or inventory movement.',1120608,'MovementDate',7,'N','N','N','N','N',0,'N',15,0,0,'Y',TO_DATE('2019-01-21 16:01:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-21 16:01:12','YYYY-MM-DD HH24:MI:SS'),100,1037,'N','N','LBRA','N','N','N','Y')
;

-- 21/01/2019 16h1min21s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging) VALUES (1130588,0,'Quantity book','Book Quantity','The Quantity Book indicates the line count stored in the system for a product in inventory',1120608,'QtyBook',22,'N','N','N','N','N',0,'N',29,0,0,'Y',TO_DATE('2019-01-21 16:01:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-21 16:01:21','YYYY-MM-DD HH24:MI:SS'),100,1048,'N','N','LBRA','N','N','N','Y')
;

-- 21/01/2019 16h1min31s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging) VALUES (1130589,0,'Warehouse Type','Defines the Warehouse Type',1120608,'lbr_WarehouseType','''OWN''',3,'N','N','N','N','N',0,'N',17,1120027,0,0,'Y',TO_DATE('2019-01-21 16:01:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-21 16:01:31','YYYY-MM-DD HH24:MI:SS'),100,1120072,'Y','N','LBRA','N','N','N','Y')
;

-- 21/01/2019 16h22min49s BRST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (1122530,0,0,'Y',TO_DATE('2019-01-21 16:22:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-21 16:22:49','YYYY-MM-DD HH24:MI:SS'),100,'LBR_BookInventory_ID','Book Inventory','Book Inventory','LBRA','e424f619-b6d5-4938-949e-cc7bfb912260')
;

-- 21/01/2019 16h23min9s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging) VALUES (1130590,0,'Book Inventory',1120608,'LBR_BookInventory_ID',22,'Y','N','N','N','N',0,'N',13,0,0,'Y',TO_DATE('2019-01-21 16:23:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-21 16:23:09','YYYY-MM-DD HH24:MI:SS'),100,1122530,'N','N','LBRA','N','N','N','Y')
;

-- 21/01/2019 16h30min39s BRST
CREATE TABLE LBR_BookInventory (AD_Client_ID NUMBER(10) DEFAULT NULL , AD_Org_ID NUMBER(10) DEFAULT NULL , C_BPartner_ID NUMBER(10) DEFAULT NULL , Created DATE DEFAULT SYSDATE, CreatedBy NUMBER(10) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')), LBR_BookInventory_ID NUMBER(10) DEFAULT NULL , lbr_WarehouseType VARCHAR2(3) DEFAULT 'OWN', MovementDate DATE DEFAULT NULL , M_Product_ID NUMBER(10) DEFAULT NULL , QtyBook NUMBER DEFAULT NULL , Updated DATE DEFAULT SYSDATE, UpdatedBy NUMBER(10) DEFAULT NULL , CONSTRAINT LBR_BookInventory_Key PRIMARY KEY (LBR_BookInventory_ID))
;

-- 21/01/2019 16h30min39s BRST
ALTER TABLE LBR_BookInventory ADD CONSTRAINT CBPartner_LBRBookInventory FOREIGN KEY (C_BPartner_ID) REFERENCES c_bpartner(c_bpartner_id) DEFERRABLE INITIALLY DEFERRED
;

-- 21/01/2019 16h30min39s BRST
ALTER TABLE LBR_BookInventory ADD CONSTRAINT MProduct_LBRBookInventory FOREIGN KEY (M_Product_ID) REFERENCES m_product(m_product_id) DEFERRABLE INITIALLY DEFERRED
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 27/01/2019 23h3min39s BRST
ALTER TABLE LBR_BookInventory ADD LBR_SPED_ID NUMBER(10) DEFAULT NULL 
;

-- 27/01/2019 23h3min39s BRST
ALTER TABLE LBR_BookInventory ADD CONSTRAINT LBRSPED_LBRBookInventory FOREIGN KEY (LBR_SPED_ID) REFERENCES lbr_sped(lbr_sped_id) DEFERRABLE INITIALLY DEFERRED
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 27/01/2019 22h7min37s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging) VALUES (1131267,0,'LBR_SPED_ID',1120608,'LBR_SPED_ID',22,'N','N','N','N','N',0,'N',19,0,0,'Y',TO_DATE('2019-01-27 22:07:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-27 22:07:36','YYYY-MM-DD HH24:MI:SS'),100,1121261,'N','N','LBRA','N','N','N','Y','2ce093ed-0207-41f8-9650-f86bafb8d926','Y',0,'N','N')
;

-- 23/01/2019 17h52min54s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging) VALUES (1130592,0,'Re-Validate','Re-Validate entries',1120608,'IsReValidate','N',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_DATE('2019-01-23 17:52:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-23 17:52:53','YYYY-MM-DD HH24:MI:SS'),100,3051,'Y','N','LBRA','N','N','N','Y','f6f5fc5b-32c2-4906-9e11-451ffb8f0a87','Y',0,'N','N')
;

-- 23/01/2019 17h53min1s BRST
ALTER TABLE LBR_BookInventory ADD IsReValidate CHAR(1) DEFAULT 'N' CHECK (IsReValidate IN ('Y','N'))
;

-- 27/01/2019 22h10min29s BRST
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab,AD_Tab_UU,TreeDisplayedOn) VALUES (1120328,'Book Inventory','Book Inventory for SPED',1120076,20,'Y',1120608,0,0,'Y',TO_DATE('2019-01-27 22:10:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-27 22:10:28','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','N','N',1,'N','LBRA','Y','N','1fb147fc-7471-4563-80bb-27c33f89ba7d','B')
;

-- 27/01/2019 22h11min0s BRST
UPDATE AD_Tab SET WhereClause='IsReValidate = ''N''',Updated=TO_DATE('2019-01-27 22:11:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120328
;

-- 27/01/2019 22h11min9s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType) VALUES (1127986,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120328,1130578,'Y',22,10,'N','N','N','N',0,0,'Y',TO_DATE('2019-01-27 22:11:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-27 22:11:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','bd7ee045-6090-45b1-aa2b-5a6a805e2f06','N',2)
;

-- 27/01/2019 22h11min10s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType) VALUES (1127987,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120328,1130579,'Y',22,20,'N','N','N','N',0,0,'Y',TO_DATE('2019-01-27 22:11:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-27 22:11:09','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5c89e1dc-9ffb-454f-b255-1dab832f17f2','Y','Y',10,4,2)
;

-- 27/01/2019 22h11min10s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType) VALUES (1127988,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120328,1130585,'Y',22,30,'N','N','N','N',0,0,'Y',TO_DATE('2019-01-27 22:11:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-27 22:11:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','5d228b0b-8ede-4879-a6f4-19ce9a7456ce','Y',20,2)
;

-- 27/01/2019 22h11min10s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType) VALUES (1127989,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120328,1130586,'Y',22,40,'N','N','N','N',0,0,'Y',TO_DATE('2019-01-27 22:11:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-27 22:11:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c7575394-ae57-4a65-9255-0d92eed23c1d','Y',30,2)
;

-- 27/01/2019 22h11min11s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType) VALUES (1127990,'Movement Date','Date a product was moved in or out of inventory','The Movement Date indicates the date that a product moved in or out of inventory.  This is the result of a shipment, receipt or inventory movement.',1120328,1130587,'Y',7,50,'N','N','N','N',0,0,'Y',TO_DATE('2019-01-27 22:11:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-27 22:11:10','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','cf8c8339-e87e-49cd-949e-642f0529aa8f','Y',40,2)
;

-- 27/01/2019 22h11min11s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType) VALUES (1127991,'Quantity book','Book Quantity','The Quantity Book indicates the line count stored in the system for a product in inventory',1120328,1130588,'Y',22,60,'N','N','N','N',0,0,'Y',TO_DATE('2019-01-27 22:11:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-27 22:11:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','b60f8a8a-c399-4f90-b99a-759756132e73','Y',50,2)
;

-- 27/01/2019 22h11min11s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType) VALUES (1127992,'Warehouse Type','Defines the Warehouse Type',1120328,1130589,'Y',3,70,'N','N','N','N',0,0,'Y',TO_DATE('2019-01-27 22:11:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-27 22:11:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','f9d24260-b140-4e64-9f35-f16bff8a2fcf','Y',60,2)
;

-- 27/01/2019 22h11min12s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType) VALUES (1127993,'Book Inventory',1120328,1130590,'N',22,'N','N','N','N',0,0,'Y',TO_DATE('2019-01-27 22:11:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-27 22:11:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','28ac30ee-b8b6-40c3-b37c-3cf018e6a21d','N',2)
;

-- 27/01/2019 22h11min12s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType) VALUES (1127995,'Re-Validate','Re-Validate entries',1120328,1130592,'Y',1,80,'N','N','N','N',0,0,'Y',TO_DATE('2019-01-27 22:11:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-27 22:11:12','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA')
;

-- 27/01/2019 22h11min13s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType) VALUES (1127996,'LBR_SPED_ID',1120328,1131267,'Y',22,90,'N','N','N','N',0,0,'Y',TO_DATE('2019-01-27 22:11:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-27 22:11:12','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA')
;

-- 27/01/2019 22h11min13s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType) VALUES (1127997,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120328,1130580,'Y',1,100,'N','N','N','N',0,0,'Y',TO_DATE('2019-01-27 22:11:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-27 22:11:13','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','c78599a2-2e34-4923-97ea-52e5c7aa2bfe','Y',90,2,2)
;

-- 27/01/2019 22h12min16s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-27 22:12:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127996
;

-- 27/01/2019 22h12min16s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-27 22:12:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127990
;

-- 27/01/2019 22h12min16s BRST
UPDATE AD_Field SET SeqNo=50, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-27 22:12:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127988
;

-- 27/01/2019 22h12min16s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-27 22:12:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127991
;

-- 27/01/2019 22h12min16s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-27 22:12:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127989
;

-- 27/01/2019 22h12min16s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-27 22:12:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127997
;

-- 27/01/2019 22h12min16s BRST
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-27 22:12:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127993
;

-- 27/01/2019 22h12min16s BRST
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-27 22:12:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127994
;

-- 27/01/2019 22h12min16s BRST
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-27 22:12:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127995
;

-- 27/01/2019 22h12min49s BRST
INSERT INTO AD_Tab (AD_Tab_ID,Name,Description,AD_Window_ID,SeqNo,IsSingleRow,AD_Table_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,HasTree,IsInfoTab,IsTranslationTab,IsReadOnly,WhereClause,Processing,ImportFields,TabLevel,IsSortTab,EntityType,IsInsertRecord,IsAdvancedTab) VALUES (1120329,'Book Inventory (ReValidate)','Re-validate Book Inventory for SPED for before period',1120076,30,'Y',1120608,0,0,'Y',TO_DATE('2019-01-27 22:12:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-27 22:12:49','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','N','IsReValidate = ''Y''','N','N',1,'N','LBRA','Y','N')
;

-- 27/01/2019 22h13min3s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType) VALUES (1127998,'Book Inventory',1120329,1130590,'N',22,0,'N','N','N','N',0,0,'Y',TO_DATE('2019-01-27 22:13:03','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-27 22:13:03','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA')
;

-- 27/01/2019 22h13min4s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType) VALUES (1127999,'Active','The record is active in the system','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',1120329,1130580,'N',1,0,'N','N','N','N',0,0,'Y',TO_DATE('2019-01-27 22:13:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-27 22:13:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA')
;

-- 27/01/2019 22h13min4s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType) VALUES (1128000,'Re-Validate','Re-Validate entries',1120329,1130592,'N',1,0,'N','N','N','N',0,0,'Y',TO_DATE('2019-01-27 22:13:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-27 22:13:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Y')
;

-- 27/01/2019 22h13min5s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType) VALUES (1128002,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120329,1130578,'Y',22,10,'N','N','N','N',0,0,'Y',TO_DATE('2019-01-27 22:13:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-27 22:13:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA')
;

-- 27/01/2019 22h13min5s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType) VALUES (1128003,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120329,1130579,'Y',22,20,'N','N','N','N',0,0,'Y',TO_DATE('2019-01-27 22:13:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-27 22:13:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','ac340bc0-c0a7-4577-bc3a-b50b3af6d1d2','Y','Y',10,4,2,1,'N','N','N')
;

-- 27/01/2019 22h13min5s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType) VALUES (1128004,'LBR_SPED_ID',1120329,1131267,'Y',22,30,'N','N','N','N',0,0,'Y',TO_DATE('2019-01-27 22:13:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-27 22:13:05','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA')
;

-- 27/01/2019 22h13min6s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType) VALUES (1128005,'Movement Date','Date a product was moved in or out of inventory','The Movement Date indicates the date that a product moved in or out of inventory.  This is the result of a shipment, receipt or inventory movement.',1120329,1130587,'Y',7,40,'N','N','N','N',0,0,'Y',TO_DATE('2019-01-27 22:13:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-27 22:13:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA')

-- 27/01/2019 22h13min6s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType) VALUES (1128006,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120329,1130585,'Y',22,50,'N','N','N','N',0,0,'Y',TO_DATE('2019-01-27 22:13:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-27 22:13:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA')
;

-- 27/01/2019 22h13min7s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType) VALUES (1128007,'Quantity book','Book Quantity','The Quantity Book indicates the line count stored in the system for a product in inventory',1120329,1130588,'Y',22,60,'N','N','N','N',0,0,'Y',TO_DATE('2019-01-27 22:13:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-27 22:13:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA')
;

-- 27/01/2019 22h13min7s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType) VALUES (1128008,'Warehouse Type','Defines the Warehouse Type',1120329,1130589,'Y',3,70,'N','N','N','N',0,0,'Y',TO_DATE('2019-01-27 22:13:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-27 22:13:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA')
;

-- 27/01/2019 22h13min7s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType) VALUES (1128009,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120329,1130586,'Y',22,80,'N','N','N','N',0,0,'Y',TO_DATE('2019-01-27 22:13:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-27 22:13:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA')
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 27/01/2019 22h24min58s BRST
UPDATE AD_Tab SET AD_Column_ID=1131267, Parent_Column_ID=1124147,Updated=TO_DATE('2019-01-27 22:24:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120328
;

-- 27/01/2019 22h25min12s BRST
UPDATE AD_Tab SET AD_Column_ID=1131267, Parent_Column_ID=1124147,Updated=TO_DATE('2019-01-27 22:25:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120329
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 27/01/2019 23h36min19s BRST
UPDATE AD_Field SET DefaultValue='''N''', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-27 23:36:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127995
;

-- 27/01/2019 23h36min40s BRST
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1128000
;

-- 27/01/2019 23h36min54s BRST
UPDATE AD_Field SET DefaultValue='''Y''', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-27 23:36:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128000
;

-- 27/01/2019 23h37min7s BRST
UPDATE AD_Field SET IsReadOnly='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-27 23:37:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128000
;

-- 27/01/2019 23h37min44s BRST
UPDATE AD_Field SET IsReadOnly='Y', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-27 23:37:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127995
;

-- 27/01/2019 23h38min13s BRST
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2019-01-27 23:38:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130586
;

-- 27/01/2019 23h41min19s BRST
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2019-01-27 23:41:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130587
;

-- 27/01/2019 23h41min24s BRST
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2019-01-27 23:41:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130585
;

-- 27/01/2019 23h41min28s BRST
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2019-01-27 23:41:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130588
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 24/01/2019 10h37min9s BRST
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,Classname,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess,AD_Process_UU) VALUES (1120227,0,0,'Y',TO_DATE('2019-01-24 10:37:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-24 10:37:09','YYYY-MM-DD HH24:MI:SS'),100,'Generated Book Inventory','N','ProcGeneratedBookInv','N','org.adempierelbr.sped.efd.process.ProcGeneratedBookInv','3','LBRA',0,0,'N','N','Y','N','21704ddb-b6b0-4890-ba32-48166a3fd5a3')
;

-- 24/01/2019 10h38min50s BRST
UPDATE AD_Process SET Name='Generate Book Inventory',Updated=TO_DATE('2019-01-24 10:38:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120227
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 27/01/2019 22h42min50s BRST
INSERT INTO AD_ToolBarButton (AD_Client_ID,AD_Org_ID,Created,CreatedBy,ComponentName,IsActive,AD_ToolBarButton_ID,Name,Updated,UpdatedBy,IsCustomization,AD_ToolBarButton_UU,Action,AD_Tab_ID,AD_Process_ID,SeqNo) VALUES (0,0,TO_DATE('2019-01-27 22:42:49','YYYY-MM-DD HH24:MI:SS'),100,'Generate Book Inventory','Y',1120007,'Generate Book Inventory',TO_DATE('2019-01-27 22:42:49','YYYY-MM-DD HH24:MI:SS'),100,'N','74c16839-69fc-4f5f-aaca-e6533fd8edbe','W',1120115,1120227,10)
;

-- 27/01/2019 22h45min24s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,DefaultValue,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID) VALUES (1120460,0,0,'Y',TO_DATE('2019-01-27 22:45:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-27 22:45:23','YYYY-MM-DD HH24:MI:SS'),100,'LBR_SPED_ID',1120227,10,30,'N',0,'N','@LBR_SPED_ID@','LBR_SPED_ID','Y','LBRA',1121261)
;

-- 27/01/2019 22h45min37s BRST
UPDATE AD_Process_Para SET Name='SPED',Updated=TO_DATE('2019-01-27 22:45:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120460
;

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 24/01/2019 17h13min43s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType) VALUES (1127984,'Tipo de atividade','Tipo de atividade','Informar “0 - Industrial ou equiparado a industrial”, se o contribuinte é industrial ou equiparado a industrial, conforme legislação do Imposto sobre Produtos Industrializados (IPI). Se o estabelecimento não se enquadrar no disposto nos art. 8o, 9o., 10o e 11o e cujas operações não se enquadrem dentro do campo de incidência do IPI, conforme parágrafo único do art. 2o, todos do Decreto no 4.544/2002, ainda que seja uma indústria, deve informar a opção "1 - Outras"',170,1126810,'Y',1,20400,'N','N','N','N',0,0,'Y',TO_DATE('2019-01-24 17:13:43','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-24 17:13:43','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA','bd19e07b-a01c-475f-a6ee-7d9b6cafe2b0','Y',400,2)
;

-- 24/01/2019 17h13min44s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType) VALUES (1127985,'Accountant',170,1126812,'Y',10,20410,'N','N','N','N',0,0,'Y',TO_DATE('2019-01-24 17:13:44','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-24 17:13:44','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA')
;

-- 24/01/2019 17h14min13s BRST
UPDATE AD_Field SET SeqNo=110, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-24 17:14:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1315
;

-- 24/01/2019 17h14min14s BRST
UPDATE AD_Field SET SeqNo=120, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-24 17:14:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=56622
;

-- 24/01/2019 17h14min14s BRST
UPDATE AD_Field SET SeqNo=140, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-24 17:14:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=58852
;

-- 24/01/2019 17h14min14s BRST
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-24 17:14:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=57532
;

-- 24/01/2019 17h14min14s BRST
UPDATE AD_Field SET SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-24 17:14:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100002
;

-- 24/01/2019 17h14min14s BRST
UPDATE AD_Field SET SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-24 17:14:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001734
;

-- 24/01/2019 17h14min14s BRST
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-24 17:14:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100000
;

-- 24/01/2019 17h14min14s BRST
UPDATE AD_Field SET SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-24 17:14:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000252
;

-- 24/01/2019 17h14min14s BRST
UPDATE AD_Field SET SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-24 17:14:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000253
;

-- 24/01/2019 17h14min14s BRST
UPDATE AD_Field SET SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-24 17:14:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000251
;

-- 24/01/2019 17h14min14s BRST
UPDATE AD_Field SET SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-24 17:14:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000255
;

-- 24/01/2019 17h14min14s BRST
UPDATE AD_Field SET SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-24 17:14:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100036
;

-- 24/01/2019 17h14min14s BRST
UPDATE AD_Field SET SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-24 17:14:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120010
;

-- 24/01/2019 17h14min14s BRST
UPDATE AD_Field SET SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-24 17:14:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000250
;

-- 24/01/2019 17h14min14s BRST
UPDATE AD_Field SET SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-24 17:14:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000254
;

-- 24/01/2019 17h14min14s BRST
UPDATE AD_Field SET SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-24 17:14:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124849
;

-- 24/01/2019 17h14min14s BRST
UPDATE AD_Field SET SeqNo=300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-24 17:14:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124168
;

-- 24/01/2019 17h14min14s BRST
UPDATE AD_Field SET SeqNo=310, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-24 17:14:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100020
;

-- 24/01/2019 17h14min14s BRST
UPDATE AD_Field SET SeqNo=320, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-24 17:14:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100021
;

-- 24/01/2019 17h14min14s BRST
UPDATE AD_Field SET SeqNo=330, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-24 17:14:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120274
;

-- 24/01/2019 17h14min14s BRST
UPDATE AD_Field SET SeqNo=340, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-24 17:14:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120273
;

-- 24/01/2019 17h14min14s BRST
UPDATE AD_Field SET SeqNo=350, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-24 17:14:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127984
;

-- 24/01/2019 17h14min14s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=360, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-24 17:14:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127985
;

-- 24/01/2019 17h14min14s BRST
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-24 17:14:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=204544
;

-- 24/01/2019 17h14min14s BRST
UPDATE AD_Field SET SeqNo=0, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_DATE('2019-01-24 17:14:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000257
;

-- 13/02/2019 14h9min0s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2019-02-13 14:09:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127987
;

-- 13/02/2019 14h9min5s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2019-02-13 14:09:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127990
;

-- 13/02/2019 14h9min9s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2019-02-13 14:09:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127991
;

-- 13/02/2019 14h9min13s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2019-02-13 14:09:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127989
;

-- 13/02/2019 14h9min42s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2019-02-13 14:09:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128003
;

-- 13/02/2019 14h9min45s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2019-02-13 14:09:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128005
;

-- 13/02/2019 14h9min48s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2019-02-13 14:09:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128007
;

-- 13/02/2019 14h9min53s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2019-02-13 14:09:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128009
;

-- 13/02/2019 14h22min12s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Trl SET IsTranslated='Y',Name='Gerar Estoque Escriturado',Description='Gerar Estoque Escriturado',Updated=TO_DATE('2019-02-13 14:22:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120227 AND AD_Language='pt_BR'
;

-- 13/02/2019 14h22min31s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET DisplayLogic='1=2',Updated=TO_DATE('2019-02-13 14:22:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120460
;

-- 13/02/2019 14h23min11s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1131411,1491,0,1120227,28,1120328,'GenerateTo',TO_DATE('2019-02-13 14:23:11','YYYY-MM-DD HH24:MI:SS'),100,'Generate To','LBRA',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Generate To',0,TO_DATE('2019-02-13 14:23:11','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/02/2019 14h23min11s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131411 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/02/2019 14h23min25s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_SPED ADD GenerateTo CHAR(10) DEFAULT NULL 
;

-- 13/02/2019 15h29min51s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,200016,200001,0,1120115,TO_DATE('2019-02-13 15:29:51','YYYY-MM-DD HH24:MI:SS'),100,'Generate To',10,'LBRA','Y','Y','Y','N','N','N','N','Y','Generate To',TO_DATE('2019-02-13 15:29:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/02/2019 15h29min51s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=200001 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

SELECT Register_Migration_Script ('201901281700_GenerateInventorySPEDBlocoK.sql') FROM DUAL
;
