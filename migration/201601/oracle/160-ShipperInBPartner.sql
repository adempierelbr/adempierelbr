-- 09/12/2015 16h37min1s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1128316,455,0,30,291,'M_Shipper_ID',TO_DATE('2015-12-09 16:36:59','YYYY-MM-DD HH24:MI:SS'),100,'Method or manner of product delivery','LBRA',22,'The Shipper indicates the method of delivering product','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Shipper',0,TO_DATE('2015-12-09 16:36:59','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/12/2015 16h37min1s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128316 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/12/2015 17h1min54s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE C_BPartner ADD M_Shipper_ID NUMBER(10) DEFAULT NULL 
;

-- 09/12/2015 16h43min55s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1128316,1125609,0,223,TO_DATE('2015-12-09 16:43:55','YYYY-MM-DD HH24:MI:SS'),100,'Method or manner of product delivery',14,'@DeliveryViaRule@=''S'' ','LBRA','The Shipper indicates the method of delivering product','Y','Y','Y','N','N','N','N','Y','Shipper',125,0,TO_DATE('2015-12-09 16:43:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/12/2015 16h43min55s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125609 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/12/2015 16h43min55s BRST
SELECT Register_Migration_Script ('160-ShipperInBPartner.sql') FROM DUAL
;

EXIT