-- 07/07/2016 10h59min2s BRT
UPDATE AD_Field SET IsMandatory=NULL,Updated=TO_DATE('2016-07-07 11:02:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125717
;

-- 07/07/2016 10h59min5s BRT
SELECT Register_Migration_Script ('220-FixMandatoryCFOP.sql') FROM DUAL
;

EXIT