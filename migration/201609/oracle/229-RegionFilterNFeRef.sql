-- 25/08/2016 11h38min33s BRT
UPDATE AD_Column SET AD_Val_Rule_ID=1000003,Updated=TO_DATE('2016-08-25 11:38:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126483
;

-- 25/08/2016 11h38min33s BRT
SELECT Register_Migration_Script ('229-RegionFilterNFeRef.sql') FROM DUAL
;

