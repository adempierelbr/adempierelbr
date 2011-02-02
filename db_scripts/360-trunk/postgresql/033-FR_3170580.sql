-- 02/02/2011 10h29min15s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120115,1000273,0,20,1000010,'lbr_IsService',TO_TIMESTAMP('2011-02-02 10:29:14','YYYY-MM-DD HH24:MI:SS'),100,'N','Defines if the lines is a Service','LBRA',1,'Defines if the lines is a Service','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Is Service',0,TO_TIMESTAMP('2011-02-02 10:29:14','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 02/02/2011 10h29min15s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120115 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/02/2011 10h29min16s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_CFOP ADD COLUMN lbr_IsService CHAR(1) DEFAULT 'N' CHECK (lbr_IsService IN ('Y','N')) NOT NULL
;

-- 02/02/2011 10h30min15s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1120115,1120080,0,1000005,TO_TIMESTAMP('2011-02-02 10:30:14','YYYY-MM-DD HH24:MI:SS'),100,'Defines if the lines is a Service',1,'LBRA','Defines if the lines is a Service','Y','Y','Y','N','N','N','N','N','Is Service',90,TO_TIMESTAMP('2011-02-02 10:30:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/02/2011 10h30min15s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120080 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

UPDATE LBR_CFOP SET lbr_IsService = 'Y' where value like '%.933';

UPDATE AD_SysConfig SET Value='360-trunk/033-FR_3170580.sql' WHERE AD_SysConfig_ID=1100006;
