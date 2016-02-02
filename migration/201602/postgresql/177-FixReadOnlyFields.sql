-- 01/02/2016 17h45min53s BRST
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2016-02-01 17:45:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126610
;

-- 01/02/2016 17h46min7s BRST
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2016-02-01 17:46:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128315
;

-- 01/02/2016 17h46min7s BRST
SELECT Register_Migration_Script ('177-FixReadOnlyFields.sql') FROM DUAL
;