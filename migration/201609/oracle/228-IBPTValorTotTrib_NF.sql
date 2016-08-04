-- 04/08/2016 14h10min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122291,0,'lbr_vTotTrib',TO_DATE('2016-08-04 14:10:54','YYYY-MM-DD HH24:MI:SS'),100,'Valor aproximado total de tributos federais, estaduais e municipais.','LBRA','Valor aproximado total de tributos federais, estaduais e municipais.','Y','Total de Tributo','Total de Tributo',TO_DATE('2016-08-04 14:10:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 04/08/2016 14h10min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122291 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 04/08/2016 14h11min52s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,ReadOnlyLogic,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1129016,1122291,0,12,1000027,'lbr_vTotTrib',TO_DATE('2016-08-04 14:11:51','YYYY-MM-DD HH24:MI:SS'),100,'Valor aproximado total de tributos federais, estaduais e municipais.','LBRA',22,'Valor aproximado total de tributos federais, estaduais e municipais.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Total de Tributo','@IsManual@!Y',0,TO_DATE('2016-08-04 14:11:51','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 04/08/2016 14h11min52s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1129016 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 04/08/2016 14h12min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NotaFiscal ADD lbr_vTotTrib NUMBER DEFAULT NULL 
;

-- 04/08/2016 14h13min20s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,ReadOnlyLogic,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1129017,1122291,0,12,1000028,'lbr_vTotTrib',TO_DATE('2016-08-04 14:13:19','YYYY-MM-DD HH24:MI:SS'),100,'Valor aproximado total de tributos federais, estaduais e municipais.','LBRA',22,'Valor aproximado total de tributos federais, estaduais e municipais.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Total de Tributo','@IsManual@!Y',0,TO_DATE('2016-08-04 14:13:19','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 04/08/2016 14h13min20s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1129017 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 04/08/2016 14h13min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NotaFiscalLine ADD lbr_vTotTrib NUMBER DEFAULT NULL 
;

-- 04/08/2016 14h24min11s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1129016,1127040,0,1000020,TO_DATE('2016-08-04 14:24:10','YYYY-MM-DD HH24:MI:SS'),100,'Valor aproximado total de tributos federais, estaduais e municipais.',10,'LBRA','Valor aproximado total de tributos federais, estaduais e municipais.','Y','Y','Y','N','N','N','N','Y','Total de Tributo',805,0,TO_DATE('2016-08-04 14:24:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 04/08/2016 14h24min11s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127040 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 04/08/2016 14h24min32s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2016-08-04 14:24:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000347
;

-- 04/08/2016 14h26min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1129017,103,1127041,0,1000021,TO_DATE('2016-08-04 14:26:27','YYYY-MM-DD HH24:MI:SS'),100,'Valor aproximado total de tributos federais, estaduais e municipais.',0,'LBRA','Valor aproximado total de tributos federais, estaduais e municipais.','Y','Y','Y','N','N','N','N','N','Total de Tributo',1009,0,TO_DATE('2016-08-04 14:26:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 04/08/2016 14h26min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127041 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 04/08/2016 14h26min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=245,Updated=TO_DATE('2016-08-04 14:26:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127041
;

-- 04/08/2016 14h26min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
SELECT Register_Migration_Script ('228-IBPTValorTotTrib_NF.sql') FROM DUAL
;

EXIT