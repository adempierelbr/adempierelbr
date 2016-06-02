-- 25/05/2016 18h58min30s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1128800,189,0,19,253,131,'C_BPartner_Location_ID',TO_TIMESTAMP('2016-05-25 18:58:29','YYYY-MM-DD HH24:MI:SS'),100,'Identifies the (ship to) address for this Business Partner','LBRA',10,'The Partner address indicates the location of a Business Partner','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Partner Location',0,TO_TIMESTAMP('2016-05-25 18:58:29','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 25/05/2016 18h58min30s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128800 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 25/05/2016 18h58min37s BRT
ALTER TABLE M_Shipper ADD COLUMN C_BPartner_Location_ID NUMERIC(10) DEFAULT NULL 
;

-- 25/05/2016 18h59min6s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1128800,1125799,0,185,TO_TIMESTAMP('2016-05-25 18:59:05','YYYY-MM-DD HH24:MI:SS'),100,'Identifies the (ship to) address for this Business Partner',14,'LBRA','The Partner address indicates the location of a Business Partner','Y','Y','Y','N','N','N','N','Y','Partner Location',71,0,TO_TIMESTAMP('2016-05-25 18:59:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/05/2016 18h59min6s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125799 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/05/2016 18h59min43s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1128800,1125800,0,1120200,TO_TIMESTAMP('2016-05-25 18:59:43','YYYY-MM-DD HH24:MI:SS'),100,'Identifies the (ship to) address for this Business Partner',14,'LBRA','The Partner address indicates the location of a Business Partner','Y','Y','Y','N','N','N','N','Y','Partner Location',31,0,TO_TIMESTAMP('2016-05-25 18:59:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/05/2016 18h59min43s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125800 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/05/2016 18h59min43s BRT
SELECT Register_Migration_Script ('208-DefaultShipperLoc.sql') FROM DUAL
;
