-- 26/02/2008 10h43min43s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''SOO'' & @DocSubTypeSO@!''WP'' & @DocSubTypeSO@!''WR''',Updated=TO_DATE('2008-02-26 10:43:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000409
;

-- 26/02/2008 10h44min10s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''SOO'' &  @DocSubTypeSO@!''WP'' & @DocSubTypeSO@!''WR''',Updated=TO_DATE('2008-02-26 10:44:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000408
;

-- 26/02/2008 10h44min43s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''API'' | @DocBaseType@=''ARI''  | @DocBaseType@=''APC''  | @DocBaseType@=''ARC''',Updated=TO_DATE('2008-02-26 10:44:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000410
;

-- 26/02/2008 10h44min52s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''API'' | @DocBaseType@=''ARI''  | @DocBaseType@=''APC''  | @DocBaseType@=''ARC''',Updated=TO_DATE('2008-02-26 10:44:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000458
;

-- 26/02/2008 10h47min56s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@lbr_HasFiscalDocument@=''Y'' & @DocBaseType@=''API'' | @DocBaseType@=''ARC''',Updated=TO_DATE('2008-02-26 10:47:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000460
;

exit
