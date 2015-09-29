-- 25/09/2015 15h54min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121784,0,'LBR_RegionExport_ID',TO_TIMESTAMP('2015-09-25 15:54:53','YYYY-MM-DD HH24:MI:SS'),100,'Acronym boarding Region or boundary crossing','LBRA','Y','Region Export ','Region Export ',TO_TIMESTAMP('2015-09-25 15:54:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/09/2015 15h54min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121784 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 25/09/2015 15h57min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='UF de Embarque',PrintName='UF de Embarque',Description='Sigla da Região de Embarque ou de transposição de fronteira',Updated=TO_TIMESTAMP('2015-09-25 15:57:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121784 AND AD_Language='pt_BR'
;

-- 25/09/2015 15h58min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121785,0,'LBR_ExportPlace',TO_TIMESTAMP('2015-09-25 15:58:20','YYYY-MM-DD HH24:MI:SS'),100,'Description boarding location or border transposing','LBRA','Y','Export Place','Export Place',TO_TIMESTAMP('2015-09-25 15:58:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/09/2015 15h58min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121785 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 25/09/2015 15h59min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Local de Embarque',PrintName='Local de Embarque',Description='Descrição do Local de Embarque ou de transposição de fronteira',Updated=TO_TIMESTAMP('2015-09-25 15:59:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121785 AND AD_Language='pt_BR'
;

-- 25/09/2015 16h1min0s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121786,0,'LBR_DispatchPlace',TO_TIMESTAMP('2015-09-25 16:00:59','YYYY-MM-DD HH24:MI:SS'),100,'Dispatch Place Description','LBRA','Y','Dispatch Place','Dispatch Place',TO_TIMESTAMP('2015-09-25 16:00:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/09/2015 16h1min0s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121786 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 25/09/2015 16h1min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Local de Despacho',PrintName='Local de Despacho',Description='Descrição do local de despacho',Updated=TO_TIMESTAMP('2015-09-25 16:01:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121786 AND AD_Language='pt_BR'
;

-- 25/09/2015 16h3min15s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,ReadOnlyLogic,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126701,1121784,0,30,157,1000027,1000003,'LBR_RegionExport_ID',TO_TIMESTAMP('2015-09-25 16:03:14','YYYY-MM-DD HH24:MI:SS'),100,'Acronym boarding Region or boundary crossing','LBRA',22,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Region Export ','@IsManual@!Y',0,TO_TIMESTAMP('2015-09-25 16:03:14','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 25/09/2015 16h3min15s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126701 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 25/09/2015 16h4min33s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,ReadOnlyLogic,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126702,1121785,0,10,1000027,'LBR_ExportPlace',TO_TIMESTAMP('2015-09-25 16:04:32','YYYY-MM-DD HH24:MI:SS'),100,'Description boarding location or border transposing','LBRA',60,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Export Place','@IsManual@!Y',0,TO_TIMESTAMP('2015-09-25 16:04:32','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 25/09/2015 16h4min33s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126702 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 25/09/2015 16h5min32s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,ReadOnlyLogic,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126703,1121786,0,10,1000027,'LBR_DispatchPlace',TO_TIMESTAMP('2015-09-25 16:05:31','YYYY-MM-DD HH24:MI:SS'),100,'Dispatch Place Description','LBRA',60,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Dispatch Place','@IsManual@!Y',0,TO_TIMESTAMP('2015-09-25 16:05:31','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 25/09/2015 16h5min32s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126703 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 25/09/2015 16h11min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1126701,1125483,0,1000020,TO_TIMESTAMP('2015-09-25 16:11:49','YYYY-MM-DD HH24:MI:SS'),100,'Acronym boarding Region or boundary crossing',22,'@lbr_TransactionType@=EXP','LBRA','Y','Y','Y','N','N','N','N','N','Region Export ',561,0,TO_TIMESTAMP('2015-09-25 16:11:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/09/2015 16h11min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125483 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/09/2015 16h13min33s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1126702,1125484,0,1000020,TO_TIMESTAMP('2015-09-25 16:13:32','YYYY-MM-DD HH24:MI:SS'),100,'Description boarding location or border transposing',22,'@lbr_TransactionType@=EXP','LBRA','Y','Y','Y','N','N','N','N','N','Export Place',562,0,TO_TIMESTAMP('2015-09-25 16:13:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/09/2015 16h13min33s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125484 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/09/2015 16h14min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1126703,1125485,0,1000020,TO_TIMESTAMP('2015-09-25 16:14:17','YYYY-MM-DD HH24:MI:SS'),100,'Dispatch Place Description',22,'@lbr_TransactionType@=EXP','LBRA','Y','Y','Y','N','N','N','N','Y','Dispatch Place',563,0,TO_TIMESTAMP('2015-09-25 16:14:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/09/2015 16h14min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125485 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 28/09/2015 16h30min36s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NotaFiscal ADD COLUMN LBR_DispatchPlace VARCHAR(60) DEFAULT NULL 
;

-- 28/09/2015 16h30min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NotaFiscal ADD COLUMN LBR_ExportPlace VARCHAR(60) DEFAULT NULL 
;

-- 28/09/2015 16h31min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NotaFiscal ADD COLUMN LBR_RegionExport_ID NUMERIC(10) DEFAULT NULL 
;

-- 25/09/2015 16h15min56s BRT
SELECT Register_Migration_Script ('139-UFFieldToExport.sql') FROM DUAL
;