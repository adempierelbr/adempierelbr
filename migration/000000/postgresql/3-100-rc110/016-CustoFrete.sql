-- 10/03/2009 17h39min52s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1000119,153,TO_TIMESTAMP('2009-03-10 17:39:52','YYYY-MM-DD HH24:MI:SS'),100,'Freight cost excluded','U','Y','Freight excluded',TO_TIMESTAMP('2009-03-10 17:39:52','YYYY-MM-DD HH24:MI:SS'),100,'E')
;

-- 10/03/2009 17h39min52s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000119 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- 10/03/2009 17h40min21s BRT
-- Default comment for updating dictionary
UPDATE AD_Ref_List_Trl SET Name='Frete no Incluso',Description='Frete no Incluso',Updated=TO_TIMESTAMP('2009-03-10 17:40:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1000119 AND AD_Language='pt_BR'
;

