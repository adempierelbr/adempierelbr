-- 10/04/2013 15h37min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121297,0,'LBR_LegalProductDescription',TO_TIMESTAMP('2013-04-10 15:37:09','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Legal Product Description','Legal Product Description',TO_TIMESTAMP('2013-04-10 15:37:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/04/2013 15h37min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121297 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 10/04/2013 15h37min48s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET Name='Descrição Legal do Produto',PrintName='Descrição Legal do Produto',Updated=TO_TIMESTAMP('2013-04-10 15:37:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121297 AND AD_Language='pt_BR'
;

-- 10/04/2013 15h38min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124272,1121297,0,10,208,'LBR_LegalProductDescription',TO_TIMESTAMP('2013-04-10 15:38:06','YYYY-MM-DD HH24:MI:SS'),100,'U',255,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Legal Product Description',0,TO_TIMESTAMP('2013-04-10 15:38:06','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10/04/2013 15h38min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124272 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 10/04/2013 15h38min14s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE M_Product ADD COLUMN LBR_LegalProductDescription VARCHAR(255) DEFAULT NULL 
;

-- 10/04/2013 15h38min33s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_TIMESTAMP('2013-04-10 15:38:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1124272
;

-- 10/04/2013 15h38min52s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124272,1123537,0,180,TO_TIMESTAMP('2013-04-10 15:38:51','YYYY-MM-DD HH24:MI:SS'),100,255,'LBRA','Y','Y','Y','N','N','N','N','N','Legal Product Description',TO_TIMESTAMP('2013-04-10 15:38:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/04/2013 15h38min52s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123537 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 29/10/2013 16h31min44s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET Description='Valor que será preenchido no campo Nome do Produto na Nota Fiscal. Se a Descrição Legal do Produto estiver em Branco será utilizado o campo Nome do Produto.',Help='Valor que será preenchido no campo Nome do Produto da Linha da Nota Fiscal. Se a Descrição Legal do Produto estiver em Branco será utilizado o campo Nome do Produto.',Updated=TO_TIMESTAMP('2013-10-29 16:31:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121297 AND AD_Language='pt_BR'
;

-- 29/10/2013 16h33min14s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=55,Updated=TO_TIMESTAMP('2013-10-29 16:33:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123537
;

--	Atualiza o ultimo script
UPDATE AD_SysConfig SET Value='360-trunk/073-LBR_LegalProductDescription.sql' WHERE AD_SysConfig_ID=1100006
;

