-- 26/02/2016 17h13min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsActive='Y',Updated=TO_DATE('2016-02-26 17:13:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1106048
;

-- 26/02/2016 17h14min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsMandatory,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1106048,111,1125717,0,1106002,TO_DATE('2016-02-26 17:14:15','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_CFOP',10,'U','Primary key table LBR_CFOP','Y','Y','Y','N','N','N','Y','N','Y','CFOP',265,TO_DATE('2016-02-26 17:14:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/02/2016 17h14min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125717 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 26/02/2016 16h17min27s BRT
SELECT Register_Migration_Script ('193-AddCFOPConfigImposto.sql') FROM DUAL
;

EXIT