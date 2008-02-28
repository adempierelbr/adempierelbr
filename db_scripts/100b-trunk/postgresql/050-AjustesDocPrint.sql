-- 28/02/2008 18h20min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000280,'lbr_CFOPNote',TO_TIMESTAMP('2008-02-28 18:20:02','YYYY-MM-DD HH24:MI:SS'),100,'Defines the CFOP Note','LBRA','Defines the CFOP Note','Y','CFOP Note','CFOP Note',TO_TIMESTAMP('2008-02-28 18:20:02','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 28/02/2008 18h20min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000280 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 28/02/2008 18h20min49s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000280,10,1000027,'lbr_CFOPNote',TO_TIMESTAMP('2008-02-28 18:20:46','YYYY-MM-DD HH24:MI:SS'),100,'Defines the CFOP Note','LBRA',300,'Defines the CFOP Note','Y','N','N','N','N','N','N','N','N','N','Y','CFOP Note',0,TO_TIMESTAMP('2008-02-28 18:20:46','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000712)
;

-- 28/02/2008 18h20min49s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000712 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 28/02/2008 18h20min52s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_NotaFiscal ADD COLUMN lbr_CFOPNote VARCHAR(300)
;

-- 28/02/2008 18h21min14s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000712,0,1000028,TO_TIMESTAMP('2008-02-28 18:21:12','YYYY-MM-DD HH24:MI:SS'),100,'Defines the CFOP Note',300,'LBRA','Defines the CFOP Note','Y','Y','Y','N','N','N','N','N','CFOP Note',TO_TIMESTAMP('2008-02-28 18:21:12','YYYY-MM-DD HH24:MI:SS'),0,100,1000636)
;

-- 28/02/2008 18h21min14s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000636 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 28/02/2008 18h22min19s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=195, AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2008-02-28 18:22:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000636
;

-- 28/02/2008 18h22min29s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000712,0,1000020,TO_TIMESTAMP('2008-02-28 18:22:26','YYYY-MM-DD HH24:MI:SS'),100,'Defines the CFOP Note',300,'LBRA','Defines the CFOP Note','Y','Y','Y','N','N','N','N','N','CFOP Note',TO_TIMESTAMP('2008-02-28 18:22:26','YYYY-MM-DD HH24:MI:SS'),0,100,1000637)
;

-- 28/02/2008 18h22min29s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000637 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 28/02/2008 18h22min46s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=195, AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2008-02-28 18:22:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000637
;

