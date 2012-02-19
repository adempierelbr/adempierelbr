-- 14/12/2011 11h20min0s BRST
-- Tax Status e Legal Message na LBR_NFLineTax
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1106068,1106004,0,19,1000035,'LBR_TaxStatus_ID',TO_DATE('2011-12-14 11:19:58','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Tax Status',0,TO_DATE('2011-12-14 11:19:58','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/12/2011 11h20min0s BRST
-- Tax Status e Legal Message na LBR_NFLineTax
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106068 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/12/2011 11h20min7s BRST
-- Tax Status e Legal Message na LBR_NFLineTax
ALTER TABLE LBR_NFLineTax ADD LBR_TaxStatus_ID NUMBER(10) DEFAULT NULL 
;

-- 14/12/2011 11h20min21s BRST
-- Tax Status e Legal Message na LBR_NFLineTax
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1106069,1000253,0,19,1000035,'LBR_LegalMessage_ID',TO_DATE('2011-12-14 11:20:21','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Legal Message','LBRA',10,'Primary key table LBR_LegalMessage','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Legal Message',0,TO_DATE('2011-12-14 11:20:21','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/12/2011 11h20min21s BRST
-- Tax Status e Legal Message na LBR_NFLineTax
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106069 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/12/2011 11h20min24s BRST
-- Tax Status e Legal Message na LBR_NFLineTax
ALTER TABLE LBR_NFLineTax ADD LBR_LegalMessage_ID NUMBER(10) DEFAULT NULL 
;

-- 14/12/2011 11h20min46s BRST
-- Tax Status e Legal Message na LBR_NFLineTax
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1100178,1106069,0,1000027,TO_DATE('2011-12-14 11:20:46','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record',255,'LBRA','A description is limited to 255 characters.','Y','Y','Y','N','N','N','N','N','Description',TO_DATE('2011-12-14 11:20:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/12/2011 11h20min46s BRST
-- Tax Status e Legal Message na LBR_NFLineTax
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106069 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/12/2011 11h20min47s BRST
-- Tax Status e Legal Message na LBR_NFLineTax
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106069,1106070,0,1000027,TO_DATE('2011-12-14 11:20:46','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Legal Message',10,'LBRA','Primary key table LBR_LegalMessage','Y','Y','Y','N','N','N','N','N','Legal Message',TO_DATE('2011-12-14 11:20:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/12/2011 11h20min47s BRST
-- Tax Status e Legal Message na LBR_NFLineTax
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106070 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/12/2011 11h20min47s BRST
-- Tax Status e Legal Message na LBR_NFLineTax
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106068,1106071,0,1000027,TO_DATE('2011-12-14 11:20:47','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','Y','N','N','N','N','N','Tax Status',TO_DATE('2011-12-14 11:20:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/12/2011 11h20min47s BRST
-- Tax Status e Legal Message na LBR_NFLineTax
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106071 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/12/2011 11h21min55s BRST
-- Tax Status e Legal Message na LBR_NFLineTax
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2011-12-14 11:21:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106069
;

-- 14/12/2011 11h22min8s BRST
-- Tax Status e Legal Message na LBR_NFLineTax
UPDATE AD_Field SET DisplayLength=22, SeqNo=100,Updated=TO_DATE('2011-12-14 11:22:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106071
;

-- 14/12/2011 11h22min15s BRST
-- Tax Status e Legal Message na LBR_NFLineTax
UPDATE AD_Field SET DisplayLength=22, IsSameLine='Y', SeqNo=110,Updated=TO_DATE('2011-12-14 11:22:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106070
;

