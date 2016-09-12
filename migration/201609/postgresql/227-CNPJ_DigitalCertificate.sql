-- 02/08/2016 10h0min27s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,VFormat,Version) VALUES (0,1128992,1000009,0,10,1100000,'lbr_CNPJ',TO_TIMESTAMP('2016-08-02 10:00:25','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify Legal Entities in Brazil','LBRA',18,'Used to identify Legal Entities in Brazil','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','CNPJ',0,TO_TIMESTAMP('2016-08-02 10:00:25','YYYY-MM-DD HH24:MI:SS'),100,'00.000.000/0000-00',0)
;

-- 02/08/2016 10h0min27s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128992 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/08/2016 10h0min28s BRT
ALTER TABLE LBR_DigitalCertificate ADD COLUMN lbr_CNPJ VARCHAR(18) DEFAULT NULL 
;

-- 02/08/2016 10h1min2s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1128992,1127024,0,1100000,TO_TIMESTAMP('2016-08-02 10:01:01','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify Legal Entities in Brazil',18,'LBRA','Used to identify Legal Entities in Brazil','Y','Y','Y','N','N','N','N','N','CNPJ',TO_TIMESTAMP('2016-08-02 10:01:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/08/2016 10h1min2s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127024 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 02/08/2016 10h4min52s BRT
UPDATE AD_Field SET DisplayLogic='@lbr_CNPJ@!''''', IsReadOnly='Y', SeqNo=130,Updated=TO_TIMESTAMP('2016-08-02 10:04:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127024
;

-- 02/08/2016 10h5min5s BRT
UPDATE AD_Column SET AD_Reference_ID=16,Updated=TO_TIMESTAMP('2016-08-02 10:05:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1100040
;

-- 02/08/2016 10h5min7s BRT
INSERT INTO t_alter_column values('lbr_digitalcertificate','ValidFrom','TIMESTAMP',null,null)
;

-- 02/08/2016 10h5min13s BRT
UPDATE AD_Column SET AD_Reference_ID=16,Updated=TO_TIMESTAMP('2016-08-02 10:05:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1100041
;

-- 02/08/2016 10h5min14s BRT
INSERT INTO t_alter_column values('lbr_digitalcertificate','ValidTo','TIMESTAMP',null,'NULL')
;

-- 02/08/2016 10h5min14s BRT
SELECT Register_Migration_Script ('227-CNPJ_DigitalCertificate.sql') FROM DUAL
;