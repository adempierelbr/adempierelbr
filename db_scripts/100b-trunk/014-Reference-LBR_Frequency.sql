-- 04/02/2008 15h4min40s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Reference (AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,ValidationType,AD_Client_ID) VALUES (0,1000028,TO_TIMESTAMP('2008-02-04 15:04:39','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','LBR_Frequency',TO_TIMESTAMP('2008-02-04 15:04:39','YYYY-MM-DD HH24:MI:SS'),100,'L',0)
;

-- 04/02/2008 15h4min40s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1000028 AND EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Reference_ID!=t.AD_Reference_ID)
;

-- 04/02/2008 15h5min30s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,Value) VALUES (0,1000028,1000043,TO_TIMESTAMP('2008-02-04 15:05:29','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Monthly',TO_TIMESTAMP('2008-02-04 15:05:29','YYYY-MM-DD HH24:MI:SS'),100,0,'M')
;

-- 04/02/2008 15h5min30s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000043 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;