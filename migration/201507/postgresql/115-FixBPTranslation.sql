-- 16/06/2015 12h45min28s BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2015-06-16 12:45:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2145
;

-- 16/06/2015 12h45min30s BRT
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2015-06-16 12:45:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3228
;

SELECT Register_Migration_Script ('115-FixBPTranslation.sql') FROM DUAL
;