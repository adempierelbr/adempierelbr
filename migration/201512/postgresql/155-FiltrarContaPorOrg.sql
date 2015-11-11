-- 11/11/2015 12h13min15s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,1120118,'C_BankAccount.AD_Org_ID = @AD_Org_ID@',TO_TIMESTAMP('2015-11-11 12:13:13','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','C_BankAccount by Org','S',TO_TIMESTAMP('2015-11-11 12:13:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/11/2015 12h13min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Val_Rule_ID=1120118,Updated=TO_TIMESTAMP('2015-11-11 12:13:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3880
;

-- 03/11/2015 11h2min44s BRST
SELECT Register_Migration_Script ('155-FiltrarContaPorOrg.sql') FROM DUAL
;