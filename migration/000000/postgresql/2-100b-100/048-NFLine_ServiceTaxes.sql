-- 27/02/2008 9h14min24s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000279,'lbr_ServiceTaxes',TO_TIMESTAMP('2008-02-27 09:14:23','YYYY-MM-DD HH24:MI:SS'),100,'String with all Taxes Names and Taxes Rates','LBRA','String with all Taxes Names and Taxes Rates','Y','Service Taxes','Service Taxes',TO_TIMESTAMP('2008-02-27 09:14:23','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 27/02/2008 9h14min24s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000279 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 27/02/2008 9h19min50s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000279,10,1000028,'lbr_ServiceTaxes',TO_TIMESTAMP('2008-02-27 09:19:49','YYYY-MM-DD HH24:MI:SS'),100,'String with all Taxes Names and Taxes Rates','LBRA',1000,'String with all Taxes Names and Taxes Rates','Y','N','N','N','N','N','N','N','N','N','Y','Service Taxes',0,TO_TIMESTAMP('2008-02-27 09:19:49','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000711)
;

-- 27/02/2008 9h19min50s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000711 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 27/02/2008 9h19min51s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_NotaFiscalLine ADD COLUMN lbr_ServiceTaxes VARCHAR(1000)
;

-- 27/02/2008 9h25min19s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000711,0,1000030,TO_TIMESTAMP('2008-02-27 09:25:18','YYYY-MM-DD HH24:MI:SS'),100,'String with all Taxes Names and Taxes Rates',1000,'LBRA','String with all Taxes Names and Taxes Rates','Y','Y','Y','N','N','N','N','N','Service Taxes',TO_TIMESTAMP('2008-02-27 09:25:18','YYYY-MM-DD HH24:MI:SS'),0,100,1000632)
;

-- 27/02/2008 9h25min19s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000632 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 27/02/2008 9h27min45s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@lbr_IsService@=''Y''',Updated=TO_TIMESTAMP('2008-02-27 09:27:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000632
;

-- 27/02/2008 9h28min2s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000711,0,1000021,TO_TIMESTAMP('2008-02-27 09:28:01','YYYY-MM-DD HH24:MI:SS'),100,'String with all Taxes Names and Taxes Rates',1000,'LBRA','String with all Taxes Names and Taxes Rates','Y','Y','Y','N','N','N','N','N','Service Taxes',TO_TIMESTAMP('2008-02-27 09:28:01','YYYY-MM-DD HH24:MI:SS'),0,100,1000633)
;

-- 27/02/2008 9h28min2s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000633 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 27/02/2008 9h28min28s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@lbr_IsService@=''Y''',Updated=TO_TIMESTAMP('2008-02-27 09:28:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000633
;

