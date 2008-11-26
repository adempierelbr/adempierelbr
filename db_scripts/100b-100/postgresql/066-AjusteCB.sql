-- 08/04/2008 8h50min44s BRT
-- Default comment for updating dictionary
UPDATE AD_Ref_Table SET AD_Display=13049,Updated=TO_TIMESTAMP('2008-04-08 08:50:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1000036
;

-- 08/04/2008 8h52min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Val_Rule SET Code='C_BankAccount.C_BankAccount_ID IN (SELECT (CASE WHEN ''@lbr_PaymentRule@''=''B'' AND C_BankAccount.lbr_IsBillPrinted=''Y'' THEN C_BankAccount.C_BankAccount_ID WHEN ''@lbr_PaymentRule@''!=''B'' THEN C_BankAccount_ID END) FROM C_BankAccount)',Updated=TO_TIMESTAMP('2008-04-08 08:52:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=1000010
;

-- 08/04/2008 8h53min27s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Reference_ID=18,Updated=TO_TIMESTAMP('2008-04-08 08:53:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000906
;

-- 08/04/2008 8h53min27s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Bank Account', Description='Account at the Bank', Help='The Bank Account identifies an account at this Bank.' WHERE AD_Column_ID=1000906 AND IsCentrallyMaintained='Y'
;

-- 08/04/2008 8h53min52s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Reference_ID=18,Updated=TO_TIMESTAMP('2008-04-08 08:53:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000254
;

-- 08/04/2008 8h53min52s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Bank Account', Description='Account at the Bank', Help='The Bank Account identifies an account at this Bank.' WHERE AD_Column_ID=1000254 AND IsCentrallyMaintained='Y'
;

