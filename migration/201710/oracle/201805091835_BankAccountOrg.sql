-- 09/05/2018 18h25min36s BRT
UPDATE AD_Val_Rule SET Code='(CASE WHEN ''@lbr_PaymentRule@''=''B'' THEN C_BankAccount.LBR_IsBillPrinted=''Y'' ELSE 1=1 END)',Updated=TO_DATE('2018-05-09 18:25:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=1000010
;

-- 09/05/2018 18h27min17s BRT
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,1120141,'(CASE WHEN ''@lbr_PaymentRule@''=''B'' THEN C_BankAccount.LBR_IsBillPrinted=''Y'' ELSE 1=1 END) AND C_BankAccount.AD_Org_ID IN (0,@AD_Org_ID@)',TO_DATE('2018-05-09 18:27:16','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','C_BankAccount by Org (Boleto)','S',TO_DATE('2018-05-09 18:27:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/05/2018 18h28min43s BRT
UPDATE AD_Column SET AD_Val_Rule_ID=1120141,Updated=TO_DATE('2018-05-09 18:28:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000906
;

-- 09/05/2018 18h29min7s BRT
UPDATE AD_Column SET AD_Val_Rule_ID=1120141,Updated=TO_DATE('2018-05-09 18:29:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000254
;

SELECT Register_Migration_Script ('201805091835_BankAccountOrg.sql') FROM DUAL
;