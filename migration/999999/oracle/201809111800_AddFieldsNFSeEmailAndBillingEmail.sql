SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 11/09/2018 17h32min25s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType) VALUES (1122518,0,0,'Y',TO_DATE('2018-09-11 17:32:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-09-11 17:32:24','YYYY-MM-DD HH24:MI:SS'),100,'LBR_EMailNFSe','NFSe EMail','NFSe EMail separated by semicolon','NFSe EMail separated by semicolon','NFSe EMail')
;

-- 11/09/2018 17h32min52s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging) VALUES (1130427,0,'NFSe EMail','NFSe EMail separated by semicolon','NFSe EMail separated by semicolon',291,'LBR_EMailNFSe',60,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2018-09-11 17:32:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-09-11 17:32:52','YYYY-MM-DD HH24:MI:SS'),100,1122518,'Y','N','LBRA','N','N','N','Y')
;

-- 11/09/2018 17h33min2s BRT
ALTER TABLE C_BPartner ADD LBR_EMailNFSe VARCHAR2(60) DEFAULT NULL 
;

-- 11/09/2018 17h34min49s BRT
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType,AD_Element_UU) VALUES (1122519,0,0,'Y',TO_DATE('2018-09-11 17:34:48','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-09-11 17:34:48','YYYY-MM-DD HH24:MI:SS'),100,'LBR_EMailBilling','Billing EMail','Billing EMail separated by semicolon','Billing EMail separated by semicolon','Billing EMail','LBRA')
;

-- 11/09/2018 17h41min6s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging) VALUES (1130428,0,'Billing EMail','Billing EMail separated by semicolon','Billing EMail separated by semicolon',291,'LBR_EMailBilling',60,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_DATE('2018-09-11 17:41:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-09-11 17:41:05','YYYY-MM-DD HH24:MI:SS'),100,1122519,'Y','N','LBRA','N','N','N','Y','9b244de8-49e1-49bf-9c89-247cfe76499d','Y','N','N','N')
;

-- 11/09/2018 17h41min10s BRT
ALTER TABLE C_BPartner ADD LBR_EMailBilling VARCHAR2(60) DEFAULT NULL 
;

-- 11/09/2018 17h41min30s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType) VALUES (1127492,'NFSe EMail','NFSe EMail separated by semicolon','NFSe EMail separated by semicolon',220,1130427,'Y',60,890,'N','N','N','N',0,0,'Y',TO_DATE('2018-09-11 17:41:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-09-11 17:41:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA')
;

-- 11/09/2018 17h42min4s BRT
UPDATE AD_Field SET SeqNo=271,Updated=TO_DATE('2018-09-11 17:42:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127492
;

-- 11/09/2018 17h42min46s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType) VALUES (1127493,'Billing EMail','Billing EMail separated by semicolon','Billing EMail separated by semicolon',220,1130428,'Y',60,890,'N','N','N','N',0,0,'Y',TO_DATE('2018-09-11 17:42:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-09-11 17:42:45','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA')
;

-- 11/09/2018 17h42min52s BRT
UPDATE AD_Field SET SeqNo=272Updated=TO_DATE('2018-09-11 17:42:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127493
;

SELECT Register_Migration_Script ('201809111800_AddFieldsNFSeEmailAndBillingEmail.sql') FROM DUAL
;