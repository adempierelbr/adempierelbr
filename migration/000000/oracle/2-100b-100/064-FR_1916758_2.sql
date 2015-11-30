-- 18/03/2008 11h18min12s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Val_Rule (AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000010,'C_BankAccount.C_BankAccount_ID IN (SELECT (CASE WHEN @lbr_PaymentRule@=''B'' AND C_BankAccount.lbr_IsBillPrinted=''Y'' THEN C_BankAccount.C_BankAccount_ID WHEN @lbr_PaymentRule@!=''B'' AND C_BankAccount.lbr_IsBillPrinted=''N'' THEN C_BankAccount_ID END) FROM C_BankAccount',TO_DATE('2008-03-18 11:18:12','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','C_BankAccount (Boleto)','S',TO_DATE('2008-03-18 11:18:12','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 18/03/2008 11h18min23s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Val_Rule_ID=1000010,Updated=TO_DATE('2008-03-18 11:18:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000904
;

-- 18/03/2008 11h18min23s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Bank Account', Description='Account at the Bank', Help='The Bank Account identifies an account at this Bank.' WHERE AD_Column_ID=1000904 AND IsCentrallyMaintained='Y'
;

-- 18/03/2008 11h21min16s BRT
-- Default comment for updating dictionary
UPDATE AD_Val_Rule SET Code='C_BankAccount.C_BankAccount_ID IN (SELECT (CASE WHEN ''@lbr_PaymentRule@''=''B'' AND C_BankAccount.lbr_IsBillPrinted=''Y'' THEN C_BankAccount.C_BankAccount_ID WHEN ''@lbr_PaymentRule@''!=''B'' AND C_BankAccount.lbr_IsBillPrinted=''N'' THEN C_BankAccount_ID END) FROM C_BankAccount)',Updated=TO_DATE('2008-03-18 11:21:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=1000010
;

-- 18/03/2008 11h23min1s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Val_Rule_ID=1000010,Updated=TO_DATE('2008-03-18 11:23:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000254
;

-- 18/03/2008 11h23min1s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Bank Account', Description='Account at the Bank', Help='The Bank Account identifies an account at this Bank.' WHERE AD_Column_ID=1000254 AND IsCentrallyMaintained='Y'
;

-- 18/03/2008 11h23min18s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Val_Rule_ID=1000010,Updated=TO_DATE('2008-03-18 11:23:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000906
;

-- 18/03/2008 11h23min18s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Bank Account', Description='Account at the Bank', Help='The Bank Account identifies an account at this Bank.' WHERE AD_Column_ID=1000906 AND IsCentrallyMaintained='Y'
;

exit
