-- 30/10/2015 17h5min9s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126824,613,0,18,134,114,'User1_ID',TO_TIMESTAMP('2015-10-30 17:05:08','YYYY-MM-DD HH24:MI:SS'),100,'User defined list element #1','U',22,'The user defined element displays the optional elements that have been defined for this account combination.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','User List 1',0,TO_TIMESTAMP('2015-10-30 17:05:08','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 30/10/2015 17h5min9s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126824 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 30/10/2015 17h5min26s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_TIMESTAMP('2015-10-30 17:05:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126824
;

-- 30/10/2015 17h5min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE AD_User ADD COLUMN User1_ID NUMERIC(10) DEFAULT NULL 
;

-- 30/10/2015 17h7min14s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126825,613,0,18,134,702,'User1_ID',TO_TIMESTAMP('2015-10-30 17:07:13','YYYY-MM-DD HH24:MI:SS'),100,'User defined list element #1','U',22,'The user defined element displays the optional elements that have been defined for this account combination.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','User List 1',0,TO_TIMESTAMP('2015-10-30 17:07:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 30/10/2015 17h7min14s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126825 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 30/10/2015 17h7min21s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE M_Requisition ADD COLUMN User1_ID NUMERIC(10) DEFAULT NULL 
;

-- 30/10/2015 17h11min55s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126826,613,0,18,134,410,'User1_ID',TO_TIMESTAMP('2015-10-30 17:11:54','YYYY-MM-DD HH24:MI:SS'),100,'User defined list element #1','LBRA',22,'The user defined element displays the optional elements that have been defined for this account combination.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','User List 1',0,TO_TIMESTAMP('2015-10-30 17:11:54','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 30/10/2015 17h11min55s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126826 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 30/10/2015 17h12min7s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE C_CashLine ADD COLUMN User1_ID NUMERIC(10) DEFAULT NULL 
;

-- 30/10/2015 17h12min28s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_TIMESTAMP('2015-10-30 17:12:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126825
;

-- 30/10/2015 17h12min29s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO t_alter_column values('m_requisition','User1_ID','NUMERIC(10)',null,'NULL')
;

-- 30/10/2015 17h13min51s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1126826,1125564,0,339,TO_TIMESTAMP('2015-10-30 17:13:50','YYYY-MM-DD HH24:MI:SS'),100,'User defined list element #1',22,'LBRA','The user defined element displays the optional elements that have been defined for this account combination.','Y','Y','Y','N','N','N','N','N','User List 1',180,0,TO_TIMESTAMP('2015-10-30 17:13:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/10/2015 17h13min51s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125564 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 30/10/2015 17h27min24s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1126825,1125565,0,641,TO_TIMESTAMP('2015-10-30 17:27:23','YYYY-MM-DD HH24:MI:SS'),100,'User defined list element #1',22,'LBRA','The user defined element displays the optional elements that have been defined for this account combination.','Y','Y','Y','N','N','N','N','Y','User List 1',125,0,TO_TIMESTAMP('2015-10-30 17:27:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/10/2015 17h27min24s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125565 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 30/10/2015 17h45min55s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1126824,1125566,0,118,TO_TIMESTAMP('2015-10-30 17:45:53','YYYY-MM-DD HH24:MI:SS'),100,'User defined list element #1',75,'U','The user defined element displays the optional elements that have been defined for this account combination.','Y','Y','Y','N','N','N','N','N','User List 1',310,0,TO_TIMESTAMP('2015-10-30 17:45:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/10/2015 17h45min55s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125566 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 30/10/2015 17h45min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET EntityType='LBRA',Updated=TO_TIMESTAMP('2015-10-30 17:45:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125566
;

-- 30/10/2015 18h28min0s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=22, SeqNo=75,Updated=TO_TIMESTAMP('2015-10-30 18:28:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125566
;

-- 30/10/2015 18h45min46s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@$Element_U1@=Y',Updated=TO_TIMESTAMP('2015-10-30 18:45:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125566
;

-- 30/10/2015 18h46min17s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@$Element_U1@=Y',Updated=TO_TIMESTAMP('2015-10-30 18:46:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125564
;

-- 30/10/2015 18h46min54s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@$Element_U1@=Y',Updated=TO_TIMESTAMP('2015-10-30 18:46:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125565
;

-- 03/11/2015 10h43min31s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,1120117,'User1_ID IN (SELECT User1_ID FROM AD_User WHERE AD_User_ID = M_Requisition.AD_User_ID)',TO_TIMESTAMP('2015-11-03 10:43:30','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','AD_User_User1_ID','S',TO_TIMESTAMP('2015-11-03 10:43:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 03/11/2015 10h43min49s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Val_Rule_ID=1120117,Updated=TO_TIMESTAMP('2015-11-03 10:43:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126825
;

-- 03/11/2015 10h47min11s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Val_Rule SET Code='C_Element_ID IN (SELECT User1_ID FROM AD_User WHERE AD_User_ID = M_Requisition.AD_User_ID)',Updated=TO_TIMESTAMP('2015-11-03 10:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=1120117
;

-- 03/11/2015 10h51min12s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Val_Rule SET Code='C_Element_ID IN (SELECT User1_ID FROM AD_User WHERE AD_User.AD_User_ID = AD_User_ID)',Updated=TO_TIMESTAMP('2015-11-03 10:51:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=1120117
;

-- 03/11/2015 11h0min52s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Val_Rule SET Code='C_ElementValue_ID IN (SELECT User1_ID FROM AD_User WHERE AD_User.AD_User_ID = @AD_User_ID@)',Updated=TO_TIMESTAMP('2015-11-03 11:00:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=1120117
;

-- 03/11/2015 11h2min44s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Val_Rule SET Code='C_ElementValue.C_ElementValue_ID IN (SELECT User1_ID FROM AD_User WHERE AD_User.AD_User_ID = @AD_User_ID@)',Updated=TO_TIMESTAMP('2015-11-03 11:02:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=1120117
;

-- 03/11/2015 10h43min49s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Val_Rule_ID=null,Updated=TO_TIMESTAMP('2015-11-03 10:43:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126825
;

-- 03/11/2015 11h2min44s BRST
SELECT Register_Migration_Script ('150-AddCampoCentrodeCusto.sql') FROM DUAL
;