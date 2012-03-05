-- 22/08/2011 15h20min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (Name,CreatedBy,UpdatedBy,AD_Element_ID,ColumnName,Updated,PrintName,Created,AD_Client_ID,AD_Org_ID,IsActive,EntityType) VALUES ('Nota Fiscal Referenciada',100,100,1120106,'LBR_RefNotaFiscal_ID',TO_TIMESTAMP('2011-08-22 15:20:06','YYYY-MM-DD HH24:MI:SS'),'Nota Fiscal Referenciada',TO_TIMESTAMP('2011-08-22 15:20:06','YYYY-MM-DD HH24:MI:SS'),0,0,'Y','LBRA')
;

-- 22/08/2011 15h20min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Description,PrintName,Help,PO_PrintName,PO_Help,PO_Name,PO_Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Description,t.PrintName,t.Help,t.PO_PrintName,t.PO_Help,t.PO_Name,t.PO_Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1120106 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 22/08/2011 15h20min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (SeqNo,AD_Column_ID,IsTranslated,Name,ColumnName,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,EntityType,IsIdentifier,IsMandatory,AD_Table_ID,Version,AD_Element_ID,AD_Reference_ID,IsSyncDatabase,FieldLength,Created,CreatedBy,Updated,IsParent,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES (0,1120465,'N','Nota Fiscal Referenciada','LBR_RefNotaFiscal_ID',1000026,0,0,'Y','LBRA','N','N',1000027,0,1120106,18,'N',22,TO_TIMESTAMP('2011-08-22 15:20:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2011-08-22 15:20:56','YYYY-MM-DD HH24:MI:SS'),'N','Y','N','N',100,'N','N','N','Y')
;

-- 22/08/2011 15h20min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120465 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 22/08/2011 15h20min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NotaFiscal ADD COLUMN LBR_RefNotaFiscal_ID NUMERIC(10) DEFAULT NULL 
;

-- 22/08/2011 15h24min38s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET MandatoryLogic='lbr_FinNFe=2',Updated=TO_TIMESTAMP('2011-08-22 15:24:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120465
;

-- 22/08/2011 15h24min54s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Field_ID,DisplayLength,IsEncrypted,AD_Org_ID,IsActive,AD_Column_ID,Updated,Name,AD_Client_ID,IsDisplayed,Created,UpdatedBy,EntityType,IsReadOnly,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,CreatedBy,IsSameLine,IsHeading) VALUES (1120324,7,'N',0,'Y',1120455,TO_TIMESTAMP('2011-08-22 15:24:54','YYYY-MM-DD HH24:MI:SS'),'Data contingÃªncia',0,'Y',TO_TIMESTAMP('2011-08-22 15:24:54','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N',1000028,'N','Y',100,'N','N')
;

-- 22/08/2011 15h24min54s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120324 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 22/08/2011 15h24min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Field_ID,DisplayLength,IsEncrypted,AD_Org_ID,IsActive,AD_Column_ID,Updated,Name,AD_Client_ID,IsDisplayed,Created,UpdatedBy,EntityType,IsReadOnly,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,CreatedBy,IsSameLine,IsHeading) VALUES (1120325,256,'N',0,'Y',1120454,TO_TIMESTAMP('2011-08-22 15:24:55','YYYY-MM-DD HH24:MI:SS'),'Motivo contingÃªncia',0,'Y',TO_TIMESTAMP('2011-08-22 15:24:55','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N',1000028,'N','Y',100,'N','N')
;

-- 22/08/2011 15h24min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120325 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 22/08/2011 15h24min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Field_ID,DisplayLength,IsEncrypted,AD_Org_ID,IsActive,AD_Column_ID,Updated,Name,AD_Client_ID,IsDisplayed,Created,UpdatedBy,EntityType,IsReadOnly,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,CreatedBy,IsSameLine,IsHeading) VALUES (1120326,22,'N',0,'Y',1120465,TO_TIMESTAMP('2011-08-22 15:24:55','YYYY-MM-DD HH24:MI:SS'),'Nota Fiscal Referenciada',0,'Y',TO_TIMESTAMP('2011-08-22 15:24:55','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N',1000028,'N','Y',100,'N','N')
;

-- 22/08/2011 15h24min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120326 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 22/08/2011 15h25min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Field_ID,DisplayLength,IsEncrypted,AD_Org_ID,IsActive,AD_Column_ID,Updated,Name,AD_Client_ID,IsDisplayed,Created,UpdatedBy,EntityType,IsReadOnly,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,CreatedBy,IsSameLine,IsHeading) VALUES (1120327,22,'N',0,'Y',1120465,TO_TIMESTAMP('2011-08-22 15:25:22','YYYY-MM-DD HH24:MI:SS'),'Nota Fiscal Referenciada',0,'Y',TO_TIMESTAMP('2011-08-22 15:25:22','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N',1000020,'N','Y',100,'N','N')
;

-- 22/08/2011 15h25min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120327 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 22/08/2011 15h26min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=201, IsSameLine='Y',Updated=TO_TIMESTAMP('2011-08-22 15:26:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120327
;

-- 22/08/2011 15h27min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=141, AD_FieldGroup_ID=1100002,Updated=TO_TIMESTAMP('2011-08-22 15:27:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120324
;

-- 22/08/2011 15h28min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=22, SeqNo=142, IsSameLine='Y', AD_FieldGroup_ID=1100002,Updated=TO_TIMESTAMP('2011-08-22 15:28:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120325
;

-- 22/08/2011 15h29min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=141,Updated=TO_TIMESTAMP('2011-08-22 15:29:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120325
;

-- 22/08/2011 15h29min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=142,Updated=TO_TIMESTAMP('2011-08-22 15:29:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120324
;

-- 22/08/2011 15h29min27s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=211, IsSameLine='Y',Updated=TO_TIMESTAMP('2011-08-22 15:29:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120326
;

-- 22/08/2011 15h30min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2011-08-22 15:30:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120325
;

-- 22/08/2011 15h30min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2011-08-22 15:30:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120324
;

-- 22/08/2011 15h31min38s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2011-08-22 15:31:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120465
;

-- 22/08/2011 15h32min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET MandatoryLogic='@lbr_FinNFe@=2',Updated=TO_TIMESTAMP('2011-08-22 15:32:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120465
;

-- 22/08/2011 15h32min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsMandatory='N',Updated=TO_TIMESTAMP('2011-08-22 15:32:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120465
;

-- 22/08/2011 15h34min20s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@lbr_FinNFe@=2',Updated=TO_TIMESTAMP('2011-08-22 15:34:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120326
;

-- 22/08/2011 15h35min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@lbr_FinNFe@=2',Updated=TO_TIMESTAMP('2011-08-22 15:35:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120327
;

UPDATE AD_SysConfig SET Value='360-trunk/048-NFeReference.sql' WHERE AD_SysConfig_ID=1100006;
