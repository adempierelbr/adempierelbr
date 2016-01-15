-- 15/01/2016 16h41min59s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1128698,1718,0,34,1106001,'Script',TO_DATE('2016-01-15 16:41:57','YYYY-MM-DD HH24:MI:SS'),100,'Dynamic Java Language Script to calculate result','LBRA',4000,'Use Java language constructs to define the result of the calculation','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Script',0,TO_DATE('2016-01-15 16:41:57','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 15/01/2016 16h41min59s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128698 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 15/01/2016 16h42min1s BRST
ALTER TABLE LBR_TaxDefinition ADD Script NVARCHAR2(4000) DEFAULT NULL 
;

-- 15/01/2016 16h44min27s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1128698,1125690,0,1106002,TO_DATE('2016-01-15 16:44:25','YYYY-MM-DD HH24:MI:SS'),100,'Dynamic Java Language Script to calculate result',0,'LBRA','Use Java language constructs to define the result of the calculation','Y','Y','Y','N','N','N','N','N','Script',270,0,TO_DATE('2016-01-15 16:44:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/01/2016 16h44min27s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125690 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 15/01/2016 17h7min40s BRST
INSERT INTO AD_FieldGroup (AD_Client_ID,AD_FieldGroup_ID,AD_Org_ID,Created,CreatedBy,EntityType,FieldGroupType,IsActive,IsCollapsedByDefault,Name,Updated,UpdatedBy) VALUES (0,1120058,0,TO_DATE('2016-01-15 17:07:38','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','C','Y','N','Script de Pesquisa',TO_DATE('2016-01-15 17:07:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/01/2016 17h7min40s BRST
INSERT INTO AD_FieldGroup_Trl (AD_Language,AD_FieldGroup_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_FieldGroup_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_FieldGroup t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_FieldGroup_ID=1120058 AND NOT EXISTS (SELECT * FROM AD_FieldGroup_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_FieldGroup_ID=t.AD_FieldGroup_ID)
;

-- 15/01/2016 17h7min51s BRST
UPDATE AD_FieldGroup SET Name='Query Script',Updated=TO_DATE('2016-01-15 17:07:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1120058
;

-- 15/01/2016 17h7min51s BRST
UPDATE AD_FieldGroup_Trl SET IsTranslated='N' WHERE AD_FieldGroup_ID=1120058
;

-- 15/01/2016 17h7min51s BRST
UPDATE AD_FieldGroup_Trl SET Name='Query Script',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_FieldGroup_ID=1120058
;

-- 15/01/2016 17h7min57s BRST
UPDATE AD_Field SET AD_FieldGroup_ID=1120058, DisplayLength=60,Updated=TO_DATE('2016-01-15 17:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125690
;

-- 15/01/2016 17h7min57s BRST
SELECT Register_Migration_Script ('170-TaxDefinitionScript.sql') FROM DUAL
;

EXIT