-- 14/12/2011 16h18min0s BRST
-- Campo de ST por NCM e Estado
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1106070,209,0,18,157,1106000,1000003,'C_Region_ID',TO_TIMESTAMP('2011-12-14 16:17:58','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a geographical Region','LBRA',10,'The Region identifies a unique Region for this Country.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Region',0,TO_TIMESTAMP('2011-12-14 16:17:58','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/12/2011 16h18min0s BRST
-- Campo de ST por NCM e Estado
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106070 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/12/2011 16h18min6s BRST
-- Campo de ST por NCM e Estado
ALTER TABLE LBR_NCMTax ADD COLUMN C_Region_ID NUMERIC(10) DEFAULT NULL 
;

-- 14/12/2011 16h19min9s BRST
-- Campo de ST por NCM e Estado
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1106071,1000248,0,20,1106000,'lbr_HasSubstitution',TO_TIMESTAMP('2011-12-14 16:19:08','YYYY-MM-DD HH24:MI:SS'),100,'N','Defines if the record has Substituion','LBRA',1,'Defines if the record has Substituion','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Has Substitution',0,TO_TIMESTAMP('2011-12-14 16:19:08','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/12/2011 16h19min9s BRST
-- Campo de ST por NCM e Estado
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106071 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/12/2011 16h19min15s BRST
-- Campo de ST por NCM e Estado
ALTER TABLE LBR_NCMTax ADD COLUMN lbr_HasSubstitution CHAR(1) DEFAULT 'N' CHECK (lbr_HasSubstitution IN ('Y','N')) NOT NULL
;

-- 14/12/2011 16h20min50s BRST
-- Campo de ST por NCM e Estado
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106071,1106072,0,1106000,TO_TIMESTAMP('2011-12-14 16:20:49','YYYY-MM-DD HH24:MI:SS'),100,'Defines if the record has Substituion',1,'LBRA','Defines if the record has Substituion','Y','Y','Y','N','N','N','N','N','Has Substitution',TO_TIMESTAMP('2011-12-14 16:20:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/12/2011 16h20min50s BRST
-- Campo de ST por NCM e Estado
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106072 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/12/2011 16h20min50s BRST
-- Campo de ST por NCM e Estado
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106070,1106073,0,1106000,TO_TIMESTAMP('2011-12-14 16:20:50','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a geographical Region',10,'LBRA','The Region identifies a unique Region for this Country.','Y','Y','Y','N','N','N','N','N','Region',TO_TIMESTAMP('2011-12-14 16:20:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/12/2011 16h20min50s BRST
-- Campo de ST por NCM e Estado
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106073 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/12/2011 16h21min54s BRST
-- Campo de ST por NCM e Estado
UPDATE AD_Field SET DisplayLength=22,Updated=TO_TIMESTAMP('2011-12-14 16:21:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106008
;

-- 14/12/2011 16h22min12s BRST
-- Campo de ST por NCM e Estado
UPDATE AD_Field SET AD_FieldGroup_ID=111, SeqNo=55,Updated=TO_TIMESTAMP('2011-12-14 16:22:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106073
;

-- 14/12/2011 16h22min18s BRST
-- Campo de ST por NCM e Estado
UPDATE AD_Field SET DisplayLength=22, IsSameLine='Y', SeqNo=56,Updated=TO_TIMESTAMP('2011-12-14 16:22:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106072
;

-- 14/12/2011 16h24min4s BRST
-- Campo de ST por NCM e Estado
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1106072,1000248,0,20,1000009,'lbr_HasSubstitution',TO_TIMESTAMP('2011-12-14 16:24:04','YYYY-MM-DD HH24:MI:SS'),100,'N','Defines if the record has Substituion','LBRA',1,'Defines if the record has Substituion','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Has Substitution',0,TO_TIMESTAMP('2011-12-14 16:24:04','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/12/2011 16h24min4s BRST
-- Campo de ST por NCM e Estado
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106072 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/12/2011 16h24min7s BRST
-- Campo de ST por NCM e Estado
ALTER TABLE LBR_NCM ADD COLUMN lbr_HasSubstitution CHAR(1) DEFAULT 'N' CHECK (lbr_HasSubstitution IN ('Y','N')) NOT NULL
;

-- 14/12/2011 16h24min44s BRST
-- Campo de ST por NCM e Estado
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106072,1106074,0,1000004,TO_TIMESTAMP('2011-12-14 16:24:44','YYYY-MM-DD HH24:MI:SS'),100,'Defines if the record has Substituion',1,'LBRA','Defines if the record has Substituion','Y','Y','Y','N','N','N','N','N','Has Substitution',TO_TIMESTAMP('2011-12-14 16:24:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/12/2011 16h24min44s BRST
-- Campo de ST por NCM e Estado
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106074 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/12/2011 16h25min2s BRST
-- Campo de ST por NCM e Estado
UPDATE AD_Field SET SeqNo=50,Updated=TO_TIMESTAMP('2011-12-14 16:25:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000276
;

-- 14/12/2011 16h25min7s BRST
-- Campo de ST por NCM e Estado
UPDATE AD_Field SET DisplayLength=22, IsSameLine='Y', SeqNo=60,Updated=TO_TIMESTAMP('2011-12-14 16:25:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106074
;

