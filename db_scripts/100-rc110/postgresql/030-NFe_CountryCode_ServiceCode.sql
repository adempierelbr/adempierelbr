-- 17/05/2010 1h25min57s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1100058,0,'lbr_CountryCode',TO_TIMESTAMP('2010-05-17 01:25:56','YYYY-MM-DD HH24:MI:SS'),100,'Country Code used for issue Nota Fiscal','U','Country Code used for issue Nota Fiscal. Codes from BCB (Banco Central do Brasil)','Y','Country Code','Country Code',TO_TIMESTAMP('2010-05-17 01:25:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/05/2010 1h25min57s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1100058 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 17/05/2010 1h26min22s BRT
-- Default comment for updating dictionary
UPDATE AD_Element_Trl SET Name='Código do País',PrintName='Código do País',Description='Código do País usado para emissão de Nota Fiscal',Help='Código do País usado para emissão de Nota Fiscal. Os códigos foram extraídos pela base do BCB (Banco Central do Brasil)',Updated=TO_TIMESTAMP('2010-05-17 01:26:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1100058 AND AD_Language='pt_BR'
;

-- 17/05/2010 1h27min45s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1100059,0,'lbr_ServiceCode',TO_TIMESTAMP('2010-05-17 01:27:45','YYYY-MM-DD HH24:MI:SS'),100,'Service Code used for Nota Fiscal de Servicos Eletronica','U','Service Code used for Nota Fiscal de Servicos Eletronica','Y','Service Code','Service Code',TO_TIMESTAMP('2010-05-17 01:27:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/05/2010 1h27min45s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1100059 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 17/05/2010 1h28min16s BRT
-- Default comment for updating dictionary
UPDATE AD_Element_Trl SET Name='Código do Serviço',PrintName='Código do Serviço',Description='Código do Serviço usado na Nota Fiscal de Serviços Eletrónica',Help='Código do Serviço usado na Nota Fiscal de Serviços Eletrónica',Updated=TO_TIMESTAMP('2010-05-17 01:28:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1100059 AND AD_Language='pt_BR'
;

-- 17/05/2010 1h30min24s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1100126,1100058,0,10,170,'lbr_CountryCode',TO_TIMESTAMP('2010-05-17 01:30:24','YYYY-MM-DD HH24:MI:SS'),100,'Country Code used for issue Nota Fiscal','U',5,'Country Code used for issue Nota Fiscal. Codes from BCB (Banco Central do Brasil)','Y','N','N','N','N','N','N','N','N','N','Y','Country Code',0,TO_TIMESTAMP('2010-05-17 01:30:24','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 17/05/2010 1h30min24s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1100126 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 17/05/2010 1h30min34s BRT
-- Default comment for updating dictionary
ALTER TABLE C_Country ADD COLUMN lbr_CountryCode VARCHAR(5)
;

-- 17/05/2010 1h31min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1100127,1100059,0,10,208,'lbr_ServiceCode',TO_TIMESTAMP('2010-05-17 01:31:36','YYYY-MM-DD HH24:MI:SS'),100,'Service Code used for Nota Fiscal de Servicos Eletronica','U',20,'Service Code used for Nota Fiscal de Servicos Eletronica','Y','N','N','N','N','N','N','N','N','N','Y','Service Code',0,TO_TIMESTAMP('2010-05-17 01:31:36','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 17/05/2010 1h31min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1100127 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 17/05/2010 1h31min44s BRT
-- Default comment for updating dictionary
ALTER TABLE M_Product ADD COLUMN lbr_ServiceCode VARCHAR(20)
;

-- 17/05/2010 1h32min27s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1100126,1100088,0,135,TO_TIMESTAMP('2010-05-17 01:32:26','YYYY-MM-DD HH24:MI:SS'),100,'Country Code used for issue Nota Fiscal',5,'U','Country Code used for issue Nota Fiscal. Codes from BCB (Banco Central do Brasil)','Y','Y','Y','N','N','N','N','N','Country Code',TO_TIMESTAMP('2010-05-17 01:32:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/05/2010 1h32min27s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1100088 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 17/05/2010 1h33min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLength=22, IsSameLine='Y', SeqNo=35,Updated=TO_TIMESTAMP('2010-05-17 01:33:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100088
;

-- 17/05/2010 1h34min55s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1100127,1100089,0,180,TO_TIMESTAMP('2010-05-17 01:34:54','YYYY-MM-DD HH24:MI:SS'),100,'Service Code used for Nota Fiscal de Servicos Eletronica',20,'U','Service Code used for Nota Fiscal de Servicos Eletronica','Y','Y','Y','N','N','N','N','N','Service Code',TO_TIMESTAMP('2010-05-17 01:34:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/05/2010 1h34min55s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1100089 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 17/05/2010 1h37min32s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000000, DisplayLogic='@ProductType@=S', IsSameLine='Y', SeqNo=525,Updated=TO_TIMESTAMP('2010-05-17 01:37:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100089
;

-- 17/05/2010 1h39min56s BRT
-- Default comment for updating dictionary
UPDATE AD_SysConfig SET Value='100-trunk/030-NFe_CountryCode_ServiceCode.sql',Updated=TO_TIMESTAMP('2010-05-17 01:39:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_SysConfig_ID=1100006
;

