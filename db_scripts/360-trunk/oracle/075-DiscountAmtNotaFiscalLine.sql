-- 29/10/2012 17h30min40s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1123543,1395,0,12,1000028,'DiscountAmt',TO_DATE('2012-10-29 17:30:36','YYYY-MM-DD HH24:MI:SS'),100,'Calculated amount of discount','U',13,'The Discount Amount indicates the discount amount for a document or line.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Discount Amount',0,TO_DATE('2012-10-29 17:30:36','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 29/10/2012 17h30min40s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1123543 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 29/10/2012 17h30min50s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NotaFiscalLine ADD DiscountAmt NUMBER DEFAULT NULL 
;

-- 29/10/2012 17h31min27s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1123543,1122353,0,1000021,TO_DATE('2012-10-29 17:31:25','YYYY-MM-DD HH24:MI:SS'),100,'Calculated amount of discount',0,'U','The Discount Amount indicates the discount amount for a document or line.','Y','Y','Y','N','N','N','N','N','Discount Amount',240,0,TO_DATE('2012-10-29 17:31:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/10/2012 17h31min27s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1122353 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 29/10/2012 17h32min51s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field_Trl SET Name='Valor do Desconto',Updated=TO_DATE('2012-10-29 17:32:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1122353 AND AD_Language='pt_BR'
;

-- 30/10/2012 18h44min50s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1123545,1239,0,20,1000027,'IsDiscountPrinted',TO_DATE('2012-10-30 18:44:48','YYYY-MM-DD HH24:MI:SS'),100,'N','Print Discount on Invoice and Order','U',1,'The Discount Printed Checkbox indicates if the discount will be printed on the document.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Discount Printed',0,TO_DATE('2012-10-30 18:44:48','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 30/10/2012 18h44min50s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1123545 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 30/10/2012 18h44min56s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NotaFiscal ADD IsDiscountPrinted CHAR(1) DEFAULT 'N' CHECK (IsDiscountPrinted IN ('Y','N'))
;

--	Atualiza o ultimo script
UPDATE AD_SysConfig SET Value='360-trunk/075-DiscountAmtNotaFiscalLine.sql' WHERE AD_SysConfig_ID=1100006
;



