-- 11/02/2016 9h56min45s BRST
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,881,0,1120151,1120237,10,'EMail',TO_DATE('2016-02-11 09:56:44','YYYY-MM-DD HH24:MI:SS'),100,'@SQL=SELECT lbr_EMailNFe FROM C_BPartner WHERE C_BPartner_ID=@C_BPartner_ID@','LBRA',0,'Y','Y','N','N','EMail',10,TO_DATE('2016-02-11 09:56:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/02/2016 9h56min45s BRST
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120237 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 11/02/2016 9h56min45s BRST
SELECT Register_Migration_Script ('182-EMailAsParameter.sql') FROM DUAL
;

EXIT