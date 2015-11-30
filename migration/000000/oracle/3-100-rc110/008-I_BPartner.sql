-- 21/01/2009 14h32min17s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001012,109,0,18,327,533,'AD_Language',TO_TIMESTAMP('2009-01-21 14:32:17','YYYY-MM-DD HH24:MI:SS'),100,'Language for this entity','LBRA',6,'The Language identifies the language to use for display and formatting','Y','N','N','N','N','N','N','N','N','N','Y','Language',0,TO_TIMESTAMP('2009-01-21 14:32:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 21/01/2009 14h32min17s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001012 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 21/01/2009 14h32min18s BRST
-- Default comment for updating dictionary
ALTER TABLE I_BPartner ADD AD_Language VARCHAR(6)
;

-- 21/01/2009 14h33min23s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001013,1000008,0,17,1000000,533,'lbr_BPTypeBR',TO_TIMESTAMP('2009-01-21 14:33:23','YYYY-MM-DD HH24:MI:SS'),100,'Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)','LBRA',2,'Used to identify if the Business partner is a legal entity or an individual','Y','N','N','N','N','N','N','N','N','N','Y','Brazilian BP Type',0,TO_TIMESTAMP('2009-01-21 14:33:23','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 21/01/2009 14h33min23s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001013 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 21/01/2009 14h33min24s BRST
-- Default comment for updating dictionary
ALTER TABLE I_BPartner ADD lbr_BPTypeBR VARCHAR(2)
;

-- 21/01/2009 14h34min20s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,VFormat,Version) VALUES (0,1001014,1000009,0,10,533,'lbr_CNPJ',TO_TIMESTAMP('2009-01-21 14:34:20','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify Legal Entities in Brazil','LBRA',18,'Used to identify Legal Entities in Brazil','Y','N','N','N','N','N','N','N','N','N','Y','CNPJ',0,TO_TIMESTAMP('2009-01-21 14:34:20','YYYY-MM-DD HH24:MI:SS'),100,'00.000.000/0000-00',0)
;

-- 21/01/2009 14h34min20s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001014 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 21/01/2009 14h34min21s BRST
-- Default comment for updating dictionary
ALTER TABLE I_BPartner ADD lbr_CNPJ VARCHAR(18)
;

-- 21/01/2009 14h35min24s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,VFormat,Version) VALUES (0,1001015,1000010,0,10,533,'lbr_CPF',TO_TIMESTAMP('2009-01-21 14:35:24','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify individuals in Brazil','LBRA',14,'Used to identify individuals in Brazil','Y','N','N','N','N','N','N','N','N','N','Y','CPF',0,TO_TIMESTAMP('2009-01-21 14:35:24','YYYY-MM-DD HH24:MI:SS'),100,'000.000.000-00',0)
;

-- 21/01/2009 14h35min24s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001015 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 21/01/2009 14h35min25s BRST
-- Default comment for updating dictionary
ALTER TABLE I_BPartner ADD lbr_CPF VARCHAR(14)
;

-- 21/01/2009 14h36min21s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001016,1000014,0,10,533,'lbr_IE',TO_TIMESTAMP('2009-01-21 14:36:21','YYYY-MM-DD HH24:MI:SS'),100,'Used to Identify the IE (State Tax ID)','U',30,'Used to Identify the IE (State Tax ID)','Y','N','N','N','N','N','N','N','N','N','Y','IE',0,TO_TIMESTAMP('2009-01-21 14:36:21','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 21/01/2009 14h36min21s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001016 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 21/01/2009 14h36min22s BRST
-- Default comment for updating dictionary
ALTER TABLE I_BPartner ADD lbr_IE VARCHAR(30)
;

-- 21/01/2009 14h36min44s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_TIMESTAMP('2009-01-21 14:36:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1001016
;

-- 21/01/2009 14h36min59s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001017,1000012,0,10,533,'lbr_CCM',TO_TIMESTAMP('2009-01-21 14:36:59','YYYY-MM-DD HH24:MI:SS'),100,'City Identification Code used in Brazil (City Tax ID)','LBRA',30,'City Identification Code used in Brazil (City Tax ID)','Y','N','N','N','N','N','N','N','N','N','Y','CCM',0,TO_TIMESTAMP('2009-01-21 14:36:59','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 21/01/2009 14h36min59s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001017 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 21/01/2009 14h37min1s BRST
-- Default comment for updating dictionary
ALTER TABLE I_BPartner ADD lbr_CCM VARCHAR(30)
;

-- 21/01/2009 14h37min47s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001018,1000011,0,10,533,'lbr_RG',TO_TIMESTAMP('2009-01-21 14:37:47','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify individuals in Brazil','LBRA',30,'Used to identify individuals in Brazil','Y','N','N','N','N','N','N','N','N','N','Y','RG',0,TO_TIMESTAMP('2009-01-21 14:37:47','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 21/01/2009 14h37min47s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001018 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 21/01/2009 14h37min49s BRST
-- Default comment for updating dictionary
ALTER TABLE I_BPartner ADD lbr_RG VARCHAR(30)
;

-- 21/01/2009 14h38min56s BRST
-- Default comment for updating dictionary
-- INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001019,426,0,20,533,'IsVendor',TO_TIMESTAMP('2009-01-21 14:38:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Indicates if this Business Partner is a Vendor','LBRA',1,'The Vendor checkbox indicates if this Business Partner is a Vendor.  If it is selected, additional fields will display which further identify this vendor.','Y','N','N','N','N','Y','N','N','N','N','Y','Vendor',0,TO_TIMESTAMP('2009-01-21 14:38:56','YYYY-MM-DD HH24:MI:SS'),100,0)
-- ;

-- 21/01/2009 14h38min56s BRST
-- Default comment for updating dictionary
-- INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001019 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
-- ;

-- 21/01/2009 14h38min57s BRST
-- Default comment for updating dictionary
-- ALTER TABLE I_BPartner ADD IsVendor CHAR(1) DEFAULT 'N' CHECK (IsVendor IN ('Y','N')) NOT NULL
-- ;

-- 21/01/2009 14h39min22s BRST
-- Default comment for updating dictionary
-- INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001020,364,0,20,533,'IsCustomer',TO_TIMESTAMP('2009-01-21 14:39:22','YYYY-MM-DD HH24:MI:SS'),100,'N','Indicates if this Business Partner is a Customer','LBRA',1,'The Customer checkbox indicates if this Business Partner is a customer.  If it is select additional fields will display which further define this customer.','Y','N','N','N','N','Y','N','N','N','N','Y','Customer',0,TO_TIMESTAMP('2009-01-21 14:39:22','YYYY-MM-DD HH24:MI:SS'),100,0)
-- ;

-- 21/01/2009 14h39min22s BRST
-- Default comment for updating dictionary
-- INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001020 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
-- ;

-- 21/01/2009 14h39min23s BRST
-- Default comment for updating dictionary
-- ALTER TABLE I_BPartner ADD IsCustomer CHAR(1) DEFAULT 'N' CHECK (IsCustomer IN ('Y','N')) NOT NULL
-- ;

-- 21/01/2009 14h39min56s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001021,409,0,20,533,'IsSalesRep',TO_TIMESTAMP('2009-01-21 14:39:56','YYYY-MM-DD HH24:MI:SS'),100,'N','Indicates if  the business partner is a sales representative or company agent','LBRA',1,'The Sales Rep checkbox indicates if this business partner is a sales representative. A sales representative may also be an emplyee, but does not need to be.','Y','N','N','N','N','Y','N','N','N','N','Y','Sales Representative',0,TO_TIMESTAMP('2009-01-21 14:39:56','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 21/01/2009 14h39min56s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001021 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 21/01/2009 14h39min57s BRST
-- Default comment for updating dictionary
ALTER TABLE I_BPartner ADD IsSalesRep CHAR(1) DEFAULT 'N' CHECK (IsSalesRep IN ('Y','N')) NOT NULL
;

-- 21/01/2009 14h40min20s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001013,1000987,0,441,TO_TIMESTAMP('2009-01-21 14:40:20','YYYY-MM-DD HH24:MI:SS'),100,'Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)',2,'LBRA','Used to identify if the Business partner is a legal entity or an individual','Y','Y','Y','N','N','N','N','N','Brazilian BP Type',TO_TIMESTAMP('2009-01-21 14:40:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/01/2009 14h40min20s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000987 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 21/01/2009 14h40min20s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001017,1000988,0,441,TO_TIMESTAMP('2009-01-21 14:40:20','YYYY-MM-DD HH24:MI:SS'),100,'City Identification Code used in Brazil (City Tax ID)',30,'LBRA','City Identification Code used in Brazil (City Tax ID)','Y','Y','Y','N','N','N','N','N','CCM',TO_TIMESTAMP('2009-01-21 14:40:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/01/2009 14h40min20s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000988 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 21/01/2009 14h40min20s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001014,1000989,0,441,TO_TIMESTAMP('2009-01-21 14:40:20','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify Legal Entities in Brazil',18,'LBRA','Used to identify Legal Entities in Brazil','Y','Y','Y','N','N','N','N','N','CNPJ',TO_TIMESTAMP('2009-01-21 14:40:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/01/2009 14h40min20s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000989 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 21/01/2009 14h40min20s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001015,1000990,0,441,TO_TIMESTAMP('2009-01-21 14:40:20','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify individuals in Brazil',14,'LBRA','Used to identify individuals in Brazil','Y','Y','Y','N','N','N','N','N','CPF',TO_TIMESTAMP('2009-01-21 14:40:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/01/2009 14h40min20s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000990 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 21/01/2009 14h40min20s BRST
-- Default comment for updating dictionary
-- INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001020,1000991,0,441,TO_TIMESTAMP('2009-01-21 14:40:20','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if this Business Partner is a Customer',1,'LBRA','The Customer checkbox indicates if this Business Partner is a customer.  If it is select additional fields will display which further define this customer.','Y','Y','Y','N','N','N','N','N','Customer',TO_TIMESTAMP('2009-01-21 14:40:20','YYYY-MM-DD HH24:MI:SS'),100)
-- ;

-- 21/01/2009 14h40min20s BRST
-- Default comment for updating dictionary
-- INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000991 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
-- ;

-- 21/01/2009 14h40min21s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001016,1000992,0,441,TO_TIMESTAMP('2009-01-21 14:40:20','YYYY-MM-DD HH24:MI:SS'),100,'Used to Identify the IE (State Tax ID)',30,'LBRA','Used to Identify the IE (State Tax ID)','Y','Y','Y','N','N','N','N','N','IE',TO_TIMESTAMP('2009-01-21 14:40:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/01/2009 14h40min21s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000992 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 21/01/2009 14h40min21s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001012,1000993,0,441,TO_TIMESTAMP('2009-01-21 14:40:21','YYYY-MM-DD HH24:MI:SS'),100,'Language for this entity',6,'LBRA','The Language identifies the language to use for display and formatting','Y','Y','Y','N','N','N','N','N','Language',TO_TIMESTAMP('2009-01-21 14:40:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/01/2009 14h40min21s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000993 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 21/01/2009 14h40min21s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001018,1000994,0,441,TO_TIMESTAMP('2009-01-21 14:40:21','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify individuals in Brazil',30,'LBRA','Used to identify individuals in Brazil','Y','Y','Y','N','N','N','N','N','RG',TO_TIMESTAMP('2009-01-21 14:40:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/01/2009 14h40min21s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000994 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 21/01/2009 14h40min21s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001021,1000995,0,441,TO_TIMESTAMP('2009-01-21 14:40:21','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if  the business partner is a sales representative or company agent',1,'LBRA','The Sales Rep checkbox indicates if this business partner is a sales representative. A sales representative may also be an emplyee, but does not need to be.','Y','Y','Y','N','N','N','N','N','Sales Representative',TO_TIMESTAMP('2009-01-21 14:40:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/01/2009 14h40min21s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000995 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 21/01/2009 14h40min21s BRST
-- Default comment for updating dictionary
-- INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001019,1000996,0,441,TO_TIMESTAMP('2009-01-21 14:40:21','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if this Business Partner is a Vendor',1,'LBRA','The Vendor checkbox indicates if this Business Partner is a Vendor.  If it is selected, additional fields will display which further identify this vendor.','Y','Y','Y','N','N','N','N','N','Vendor',TO_TIMESTAMP('2009-01-21 14:40:21','YYYY-MM-DD HH24:MI:SS'),100)
-- ;

-- 21/01/2009 14h40min21s BRST
-- Default comment for updating dictionary
-- INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000996 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
-- ;

-- 21/01/2009 14h40min58s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=1000993
;

-- 21/01/2009 14h40min58s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=1000987
;

-- 21/01/2009 14h40min58s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=1000989
;

-- 21/01/2009 14h40min58s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=1000988
;

-- 21/01/2009 14h40min58s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=1000990
;

-- 21/01/2009 14h40min58s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=1000994
;

-- 21/01/2009 14h40min58s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=1000992
;

-- 21/01/2009 14h40min58s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=1000991
;

-- 21/01/2009 14h40min58s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=1000996
;

-- 21/01/2009 14h40min58s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=1000995
;

-- 21/01/2009 14h41min8s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000000,Updated=TO_TIMESTAMP('2009-01-21 14:41:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000993
;

-- 21/01/2009 14h41min12s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000000, IsSameLine='Y',Updated=TO_TIMESTAMP('2009-01-21 14:41:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000987
;

-- 21/01/2009 14h41min15s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000000,Updated=TO_TIMESTAMP('2009-01-21 14:41:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000989
;

-- 21/01/2009 14h41min20s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000000, IsSameLine='Y',Updated=TO_TIMESTAMP('2009-01-21 14:41:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000988
;

-- 21/01/2009 14h41min23s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000000,Updated=TO_TIMESTAMP('2009-01-21 14:41:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000990
;

-- 21/01/2009 14h41min26s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000000,Updated=TO_TIMESTAMP('2009-01-21 14:41:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000994
;

-- 21/01/2009 14h41min28s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000000,Updated=TO_TIMESTAMP('2009-01-21 14:41:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000992
;

-- 21/01/2009 14h41min32s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2009-01-21 14:41:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000994
;

-- 21/01/2009 14h41min40s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000000,Updated=TO_TIMESTAMP('2009-01-21 14:41:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000991
;

-- 21/01/2009 14h41min44s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000000, IsSameLine='Y',Updated=TO_TIMESTAMP('2009-01-21 14:41:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000996
;

-- 21/01/2009 14h41min47s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000000,Updated=TO_TIMESTAMP('2009-01-21 14:41:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000995
;

-- 21/01/2009 14h44min1s BRST
-- Default comment for updating dictionary
UPDATE AD_SysConfig SET Value='100-trunk/008-I_BPartner.sql',Updated=TO_TIMESTAMP('2009-01-21 14:44:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_SysConfig_ID=1100006
;

exit
