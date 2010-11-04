-- 09/03/2009 9h59min17s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001037,1000016,0,20,293,'lbr_BPTypeBRIsValid',TO_DATE('2009-03-09 09:59:17','YYYY-MM-DD HH24:MI:SS'),100,'''N''','Brazilian BP is Valid','LBRA',1,'Indicates that the CNPJ or CPF is valid and there are no duplicates in the database. It is not possible to change the CNPJ or CPF after the validation.','Y','N','N','N','N','Y','N','N','N','N','Y','Brazilian BP Valid',0,TO_DATE('2009-03-09 09:59:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/03/2009 9h59min17s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001037 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 09/03/2009 10h2min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001038,1000012,0,10,293,'lbr_CCM',TO_DATE('2009-03-09 10:02:36','YYYY-MM-DD HH24:MI:SS'),100,'City Identification Code used in Brazil (City Tax ID)','LBRA',30,'City Identification Code used in Brazil (City Tax ID)','Y','N','N','N','N','N','N','N','N','N','Y','CCM',0,TO_DATE('2009-03-09 10:02:36','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/03/2009 10h2min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001038 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 09/03/2009 10h4min12s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,VFormat,Version) VALUES (0,1001039,1000009,0,10,293,'lbr_CNPJ',TO_DATE('2009-03-09 10:04:12','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify Legal Entities in Brazil','LBRA',18,'Used to identify Legal Entities in Brazil','Y','N','N','N','N','N','N','N','N','N','Y','CNPJ',0,TO_DATE('2009-03-09 10:04:12','YYYY-MM-DD HH24:MI:SS'),100,'00.000.000/0000-00',0)
;

-- 09/03/2009 10h4min12s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001039 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 09/03/2009 10h5min9s BRT
-- Default comment for updating dictionary
ALTER TABLE C_BPartner_Location ADD lbr_BPTypeBRIsValid CHAR(1) DEFAULT 'N' CHECK (lbr_BPTypeBRIsValid IN ('Y','N')) NOT NULL
;

-- 09/03/2009 10h5min15s BRT
-- Default comment for updating dictionary
ALTER TABLE C_BPartner_Location ADD lbr_CCM NVARCHAR2(30)
;

-- 09/03/2009 10h5min22s BRT
-- Default comment for updating dictionary
ALTER TABLE C_BPartner_Location ADD lbr_CNPJ NVARCHAR2(18)
;

-- 09/03/2009 10h5min31s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2009-03-09 10:05:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1001039
;

-- 09/03/2009 10h6min29s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001040,1000014,0,10,293,'lbr_IE',TO_DATE('2009-03-09 10:06:29','YYYY-MM-DD HH24:MI:SS'),100,'Used to Identify the IE (State Tax ID)','U',30,'Used to Identify the IE (State Tax ID)','Y','N','N','N','N','N','N','N','N','N','Y','IE',0,TO_DATE('2009-03-09 10:06:29','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/03/2009 10h6min29s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001040 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 09/03/2009 10h6min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2009-03-09 10:06:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1001040
;

-- 09/03/2009 10h6min52s BRT
-- Default comment for updating dictionary
ALTER TABLE C_BPartner_Location ADD lbr_IE NVARCHAR2(30)
;

-- 09/03/2009 10h7min52s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001041,1000015,0,20,293,'lbr_IsIEExempt',TO_DATE('2009-03-09 10:07:52','YYYY-MM-DD HH24:MI:SS'),100,'''N''','Business Partner is IE Exempt','LBRA',1,'Business Partner is IE Exempt','Y','N','N','N','N','Y','N','N','N','N','Y','IE Exempt',0,TO_DATE('2009-03-09 10:07:52','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/03/2009 10h7min52s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001041 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 09/03/2009 10h7min57s BRT
-- Default comment for updating dictionary
ALTER TABLE C_BPartner_Location ADD lbr_IsIEExempt CHAR(1) DEFAULT 'N' CHECK (lbr_IsIEExempt IN ('Y','N')) NOT NULL
;

-- 09/03/2009 10h12min31s BRT
-- Default comment for updating dictionary
INSERT INTO AD_SysConfig (AD_Client_ID,AD_Org_ID,AD_SysConfig_ID,ConfigurationLevel,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1100010,'C',TO_DATE('2009-03-09 10:12:31','YYYY-MM-DD HH24:MI:SS'),100,'Y/N - Usa um unico cadastro de PN para mesma empresa com varias filiais','LBRA','Y','#LBR_USE_UNIFIED_BP',TO_DATE('2009-03-09 10:12:31','YYYY-MM-DD HH24:MI:SS'),100,'N')
;

-- 09/03/2009 10h13min23s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001037,1001056,0,222,TO_DATE('2009-03-09 10:13:22','YYYY-MM-DD HH24:MI:SS'),100,'Brazilian BP is Valid',1,'LBRA','Indicates that the CNPJ or CPF is valid and there are no duplicates in the database. It is not possible to change the CNPJ or CPF after the validation.','Y','Y','Y','N','N','N','N','N','Brazilian BP Valid',TO_DATE('2009-03-09 10:13:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/03/2009 10h13min23s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001056 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 09/03/2009 10h13min23s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001038,1001057,0,222,TO_DATE('2009-03-09 10:13:23','YYYY-MM-DD HH24:MI:SS'),100,'City Identification Code used in Brazil (City Tax ID)',22,'LBRA','City Identification Code used in Brazil (City Tax ID)','Y','Y','Y','N','N','N','N','N','CCM',TO_DATE('2009-03-09 10:13:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/03/2009 10h13min23s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001057 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 09/03/2009 10h13min23s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001039,1001058,0,222,TO_DATE('2009-03-09 10:13:23','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify Legal Entities in Brazil',18,'LBRA','Used to identify Legal Entities in Brazil','Y','Y','Y','N','N','N','N','N','CNPJ',TO_DATE('2009-03-09 10:13:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/03/2009 10h13min23s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001058 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 09/03/2009 10h13min24s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001040,1001059,0,222,TO_DATE('2009-03-09 10:13:23','YYYY-MM-DD HH24:MI:SS'),100,'Used to Identify the IE (State Tax ID)',22,'LBRA','Used to Identify the IE (State Tax ID)','Y','Y','Y','N','N','N','N','N','IE',TO_DATE('2009-03-09 10:13:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/03/2009 10h13min24s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001059 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 09/03/2009 10h13min24s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001041,1001060,0,222,TO_DATE('2009-03-09 10:13:24','YYYY-MM-DD HH24:MI:SS'),100,'Business Partner is IE Exempt',1,'LBRA','Business Partner is IE Exempt','Y','Y','Y','N','N','N','N','N','IE Exempt',TO_DATE('2009-03-09 10:13:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/03/2009 10h13min24s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001060 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 09/03/2009 10h15min22s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=170,Updated=TO_DATE('2009-03-09 10:15:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001058
;

-- 09/03/2009 10h15min29s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=180,Updated=TO_DATE('2009-03-09 10:15:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001056
;

-- 09/03/2009 10h15min36s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=200,Updated=TO_DATE('2009-03-09 10:15:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001057
;

-- 09/03/2009 10h15min43s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=190,Updated=TO_DATE('2009-03-09 10:15:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001059
;

-- 09/03/2009 10h16min18s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=185,Updated=TO_DATE('2009-03-09 10:16:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001060
;

-- 09/03/2009 10h16min24s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2009-03-09 10:16:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001059
;

-- 09/03/2009 10h16min36s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2009-03-09 10:16:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001056
;

-- 09/03/2009 10h34min31s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@AD_Language@=''pt_BR'' & @lbr_BPTypeBR@=''PJ''',Updated=TO_DATE('2009-03-09 10:34:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000010
;

-- 09/03/2009 10h35min13s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@AD_Language@=''pt_BR'' & @lbr_BPTypeBR@=''PJ'' & @#LBR_USE_UNIFIED_BP@=Y',Updated=TO_DATE('2009-03-09 10:35:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001058
;

-- 09/03/2009 10h35min44s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@AD_Language@=''pt_BR'' & @lbr_BPTypeBR@=''PJ'' & @#LBR_USE_UNIFIED_BP@=''Y''',Updated=TO_DATE('2009-03-09 10:35:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001056
;

-- 09/03/2009 10h35min51s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@AD_Language@=''pt_BR'' & @lbr_BPTypeBR@=''PJ'' & @#LBR_USE_UNIFIED_BP@=''Y''',Updated=TO_DATE('2009-03-09 10:35:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001057
;

-- 09/03/2009 10h35min58s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@AD_Language@=''pt_BR'' & @lbr_BPTypeBR@=''PJ'' & @#LBR_USE_UNIFIED_BP@=''Y''',Updated=TO_DATE('2009-03-09 10:35:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001058
;

-- 09/03/2009 10h36min11s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@AD_Language@=''pt_BR'' & @lbr_BPTypeBR@=''PJ'' & @#LBR_USE_UNIFIED_BP@=''Y''',Updated=TO_DATE('2009-03-09 10:36:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001059
;

-- 09/03/2009 10h36min17s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@AD_Language@=''pt_BR'' & @lbr_BPTypeBR@=''PJ'' & @#LBR_USE_UNIFIED_BP@=''Y''',Updated=TO_DATE('2009-03-09 10:36:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001060
;

-- 09/03/2009 10h37min24s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@AD_Language@=''pt_BR'' & @lbr_BPTypeBR@=''PJ'' & @#LBR_USE_UNIFIED_BP@!''Y''',Updated=TO_DATE('2009-03-09 10:37:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000009
;

-- 09/03/2009 10h37min34s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@AD_Language@=''pt_BR'' & @lbr_IsIEExempt@=''N'' & @#LBR_USE_UNIFIED_BP@!''Y''',Updated=TO_DATE('2009-03-09 10:37:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000012
;

-- 09/03/2009 10h38min28s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@AD_Language@=''pt_BR'' & @#LBR_USE_UNIFIED_BP@!''Y''',Updated=TO_DATE('2009-03-09 10:38:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000013
;

-- 09/03/2009 10h38min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@AD_Language@=''pt_BR'' & @lbr_BPTypeBR@=''PJ''',Updated=TO_DATE('2009-03-09 10:38:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000015
;

-- 09/03/2009 10h38min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@AD_Language@=''pt_BR'' & @lbr_BPTypeBR@=''PF''',Updated=TO_DATE('2009-03-09 10:38:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000011
;

-- 09/03/2009 10h38min57s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@AD_Language@=''pt_BR'' & @lbr_BPTypeBR@=''PF''',Updated=TO_DATE('2009-03-09 10:38:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000014
;

-- 09/03/2009 17h59min47s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET ReadOnlyLogic='@lbr_BPTypeBRIsValid=''Y''',Updated=TO_DATE('2009-03-09 17:59:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1001039
;

-- 09/03/2009 20h29min1s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET DefaultValue='@SQL=SELECT SUBSTR(lbr_CNPJ, 1, 10) AS lbr_CNPJ FROM C_BPartner WHERE C_BPartner.C_BPartner_ID=@C_BPartner_ID@',Updated=TO_DATE('2009-03-09 20:29:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1001039
;

-- 09/03/2009 20h40min33s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2009-03-09 20:40:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001056
;

-- 09/03/2009 20h44min43s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@AD_Language@=''pt_BR'' & @lbr_BPTypeBR@=''PJ'' & @#LBR_USE_UNIFIED_BP@=''Y'' & @lbr_IsIEExempt@=''N''',Updated=TO_DATE('2009-03-09 20:44:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001059
;

exit