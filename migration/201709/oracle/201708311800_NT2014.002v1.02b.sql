-- 31/08/2017 18h22min23s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121822,1120218,TO_DATE('2017-08-31 18:22:22','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','3 - Cancelled',TO_DATE('2017-08-31 18:22:22','YYYY-MM-DD HH24:MI:SS'),100,'3')
;

-- 31/08/2017 18h22min23s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121822 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 31/08/2017 18h22min43s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='3 - NF-e Cancelada',Updated=TO_DATE('2017-08-31 18:22:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121822 AND AD_Language='pt_BR'
;

SELECT Register_Migration_Script ('201708311800_NT2014.002v1.02b.sql') FROM DUAL
;

EXIT