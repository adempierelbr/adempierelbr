-- 15/02/2008 9h59min8s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''API'' | @DocBaseType@=''ARI'' & @lbr_HasFiscalDocument@=''Y'' & @IsSOTrx@=''N''',Updated=TO_TIMESTAMP('2008-02-15 09:59:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000460
;
