-- 19/09/2011 18h40min14s BRT
-- Ajuste para incluir o campo IsTaxIncluded no cadastro das Fórmulas
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1106004,1065,0,20,1000026,'IsTaxIncluded',TO_DATE('2011-09-19 18:40:13','YYYY-MM-DD HH24:MI:SS'),100,'N','Tax is included in the price ','LBRA',1,'The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Price includes Tax',0,TO_DATE('2011-09-19 18:40:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 19/09/2011 18h40min14s BRT
-- Ajuste para incluir o campo IsTaxIncluded no cadastro das Fórmulas
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106004 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 19/09/2011 18h40min26s BRT
-- Ajuste para incluir o campo IsTaxIncluded no cadastro das Fórmulas
ALTER TABLE LBR_TaxFormula ADD IsTaxIncluded CHAR(1) DEFAULT 'N' CHECK (IsTaxIncluded IN ('Y','N')) NOT NULL
;

-- 19/09/2011 18h41min19s BRT
-- Ajuste para incluir o campo IsTaxIncluded no cadastro das Fórmulas
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1106004,1106006,0,1000019,TO_DATE('2011-09-19 18:41:19','YYYY-MM-DD HH24:MI:SS'),100,'Tax is included in the price ',22,'LBRA','The Tax Included checkbox indicates if the prices include tax.  This is also known as the gross price.','Y','Y','Y','N','N','N','N','N','Price includes Tax',110,0,TO_DATE('2011-09-19 18:41:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 19/09/2011 18h41min19s BRT
-- Ajuste para incluir o campo IsTaxIncluded no cadastro das Fórmulas
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106006 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

