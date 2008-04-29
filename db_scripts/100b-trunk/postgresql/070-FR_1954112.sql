-- 29/04/2008 8h38min57s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Rule (AD_Client_ID,AD_Org_ID,AD_Rule_ID,Created,CreatedBy,EntityType,EventType,IsActive,Name,RuleType,Script,Updated,UpdatedBy,Value) VALUES (0,0,1000000,TO_TIMESTAMP('2008-04-29 08:38:56','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','L','Y','beanshell:DontAllowOrg','S','if (A_AD_Org_ID == 0 && A_AD_Client_ID != 0)
    return "ERRO: Org = *";
else
    return "";',TO_TIMESTAMP('2008-04-29 08:38:56','YYYY-MM-DD HH24:MI:SS'),100,'beanshell:DontAllowOrg')
;

