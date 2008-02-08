-- Feb 4, 2008 4:42:13 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000252,'lbr_LegalMessage',TO_DATE('2008-02-04 16:42:13','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Legal Message','Legal Message',TO_DATE('2008-02-04 16:42:13','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- Feb 4, 2008 4:42:13 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000252 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- Feb 4, 2008 4:43:22 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,1000252,36,1000019,'lbr_LegalMessage',TO_DATE('2008-02-04 16:43:22','YYYY-MM-DD HH24:MI:SS'),100,'U',0,'Y','N','N','N','N','N','N','N','N','N','Y','Legal Message',0,TO_DATE('2008-02-04 16:43:22','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000632)
;

-- Feb 4, 2008 4:43:22 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000632 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- Feb 4, 2008 4:46:12 PM PYST
-- Default comment for updating dictionary
ALTER TABLE LBR_TaxConfig_BPartner ADD lbr_LegalMessage CLOB
;

-- Feb 4, 2008 4:47:06 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2008-02-04 16:47:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000632
;

-- Feb 4, 2008 4:47:06 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Legal Message', Description=NULL, Help=NULL WHERE AD_Column_ID=1000632 AND IsCentrallyMaintained='Y'
;

-- Feb 4, 2008 4:47:09 PM PYST
-- Default comment for updating dictionary
ALTER TABLE LBR_TaxConfig_BPartner MODIFY lbr_LegalMessage CLOB DEFAULT  NULL 
;

-- Feb 4, 2008 5:09:26 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000254,'lbr_TaxStatus',TO_DATE('2008-02-04 17:09:26','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Tax Status','Tax Status',TO_DATE('2008-02-04 17:09:26','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- Feb 4, 2008 5:09:26 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000254 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- Feb 4, 2008 5:09:58 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Element SET ColumnName='lbr_TaxStatus_Origin', Name='Tax Status - Origin', PrintName='Tax Status - Origin',Updated=TO_DATE('2008-02-04 17:09:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000254
;

-- Feb 4, 2008 5:09:58 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=1000254
;

-- Feb 4, 2008 5:09:58 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Column SET ColumnName='lbr_TaxStatus_Origin', Name='Tax Status - Origin', Description=NULL, Help=NULL WHERE AD_Element_ID=1000254
;

-- Feb 4, 2008 5:09:58 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Tax Status - Origin', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1000254) AND IsCentrallyMaintained='Y'
;

-- Feb 4, 2008 5:09:58 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Process_Para SET ColumnName='lbr_TaxStatus_Origin', Name='Tax Status - Origin', Description=NULL, Help=NULL, AD_Element_ID=1000254 WHERE UPPER(ColumnName)='LBR_TAXSTATUS_ORIGIN' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Feb 4, 2008 5:09:59 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Process_Para SET ColumnName='lbr_TaxStatus_Origin', Name='Tax Status - Origin', Description=NULL, Help=NULL WHERE AD_Element_ID=1000254 AND IsCentrallyMaintained='Y'
;

-- Feb 4, 2008 5:09:59 PM PYST
-- Default comment for updating dictionary
UPDATE AD_PrintFormatItem pi SET PrintName='Tax Status - Origin', Name='Tax Status - Origin' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=1000254)
;

-- Feb 4, 2008 5:09:59 PM PYST
-- Default comment for updating dictionary
UPDATE AD_PrintFormatItem pi SET PrintName='Tax Status - Origin', Name='Tax Status - Origin' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=1000254)
;

-- Feb 4, 2008 5:10:57 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000255,'lbr_TaxStatus_Taxing',TO_DATE('2008-02-04 17:10:56','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Tax Status - Taxing','Tax Status - Taxing',TO_DATE('2008-02-04 17:10:56','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- Feb 4, 2008 5:10:57 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000255 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- Feb 4, 2008 5:12:35 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,1000254,17,1000019,'lbr_TaxStatus_Origin',TO_DATE('2008-02-04 17:12:35','YYYY-MM-DD HH24:MI:SS'),100,'U',1,'Y','N','N','N','N','N','N','N','N','N','Y','Tax Status - Origin',0,TO_DATE('2008-02-04 17:12:35','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000634)
;

-- Feb 4, 2008 5:12:35 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000634 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- Feb 4, 2008 5:13:12 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Reference (AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,ValidationType,AD_Client_ID) VALUES (0,1000031,TO_DATE('2008-02-04 17:13:11','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','lbr_TaxStatus_Origin',TO_DATE('2008-02-04 17:13:11','YYYY-MM-DD HH24:MI:SS'),100,'L',0)
;

-- Feb 4, 2008 5:13:12 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1000031 AND EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Reference_ID!=t.AD_Reference_ID)
;

-- Feb 4, 2008 5:14:01 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,Value) VALUES (0,1000031,1000051,TO_DATE('2008-02-04 17:14:01','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','National',TO_DATE('2008-02-04 17:14:01','YYYY-MM-DD HH24:MI:SS'),100,0,'0')
;

-- Feb 4, 2008 5:14:01 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000051 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- Feb 4, 2008 5:14:35 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,Value) VALUES (0,1000031,1000052,TO_DATE('2008-02-04 17:14:35','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Foreign - Direct Import',TO_DATE('2008-02-04 17:14:35','YYYY-MM-DD HH24:MI:SS'),100,0,'1')
;

-- Feb 4, 2008 5:14:35 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000052 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- Feb 4, 2008 5:15:27 PM PYST
-- Default comment for updating dictionary
DELETE FROM AD_Preference WHERE AD_Client_ID=0 AND AD_Org_ID=0 AND AD_User_ID=100 AND AD_Window_ID=101 AND Attribute='EntityType'
;

-- Feb 4, 2008 5:15:27 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Preference (AD_Preference_ID, AD_Client_ID, AD_Org_ID, IsActive, Created,CreatedBy,Updated,UpdatedBy,AD_Window_ID, AD_User_ID, Attribute, Value) VALUES (1000000,0,0, 'Y',SysDate,100,SysDate,100, 101,100,'EntityType','LBRA')
;

-- Feb 4, 2008 5:15:31 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,Value) VALUES (0,1000031,1000053,TO_DATE('2008-02-04 17:15:31','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Foreign - Acquired on local market',TO_DATE('2008-02-04 17:15:31','YYYY-MM-DD HH24:MI:SS'),100,0,'2')
;

-- Feb 4, 2008 5:15:31 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000053 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- Feb 4, 2008 5:16:27 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Reference_Value_ID=1000031,Updated=TO_DATE('2008-02-04 17:16:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000634
;

-- Feb 4, 2008 5:16:27 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Tax Status - Origin', Description=NULL, Help=NULL WHERE AD_Column_ID=1000634 AND IsCentrallyMaintained='Y'
;

-- Feb 4, 2008 5:18:51 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2008-02-04 17:18:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000634
;

-- Feb 4, 2008 5:18:51 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Tax Status - Origin', Description=NULL, Help=NULL WHERE AD_Column_ID=1000634 AND IsCentrallyMaintained='Y'
;

-- Feb 4, 2008 5:18:53 PM PYST
-- Default comment for updating dictionary
ALTER TABLE LBR_TaxConfig_BPartner ADD lbr_TaxStatus_Origin CHAR(1)
;

-- Feb 4, 2008 5:19:05 PM PYST
-- Default comment for updating dictionary
DELETE FROM AD_Preference WHERE AD_Client_ID=0 AND AD_Org_ID=0 AND AD_User_ID=100 AND AD_Window_ID=100 AND Attribute='EntityType'
;

-- Feb 4, 2008 5:19:05 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Preference (AD_Preference_ID, AD_Client_ID, AD_Org_ID, IsActive, Created,CreatedBy,Updated,UpdatedBy,AD_Window_ID, AD_User_ID, Attribute, Value) VALUES (1000001,0,0, 'Y',SysDate,100,SysDate,100, 100,100,'EntityType','LBRA')
;

-- Feb 4, 2008 5:19:30 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,1000255,17,1000019,'lbr_TaxStatus_Taxing',TO_DATE('2008-02-04 17:19:30','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',2,'Y','N','N','N','N','N','N','N','N','N','Y','Tax Status - Taxing',0,TO_DATE('2008-02-04 17:19:30','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000635)
;

-- Feb 4, 2008 5:19:30 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000635 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- Feb 4, 2008 5:19:56 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Reference (AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,ValidationType,AD_Client_ID) VALUES (0,1000032,TO_DATE('2008-02-04 17:19:56','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','lbr_TaxStatus_Taxing',TO_DATE('2008-02-04 17:19:56','YYYY-MM-DD HH24:MI:SS'),100,'L',0)
;

-- Feb 4, 2008 5:19:56 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1000032 AND EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Reference_ID!=t.AD_Reference_ID)
;

-- Feb 4, 2008 5:21:03 PM PYST
-- Default comment for updating dictionary
DELETE FROM AD_Preference WHERE AD_Client_ID=0 AND AD_Org_ID=0 AND AD_User_ID=100 AND AD_Window_ID=101 AND Attribute='EntityType'
;

-- Feb 4, 2008 5:21:03 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Preference (AD_Preference_ID, AD_Client_ID, AD_Org_ID, IsActive, Created,CreatedBy,Updated,UpdatedBy,AD_Window_ID, AD_User_ID, Attribute, Value) VALUES (1000002,0,0, 'Y',SysDate,100,SysDate,100, 101,100,'EntityType','LBRA')
;

-- Feb 4, 2008 5:21:07 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,Value) VALUES (0,1000032,1000054,TO_DATE('2008-02-04 17:21:07','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Integrally Taxed',TO_DATE('2008-02-04 17:21:07','YYYY-MM-DD HH24:MI:SS'),100,0,'00')
;

-- Feb 4, 2008 5:21:07 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000054 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- Feb 4, 2008 5:21:38 PM PYST
-- Default comment for updating dictionary
DELETE FROM AD_Preference WHERE AD_Client_ID=0 AND AD_Org_ID=0 AND AD_User_ID=100 AND AD_Window_ID=101 AND Attribute='EntityType'
;

-- Feb 4, 2008 5:21:38 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Preference (AD_Preference_ID, AD_Client_ID, AD_Org_ID, IsActive, Created,CreatedBy,Updated,UpdatedBy,AD_Window_ID, AD_User_ID, Attribute, Value) VALUES (1000003,0,0, 'Y',SysDate,100,SysDate,100, 101,100,'EntityType','LBRA')
;

-- Feb 4, 2008 5:22:40 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,Value) VALUES (0,1000032,1000055,TO_DATE('2008-02-04 17:22:39','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Taxed and with ICMS charged throught Substituição Tributária',TO_DATE('2008-02-04 17:22:39','YYYY-MM-DD HH24:MI:SS'),100,0,'10')
;

-- Feb 4, 2008 5:22:40 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000055 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- Feb 4, 2008 5:24:05 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,Value) VALUES (0,1000032,1000056,TO_DATE('2008-02-04 17:24:04','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Base calc. reduction',TO_DATE('2008-02-04 17:24:04','YYYY-MM-DD HH24:MI:SS'),100,0,'20')
;

-- Feb 4, 2008 5:24:05 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000056 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- Feb 4, 2008 5:26:01 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,Value) VALUES (0,1000032,1000057,TO_DATE('2008-02-04 17:26:01','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Exempt or not Taxed with ICMS charged throught Subst. Tribut',TO_DATE('2008-02-04 17:26:01','YYYY-MM-DD HH24:MI:SS'),100,0,'30')
;

-- Feb 4, 2008 5:26:01 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000057 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- Feb 4, 2008 5:27:28 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,Value) VALUES (0,1000032,1000058,TO_DATE('2008-02-04 17:27:28','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Exempt',TO_DATE('2008-02-04 17:27:28','YYYY-MM-DD HH24:MI:SS'),100,0,'40')
;

-- Feb 4, 2008 5:27:28 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000058 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- Feb 4, 2008 5:27:35 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Ref_List SET EntityType='LBRA',Updated=TO_DATE('2008-02-04 17:27:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1000057
;

-- Feb 4, 2008 5:28:50 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,Value) VALUES (0,1000032,1000059,TO_DATE('2008-02-04 17:28:50','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Not Taxed',TO_DATE('2008-02-04 17:28:50','YYYY-MM-DD HH24:MI:SS'),100,0,'41')
;

-- Feb 4, 2008 5:28:50 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000059 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- Feb 4, 2008 5:29:32 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,Value) VALUES (0,1000032,1000060,TO_DATE('2008-02-04 17:29:32','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Suspended',TO_DATE('2008-02-04 17:29:32','YYYY-MM-DD HH24:MI:SS'),100,0,'50')
;

-- Feb 4, 2008 5:29:32 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000060 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- Feb 4, 2008 5:29:57 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,Value) VALUES (0,1000032,1000061,TO_DATE('2008-02-04 17:29:56','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Diferimento',TO_DATE('2008-02-04 17:29:56','YYYY-MM-DD HH24:MI:SS'),100,0,'51')
;

-- Feb 4, 2008 5:29:57 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000061 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- Feb 4, 2008 5:30:09 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Ref_List SET Name='Deferred',Updated=TO_DATE('2008-02-04 17:30:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1000061
;

-- Feb 4, 2008 5:30:09 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1000061
;

-- Feb 4, 2008 5:31:42 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,Value) VALUES (0,1000032,1000062,TO_DATE('2008-02-04 17:31:42','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','ICMS already charged by Substituição Tributária',TO_DATE('2008-02-04 17:31:42','YYYY-MM-DD HH24:MI:SS'),100,0,'60')
;

-- Feb 4, 2008 5:31:42 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000062 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- Feb 4, 2008 5:32:42 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,Value) VALUES (0,1000032,1000063,TO_DATE('2008-02-04 17:32:41','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Base calc. reduction and ICMS charged throught Subst. Tribut',TO_DATE('2008-02-04 17:32:41','YYYY-MM-DD HH24:MI:SS'),100,0,'70')
;

-- Feb 4, 2008 5:32:42 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000063 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- Feb 4, 2008 5:33:13 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,Value) VALUES (0,1000032,1000064,TO_DATE('2008-02-04 17:33:13','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Other',TO_DATE('2008-02-04 17:33:13','YYYY-MM-DD HH24:MI:SS'),100,0,'90')
;

-- Feb 4, 2008 5:33:14 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000064 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- Feb 4, 2008 5:33:59 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,1000252,36,1000020,'lbr_LegalMessage',TO_DATE('2008-02-04 17:33:59','YYYY-MM-DD HH24:MI:SS'),100,'U',0,'Y','N','N','N','N','N','N','N','N','N','Y','Legal Message',0,TO_DATE('2008-02-04 17:33:59','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000636)
;

-- Feb 4, 2008 5:33:59 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000636 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- Feb 4, 2008 5:34:04 PM PYST
-- Default comment for updating dictionary
ALTER TABLE LBR_TaxConfig_BPGroup ADD lbr_LegalMessage CLOB
;

-- Feb 4, 2008 5:34:10 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2008-02-04 17:34:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000636
;

-- Feb 4, 2008 5:34:10 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Legal Message', Description=NULL, Help=NULL WHERE AD_Column_ID=1000636 AND IsCentrallyMaintained='Y'
;

-- Feb 4, 2008 5:34:55 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,1000031,1000254,17,1000020,'lbr_TaxStatus_Origin',TO_DATE('2008-02-04 17:34:55','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',1,'Y','N','N','N','N','N','N','N','N','N','Y','Tax Status - Origin',0,TO_DATE('2008-02-04 17:34:55','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000637)
;

-- Feb 4, 2008 5:34:55 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000637 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- Feb 4, 2008 5:34:59 PM PYST
-- Default comment for updating dictionary
ALTER TABLE LBR_TaxConfig_BPGroup ADD lbr_TaxStatus_Origin CHAR(1)
;

-- Feb 4, 2008 5:35:31 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,1000032,1000255,17,1000020,'lbr_TaxStatus_Taxing',TO_DATE('2008-02-04 17:35:31','YYYY-MM-DD HH24:MI:SS'),100,'U',2,'Y','N','N','N','N','N','N','N','N','N','Y','Tax Status - Taxing',0,TO_DATE('2008-02-04 17:35:31','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000638)
;

-- Feb 4, 2008 5:35:31 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000638 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- Feb 4, 2008 5:35:32 PM PYST
-- Default comment for updating dictionary
ALTER TABLE LBR_TaxConfig_BPGroup ADD lbr_TaxStatus_Taxing CHAR(2)
;

-- Feb 4, 2008 5:35:58 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2008-02-04 17:35:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000638
;

-- Feb 4, 2008 5:35:58 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Tax Status - Taxing', Description=NULL, Help=NULL WHERE AD_Column_ID=1000638 AND IsCentrallyMaintained='Y'
;

-- Feb 4, 2008 5:36:26 PM PYST
-- Default comment for updating dictionary
ALTER TABLE LBR_TaxConfig_BPartner MODIFY lbr_LegalMessage CLOB DEFAULT  NULL 
;

-- Feb 4, 2008 5:36:34 PM PYST
-- Default comment for updating dictionary
ALTER TABLE LBR_TaxConfig_BPartner MODIFY lbr_TaxStatus_Origin CHAR(1) DEFAULT  NULL 
;

-- Feb 4, 2008 5:36:38 PM PYST
-- Default comment for updating dictionary
ALTER TABLE LBR_TaxConfig_BPartner ADD lbr_TaxStatus_Taxing CHAR(2)
;

-- Feb 4, 2008 5:37:08 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,1000252,36,1000021,'lbr_LegalMessage',TO_DATE('2008-02-04 17:37:08','YYYY-MM-DD HH24:MI:SS'),100,'U',0,'Y','N','N','N','N','N','N','N','N','N','Y','Legal Message',0,TO_DATE('2008-02-04 17:37:08','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000639)
;

-- Feb 4, 2008 5:37:08 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000639 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- Feb 4, 2008 5:37:10 PM PYST
-- Default comment for updating dictionary
ALTER TABLE LBR_TaxConfig_Product ADD lbr_LegalMessage CLOB
;

-- Feb 4, 2008 5:37:42 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2008-02-04 17:37:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000639
;

-- Feb 4, 2008 5:37:42 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Legal Message', Description=NULL, Help=NULL WHERE AD_Column_ID=1000639 AND IsCentrallyMaintained='Y'
;

-- Feb 4, 2008 5:38:21 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,1000031,1000254,17,1000021,'lbr_TaxStatus_Origin',NULL,TO_DATE('2008-02-04 17:38:21','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',1,'Y','N','N','N','N','N','N','N','N','N','Y','Tax Status - Origin',0,TO_DATE('2008-02-04 17:38:21','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000640)
;

-- Feb 4, 2008 5:38:21 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000640 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- Feb 4, 2008 5:38:22 PM PYST
-- Default comment for updating dictionary
ALTER TABLE LBR_TaxConfig_Product ADD lbr_TaxStatus_Origin CHAR(1)
;

-- Feb 4, 2008 5:39:05 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,1000032,1000255,17,1000021,'lbr_TaxStatus_Taxing',NULL,TO_DATE('2008-02-04 17:39:05','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',2,'Y','N','N','N','N','N','N','N','N','N','Y','Tax Status - Taxing',0,TO_DATE('2008-02-04 17:39:05','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000641)
;

-- Feb 4, 2008 5:39:05 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000641 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- Feb 4, 2008 5:39:07 PM PYST
-- Default comment for updating dictionary
ALTER TABLE LBR_TaxConfig_Product ADD lbr_TaxStatus_Taxing CHAR(2)
;

-- Feb 4, 2008 5:42:12 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,1000252,36,1000022,'lbr_LegalMessage',NULL,TO_DATE('2008-02-04 17:42:12','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',0,'Y','N','N','N','N','N','N','N','N','N','Y','Legal Message',0,TO_DATE('2008-02-04 17:42:12','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000642)
;

-- Feb 4, 2008 5:42:12 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000642 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- Feb 4, 2008 5:42:15 PM PYST
-- Default comment for updating dictionary
ALTER TABLE LBR_TaxConfig_ProductGroup ADD lbr_LegalMessage CLOB
;

-- Feb 4, 2008 5:42:50 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,1000031,1000254,17,1000022,'lbr_TaxStatus_Origin',TO_DATE('2008-02-04 17:42:49','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',1,'Y','N','N','N','N','N','N','N','N','N','Y','Tax Status - Origin',0,TO_DATE('2008-02-04 17:42:49','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000643)
;

-- Feb 4, 2008 5:42:50 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000643 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- Feb 4, 2008 5:42:51 PM PYST
-- Default comment for updating dictionary
ALTER TABLE LBR_TaxConfig_ProductGroup ADD lbr_TaxStatus_Origin CHAR(1)
;

-- Feb 4, 2008 5:43:24 PM PYST
-- Default comment for updating dictionary
ALTER TABLE LBR_TaxConfig_ProductGroup MODIFY lbr_TaxStatus_Origin CHAR(1) DEFAULT  NULL 
;

-- Feb 4, 2008 5:43:52 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,1000032,1000255,17,1000022,'lbr_TaxStatus_Taxing',TO_DATE('2008-02-04 17:43:52','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',2,'Y','N','N','N','N','N','N','N','N','N','Y','Tax Status - Taxing',0,TO_DATE('2008-02-04 17:43:52','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000644)
;

-- Feb 4, 2008 5:43:52 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000644 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- Feb 4, 2008 5:43:53 PM PYST
-- Default comment for updating dictionary
ALTER TABLE LBR_TaxConfig_ProductGroup ADD lbr_TaxStatus_Taxing CHAR(2)
;

-- Feb 4, 2008 5:49:24 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,1000252,36,1000009,'lbr_LegalMessage',TO_DATE('2008-02-04 17:49:24','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',0,'Y','N','N','N','N','N','N','N','N','N','Y','Legal Message',0,TO_DATE('2008-02-04 17:49:24','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000645)
;

-- Feb 4, 2008 5:49:25 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000645 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- Feb 4, 2008 5:49:27 PM PYST
-- Default comment for updating dictionary
ALTER TABLE LBR_NCM ADD lbr_LegalMessage CLOB
;

-- Feb 4, 2008 5:50:32 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,1000031,1000254,17,1000009,'lbr_TaxStatus_Origin',TO_DATE('2008-02-04 17:50:32','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',1,'Y','N','N','N','N','N','N','N','N','N','Y','Tax Status - Origin',0,TO_DATE('2008-02-04 17:50:32','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000646)
;

-- Feb 4, 2008 5:50:32 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000646 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- Feb 4, 2008 5:50:34 PM PYST
-- Default comment for updating dictionary
ALTER TABLE LBR_NCM ADD lbr_TaxStatus_Origin CHAR(1)
;

-- Feb 4, 2008 5:50:58 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,1000032,1000255,17,1000009,'lbr_TaxStatus_Taxing',TO_DATE('2008-02-04 17:50:58','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',2,'Y','N','N','N','N','N','N','N','N','N','Y','Tax Status - Taxing',0,TO_DATE('2008-02-04 17:50:58','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000647)
;

-- Feb 4, 2008 5:50:58 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000647 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- Feb 4, 2008 5:50:59 PM PYST
-- Default comment for updating dictionary
ALTER TABLE LBR_NCM ADD lbr_TaxStatus_Taxing CHAR(2)
;

-- Feb 4, 2008 5:52:33 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,1000252,36,1000012,'lbr_LegalMessage',TO_DATE('2008-02-04 17:52:33','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',0,'Y','N','N','N','N','N','N','N','N','N','Y','Legal Message',0,TO_DATE('2008-02-04 17:52:33','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000648)
;

-- Feb 4, 2008 5:52:33 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000648 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- Feb 4, 2008 5:52:34 PM PYST
-- Default comment for updating dictionary
ALTER TABLE LBR_CFOPLine ADD lbr_LegalMessage CLOB
;

-- Feb 4, 2008 5:52:59 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,1000031,1000254,17,1000012,'lbr_TaxStatus_Origin',NULL,TO_DATE('2008-02-04 17:52:59','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',1,'Y','N','N','N','N','N','N','N','N','N','Y','Tax Status - Origin',0,TO_DATE('2008-02-04 17:52:59','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000649)
;

-- Feb 4, 2008 5:52:59 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000649 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- Feb 4, 2008 5:53:00 PM PYST
-- Default comment for updating dictionary
ALTER TABLE LBR_CFOPLine ADD lbr_TaxStatus_Origin CHAR(1)
;

-- Feb 4, 2008 5:53:29 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,1000032,1000255,17,1000012,'lbr_TaxStatus_Taxing',TO_DATE('2008-02-04 17:53:29','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',2,'Y','N','N','N','N','N','N','N','N','N','Y','Tax Status - Taxing',0,TO_DATE('2008-02-04 17:53:29','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000650)
;

-- Feb 4, 2008 5:53:29 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000650 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- Feb 4, 2008 5:53:36 PM PYST
-- Default comment for updating dictionary
ALTER TABLE LBR_CFOPLine ADD lbr_TaxStatus_Taxing CHAR(2)
;

-- Feb 4, 2008 5:54:19 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000632,0,1000433,1000013,TO_DATE('2008-02-04 17:54:18','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y','Y','Y','N','N','N','N','N','Legal Message',TO_DATE('2008-02-04 17:54:18','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- Feb 4, 2008 5:54:19 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000433 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- Feb 4, 2008 5:54:19 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000634,0,1000434,1000013,TO_DATE('2008-02-04 17:54:19','YYYY-MM-DD HH24:MI:SS'),100,1,'LBRA','Y','Y','Y','N','N','N','N','N','Tax Status - Origin',TO_DATE('2008-02-04 17:54:19','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- Feb 4, 2008 5:54:19 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000434 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- Feb 4, 2008 5:54:19 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000635,0,1000435,1000013,TO_DATE('2008-02-04 17:54:19','YYYY-MM-DD HH24:MI:SS'),100,2,'LBRA','Y','Y','Y','N','N','N','N','N','Tax Status - Taxing',TO_DATE('2008-02-04 17:54:19','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- Feb 4, 2008 5:54:19 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000435 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- Feb 4, 2008 5:54:36 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2008-02-04 17:54:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000435
;

-- Feb 4, 2008 5:54:43 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000636,0,1000436,1000014,TO_DATE('2008-02-04 17:54:43','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y','Y','Y','N','N','N','N','N','Legal Message',TO_DATE('2008-02-04 17:54:43','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- Feb 4, 2008 5:54:43 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000436 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- Feb 4, 2008 5:54:43 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000637,0,1000437,1000014,TO_DATE('2008-02-04 17:54:43','YYYY-MM-DD HH24:MI:SS'),100,1,'LBRA','Y','Y','Y','N','N','N','N','N','Tax Status - Origin',TO_DATE('2008-02-04 17:54:43','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- Feb 4, 2008 5:54:43 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000437 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- Feb 4, 2008 5:54:43 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000638,0,1000438,1000014,TO_DATE('2008-02-04 17:54:43','YYYY-MM-DD HH24:MI:SS'),100,2,'LBRA','Y','Y','Y','N','N','N','N','N','Tax Status - Taxing',TO_DATE('2008-02-04 17:54:43','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- Feb 4, 2008 5:54:43 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000438 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- Feb 4, 2008 5:55:11 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2008-02-04 17:55:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000438
;

-- Feb 4, 2008 5:55:32 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000639,0,1000439,1000015,TO_DATE('2008-02-04 17:55:32','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y','Y','Y','N','N','N','N','N','Legal Message',TO_DATE('2008-02-04 17:55:32','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- Feb 4, 2008 5:55:32 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000439 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- Feb 4, 2008 5:55:32 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000640,0,1000440,1000015,TO_DATE('2008-02-04 17:55:32','YYYY-MM-DD HH24:MI:SS'),100,1,'LBRA','Y','Y','Y','N','N','N','N','N','Tax Status - Origin',TO_DATE('2008-02-04 17:55:32','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- Feb 4, 2008 5:55:33 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000440 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- Feb 4, 2008 5:55:33 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000641,0,1000441,1000015,TO_DATE('2008-02-04 17:55:33','YYYY-MM-DD HH24:MI:SS'),100,2,'LBRA','Y','Y','Y','N','N','N','N','N','Tax Status - Taxing',TO_DATE('2008-02-04 17:55:33','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- Feb 4, 2008 5:55:33 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000441 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- Feb 4, 2008 5:55:39 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2008-02-04 17:55:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000441
;

-- Feb 4, 2008 5:55:50 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000642,0,1000442,1000016,TO_DATE('2008-02-04 17:55:50','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y','Y','Y','N','N','N','N','N','Legal Message',TO_DATE('2008-02-04 17:55:50','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- Feb 4, 2008 5:55:50 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000442 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- Feb 4, 2008 5:55:51 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000643,0,1000443,1000016,TO_DATE('2008-02-04 17:55:50','YYYY-MM-DD HH24:MI:SS'),100,1,'LBRA','Y','Y','Y','N','N','N','N','N','Tax Status - Origin',TO_DATE('2008-02-04 17:55:50','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- Feb 4, 2008 5:55:51 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000443 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- Feb 4, 2008 5:55:51 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000644,0,1000444,1000016,TO_DATE('2008-02-04 17:55:51','YYYY-MM-DD HH24:MI:SS'),100,2,'LBRA','Y','Y','Y','N','N','N','N','N','Tax Status - Taxing',TO_DATE('2008-02-04 17:55:51','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- Feb 4, 2008 5:55:51 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000444 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- Feb 4, 2008 5:56:02 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2008-02-04 17:56:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000444
;

-- Feb 4, 2008 5:56:59 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000648,0,1000445,1000008,TO_DATE('2008-02-04 17:56:59','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y','Y','Y','N','N','N','N','N','Legal Message',TO_DATE('2008-02-04 17:56:59','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- Feb 4, 2008 5:56:59 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000445 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- Feb 4, 2008 5:56:59 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000649,0,1000446,1000008,TO_DATE('2008-02-04 17:56:59','YYYY-MM-DD HH24:MI:SS'),100,1,'LBRA','Y','Y','Y','N','N','N','N','N','Tax Status - Origin',TO_DATE('2008-02-04 17:56:59','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- Feb 4, 2008 5:56:59 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000446 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- Feb 4, 2008 5:56:59 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000650,0,1000447,1000008,TO_DATE('2008-02-04 17:56:59','YYYY-MM-DD HH24:MI:SS'),100,2,'LBRA','Y','Y','Y','N','N','N','N','N','Tax Status - Taxing',TO_DATE('2008-02-04 17:56:59','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- Feb 4, 2008 5:56:59 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000447 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- Feb 4, 2008 5:57:11 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2008-02-04 17:57:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000447
;

-- Feb 4, 2008 5:57:26 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000645,0,1000448,1000004,TO_DATE('2008-02-04 17:57:26','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y','Y','Y','N','N','N','N','N','Legal Message',TO_DATE('2008-02-04 17:57:26','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- Feb 4, 2008 5:57:26 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000448 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- Feb 4, 2008 5:57:26 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000646,0,1000449,1000004,TO_DATE('2008-02-04 17:57:26','YYYY-MM-DD HH24:MI:SS'),100,1,'LBRA','Y','Y','Y','N','N','N','N','N','Tax Status - Origin',TO_DATE('2008-02-04 17:57:26','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- Feb 4, 2008 5:57:26 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000449 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- Feb 4, 2008 5:57:26 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000647,0,1000450,1000004,TO_DATE('2008-02-04 17:57:26','YYYY-MM-DD HH24:MI:SS'),100,2,'LBRA','Y','Y','Y','N','N','N','N','N','Tax Status - Taxing',TO_DATE('2008-02-04 17:57:26','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- Feb 4, 2008 5:57:26 PM PYST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000450 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- Feb 4, 2008 5:57:35 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2008-02-04 17:57:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000449
;

-- Feb 4, 2008 5:58:11 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000276
;

-- Feb 4, 2008 5:58:12 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000448
;

-- Feb 4, 2008 5:58:12 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1000449
;

-- Feb 4, 2008 5:58:12 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1000450
;

-- Feb 4, 2008 5:58:47 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2008-02-04 17:58:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000449
;

-- Feb 4, 2008 5:58:51 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2008-02-04 17:58:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000450
;

-- Feb 4, 2008 6:00:23 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1000137
;

-- Feb 4, 2008 6:00:23 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1000445
;

-- Feb 4, 2008 6:00:23 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1000446
;

-- Feb 4, 2008 6:00:23 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1000447
;

-- Feb 4, 2008 6:01:08 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Column SET FieldLength=0,Updated=TO_DATE('2008-02-04 18:01:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000648
;

-- Feb 4, 2008 6:01:08 PM PYST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Legal Message', Description=NULL, Help=NULL WHERE AD_Column_ID=1000648 AND IsCentrallyMaintained='Y'
;

-- Feb 4, 2008 6:01:09 PM PYST
-- Default comment for updating dictionary
ALTER TABLE LBR_CFOPLine MODIFY lbr_LegalMessage CLOB DEFAULT  NULL 
;

