-- 06/08/2008 10h18min32s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Column_ID,AD_Table_ID,EntityType,Version,IsMandatory,IsTranslated,IsIdentifier,SeqNo,CreatedBy,Updated,ColumnName,Help,IsParent,AD_Client_ID,AD_Org_ID,Description,Name,IsActive,FieldLength,IsSelectionColumn,AD_Reference_ID,IsSyncDatabase,Created,IsUpdateable,IsKey,AD_Element_ID,UpdatedBy,IsEncrypted,IsAlwaysUpdateable) VALUES (1000952,260,'LBRA',0,'N','N','N',0,100,TO_DATE('2008-08-06 10:18:32','YYYY-MM-DD HH24:MI:SS'),'M_Locator_ID','The Locator indicates where in a Warehouse a product is located.','N',0,0,'Warehouse Locator','Locator','Y',10,'N',21,'N',TO_DATE('2008-08-06 10:18:32','YYYY-MM-DD HH24:MI:SS'),'Y','N',448,100,'N','N')
;

-- 06/08/2008 10h18min32s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000952 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 06/08/2008 10h18min37s BRT
-- Default comment for updating dictionary
ALTER TABLE C_OrderLine ADD M_Locator_ID NUMBER(10)
;

-- 06/08/2008 10h20min45s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Column_ID,AD_Table_ID,EntityType,Version,AD_Reference_Value_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,CreatedBy,Updated,ColumnName,Help,IsParent,AD_Client_ID,AD_Org_ID,Description,Name,IsActive,FieldLength,IsSelectionColumn,AD_Reference_ID,IsSyncDatabase,Created,IsUpdateable,IsKey,AD_Element_ID,UpdatedBy,IsEncrypted,IsAlwaysUpdateable) VALUES (1000953,325,'U',0,138,'N','N','N',0,100,TO_DATE('2008-08-06 10:20:45','YYYY-MM-DD HH24:MI:SS'),'C_BPartner_ID','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','N',0,0,'Identifies a Business Partner','Business Partner ','Y',10,'N',30,'N',TO_DATE('2008-08-06 10:20:45','YYYY-MM-DD HH24:MI:SS'),'Y','N',187,100,'N','N')
;

-- 06/08/2008 10h20min45s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000953 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 06/08/2008 10h20min50s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2008-08-06 10:20:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000953
;

-- 06/08/2008 10h20min50s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Business Partner ', Description='Identifies a Business Partner', Help='A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson' WHERE AD_Column_ID=1000953 AND IsCentrallyMaintained='Y'
;

-- 06/08/2008 10h21min0s BRT
-- Default comment for updating dictionary
ALTER TABLE M_Production ADD C_BPartner_ID NUMBER(10)
;

-- 06/08/2008 10h23min57s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Column_ID,AD_Table_ID,EntityType,Version,IsMandatory,IsTranslated,IsIdentifier,SeqNo,CreatedBy,Updated,ColumnName,Help,IsParent,AD_Client_ID,AD_Org_ID,Description,Name,IsActive,FieldLength,IsSelectionColumn,AD_Reference_ID,IsSyncDatabase,Created,IsUpdateable,IsKey,AD_Element_ID,UpdatedBy,IsEncrypted,IsAlwaysUpdateable) VALUES (1000954,325,'U',0,'N','N','N',0,100,TO_DATE('2008-08-06 10:23:57','YYYY-MM-DD HH24:MI:SS'),'lbr_IsManufactured','Defines if the Product is Manufactured','N',0,0,'Defines if the Product is Manufactured','Is Manufactured','Y',1,'N',20,'N',TO_DATE('2008-08-06 10:23:57','YYYY-MM-DD HH24:MI:SS'),'Y','N',1000148,100,'N','N')
;

-- 06/08/2008 10h23min57s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000954 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 06/08/2008 10h24min5s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2008-08-06 10:24:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000954
;

-- 06/08/2008 10h24min5s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Is Manufactured', Description='Defines if the Product is Manufactured', Help='Defines if the Product is Manufactured' WHERE AD_Column_ID=1000954 AND IsCentrallyMaintained='Y'
;

-- 06/08/2008 10h24min11s BRT
-- Default comment for updating dictionary
ALTER TABLE M_Production ADD lbr_IsManufactured CHAR(1) CHECK (lbr_IsManufactured IN ('Y','N'))
;

-- 06/08/2008 10h24min43s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET DefaultValue='N', IsMandatory='Y',Updated=TO_DATE('2008-08-06 10:24:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000954
;

-- 06/08/2008 10h24min43s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Is Manufactured', Description='Defines if the Product is Manufactured', Help='Defines if the Product is Manufactured' WHERE AD_Column_ID=1000954 AND IsCentrallyMaintained='Y'
;

-- 06/08/2008 10h24min44s BRT
-- Default comment for updating dictionary
ALTER TABLE M_Production MODIFY lbr_IsManufactured CHAR(1) DEFAULT 'N'
;

-- 06/08/2008 10h24min44s BRT
-- Default comment for updating dictionary
UPDATE M_Production SET lbr_IsManufactured='N' WHERE lbr_IsManufactured IS NULL
;

-- 06/08/2008 10h24min44s BRT
-- Default comment for updating dictionary
ALTER TABLE M_Production MODIFY lbr_IsManufactured NOT NULL
;

-- 06/08/2008 10h24min49s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET DefaultValue='Y',Updated=TO_DATE('2008-08-06 10:24:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000954
;

-- 06/08/2008 10h24min49s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Is Manufactured', Description='Defines if the Product is Manufactured', Help='Defines if the Product is Manufactured' WHERE AD_Column_ID=1000954 AND IsCentrallyMaintained='Y'
;

-- 06/08/2008 10h28min58s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Element_ID,ColumnName,AD_Client_ID,Name,Created,Updated,PrintName,IsActive,EntityType,AD_Org_ID,CreatedBy,UpdatedBy) VALUES (1000324,'lbr_CreateManufactureLines',0,'Create Manufacture Lines',TO_DATE('2008-08-06 10:28:58','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2008-08-06 10:28:58','YYYY-MM-DD HH24:MI:SS'),'Create Manufacture Lines','Y','LBRA',0,100,100)
;

-- 06/08/2008 10h28min58s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Description,PrintName,Help,PO_PrintName,PO_Description,PO_Help,PO_Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Description,t.PrintName,t.Help,t.PO_PrintName,t.PO_Description,t.PO_Help,t.PO_Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000324 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 06/08/2008 10h30min14s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Column_ID,AD_Table_ID,EntityType,Version,IsMandatory,IsTranslated,IsIdentifier,SeqNo,CreatedBy,Updated,ColumnName,IsParent,AD_Client_ID,AD_Org_ID,Name,IsActive,FieldLength,IsSelectionColumn,AD_Reference_ID,IsSyncDatabase,Created,IsUpdateable,IsKey,AD_Element_ID,UpdatedBy,IsEncrypted,IsAlwaysUpdateable) VALUES (1000955,259,'LBRA',0,'N','N','N',0,100,TO_DATE('2008-08-06 10:30:14','YYYY-MM-DD HH24:MI:SS'),'lbr_CreateManufactureLines','N',0,0,'Create Manufacture Lines','Y',1,'N',28,'N',TO_DATE('2008-08-06 10:30:14','YYYY-MM-DD HH24:MI:SS'),'Y','N',1000324,100,'N','N')
;

-- 06/08/2008 10h30min14s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000955 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 06/08/2008 10h30min27s BRT
-- Default comment for updating dictionary
ALTER TABLE C_Order ADD lbr_CreateManufactureLines CHAR(1)
;

-- 06/08/2008 10h33min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Window (IsActive,Created,AD_Window_ID,Name,WindowType,UpdatedBy,CreatedBy,Updated,AD_Org_ID,AD_Client_ID,Help,Description,IsSOTrx,Processing,IsDefault,IsBetaFunctionality,EntityType) VALUES ('Y',TO_DATE('2008-08-06 10:33:10','YYYY-MM-DD HH24:MI:SS'),1000023,'Manufacture','T',100,100,TO_DATE('2008-08-06 10:33:10','YYYY-MM-DD HH24:MI:SS'),0,0,NULL,'Manufacture based on Bill of Materials','N','N','N','N','U')
;

-- 06/08/2008 10h33min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Window_Trl (AD_Language,AD_Window_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Window_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Window t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Window_ID=1000023 AND EXISTS (SELECT * FROM AD_Window_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Window_ID!=t.AD_Window_ID)
;

-- 06/08/2008 10h33min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Window_Access (AD_Window_ID,CreatedBy,Created,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Org_ID,AD_Role_ID) VALUES (1000023,100,TO_DATE('2008-08-06 10:33:10','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2008-08-06 10:33:10','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,0,0)
;

-- 06/08/2008 10h33min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Window_Access (AD_Window_ID,CreatedBy,Created,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Org_ID,AD_Role_ID) VALUES (1000023,100,TO_DATE('2008-08-06 10:33:10','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2008-08-06 10:33:10','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,0,102)
;

-- 06/08/2008 10h33min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Window_Access (AD_Window_ID,CreatedBy,Created,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Org_ID,AD_Role_ID) VALUES (1000023,100,TO_DATE('2008-08-06 10:33:10','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2008-08-06 10:33:10','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,0,103)
;

-- 06/08/2008 10h33min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Window_Access (AD_Window_ID,CreatedBy,Created,Updated,UpdatedBy,IsActive,AD_Client_ID,AD_Org_ID,AD_Role_ID) VALUES (1000023,100,TO_DATE('2008-08-06 10:33:10','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2008-08-06 10:33:10','YYYY-MM-DD HH24:MI:SS'),100,'Y',0,0,50001)
;

-- 06/08/2008 10h34min12s BRT
-- Default comment for updating dictionary
UPDATE AD_Window SET EntityType='LBRA',Updated=TO_DATE('2008-08-06 10:34:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=1000023
;

-- 06/08/2008 10h35min25s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Tab (IsSingleRow,AD_Window_ID,AD_Client_ID,Name,SeqNo,AD_Org_ID,Created,CreatedBy,Updated,Description,IsTranslationTab,IsActive,IsSortTab,AD_Tab_ID,AD_Table_ID,HasTree,IsInfoTab,ImportFields,IsReadOnly,UpdatedBy,Processing,TabLevel,IsInsertRecord,IsAdvancedTab,EntityType) VALUES ('N',1000023,0,'Manufacture',10,0,TO_DATE('2008-08-06 10:35:25','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2008-08-06 10:35:25','YYYY-MM-DD HH24:MI:SS'),'Manufacture','N','Y','N',1000036,325,'N','N','N','N',100,'N',0,'Y','N','U')
;

-- 06/08/2008 10h35min25s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, Name,Description,Help,CommitWarning, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.Name,t.Description,t.Help,t.CommitWarning, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1000036 AND EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Tab_ID!=t.AD_Tab_ID)
;

-- 06/08/2008 10h35min51s BRT
-- Default comment for updating dictionary
UPDATE AD_Tab SET EntityType='LBRA',Updated=TO_DATE('2008-08-06 10:35:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000036
;

-- 06/08/2008 10h36min9s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'Plan for producing a product','Y',TO_DATE('2008-08-06 10:36:09','YYYY-MM-DD HH24:MI:SS'),0,14,'Production','N','N','N',3596,'N',10,'Y',1000036,1000900,100,TO_DATE('2008-08-06 10:36:09','YYYY-MM-DD HH24:MI:SS'),'N','The Production uniquely identifies a Production Plan','LBRA')
;

-- 06/08/2008 10h36min9s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000900 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h36min9s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'The document has been processed','Y',TO_DATE('2008-08-06 10:36:09','YYYY-MM-DD HH24:MI:SS'),0,1,'Processed','N','N','N',3609,'N',20,'Y',1000036,1000901,100,TO_DATE('2008-08-06 10:36:09','YYYY-MM-DD HH24:MI:SS'),'N','The Processed checkbox indicates that a document has been processed.','LBRA')
;

-- 06/08/2008 10h36min9s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000901 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h36min9s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'Client/Tenant for this installation.','Y',TO_DATE('2008-08-06 10:36:09','YYYY-MM-DD HH24:MI:SS'),0,14,'Client','Y','N','N',3597,'N',30,'Y',1000036,1000902,100,TO_DATE('2008-08-06 10:36:09','YYYY-MM-DD HH24:MI:SS'),'N','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBRA')
;

-- 06/08/2008 10h36min9s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000902 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h36min9s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'Organizational entity within client','Y',TO_DATE('2008-08-06 10:36:09','YYYY-MM-DD HH24:MI:SS'),0,14,'Organization','Y','Y','N',3598,'N',40,'Y',1000036,1000903,100,TO_DATE('2008-08-06 10:36:09','YYYY-MM-DD HH24:MI:SS'),'N','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBRA')
;

-- 06/08/2008 10h36min9s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000903 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h36min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (SortNo,IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES (-1,'N',100,0,'Alphanumeric identifier of the entity','Y',TO_DATE('2008-08-06 10:36:09','YYYY-MM-DD HH24:MI:SS'),0,60,'Name','Y','N','N',3604,'N',50,'Y',1000036,1000904,100,TO_DATE('2008-08-06 10:36:09','YYYY-MM-DD HH24:MI:SS'),'N','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','LBRA')
;

-- 06/08/2008 10h36min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000904 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h36min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'Optional short description of the record','Y',TO_DATE('2008-08-06 10:36:10','YYYY-MM-DD HH24:MI:SS'),0,60,'Description','Y','N','N',3605,'N',60,'Y',1000036,1000905,100,TO_DATE('2008-08-06 10:36:10','YYYY-MM-DD HH24:MI:SS'),'N','A description is limited to 255 characters.','LBRA')
;

-- 06/08/2008 10h36min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000905 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h36min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'The record is active in the system','Y',TO_DATE('2008-08-06 10:36:10','YYYY-MM-DD HH24:MI:SS'),0,1,'Active','Y','N','N',3599,'N',70,'Y',1000036,1000906,100,TO_DATE('2008-08-06 10:36:10','YYYY-MM-DD HH24:MI:SS'),'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBRA')
;

-- 06/08/2008 10h36min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000906 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h36min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'Date a product was moved in or out of inventory','Y',TO_DATE('2008-08-06 10:36:10','YYYY-MM-DD HH24:MI:SS'),0,14,'Movement Date','Y','N','N',3608,'N',80,'Y',1000036,1000907,100,TO_DATE('2008-08-06 10:36:10','YYYY-MM-DD HH24:MI:SS'),'N','The Movement Date indicates the date that a product moved in or out of inventory.  This is the result of a shipment, receipt or inventory movement.','LBRA')
;

-- 06/08/2008 10h36min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000907 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h36min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,AD_FieldGroup_ID,DisplayLogic,EntityType) VALUES ('N',100,0,'Financial Project','Y',TO_DATE('2008-08-06 10:36:10','YYYY-MM-DD HH24:MI:SS'),0,14,'Project','Y','N','N',9551,'N',90,'Y',1000036,1000908,100,TO_DATE('2008-08-06 10:36:10','YYYY-MM-DD HH24:MI:SS'),'N','A Project allows you to track and control internal or external activities.',104,'@$Element_PJ@=Y','LBRA')
;

-- 06/08/2008 10h36min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000908 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h36min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,AD_FieldGroup_ID,DisplayLogic,EntityType) VALUES ('N',100,0,'Business Activity','Y',TO_DATE('2008-08-06 10:36:10','YYYY-MM-DD HH24:MI:SS'),0,14,'Activity','Y','Y','N',9554,'N',100,'Y',1000036,1000909,100,TO_DATE('2008-08-06 10:36:10','YYYY-MM-DD HH24:MI:SS'),'N','Activities indicate tasks that are performed and used to utilize Activity based Costing',104,'@$Element_AY@=Y','LBRA')
;

-- 06/08/2008 10h36min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000909 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h36min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,AD_FieldGroup_ID,DisplayLogic,EntityType) VALUES ('N',100,0,'Marketing Campaign','Y',TO_DATE('2008-08-06 10:36:10','YYYY-MM-DD HH24:MI:SS'),0,14,'Campaign','Y','N','N',9555,'N',110,'Y',1000036,1000910,100,TO_DATE('2008-08-06 10:36:10','YYYY-MM-DD HH24:MI:SS'),'N','The Campaign defines a unique marketing program.  Projects can be associated with a pre defined Marketing Campaign.  You can then report based on a specific Campaign.',104,'@$Element_MC@=Y','LBRA')
;

-- 06/08/2008 10h36min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000910 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h36min11s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,AD_FieldGroup_ID,DisplayLogic,EntityType) VALUES ('N',100,0,'Performing or initiating organization','Y',TO_DATE('2008-08-06 10:36:10','YYYY-MM-DD HH24:MI:SS'),0,14,'Trx Organization','Y','Y','N',9552,'N',120,'Y',1000036,1000911,100,TO_DATE('2008-08-06 10:36:10','YYYY-MM-DD HH24:MI:SS'),'N','The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.',104,'@$Element_OT@=Y','LBRA')
;

-- 06/08/2008 10h36min11s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000911 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h36min11s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,AD_FieldGroup_ID,DisplayLogic,EntityType) VALUES ('N',100,0,'User defined list element #1','Y',TO_DATE('2008-08-06 10:36:11','YYYY-MM-DD HH24:MI:SS'),0,14,'User List 1','Y','N','N',9556,'N',130,'Y',1000036,1000912,100,TO_DATE('2008-08-06 10:36:11','YYYY-MM-DD HH24:MI:SS'),'N','The user defined element displays the optional elements that have been defined for this account combination.',104,'@$Element_U1@=Y','LBRA')
;

-- 06/08/2008 10h36min11s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000912 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h36min11s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,AD_FieldGroup_ID,DisplayLogic,EntityType) VALUES ('N',100,0,'User defined list element #2','Y',TO_DATE('2008-08-06 10:36:11','YYYY-MM-DD HH24:MI:SS'),0,14,'User List 2','Y','Y','N',9553,'N',140,'Y',1000036,1000913,100,TO_DATE('2008-08-06 10:36:11','YYYY-MM-DD HH24:MI:SS'),'N','The user defined element displays the optional elements that have been defined for this account combination.',104,'@$Element_U2@=Y','LBRA')
;

-- 06/08/2008 10h36min11s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000913 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h36min11s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,EntityType) VALUES ('N',100,0,'Y',TO_DATE('2008-08-06 10:36:11','YYYY-MM-DD HH24:MI:SS'),0,23,'Process Now','Y','N','N',3610,'N',150,'Y',1000036,1000914,100,TO_DATE('2008-08-06 10:36:11','YYYY-MM-DD HH24:MI:SS'),'N','LBRA')
;

-- 06/08/2008 10h36min11s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000914 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h36min11s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,EntityType) VALUES ('N',100,0,'Y',TO_DATE('2008-08-06 10:36:11','YYYY-MM-DD HH24:MI:SS'),0,1,'Records created','Y','Y','N',4752,'N',160,'Y',1000036,1000915,100,TO_DATE('2008-08-06 10:36:11','YYYY-MM-DD HH24:MI:SS'),'Y','LBRA')
;

-- 06/08/2008 10h36min11s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000915 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h36min11s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,DisplayLogic,EntityType) VALUES ('N',100,0,'Posting status','Y',TO_DATE('2008-08-06 10:36:11','YYYY-MM-DD HH24:MI:SS'),0,23,'Posted','Y','N','N',6537,'N',170,'Y',1000036,1000916,100,TO_DATE('2008-08-06 10:36:11','YYYY-MM-DD HH24:MI:SS'),'N','The Posted field indicates the status of the Generation of General Ledger Accounting Lines ','@Processed@=Y & @#ShowAcct@=Y','LBRA')
;

-- 06/08/2008 10h36min11s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000916 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h39min56s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Tab (IsSingleRow,AD_Window_ID,AD_Client_ID,Name,SeqNo,AD_Org_ID,Created,CreatedBy,Updated,IsTranslationTab,IsActive,IsSortTab,AD_Tab_ID,AD_Table_ID,HasTree,IsInfoTab,ImportFields,IsReadOnly,UpdatedBy,Processing,TabLevel,IsInsertRecord,IsAdvancedTab,EntityType) VALUES ('N',1000023,0,'Manufacture Plan',20,0,TO_DATE('2008-08-06 10:39:55','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2008-08-06 10:39:55','YYYY-MM-DD HH24:MI:SS'),'N','Y','N',1000037,385,'N','N','N','N',100,'N',1,'Y','N','LBRA')
;

-- 06/08/2008 10h39min56s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, Name,Description,Help,CommitWarning, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.Name,t.Description,t.Help,t.CommitWarning, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1000037 AND EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Tab_ID!=t.AD_Tab_ID)
;

-- 06/08/2008 10h40min18s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'Plan for how a product is produced','Y',TO_DATE('2008-08-06 10:40:18','YYYY-MM-DD HH24:MI:SS'),0,14,'Production Plan','N','N','N',4754,'N',10,'Y',1000037,1000917,100,TO_DATE('2008-08-06 10:40:18','YYYY-MM-DD HH24:MI:SS'),'N','The Production Plan identifies the items and steps in generating a product.','LBRA')
;

-- 06/08/2008 10h40min18s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000917 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h40min18s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'The document has been processed','Y',TO_DATE('2008-08-06 10:40:18','YYYY-MM-DD HH24:MI:SS'),0,1,'Processed','N','N','N',12074,'N',20,'Y',1000037,1000918,100,TO_DATE('2008-08-06 10:40:18','YYYY-MM-DD HH24:MI:SS'),'N','The Processed checkbox indicates that a document has been processed.','LBRA')
;

-- 06/08/2008 10h40min18s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000918 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h40min19s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'Client/Tenant for this installation.','Y',TO_DATE('2008-08-06 10:40:18','YYYY-MM-DD HH24:MI:SS'),0,14,'Client','Y','N','N',4755,'N',30,'Y',1000037,1000919,100,TO_DATE('2008-08-06 10:40:18','YYYY-MM-DD HH24:MI:SS'),'Y','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBRA')
;

-- 06/08/2008 10h40min19s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000919 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h40min19s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'Organizational entity within client','Y',TO_DATE('2008-08-06 10:40:19','YYYY-MM-DD HH24:MI:SS'),0,14,'Organization','Y','Y','N',4756,'N',40,'Y',1000037,1000920,100,TO_DATE('2008-08-06 10:40:19','YYYY-MM-DD HH24:MI:SS'),'Y','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBRA')
;

-- 06/08/2008 10h40min19s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000920 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h40min19s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'Plan for producing a product','Y',TO_DATE('2008-08-06 10:40:19','YYYY-MM-DD HH24:MI:SS'),0,14,'Production','Y','N','N',4762,'N',50,'Y',1000037,1000921,100,TO_DATE('2008-08-06 10:40:19','YYYY-MM-DD HH24:MI:SS'),'Y','The Production uniquely identifies a Production Plan','LBRA')
;

-- 06/08/2008 10h40min19s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000921 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h40min19s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (SortNo,IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES (1,'N',100,0,'Unique line for this document','Y',TO_DATE('2008-08-06 10:40:19','YYYY-MM-DD HH24:MI:SS'),0,11,'Line No','Y','N','N',4769,'N',60,'Y',1000037,1000922,100,TO_DATE('2008-08-06 10:40:19','YYYY-MM-DD HH24:MI:SS'),'N','Indicates the unique line for a document.  It will also control the display order of the lines within a document.','LBRA')
;

-- 06/08/2008 10h40min19s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000922 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h40min19s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (SortNo,IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES (2,'N',100,0,'Product, Service, Item','Y',TO_DATE('2008-08-06 10:40:19','YYYY-MM-DD HH24:MI:SS'),0,14,'Product','Y','N','N',4763,'N',70,'Y',1000037,1000923,100,TO_DATE('2008-08-06 10:40:19','YYYY-MM-DD HH24:MI:SS'),'N','Identifies an item which is either purchased or sold in this organization.','LBRA')
;

-- 06/08/2008 10h40min19s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000923 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h40min19s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'The record is active in the system','Y',TO_DATE('2008-08-06 10:40:19','YYYY-MM-DD HH24:MI:SS'),0,1,'Active','Y','N','N',4757,'N',80,'Y',1000037,1000924,100,TO_DATE('2008-08-06 10:40:19','YYYY-MM-DD HH24:MI:SS'),'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBRA')
;

-- 06/08/2008 10h40min19s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000924 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h40min19s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'Quantity of products to produce','Y',TO_DATE('2008-08-06 10:40:19','YYYY-MM-DD HH24:MI:SS'),0,26,'Production Quantity','Y','N','N',4764,'N',90,'Y',1000037,1000925,100,TO_DATE('2008-08-06 10:40:19','YYYY-MM-DD HH24:MI:SS'),'N','The Production Quantity identifies the number of products to produce','LBRA')
;

-- 06/08/2008 10h40min19s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000925 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h40min20s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'Warehouse Locator','Y',TO_DATE('2008-08-06 10:40:19','YYYY-MM-DD HH24:MI:SS'),0,14,'Locator','Y','N','N',4765,'N',100,'Y',1000037,1000926,100,TO_DATE('2008-08-06 10:40:19','YYYY-MM-DD HH24:MI:SS'),'N','The Locator indicates where in a Warehouse a product is located.','LBRA')
;

-- 06/08/2008 10h40min20s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000926 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h40min20s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'Optional short description of the record','Y',TO_DATE('2008-08-06 10:40:20','YYYY-MM-DD HH24:MI:SS'),0,60,'Description','Y','N','N',4766,'N',110,'Y',1000037,1000927,100,TO_DATE('2008-08-06 10:40:20','YYYY-MM-DD HH24:MI:SS'),'N','A description is limited to 255 characters.','LBRA')
;

-- 06/08/2008 10h40min20s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000927 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h40min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Tab (IsSingleRow,AD_Window_ID,AD_Client_ID,Name,SeqNo,AD_Org_ID,Created,CreatedBy,Updated,IsTranslationTab,IsActive,IsSortTab,AD_Tab_ID,AD_Table_ID,HasTree,IsInfoTab,ImportFields,IsReadOnly,UpdatedBy,Processing,TabLevel,IsInsertRecord,IsAdvancedTab,EntityType) VALUES ('N',1000023,0,'Manufacture Line',30,0,TO_DATE('2008-08-06 10:40:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2008-08-06 10:40:42','YYYY-MM-DD HH24:MI:SS'),'N','Y','N',1000038,326,'N','N','N','N',100,'N',0,'Y','N','LBRA')
;

-- 06/08/2008 10h40min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, Name,Description,Help,CommitWarning, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.Name,t.Description,t.Help,t.CommitWarning, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1000038 AND EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Tab_ID!=t.AD_Tab_ID)
;

-- 06/08/2008 10h41min4s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'Document Line representing a production','Y',TO_DATE('2008-08-06 10:41:04','YYYY-MM-DD HH24:MI:SS'),0,14,'Production Line','N','N','N',3611,'N',10,'Y',1000038,1000928,100,TO_DATE('2008-08-06 10:41:04','YYYY-MM-DD HH24:MI:SS'),'N','The Production Line indicates the production document line (if applicable) for this transaction','LBRA')
;

-- 06/08/2008 10h41min4s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000928 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h41min4s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'The document has been processed','Y',TO_DATE('2008-08-06 10:41:04','YYYY-MM-DD HH24:MI:SS'),0,1,'Processed','N','N','N',12073,'N',20,'Y',1000038,1000929,100,TO_DATE('2008-08-06 10:41:04','YYYY-MM-DD HH24:MI:SS'),'N','The Processed checkbox indicates that a document has been processed.','LBRA')
;

-- 06/08/2008 10h41min4s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000929 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h41min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'Client/Tenant for this installation.','Y',TO_DATE('2008-08-06 10:41:04','YYYY-MM-DD HH24:MI:SS'),0,14,'Client','Y','N','N',3612,'N',30,'Y',1000038,1000930,100,TO_DATE('2008-08-06 10:41:04','YYYY-MM-DD HH24:MI:SS'),'Y','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','LBRA')
;

-- 06/08/2008 10h41min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000930 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h41min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'Organizational entity within client','Y',TO_DATE('2008-08-06 10:41:05','YYYY-MM-DD HH24:MI:SS'),0,14,'Organization','Y','Y','N',3613,'N',40,'Y',1000038,1000931,100,TO_DATE('2008-08-06 10:41:05','YYYY-MM-DD HH24:MI:SS'),'Y','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','LBRA')
;

-- 06/08/2008 10h41min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000931 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h41min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'Plan for how a product is produced','Y',TO_DATE('2008-08-06 10:41:05','YYYY-MM-DD HH24:MI:SS'),0,14,'Production Plan','Y','N','N',4753,'N',50,'Y',1000038,1000932,100,TO_DATE('2008-08-06 10:41:05','YYYY-MM-DD HH24:MI:SS'),'Y','The Production Plan identifies the items and steps in generating a product.','LBRA')
;

-- 06/08/2008 10h41min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000932 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h41min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (SortNo,IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES (1,'N',100,0,'Unique line for this document','Y',TO_DATE('2008-08-06 10:41:05','YYYY-MM-DD HH24:MI:SS'),0,11,'Line No','Y','N','N',4768,'N',60,'Y',1000038,1000933,100,TO_DATE('2008-08-06 10:41:05','YYYY-MM-DD HH24:MI:SS'),'N','Indicates the unique line for a document.  It will also control the display order of the lines within a document.','LBRA')
;

-- 06/08/2008 10h41min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000933 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h41min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (SortNo,IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES (2,'N',100,0,'Product, Service, Item','Y',TO_DATE('2008-08-06 10:41:05','YYYY-MM-DD HH24:MI:SS'),0,26,'Product','Y','N','N',3620,'N',70,'Y',1000038,1000934,100,TO_DATE('2008-08-06 10:41:05','YYYY-MM-DD HH24:MI:SS'),'N','Identifies an item which is either purchased or sold in this organization.','LBRA')
;

-- 06/08/2008 10h41min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000934 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h41min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'Product Attribute Set Instance','Y',TO_DATE('2008-08-06 10:41:05','YYYY-MM-DD HH24:MI:SS'),0,26,'Attribute Set Instance','Y','Y','N',8552,'N',80,'Y',1000038,1000935,100,TO_DATE('2008-08-06 10:41:05','YYYY-MM-DD HH24:MI:SS'),'N','The values of the actual Product Attribute Instances.  The product level attributes are defined on Product level.','LBRA')
;

-- 06/08/2008 10h41min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000935 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h41min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'The record is active in the system','Y',TO_DATE('2008-08-06 10:41:05','YYYY-MM-DD HH24:MI:SS'),0,1,'Active','Y','N','N',3614,'N',90,'Y',1000038,1000936,100,TO_DATE('2008-08-06 10:41:05','YYYY-MM-DD HH24:MI:SS'),'N','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','LBRA')
;

-- 06/08/2008 10h41min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000936 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h41min6s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'Quantity of a product moved.','Y',TO_DATE('2008-08-06 10:41:05','YYYY-MM-DD HH24:MI:SS'),0,26,'Movement Quantity','Y','N','N',3622,'N',100,'Y',1000038,1000937,100,TO_DATE('2008-08-06 10:41:05','YYYY-MM-DD HH24:MI:SS'),'N','The Movement Quantity indicates the quantity of a product that has been moved.','LBRA')
;

-- 06/08/2008 10h41min6s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000937 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h41min6s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'Warehouse Locator','Y',TO_DATE('2008-08-06 10:41:06','YYYY-MM-DD HH24:MI:SS'),0,14,'Locator','Y','N','N',3619,'N',110,'Y',1000038,1000938,100,TO_DATE('2008-08-06 10:41:06','YYYY-MM-DD HH24:MI:SS'),'N','The Locator indicates where in a Warehouse a product is located.','LBRA')
;

-- 06/08/2008 10h41min6s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000938 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h41min6s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'Optional short description of the record','Y',TO_DATE('2008-08-06 10:41:06','YYYY-MM-DD HH24:MI:SS'),0,60,'Description','Y','N','N',3623,'N',120,'Y',1000038,1000939,100,TO_DATE('2008-08-06 10:41:06','YYYY-MM-DD HH24:MI:SS'),'N','A description is limited to 255 characters.','LBRA')
;

-- 06/08/2008 10h41min6s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000939 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h41min32s BRT
-- Default comment for updating dictionary
UPDATE AD_Tab SET WhereClause='lbr_IsManufactured=''Y''',Updated=TO_DATE('2008-08-06 10:41:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000036
;

-- 06/08/2008 10h41min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'Identifies a Business Partner','Y',TO_DATE('2008-08-06 10:41:42','YYYY-MM-DD HH24:MI:SS'),0,10,'Business Partner ','Y','N','N',1000953,'N','Y',1000036,1000940,100,TO_DATE('2008-08-06 10:41:42','YYYY-MM-DD HH24:MI:SS'),'N','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','LBRA')
;

-- 06/08/2008 10h41min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000940 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h41min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'Defines if the Product is Manufactured','Y',TO_DATE('2008-08-06 10:41:42','YYYY-MM-DD HH24:MI:SS'),0,1,'Is Manufactured','Y','N','N',1000954,'N','Y',1000036,1000941,100,TO_DATE('2008-08-06 10:41:42','YYYY-MM-DD HH24:MI:SS'),'N','Defines if the Product is Manufactured','LBRA')
;

-- 06/08/2008 10h41min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000941 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 10h42min44s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000901
;

-- 06/08/2008 10h42min44s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000900
;

-- 06/08/2008 10h42min44s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=1000902
;

-- 06/08/2008 10h42min44s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=1000903
;

-- 06/08/2008 10h42min44s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1000904
;

-- 06/08/2008 10h42min44s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1000905
;

-- 06/08/2008 10h42min44s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000906
;

-- 06/08/2008 10h42min44s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000907
;

-- 06/08/2008 10h42min44s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1000908
;

-- 06/08/2008 10h42min44s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1000909
;

-- 06/08/2008 10h42min44s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1000910
;

-- 06/08/2008 10h42min44s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1000911
;

-- 06/08/2008 10h42min44s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1000912
;

-- 06/08/2008 10h42min44s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1000913
;

-- 06/08/2008 10h42min45s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1000914
;

-- 06/08/2008 10h42min45s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1000915
;

-- 06/08/2008 10h42min45s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1000916
;

-- 06/08/2008 10h42min45s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1000940
;

-- 06/08/2008 10h42min45s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1000941
;

-- 06/08/2008 10h42min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2008-08-06 10:42:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000941
;

-- 06/08/2008 10h43min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000000,Updated=TO_DATE('2008-08-06 10:43:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000940
;

-- 06/08/2008 10h44min58s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Menu (AD_Window_ID,AD_Menu_ID,Created,IsActive,Name,IsSummary,UpdatedBy,AD_Client_ID,Action,CreatedBy,Updated,AD_Org_ID,IsSOTrx,IsReadOnly,EntityType) VALUES (1000023,1000034,TO_DATE('2008-08-06 10:44:58','YYYY-MM-DD HH24:MI:SS'),'Y','Manufacture','N',100,0,'W',100,TO_DATE('2008-08-06 10:44:58','YYYY-MM-DD HH24:MI:SS'),0,'N','N','LBRA')
;

-- 06/08/2008 10h44min58s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Name,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Name,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=1000034 AND EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Menu_ID!=t.AD_Menu_ID)
;

-- 06/08/2008 10h44min58s BRT
-- Default comment for updating dictionary
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID,0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 1000034, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000034)
;

-- 06/08/2008 10h45min33s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 06/08/2008 10h45min33s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 06/08/2008 10h45min33s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 06/08/2008 10h45min33s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 06/08/2008 10h45min33s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 06/08/2008 10h45min33s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 06/08/2008 10h45min33s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 06/08/2008 10h45min33s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 06/08/2008 10h45min33s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 06/08/2008 10h45min33s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 06/08/2008 10h45min33s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 06/08/2008 10h45min33s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=167
;

-- 06/08/2008 10h45min33s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=357
;

-- 06/08/2008 10h45min33s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=229
;

-- 06/08/2008 10h45min33s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=412
;

-- 06/08/2008 10h45min33s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=256
;

-- 06/08/2008 10h45min33s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=197
;

-- 06/08/2008 10h45min33s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=181
;

-- 06/08/2008 10h45min33s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=484
;

-- 06/08/2008 10h45min33s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=179
;

-- 06/08/2008 10h45min33s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=503
;

-- 06/08/2008 10h45min33s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=196
;

-- 06/08/2008 10h45min33s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=228
;

-- 06/08/2008 10h45min33s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=479
;

-- 06/08/2008 10h45min33s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000034
;

-- 06/08/2008 10h45min33s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=482
;

-- 06/08/2008 10h45min33s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=481
;

-- 06/08/2008 10h45min33s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=426
;

-- 06/08/2008 10h45min33s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=411
;

-- 06/08/2008 10h45min33s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=537
;

-- 06/08/2008 10h45min33s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=311
;

-- 06/08/2008 10h45min33s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=292
;

-- 06/08/2008 10h45min33s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=515
;

-- 06/08/2008 10h45min33s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=545
;

-- 06/08/2008 10h45min41s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=167
;

-- 06/08/2008 10h45min41s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=357
;

-- 06/08/2008 10h45min41s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=229
;

-- 06/08/2008 10h45min41s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=412
;

-- 06/08/2008 10h45min41s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=256
;

-- 06/08/2008 10h45min41s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=197
;

-- 06/08/2008 10h45min41s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=181
;

-- 06/08/2008 10h45min41s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=484
;

-- 06/08/2008 10h45min41s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=179
;

-- 06/08/2008 10h45min41s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=503
;

-- 06/08/2008 10h45min41s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=196
;

-- 06/08/2008 10h45min41s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=228
;

-- 06/08/2008 10h45min41s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000034
;

-- 06/08/2008 10h45min41s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=479
;

-- 06/08/2008 10h45min41s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=482
;

-- 06/08/2008 10h45min41s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=481
;

-- 06/08/2008 10h45min41s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=426
;

-- 06/08/2008 10h45min41s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=411
;

-- 06/08/2008 10h45min41s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=537
;

-- 06/08/2008 10h45min41s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=311
;

-- 06/08/2008 10h45min41s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=292
;

-- 06/08/2008 10h45min41s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=515
;

-- 06/08/2008 10h45min41s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=22, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=545
;

-- 06/08/2008 10h46min40s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Menu (AD_Menu_ID,Created,IsActive,Name,IsSummary,UpdatedBy,AD_Client_ID,CreatedBy,Updated,AD_Org_ID,IsSOTrx,IsReadOnly,EntityType) VALUES (1000035,TO_DATE('2008-08-06 10:46:40','YYYY-MM-DD HH24:MI:SS'),'Y','Manufacture','Y',100,0,100,TO_DATE('2008-08-06 10:46:40','YYYY-MM-DD HH24:MI:SS'),0,'N','N','LBRA')
;

-- 06/08/2008 10h46min40s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Name,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Name,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=1000035 AND EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Menu_ID!=t.AD_Menu_ID)
;

-- 06/08/2008 10h46min40s BRT
-- Default comment for updating dictionary
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID,0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 1000035, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000035)
;

-- 06/08/2008 10h46min58s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 06/08/2008 10h46min58s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 06/08/2008 10h46min58s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 06/08/2008 10h46min58s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 06/08/2008 10h46min58s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 06/08/2008 10h46min58s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 06/08/2008 10h46min58s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 06/08/2008 10h46min58s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 06/08/2008 10h46min58s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 06/08/2008 10h46min58s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 06/08/2008 10h46min58s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 06/08/2008 10h46min58s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53083
;

-- 06/08/2008 10h46min58s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 06/08/2008 10h46min58s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000014
;

-- 06/08/2008 10h46min58s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000015
;

-- 06/08/2008 10h46min58s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 06/08/2008 10h46min58s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000009
;

-- 06/08/2008 10h47min16s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000015
;

-- 06/08/2008 10h47min16s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 06/08/2008 10h47min16s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000014
;

-- 06/08/2008 10h47min16s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 06/08/2008 10h47min16s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000009
;

-- 06/08/2008 10h47min19s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000014
;

-- 06/08/2008 10h47min19s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000015
;

-- 06/08/2008 10h47min19s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 06/08/2008 10h47min19s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 06/08/2008 10h47min19s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000009
;

-- 06/08/2008 10h47min28s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=167
;

-- 06/08/2008 10h47min28s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=357
;

-- 06/08/2008 10h47min28s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=229
;

-- 06/08/2008 10h47min28s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=412
;

-- 06/08/2008 10h47min28s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=256
;

-- 06/08/2008 10h47min28s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=197
;

-- 06/08/2008 10h47min28s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=181
;

-- 06/08/2008 10h47min28s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=484
;

-- 06/08/2008 10h47min28s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=179
;

-- 06/08/2008 10h47min28s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=503
;

-- 06/08/2008 10h47min28s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=196
;

-- 06/08/2008 10h47min28s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=228
;

-- 06/08/2008 10h47min28s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=479
;

-- 06/08/2008 10h47min28s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=482
;

-- 06/08/2008 10h47min28s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=481
;

-- 06/08/2008 10h47min28s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=426
;

-- 06/08/2008 10h47min28s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=411
;

-- 06/08/2008 10h47min28s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=17, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=537
;

-- 06/08/2008 10h47min28s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=18, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=311
;

-- 06/08/2008 10h47min28s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=19, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=292
;

-- 06/08/2008 10h47min28s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=20, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=515
;

-- 06/08/2008 10h47min28s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=183, SeqNo=21, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=545
;

-- 06/08/2008 10h47min28s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000035, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000034
;

-- 06/08/2008 10h49min23s BRT
-- Default comment for updating dictionary
UPDATE AD_Tab SET TabLevel=1,Updated=TO_DATE('2008-08-06 10:49:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000038
;

-- 06/08/2008 10h49min58s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2008-08-06 10:49:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000941
;

-- 06/08/2008 10h50min6s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DefaultValue='Y',Updated=TO_DATE('2008-08-06 10:50:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000941
;

-- 06/08/2008 10h51min58s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@IsCreated@!N',Updated=TO_DATE('2008-08-06 10:51:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000914
;

-- 06/08/2008 10h52min32s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@IsCreated@!Y',Updated=TO_DATE('2008-08-06 10:52:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000914
;

-- 06/08/2008 10h53min43s BRT
-- Default comment for updating dictionary
UPDATE AD_Tab SET WhereClause='lbr_IsManufactured=''N''',Updated=TO_DATE('2008-08-06 10:53:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=319
;

-- 06/08/2008 10h56min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET MandatoryLogic='@lbr_IsManufactured@=Y',Updated=TO_DATE('2008-08-06 10:56:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000953
;

-- 06/08/2008 10h56min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Business Partner ', Description='Identifies a Business Partner', Help='A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson' WHERE AD_Column_ID=1000953 AND IsCentrallyMaintained='Y'
;

-- 06/08/2008 10h58min56s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET IsMandatory='Y', MandatoryLogic=NULL,Updated=TO_DATE('2008-08-06 10:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000953
;

-- 06/08/2008 10h58min56s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Business Partner ', Description='Identifies a Business Partner', Help='A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson' WHERE AD_Column_ID=1000953 AND IsCentrallyMaintained='Y'
;

-- 06/08/2008 11h1min30s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'Account at the Bank','Y',TO_DATE('2008-08-06 11:01:30','YYYY-MM-DD HH24:MI:SS'),0,22,'Bank Account','Y','N','N',1000906,'N','Y',294,1000942,100,TO_DATE('2008-08-06 11:01:30','YYYY-MM-DD HH24:MI:SS'),'N','The Bank Account identifies an account at this Bank.','LBRA')
;

-- 06/08/2008 11h1min30s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000942 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 11h1min30s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,EntityType) VALUES ('N',100,0,'Y',TO_DATE('2008-08-06 11:01:30','YYYY-MM-DD HH24:MI:SS'),0,1,'Create Manufacture Lines','Y','N','N',1000955,'N','Y',294,1000943,100,TO_DATE('2008-08-06 11:01:30','YYYY-MM-DD HH24:MI:SS'),'N','LBRA')
;

-- 06/08/2008 11h1min30s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000943 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 11h1min30s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'How you pay the invoice','Y',TO_DATE('2008-08-06 11:01:30','YYYY-MM-DD HH24:MI:SS'),0,1,'Payment Rule','Y','N','N',1000905,'N','Y',294,1000944,100,TO_DATE('2008-08-06 11:01:30','YYYY-MM-DD HH24:MI:SS'),'N','The Payment Rule indicates the method of invoice payment.','LBRA')
;

-- 06/08/2008 11h1min30s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000944 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/08/2008 11h1min49s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000942
;

-- 06/08/2008 11h1min49s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000944
;

-- 06/08/2008 11h1min49s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=1000943
;

-- 06/08/2008 11h1min49s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=6506
;

-- 06/08/2008 11h1min49s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=3426
;

-- 06/08/2008 11h1min49s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=3671
;

-- 06/08/2008 11h1min53s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2008-08-06 11:01:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000284
;

-- 06/08/2008 11h2min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2008-08-06 11:02:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000284
;

-- 06/08/2008 11h2min28s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2008-08-06 11:02:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000943
;

-- 06/08/2008 11h27min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Reference (AD_Reference_ID,AD_Client_ID,ValidationType,Name,AD_Org_ID,CreatedBy,Updated,IsActive,Created,UpdatedBy,EntityType,IsOrderByValue) VALUES (1000039,0,'T','LBR_WHLocOtherNF',0,100,TO_DATE('2008-08-06 11:27:53','YYYY-MM-DD HH24:MI:SS'),'Y',TO_DATE('2008-08-06 11:27:53','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N')
;

-- 06/08/2008 11h27min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1000039 AND EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Reference_ID!=t.AD_Reference_ID)
;

-- 06/08/2008 11h31min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Ref_Table (CreatedBy,IsValueDisplayed,Updated,WhereClause,Created,UpdatedBy,AD_Client_ID,AD_Table_ID,AD_Reference_ID,AD_Org_ID,AD_Key,AD_Display,IsActive,EntityType) VALUES (100,'N',TO_DATE('2008-08-06 11:31:05','YYYY-MM-DD HH24:MI:SS'),'M_Locator.M_Warehouse_ID = @M_Warehouse_ID@',TO_DATE('2008-08-06 11:31:05','YYYY-MM-DD HH24:MI:SS'),100,0,207,1000039,0,1389,3012,'Y','LBRA')
;

-- 06/08/2008 11h46min36s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET ColumnName='CreateFrom', Help='The Create From process will create a new document based on information in an existing document selected by the user.', Description='Process which will generate a new document lines based on an existing document', Name='Create lines from', AD_Element_ID=1490,Updated=TO_DATE('2008-08-06 11:46:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000955
;

-- 06/08/2008 11h46min36s BRT
-- Default comment for updating dictionary
UPDATE AD_Column_Trl SET IsTranslated='N' WHERE AD_Column_ID=1000955
;

-- 06/08/2008 11h46min36s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Create lines from', Description='Process which will generate a new document lines based on an existing document', Help='The Create From process will create a new document based on information in an existing document selected by the user.' WHERE AD_Column_ID=1000955 AND IsCentrallyMaintained='Y'
;

-- 06/08/2008 11h46min47s BRT
-- Default comment for updating dictionary
ALTER TABLE C_Order ADD CreateFrom CHAR(1)
;

-- 06/08/2008 11h46min57s BRT
-- Default comment for updating dictionary
ALTER TABLE C_Order DROP COLUMN lbr_CreateManufactureLines
;

-- 06/08/2008 11h49min33s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Element_ID,ColumnName,AD_Client_ID,Name,Created,Updated,PrintName,IsActive,EntityType,AD_Org_ID,CreatedBy,UpdatedBy) VALUES (1000325,'lbr_NFENo',0,'NFe No',TO_DATE('2008-08-06 11:49:33','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2008-08-06 11:49:33','YYYY-MM-DD HH24:MI:SS'),'NFe No','Y','LBRA',0,100,100)
;

-- 06/08/2008 11h49min33s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Description,PrintName,Help,PO_PrintName,PO_Description,PO_Help,PO_Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Description,t.PrintName,t.Help,t.PO_PrintName,t.PO_Description,t.PO_Help,t.PO_Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000325 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 06/08/2008 11h50min17s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Column_ID,AD_Table_ID,EntityType,Version,IsMandatory,IsTranslated,IsIdentifier,SeqNo,CreatedBy,Updated,ColumnName,IsParent,AD_Client_ID,AD_Org_ID,Name,IsActive,FieldLength,IsSelectionColumn,AD_Reference_ID,IsSyncDatabase,Created,IsUpdateable,IsKey,AD_Element_ID,UpdatedBy,IsEncrypted,IsAlwaysUpdateable) VALUES (1000956,1000027,'LBRA',0,'N','N','N',0,100,TO_DATE('2008-08-06 11:50:16','YYYY-MM-DD HH24:MI:SS'),'lbr_NFENo','N',0,0,'NFe No','Y',22,'N',10,'N',TO_DATE('2008-08-06 11:50:16','YYYY-MM-DD HH24:MI:SS'),'Y','N',1000325,100,'N','N')
;

-- 06/08/2008 11h50min17s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000956 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 06/08/2008 11h50min20s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_NotaFiscal ADD lbr_NFENo NVARCHAR2(22)
;

-- 06/08/2008 14h25min51s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Column_ID,AD_Table_ID,EntityType,Version,IsMandatory,IsTranslated,IsIdentifier,SeqNo,CreatedBy,Updated,ColumnName,Help,IsParent,AD_Client_ID,AD_Org_ID,Description,Name,IsActive,FieldLength,IsSelectionColumn,AD_Reference_ID,IsSyncDatabase,Created,IsUpdateable,IsKey,AD_Element_ID,UpdatedBy,IsEncrypted,IsAlwaysUpdateable) VALUES (1000957,326,'LBRA',0,'N','N','N',0,100,TO_DATE('2008-08-06 14:25:51','YYYY-MM-DD HH24:MI:SS'),'QtyDelivered','The Delivered Quantity indicates the quantity of a product that has been delivered.','N',0,0,'Delivered Quantity','Delivered Quantity','Y',10,'N',29,'N',TO_DATE('2008-08-06 14:25:51','YYYY-MM-DD HH24:MI:SS'),'Y','N',528,100,'N','N')
;

-- 06/08/2008 14h25min51s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000957 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 06/08/2008 14h25min55s BRT
-- Default comment for updating dictionary
ALTER TABLE M_ProductionLine ADD QtyDelivered NUMBER
;

-- 07/08/2008 10h20min12s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET DefaultValue='0',Updated=TO_DATE('2008-08-07 10:20:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000957
;

-- 07/08/2008 10h20min12s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Delivered Quantity', Description='Delivered Quantity', Help='The Delivered Quantity indicates the quantity of a product that has been delivered.' WHERE AD_Column_ID=1000957 AND IsCentrallyMaintained='Y'
;

-- 07/08/2008 10h20min17s BRT
-- Default comment for updating dictionary
ALTER TABLE M_ProductionLine MODIFY QtyDelivered NUMBER DEFAULT 0
;

-- 07/08/2008 10h22min49s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2008-08-07 10:22:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000957
;

-- 07/08/2008 10h22min49s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Delivered Quantity', Description='Delivered Quantity', Help='The Delivered Quantity indicates the quantity of a product that has been delivered.' WHERE AD_Column_ID=1000957 AND IsCentrallyMaintained='Y'
;

-- 07/08/2008 10h22min51s BRT
-- Default comment for updating dictionary
ALTER TABLE M_ProductionLine MODIFY QtyDelivered NUMBER DEFAULT 0
;

-- 07/08/2008 10h22min51s BRT
-- Default comment for updating dictionary
UPDATE M_ProductionLine SET QtyDelivered=0 WHERE QtyDelivered IS NULL
;

-- 07/08/2008 10h22min51s BRT
-- Default comment for updating dictionary
ALTER TABLE M_ProductionLine MODIFY QtyDelivered NOT NULL
;

-- 07/08/2008 10h22min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET IsMandatory='N',Updated=TO_DATE('2008-08-07 10:22:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000957
;

-- 07/08/2008 10h22min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Delivered Quantity', Description='Delivered Quantity', Help='The Delivered Quantity indicates the quantity of a product that has been delivered.' WHERE AD_Column_ID=1000957 AND IsCentrallyMaintained='Y'
;

-- 07/08/2008 10h38min52s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Column_ID,AD_Table_ID,EntityType,Version,IsMandatory,IsTranslated,IsIdentifier,SeqNo,CreatedBy,Updated,ColumnName,Help,IsParent,AD_Client_ID,AD_Org_ID,Description,Name,IsActive,FieldLength,IsSelectionColumn,AD_Reference_ID,IsSyncDatabase,Created,IsUpdateable,IsKey,AD_Element_ID,UpdatedBy,IsEncrypted,IsAlwaysUpdateable) VALUES (1000958,260,'U',0,'N','N','N',0,100,TO_DATE('2008-08-07 10:38:52','YYYY-MM-DD HH24:MI:SS'),'M_ProductionLine_ID','The Production Line indicates the production document line (if applicable) for this transaction','N',0,0,'Document Line representing a production','Production Line','Y',10,'N',19,'N',TO_DATE('2008-08-07 10:38:52','YYYY-MM-DD HH24:MI:SS'),'Y','N',1033,100,'N','N')
;

-- 07/08/2008 10h38min52s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000958 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 07/08/2008 10h38min56s BRT
-- Default comment for updating dictionary
ALTER TABLE C_OrderLine ADD M_ProductionLine_ID NUMBER(10)
;

-- 07/08/2008 23h3min33s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (DefaultValue,AD_Column_ID,AD_Table_ID,EntityType,Version,IsMandatory,IsTranslated,IsIdentifier,SeqNo,CreatedBy,Updated,ColumnName,Help,IsParent,AD_Client_ID,AD_Org_ID,Description,Name,IsActive,FieldLength,IsSelectionColumn,AD_Reference_ID,IsSyncDatabase,Created,IsUpdateable,IsKey,AD_Element_ID,UpdatedBy,IsEncrypted,IsAlwaysUpdateable) VALUES ('N',1000959,217,'LBRA',0,'Y','N','N',0,100,TO_DATE('2008-08-07 23:03:32','YYYY-MM-DD HH24:MI:SS'),'lbr_IsManufactured','Defines if the Product is Manufactured','N',0,0,'Defines if the Product is Manufactured','Is Manufactured','Y',1,'N',20,'N',TO_DATE('2008-08-07 23:03:32','YYYY-MM-DD HH24:MI:SS'),'Y','N',1000148,100,'N','N')
;

-- 07/08/2008 23h3min33s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000959 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 07/08/2008 23h3min37s BRT
-- Default comment for updating dictionary
ALTER TABLE C_DocType ADD lbr_IsManufactured CHAR(1) DEFAULT 'N' CHECK (lbr_IsManufactured IN ('Y','N')) NOT NULL
;

-- 08/08/2008 22h18min57s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'Defines if the Product is Manufactured','Y',TO_DATE('2008-08-08 22:18:57','YYYY-MM-DD HH24:MI:SS'),0,1,'Is Manufactured','Y','N','N',1000959,'N','Y',167,1000946,100,TO_DATE('2008-08-08 22:18:57','YYYY-MM-DD HH24:MI:SS'),'N','Defines if the Product is Manufactured','LBRA')
;

-- 08/08/2008 22h18min57s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000946 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 08/08/2008 22h19min17s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=390, DisplayLogic='@DocBaseType@=''POO'' | @DocBaseType@=''MMR''',Updated=TO_DATE('2008-08-08 22:19:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000946
;

-- 11/08/2008 11h18min54s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Column_ID,AD_Table_ID,EntityType,Version,IsMandatory,IsTranslated,IsIdentifier,SeqNo,CreatedBy,Updated,ColumnName,Help,IsParent,AD_Client_ID,AD_Org_ID,Description,Name,IsActive,FieldLength,IsSelectionColumn,AD_Reference_ID,IsSyncDatabase,Created,IsUpdateable,IsKey,AD_Element_ID,UpdatedBy,IsEncrypted,IsAlwaysUpdateable) VALUES (1000960,385,'LBRA',0,'N','N','N',0,100,TO_DATE('2008-08-11 11:18:54','YYYY-MM-DD HH24:MI:SS'),'QtyDelivered','The Delivered Quantity indicates the quantity of a product that has been delivered.','N',0,0,'Delivered Quantity','Delivered Quantity','Y',10,'N',29,'N',TO_DATE('2008-08-11 11:18:54','YYYY-MM-DD HH24:MI:SS'),'Y','N',528,100,'N','N')
;

-- 11/08/2008 11h18min54s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000960 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 11/08/2008 11h18min59s BRT
-- Default comment for updating dictionary
ALTER TABLE M_ProductionPlan ADD QtyDelivered NUMBER
;

-- 11/08/2008 11h19min41s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'Delivered Quantity','Y',TO_DATE('2008-08-11 11:19:41','YYYY-MM-DD HH24:MI:SS'),0,10,'Delivered Quantity','Y','N','N',1000960,'N','Y',1000037,1000947,100,TO_DATE('2008-08-11 11:19:41','YYYY-MM-DD HH24:MI:SS'),'N','The Delivered Quantity indicates the quantity of a product that has been delivered.','LBRA')
;

-- 11/08/2008 11h19min41s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000947 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 11/08/2008 11h20min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y', SeqNo=95,Updated=TO_DATE('2008-08-11 11:20:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000947
;

-- 11/08/2008 11h21min9s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2008-08-11 11:21:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000947
;

-- 11/08/2008 11h21min27s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET DefaultValue='0', IsMandatory='Y',Updated=TO_DATE('2008-08-11 11:21:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000960
;

-- 11/08/2008 11h21min28s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Delivered Quantity', Description='Delivered Quantity', Help='The Delivered Quantity indicates the quantity of a product that has been delivered.' WHERE AD_Column_ID=1000960 AND IsCentrallyMaintained='Y'
;

-- 11/08/2008 11h21min29s BRT
-- Default comment for updating dictionary
ALTER TABLE M_ProductionPlan MODIFY QtyDelivered NUMBER DEFAULT 0
;

-- 11/08/2008 11h21min29s BRT
-- Default comment for updating dictionary
UPDATE M_ProductionPlan SET QtyDelivered=0 WHERE QtyDelivered IS NULL
;

-- 11/08/2008 11h21min29s BRT
-- Default comment for updating dictionary
ALTER TABLE M_ProductionPlan MODIFY QtyDelivered NOT NULL
;

-- 11/08/2008 11h21min34s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET IsMandatory='N',Updated=TO_DATE('2008-08-11 11:21:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000960
;

-- 11/08/2008 11h21min34s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Delivered Quantity', Description='Delivered Quantity', Help='The Delivered Quantity indicates the quantity of a product that has been delivered.' WHERE AD_Column_ID=1000960 AND IsCentrallyMaintained='Y'
;

-- 11/08/2008 11h21min39s BRT
-- Default comment for updating dictionary
ALTER TABLE M_ProductionPlan MODIFY QtyDelivered NUMBER DEFAULT 0
;

-- 11/08/2008 11h21min39s BRT
-- Default comment for updating dictionary
ALTER TABLE M_ProductionPlan MODIFY QtyDelivered NULL
;

-- 11/08/2008 14h42min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Element_ID,ColumnName,AD_Client_ID,Name,Description,Created,Updated,PrintName,Help,IsActive,EntityType,AD_Org_ID,CreatedBy,UpdatedBy) VALUES (1000326,'lbr_IsReturn',0,'Is Return','Defines if the is a return of manufactured products',TO_DATE('2008-08-11 14:42:37','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2008-08-11 14:42:37','YYYY-MM-DD HH24:MI:SS'),'Is Return','Defines if the is a return of manufactured products','Y','LBRA',0,100,100)
;

-- 11/08/2008 14h42min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Description,PrintName,Help,PO_PrintName,PO_Description,PO_Help,PO_Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Description,t.PrintName,t.Help,t.PO_PrintName,t.PO_Description,t.PO_Help,t.PO_Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000326 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 11/08/2008 14h43min40s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Column_ID,AD_Table_ID,EntityType,Version,IsMandatory,IsTranslated,IsIdentifier,SeqNo,CreatedBy,Updated,ColumnName,Help,IsParent,AD_Client_ID,AD_Org_ID,Description,Name,IsActive,FieldLength,IsSelectionColumn,AD_Reference_ID,IsSyncDatabase,Created,IsUpdateable,IsKey,AD_Element_ID,UpdatedBy,IsEncrypted,IsAlwaysUpdateable) VALUES (1000961,217,'LBRA',0,'N','N','N',0,100,TO_DATE('2008-08-11 14:43:40','YYYY-MM-DD HH24:MI:SS'),'lbr_IsReturn','Defines if the is a return of manufactured products','N',0,0,'Defines if the is a return of manufactured products','Is Return','Y',1,'N',20,'N',TO_DATE('2008-08-11 14:43:40','YYYY-MM-DD HH24:MI:SS'),'Y','N',1000326,100,'N','N')
;

-- 11/08/2008 14h43min40s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000961 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 11/08/2008 14h43min47s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET DefaultValue='N', IsMandatory='Y',Updated=TO_DATE('2008-08-11 14:43:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000961
;

-- 11/08/2008 14h43min47s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Is Return', Description='Defines if the is a return of manufactured products', Help='Defines if the is a return of manufactured products' WHERE AD_Column_ID=1000961 AND IsCentrallyMaintained='Y'
;

-- 11/08/2008 14h43min50s BRT
-- Default comment for updating dictionary
ALTER TABLE C_DocType ADD lbr_IsReturn CHAR(1) DEFAULT 'N' CHECK (lbr_IsReturn IN ('Y','N')) NOT NULL
;

-- 11/08/2008 14h44min24s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'Defines if the is a return of manufactured products','Y',TO_DATE('2008-08-11 14:44:23','YYYY-MM-DD HH24:MI:SS'),0,1,'Is Return','Y','N','N',1000961,'N','Y',167,1000948,100,TO_DATE('2008-08-11 14:44:23','YYYY-MM-DD HH24:MI:SS'),'N','Defines if the is a return of manufactured products','LBRA')
;

-- 11/08/2008 14h44min24s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000948 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 11/08/2008 14h44min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y', SeqNo=400, DisplayLogic='@DocBaseType@=''POO'' | @DocBaseType@=''MMR''',Updated=TO_DATE('2008-08-11 14:44:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000948
;

exit
