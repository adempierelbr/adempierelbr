-- 20/02/2008 8h59min30s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Para (AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,AD_Element_ID) VALUES (0,1000005,1000011,20,'lbr_IsOwnDocument',TO_TIMESTAMP('2008-02-20 08:59:29','YYYY-MM-DD HH24:MI:SS'),100,'''Y''','LBRA',1,'Y','Y','Y','N','lbr_IsOwnDocument',10,TO_TIMESTAMP('2008-02-20 08:59:29','YYYY-MM-DD HH24:MI:SS'),100,0,1000256)
;

-- 20/02/2008 8h59min30s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1000011 AND EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Process_Para_ID!=t.AD_Process_Para_ID)
;

exit
