-- 28/08/2015 18h2min56s BRT
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120215,TO_TIMESTAMP('2015-08-28 18:02:55','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','BPTypeBR (PF PJ only)',TO_TIMESTAMP('2015-08-28 18:02:55','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 28/08/2015 18h2min56s BRT
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120215 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 28/08/2015 18h3min24s BRT
UPDATE AD_Reference_Trl SET Name='Tipo de Pessoa (somente PF PJ)',Updated=TO_TIMESTAMP('2015-08-28 18:03:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120215 AND AD_Language='pt_BR'
;

-- 28/08/2015 18h3min42s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121575,1120215,TO_TIMESTAMP('2015-08-28 18:03:41','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','PF - Individual',TO_TIMESTAMP('2015-08-28 18:03:41','YYYY-MM-DD HH24:MI:SS'),100,'PF')
;

-- 28/08/2015 18h3min42s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121575 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 28/08/2015 18h3min59s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121576,1120215,TO_TIMESTAMP('2015-08-28 18:03:59','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','PJ - Legal Entity',TO_TIMESTAMP('2015-08-28 18:03:59','YYYY-MM-DD HH24:MI:SS'),100,'PJ')
;

-- 28/08/2015 18h3min59s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121576 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 28/08/2015 18h4min13s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Pessoa Física',Updated=TO_TIMESTAMP('2015-08-28 18:04:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121575 AND AD_Language='pt_BR'
;

-- 28/08/2015 18h4min31s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Pessoa Jurídica',Updated=TO_TIMESTAMP('2015-08-28 18:04:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121576 AND AD_Language='pt_BR'
;

-- 28/08/2015 18h5min1s BRT
UPDATE AD_Column SET AD_Reference_Value_ID=1120215,Updated=TO_TIMESTAMP('2015-08-28 18:05:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126466
;

-- 28/08/2015 18h5min1s BRT
SELECT Register_Migration_Script ('134-FixBPTypeXMLAccess.sql') FROM DUAL
;