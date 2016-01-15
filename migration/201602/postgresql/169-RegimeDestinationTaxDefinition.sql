-- 14/01/2016 16h40min29s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1128696,1121529,0,17,1120183,1106001,'LBR_TaxRegime',TO_TIMESTAMP('2016-01-14 16:40:28','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Tax Regime',0,TO_TIMESTAMP('2016-01-14 16:40:28','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/01/2016 16h40min29s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128696 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/01/2016 16h44min22s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1128697,1000144,0,17,1000012,1106001,'lbr_DestionationType',TO_TIMESTAMP('2016-01-14 16:44:21','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Destination Type','LBRA',1,'Defines the Destination Type','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Destination Type',0,TO_TIMESTAMP('2016-01-14 16:44:21','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/01/2016 16h44min22s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128697 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/01/2016 16h44min30s BRST
ALTER TABLE LBR_TaxDefinition ADD COLUMN lbr_DestionationType CHAR(1) DEFAULT NULL 
;

-- 14/01/2016 16h44min56s BRST
ALTER TABLE LBR_TaxDefinition ADD COLUMN LBR_TaxRegime CHAR(1) DEFAULT NULL 
;

-- 14/01/2016 16h46min56s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1128697,1125688,0,1106002,TO_TIMESTAMP('2016-01-14 16:46:55','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Destination Type',22,'LBRA','Defines the Destination Type','Y','Y','Y','N','N','N','N','N','Destination Type',235,0,TO_TIMESTAMP('2016-01-14 16:46:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/01/2016 16h46min56s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125688 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/01/2016 16h48min21s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1128696,1125689,0,1106002,TO_TIMESTAMP('2016-01-14 16:48:20','YYYY-MM-DD HH24:MI:SS'),100,22,'LBRA','Y','Y','Y','N','N','N','N','N','Tax Regime',240,0,TO_TIMESTAMP('2016-01-14 16:48:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/01/2016 16h48min21s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125689 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/01/2016 16h48min37s BRST
UPDATE AD_Field SET AD_FieldGroup_ID=113,Updated=TO_TIMESTAMP('2016-01-14 16:48:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125689
;

-- 14/01/2016 16h48min45s BRST
UPDATE AD_Field SET AD_FieldGroup_ID=NULL,Updated=TO_TIMESTAMP('2016-01-14 16:48:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106036
;

-- 14/01/2016 16h48min53s BRST
UPDATE AD_Field SET SeqNo=245,Updated=TO_TIMESTAMP('2016-01-14 16:48:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106036
;

-- 14/01/2016 16h49min31s BRST
UPDATE AD_Field SET DisplayLength=10,Updated=TO_TIMESTAMP('2016-01-14 16:49:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125688
;

-- 14/01/2016 16h49min38s BRST
UPDATE AD_Field SET DisplayLength=10,Updated=TO_TIMESTAMP('2016-01-14 16:49:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125689
;

-- 15/01/2016 18h14min28s BRST
UPDATE AD_Field SET SeqNo=87,IsSameLine='Y',AD_FieldGroup_ID=NULL,Updated=TO_TIMESTAMP('2016-01-15 18:14:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125688
;

-- 15/01/2016 18h14min53s BRST
UPDATE AD_Field SET SeqNo=84,AD_FieldGroup_ID=NULL,Updated=TO_TIMESTAMP('2016-01-15 18:14:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125689
;

-- 14/01/2016 16h49min38s BRST
SELECT Register_Migration_Script ('167-RegimeDestinationTaxDefinition.sql') FROM DUAL
;