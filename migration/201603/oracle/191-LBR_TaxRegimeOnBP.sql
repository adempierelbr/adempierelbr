-- 25/02/2016 15h37min33s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121773,1120183,TO_DATE('2016-02-25 15:37:32','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Simple National - MEI',TO_DATE('2016-02-25 15:37:32','YYYY-MM-DD HH24:MI:SS'),100,'M')
;

-- 25/02/2016 15h37min33s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121773 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 25/02/2016 15h37min41s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Simples Nacional - MEI',Updated=TO_DATE('2016-02-25 15:37:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121773 AND AD_Language='pt_BR'
;

-- 25/02/2016 15h38min0s BRT
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120245,TO_DATE('2016-02-25 15:38:00','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','Tax Regime - Consult',TO_DATE('2016-02-25 15:38:00','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 25/02/2016 15h38min0s BRT
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120245 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 25/02/2016 15h38min11s BRT
UPDATE AD_Reference_Trl SET IsTranslated='Y',Name='Regime Tributário - Consultas',Updated=TO_DATE('2016-02-25 15:38:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120245 AND AD_Language='pt_BR'
;

-- 25/02/2016 15h38min22s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121774,1120245,TO_DATE('2016-02-25 15:38:21','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Normal',TO_DATE('2016-02-25 15:38:21','YYYY-MM-DD HH24:MI:SS'),100,'N')
;

-- 25/02/2016 15h38min22s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121774 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 25/02/2016 15h38min35s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121775,1120245,TO_DATE('2016-02-25 15:38:34','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Simple National',TO_DATE('2016-02-25 15:38:34','YYYY-MM-DD HH24:MI:SS'),100,'S')
;

-- 25/02/2016 15h38min35s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121775 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 25/02/2016 15h38min42s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Simples Nacional',Updated=TO_DATE('2016-02-25 15:38:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121775 AND AD_Language='pt_BR'
;

-- 25/02/2016 15h38min53s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121776,1120245,TO_DATE('2016-02-25 15:38:52','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Simple National - MEI',TO_DATE('2016-02-25 15:38:52','YYYY-MM-DD HH24:MI:SS'),100,'M')
;

-- 25/02/2016 15h38min53s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121776 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 25/02/2016 15h39min1s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Simples Nacional - MEI',Updated=TO_DATE('2016-02-25 15:39:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121776 AND AD_Language='pt_BR'
;

-- 25/02/2016 15h39min26s BRT
UPDATE AD_Ref_List_Trl SET Description='Micro-empreendedor individual',Updated=TO_DATE('2016-02-25 15:39:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121776 AND AD_Language='pt_BR'
;

-- 25/02/2016 15h39min34s BRT
UPDATE AD_Ref_List_Trl SET Description='Micro-empreendedor individual',Updated=TO_DATE('2016-02-25 15:39:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121773 AND AD_Language='pt_BR'
;

-- 25/02/2016 15h40min18s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1128727,1121529,0,17,1120245,291,'LBR_TaxRegime',TO_DATE('2016-02-25 15:40:16','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Tax Regime',0,TO_DATE('2016-02-25 15:40:16','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 25/02/2016 15h40min18s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128727 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 25/02/2016 15h40min20s BRT
ALTER TABLE C_BPartner ADD LBR_TaxRegime CHAR(1) DEFAULT NULL 
;

-- 25/02/2016 15h42min24s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1128727,1000000,1125716,0,220,TO_DATE('2016-02-25 15:42:23','YYYY-MM-DD HH24:MI:SS'),100,10,'@#LBR_ENABLED@=Y & @lbr_BPTypeBR@!''XX'' & @lbr_BPTypeBR@!''''','LBRA','Y','Y','Y','N','N','N','N','Y','Tax Regime',440,TO_DATE('2016-02-25 15:42:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/02/2016 15h42min24s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125716 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/02/2016 15h42min24s BRT
SELECT Register_Migration_Script ('191-LBR_TaxRegimeOnBP.sql') FROM DUAL
;

EXIT