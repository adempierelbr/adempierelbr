-- Jun 30, 2008 5:11:52 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,2000000,109,0,18,106,533,'AD_Language',TO_DATE('2008-06-30 17:11:51','YYYY-MM-DD HH24:MI:SS'),100,'Language for this entity','U',6,'The Language identifies the language to use for display and formatting','Y','N','N','N','N','N','N','N','N','N','Y','Language',0,TO_DATE('2008-06-30 17:11:51','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 30, 2008 5:11:52 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=2000000 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- Jun 30, 2008 5:16:48 PM BRT
-- Default comment for updating dictionary
ALTER TABLE I_BPartner ADD AD_Language VARCHAR2(6)
;

-- Jun 30, 2008 5:18:34 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,2000001,2555,0,14,533,'Address3',TO_DATE('2008-06-30 17:18:34','YYYY-MM-DD HH24:MI:SS'),100,'Address Line 3 for the location','U',60,'The Address 2 provides additional address information for an entity.  It can be used for building location, apartment number or similar information.','Y','N','N','N','N','N','N','N','N','N','Y','Address 3',0,TO_DATE('2008-06-30 17:18:34','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 30, 2008 5:18:34 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=2000001 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- Jun 30, 2008 5:19:32 PM BRT
-- Default comment for updating dictionary
ALTER TABLE I_BPartner ADD Address3 NVARCHAR2(60)
;

-- Jun 30, 2008 5:20:38 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,2000002,2556,0,14,533,'Address4',TO_DATE('2008-06-30 17:20:38','YYYY-MM-DD HH24:MI:SS'),100,'Address Line 4 for the location','U',60,'The Address 4 provides additional address information for an entity.  It can be used for building location, apartment number or similar information.','Y','N','N','N','N','N','N','N','N','N','Y','Address 4',0,TO_DATE('2008-06-30 17:20:38','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 30, 2008 5:20:38 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=2000002 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- Jun 30, 2008 5:20:45 PM BRT
-- Default comment for updating dictionary
ALTER TABLE I_BPartner ADD Address4 NVARCHAR2(60)
;

-- Jun 30, 2008 5:21:50 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,2000003,364,0,10,533,'IsCustomer',TO_DATE('2008-06-30 17:21:50','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if this Business Partner is a Customer','U',1,'The Customer checkbox indicates if this Business Partner is a customer.  If it is select additional fields will display which further define this customer.','Y','N','N','N','N','N','N','N','N','N','Y','Customer',0,TO_DATE('2008-06-30 17:21:50','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 30, 2008 5:21:50 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=2000003 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- Jun 30, 2008 5:22:49 PM BRT
-- Default comment for updating dictionary
ALTER TABLE I_BPartner ADD IsCustomer NVARCHAR2(1)
;

-- Jun 30, 2008 5:23:45 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,2000004,409,0,10,533,'IsSalesRep',TO_DATE('2008-06-30 17:23:44','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if  the business partner is a sales representative or company agent','U',1,'The Sales Rep checkbox indicates if this business partner is a sales representative. A sales representative may also be an emplyee, but does not need to be.','Y','N','N','N','N','N','N','N','N','N','Y','Sales Representative',0,TO_DATE('2008-06-30 17:23:44','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 30, 2008 5:23:45 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=2000004 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- Jun 30, 2008 5:23:48 PM BRT
-- Default comment for updating dictionary
ALTER TABLE I_BPartner ADD IsSalesRep NVARCHAR2(1)
;

-- Jun 30, 2008 5:24:03 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,2000005,426,0,10,533,'IsVendor',TO_DATE('2008-06-30 17:24:02','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if this Business Partner is a Vendor','U',1,'The Vendor checkbox indicates if this Business Partner is a Vendor.  If it is selected, additional fields will display which further identify this vendor.','Y','N','N','N','N','N','N','N','N','N','Y','Vendor',0,TO_DATE('2008-06-30 17:24:02','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 30, 2008 5:24:03 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=2000005 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- Jun 30, 2008 5:24:11 PM BRT
-- Default comment for updating dictionary
ALTER TABLE I_BPartner ADD IsVendor NVARCHAR2(1)
;

-- Jun 30, 2008 5:27:21 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,2000006,1000008,0,17,1000000,533,'lbr_BPTypeBR',TO_DATE('2008-06-30 17:27:20','YYYY-MM-DD HH24:MI:SS'),100,'Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)','U',2,'Used to identify if the Business partner is a legal entity or an individual','Y','N','N','N','N','N','N','N','N','N','Y','Brazilian BP Type',0,TO_DATE('2008-06-30 17:27:20','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 30, 2008 5:27:21 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=2000006 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- Jun 30, 2008 5:27:29 PM BRT
-- Default comment for updating dictionary
ALTER TABLE I_BPartner ADD lbr_BPTypeBR NVARCHAR2(2)
;

-- Jun 30, 2008 5:28:25 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,2000007,1000012,0,10,533,'lbr_CCM',TO_DATE('2008-06-30 17:28:25','YYYY-MM-DD HH24:MI:SS'),100,'City Identification Code used in Brazil (City Tax ID)','U',30,'City Identification Code used in Brazil (City Tax ID)','Y','N','N','N','N','N','N','N','N','N','Y','CCM',0,TO_DATE('2008-06-30 17:28:25','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 30, 2008 5:28:25 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=2000007 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- Jun 30, 2008 5:28:42 PM BRT
-- Default comment for updating dictionary
ALTER TABLE I_BPartner ADD lbr_CCM NVARCHAR2(30)
;

-- Jun 30, 2008 5:29:41 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,2000008,1000009,0,10,533,'lbr_CNPJ',TO_DATE('2008-06-30 17:29:41','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify Legal Entities in Brazil','U',18,'Used to identify Legal Entities in Brazil','Y','N','N','N','N','N','N','N','N','N','Y','CNPJ',0,TO_DATE('2008-06-30 17:29:41','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 30, 2008 5:29:41 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=2000008 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- Jun 30, 2008 5:30:07 PM BRT
-- Default comment for updating dictionary
ALTER TABLE I_BPartner ADD lbr_CNPJ NVARCHAR2(18)
;

-- Jun 30, 2008 5:31:01 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,2000009,1000010,0,10,533,'lbr_CPF',TO_DATE('2008-06-30 17:31:00','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify individuals in Brazil','U',14,'Used to identify individuals in Brazil','Y','N','N','N','N','N','N','N','N','N','Y','CPF',0,TO_DATE('2008-06-30 17:31:00','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 30, 2008 5:31:01 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=2000009 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- Jun 30, 2008 5:31:14 PM BRT
-- Default comment for updating dictionary
ALTER TABLE I_BPartner ADD lbr_CPF NVARCHAR2(14)
;

-- Jun 30, 2008 5:31:51 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,2000010,1000014,0,10,533,'lbr_IE',TO_DATE('2008-06-30 17:31:51','YYYY-MM-DD HH24:MI:SS'),100,'Used to Identify the IE (State Tax ID)','U',30,'Used to Identify the IE (State Tax ID)','Y','N','N','N','N','N','N','N','N','N','Y','IE',0,TO_DATE('2008-06-30 17:31:51','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 30, 2008 5:31:51 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=2000010 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- Jun 30, 2008 5:31:54 PM BRT
-- Default comment for updating dictionary
ALTER TABLE I_BPartner ADD lbr_IE NVARCHAR2(30)
;

-- Jun 30, 2008 5:32:34 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,2000011,1000011,0,10,533,'lbr_RG',TO_DATE('2008-06-30 17:32:34','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify individuals in Brazil','U',30,'Used to identify individuals in Brazil','Y','N','N','N','N','N','N','N','N','N','Y','RG',0,TO_DATE('2008-06-30 17:32:34','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 30, 2008 5:32:34 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=2000011 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- Jun 30, 2008 5:32:37 PM BRT
-- Default comment for updating dictionary
ALTER TABLE I_BPartner ADD lbr_RG NVARCHAR2(30)
;

-- Jun 30, 2008 5:33:21 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2008-06-30 17:33:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=2000000
;

-- Jun 30, 2008 5:33:21 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Language', Description='Language for this entity', Help='The Language identifies the language to use for display and formatting' WHERE AD_Column_ID=2000000 AND IsCentrallyMaintained='Y'
;

-- Jun 30, 2008 5:33:30 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2008-06-30 17:33:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=2000001
;

-- Jun 30, 2008 5:33:30 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Address 3', Description='Address Line 3 for the location', Help='The Address 2 provides additional address information for an entity.  It can be used for building location, apartment number or similar information.' WHERE AD_Column_ID=2000001 AND IsCentrallyMaintained='Y'
;

-- Jun 30, 2008 5:33:36 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2008-06-30 17:33:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=2000002
;

-- Jun 30, 2008 5:33:36 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Address 4', Description='Address Line 4 for the location', Help='The Address 4 provides additional address information for an entity.  It can be used for building location, apartment number or similar information.' WHERE AD_Column_ID=2000002 AND IsCentrallyMaintained='Y'
;

-- Jun 30, 2008 5:33:52 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2008-06-30 17:33:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=2000003
;

-- Jun 30, 2008 5:33:52 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Customer', Description='Indicates if this Business Partner is a Customer', Help='The Customer checkbox indicates if this Business Partner is a customer.  If it is select additional fields will display which further define this customer.' WHERE AD_Column_ID=2000003 AND IsCentrallyMaintained='Y'
;

-- Jun 30, 2008 5:33:54 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2008-06-30 17:33:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=2000004
;

-- Jun 30, 2008 5:33:54 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Sales Representative', Description='Indicates if  the business partner is a sales representative or company agent', Help='The Sales Rep checkbox indicates if this business partner is a sales representative. A sales representative may also be an emplyee, but does not need to be.' WHERE AD_Column_ID=2000004 AND IsCentrallyMaintained='Y'
;

-- Jun 30, 2008 5:33:56 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2008-06-30 17:33:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=2000005
;

-- Jun 30, 2008 5:33:56 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Vendor', Description='Indicates if this Business Partner is a Vendor', Help='The Vendor checkbox indicates if this Business Partner is a Vendor.  If it is selected, additional fields will display which further identify this vendor.' WHERE AD_Column_ID=2000005 AND IsCentrallyMaintained='Y'
;

-- Jun 30, 2008 5:33:58 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2008-06-30 17:33:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=2000006
;

-- Jun 30, 2008 5:33:58 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Brazilian BP Type', Description='Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)', Help='Used to identify if the Business partner is a legal entity or an individual' WHERE AD_Column_ID=2000006 AND IsCentrallyMaintained='Y'
;

-- Jun 30, 2008 5:33:59 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2008-06-30 17:33:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=2000007
;

-- Jun 30, 2008 5:33:59 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='CCM', Description='City Identification Code used in Brazil (City Tax ID)', Help='City Identification Code used in Brazil (City Tax ID)' WHERE AD_Column_ID=2000007 AND IsCentrallyMaintained='Y'
;

-- Jun 30, 2008 5:34:01 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2008-06-30 17:34:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=2000008
;

-- Jun 30, 2008 5:34:01 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='CNPJ', Description='Used to identify Legal Entities in Brazil', Help='Used to identify Legal Entities in Brazil' WHERE AD_Column_ID=2000008 AND IsCentrallyMaintained='Y'
;

-- Jun 30, 2008 5:34:04 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2008-06-30 17:34:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=2000009
;

-- Jun 30, 2008 5:34:04 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='CPF', Description='Used to identify individuals in Brazil', Help='Used to identify individuals in Brazil' WHERE AD_Column_ID=2000009 AND IsCentrallyMaintained='Y'
;

-- Jun 30, 2008 5:34:06 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2008-06-30 17:34:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=2000010
;

-- Jun 30, 2008 5:34:06 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='IE', Description='Used to Identify the IE (State Tax ID)', Help='Used to Identify the IE (State Tax ID)' WHERE AD_Column_ID=2000010 AND IsCentrallyMaintained='Y'
;

-- Jun 30, 2008 5:34:09 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2008-06-30 17:34:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=2000011
;

-- Jun 30, 2008 5:34:09 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='RG', Description='Used to identify individuals in Brazil', Help='Used to identify individuals in Brazil' WHERE AD_Column_ID=2000011 AND IsCentrallyMaintained='Y'
;

-- Jun 30, 2008 5:35:50 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,2000001,2000000,0,441,TO_DATE('2008-06-30 17:35:49','YYYY-MM-DD HH24:MI:SS'),100,'Address Line 3 for the location',60,'LBRA','The Address 2 provides additional address information for an entity.  It can be used for building location, apartment number or similar information.','Y','Y','Y','N','N','N','N','N','Address 3',TO_DATE('2008-06-30 17:35:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 30, 2008 5:35:50 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=2000000 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- Jun 30, 2008 5:35:50 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,2000002,2000001,0,441,TO_DATE('2008-06-30 17:35:50','YYYY-MM-DD HH24:MI:SS'),100,'Address Line 4 for the location',60,'LBRA','The Address 4 provides additional address information for an entity.  It can be used for building location, apartment number or similar information.','Y','Y','Y','N','N','N','N','N','Address 4',TO_DATE('2008-06-30 17:35:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 30, 2008 5:35:50 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=2000001 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- Jun 30, 2008 5:35:50 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,2000006,2000002,0,441,TO_DATE('2008-06-30 17:35:50','YYYY-MM-DD HH24:MI:SS'),100,'Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)',2,'LBRA','Used to identify if the Business partner is a legal entity or an individual','Y','Y','Y','N','N','N','N','N','Brazilian BP Type',TO_DATE('2008-06-30 17:35:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 30, 2008 5:35:50 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=2000002 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- Jun 30, 2008 5:35:51 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,2000007,2000003,0,441,TO_DATE('2008-06-30 17:35:50','YYYY-MM-DD HH24:MI:SS'),100,'City Identification Code used in Brazil (City Tax ID)',30,'LBRA','City Identification Code used in Brazil (City Tax ID)','Y','Y','Y','N','N','N','N','N','CCM',TO_DATE('2008-06-30 17:35:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 30, 2008 5:35:51 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=2000003 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- Jun 30, 2008 5:35:51 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,2000008,2000004,0,441,TO_DATE('2008-06-30 17:35:51','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify Legal Entities in Brazil',18,'LBRA','Used to identify Legal Entities in Brazil','Y','Y','Y','N','N','N','N','N','CNPJ',TO_DATE('2008-06-30 17:35:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 30, 2008 5:35:51 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=2000004 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- Jun 30, 2008 5:35:51 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,2000009,2000005,0,441,TO_DATE('2008-06-30 17:35:51','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify individuals in Brazil',14,'LBRA','Used to identify individuals in Brazil','Y','Y','Y','N','N','N','N','N','CPF',TO_DATE('2008-06-30 17:35:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 30, 2008 5:35:51 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=2000005 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- Jun 30, 2008 5:35:51 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,2000003,2000006,0,441,TO_DATE('2008-06-30 17:35:51','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if this Business Partner is a Customer',1,'LBRA','The Customer checkbox indicates if this Business Partner is a customer.  If it is select additional fields will display which further define this customer.','Y','Y','Y','N','N','N','N','N','Customer',TO_DATE('2008-06-30 17:35:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 30, 2008 5:35:51 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=2000006 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- Jun 30, 2008 5:35:52 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,2000010,2000007,0,441,TO_DATE('2008-06-30 17:35:51','YYYY-MM-DD HH24:MI:SS'),100,'Used to Identify the IE (State Tax ID)',30,'LBRA','Used to Identify the IE (State Tax ID)','Y','Y','Y','N','N','N','N','N','IE',TO_DATE('2008-06-30 17:35:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 30, 2008 5:35:52 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=2000007 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- Jun 30, 2008 5:35:52 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,2000000,2000008,0,441,TO_DATE('2008-06-30 17:35:52','YYYY-MM-DD HH24:MI:SS'),100,'Language for this entity',6,'LBRA','The Language identifies the language to use for display and formatting','Y','Y','Y','N','N','N','N','N','Language',TO_DATE('2008-06-30 17:35:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 30, 2008 5:35:52 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=2000008 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- Jun 30, 2008 5:35:52 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,2000011,2000009,0,441,TO_DATE('2008-06-30 17:35:52','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify individuals in Brazil',30,'LBRA','Used to identify individuals in Brazil','Y','Y','Y','N','N','N','N','N','RG',TO_DATE('2008-06-30 17:35:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 30, 2008 5:35:52 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=2000009 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- Jun 30, 2008 5:35:53 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,2000004,2000010,0,441,TO_DATE('2008-06-30 17:35:52','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if  the business partner is a sales representative or company agent',1,'LBRA','The Sales Rep checkbox indicates if this business partner is a sales representative. A sales representative may also be an emplyee, but does not need to be.','Y','Y','Y','N','N','N','N','N','Sales Representative',TO_DATE('2008-06-30 17:35:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 30, 2008 5:35:53 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=2000010 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- Jun 30, 2008 5:35:53 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,2000005,2000011,0,441,TO_DATE('2008-06-30 17:35:53','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if this Business Partner is a Vendor',1,'LBRA','The Vendor checkbox indicates if this Business Partner is a Vendor.  If it is selected, additional fields will display which further identify this vendor.','Y','Y','Y','N','N','N','N','N','Vendor',TO_DATE('2008-06-30 17:35:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 30, 2008 5:35:53 PM BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=2000011 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- Jun 30, 2008 5:40:16 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=2000000
;

-- Jun 30, 2008 5:40:16 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=2000001
;

-- Jun 30, 2008 5:40:16 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=2000002
;

-- Jun 30, 2008 5:40:16 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=2000008
;

-- Jun 30, 2008 5:40:16 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=2000004
;

-- Jun 30, 2008 5:40:16 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=2000005
;

-- Jun 30, 2008 5:40:16 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=2000003
;

-- Jun 30, 2008 5:40:16 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=2000007
;

-- Jun 30, 2008 5:40:16 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=2000009
;

-- Jun 30, 2008 5:40:16 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=2000006
;

-- Jun 30, 2008 5:40:16 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=2000011
;

-- Jun 30, 2008 5:40:16 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=540,IsDisplayed='Y' WHERE AD_Field_ID=2000010
;

-- Jun 30, 2008 5:40:30 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2008-06-30 17:40:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2000008
;

-- Jun 30, 2008 5:40:45 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2008-06-30 17:40:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2000005
;

-- Jun 30, 2008 5:40:55 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2008-06-30 17:40:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2000011
;

-- Jun 30, 2008 5:41:05 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000000,Updated=TO_DATE('2008-06-30 17:41:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2000000
;

-- Jun 30, 2008 5:41:48 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Reference_ID=10,Updated=TO_DATE('2008-06-30 17:41:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=2000001
;

-- Jun 30, 2008 5:41:48 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Address 3', Description='Address Line 3 for the location', Help='The Address 2 provides additional address information for an entity.  It can be used for building location, apartment number or similar information.' WHERE AD_Column_ID=2000001 AND IsCentrallyMaintained='Y'
;

-- Jun 30, 2008 5:41:53 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Reference_ID=10,Updated=TO_DATE('2008-06-30 17:41:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=2000002
;

-- Jun 30, 2008 5:41:53 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Address 4', Description='Address Line 4 for the location', Help='The Address 4 provides additional address information for an entity.  It can be used for building location, apartment number or similar information.' WHERE AD_Column_ID=2000002 AND IsCentrallyMaintained='Y'
;

