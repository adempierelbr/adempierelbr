-- 03/09/2019 14h28min50s BRT
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122884,0,'LBR_VAM',TO_TIMESTAMP('2019-09-03 14:28:49','YYYY-MM-DD HH24:MI:SS'),100,'VAT (value-added margin)','LBRA','Y','VAM','VAM',TO_TIMESTAMP('2019-09-03 14:28:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 03/09/2019 14h28min50s BRT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122884 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 03/09/2019 14h29min57s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1131526,1122884,0,12,1000028,'LBR_VAM',TO_TIMESTAMP('2019-09-03 14:29:57','YYYY-MM-DD HH24:MI:SS'),100,'0','VAT (value-added margin)','U',10,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','VAM',0,TO_TIMESTAMP('2019-09-03 14:29:57','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 03/09/2019 14h29min57s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131526 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 03/09/2019 14h30min3s BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_TIMESTAMP('2019-09-03 14:30:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1131526
;

-- 03/09/2019 14h30min4s BRT
ALTER TABLE LBR_NotaFiscalLine ADD COLUMN LBR_VAM NUMERIC DEFAULT '0' NOT NULL
;

-- 03/09/2019 14h30min36s BRT
UPDATE AD_Element SET Description='VAM (value-added margin)',Updated=TO_TIMESTAMP('2019-09-03 14:30:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122884
;

-- 03/09/2019 14h30min36s BRT
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=1122884
;

-- 03/09/2019 14h30min36s BRT
UPDATE AD_Element_Trl SET Description='VAM (value-added margin)',Help=NULL,Name='VAM',PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,PrintName='VAM',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Element_ID=1122884
;

-- 03/09/2019 14h30min36s BRT
UPDATE AD_Column SET ColumnName='LBR_VAM', Name='VAM', Description='VAM (value-added margin)', Help=NULL WHERE AD_Element_ID=1122884
;

-- 03/09/2019 14h30min36s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_VAM', Name='VAM', Description='VAM (value-added margin)', Help=NULL, AD_Element_ID=1122884 WHERE UPPER(ColumnName)='LBR_VAM' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 03/09/2019 14h30min36s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_VAM', Name='VAM', Description='VAM (value-added margin)', Help=NULL WHERE AD_Element_ID=1122884 AND IsCentrallyMaintained='Y'
;

-- 03/09/2019 14h30min36s BRT
UPDATE AD_Field SET Name='VAM', Description='VAM (value-added margin)', Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1122884) AND IsCentrallyMaintained='Y'
;

-- 03/09/2019 14h31min29s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1131526,1128204,0,1000021,TO_TIMESTAMP('2019-09-03 14:31:28','YYYY-MM-DD HH24:MI:SS'),100,'VAM (value-added margin)',0,'LBRA','Y','Y','Y','N','N','N','N','N','VAM',390,0,TO_TIMESTAMP('2019-09-03 14:31:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 03/09/2019 14h31min29s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1128204 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 03/09/2019 14h31min59s BRT
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='MVA',PrintName='MVA',Description='MVA (Margem de Valor Agregado)',Updated=TO_TIMESTAMP('2019-09-03 14:31:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122884 AND AD_Language='pt_BR'
;

-- 03/09/2019 14h33min43s BRT
UPDATE AD_Field SET DisplayLength=22,Updated=TO_TIMESTAMP('2019-09-03 14:33:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128204
;

-- 03/09/2019 14h33min43s BRT
SELECT Register_Migration_Script ('201909031439_ValueAddedMargin.sql') FROM DUAL
;

