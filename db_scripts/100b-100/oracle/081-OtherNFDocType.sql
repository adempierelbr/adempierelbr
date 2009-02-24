-- 29/07/2008 19h31min41s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1000038,TO_DATE('2008-07-29 19:31:41','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','lbr_OtherNFDocType',TO_DATE('2008-07-29 19:31:41','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- 29/07/2008 19h31min41s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1000038 AND EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Reference_ID!=t.AD_Reference_ID)
;

-- 29/07/2008 19h32min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy,WhereClause) VALUES (0,1509,1501,0,1000038,217,TO_DATE('2008-07-29 19:32:42','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N',TO_DATE('2008-07-29 19:32:42','YYYY-MM-DD HH24:MI:SS'),100,'C_DocType.C_DocType_ID IN (SELECT C_DoctypeTarget_ID FROM LBR_OtherNFLink)')
;

exit
