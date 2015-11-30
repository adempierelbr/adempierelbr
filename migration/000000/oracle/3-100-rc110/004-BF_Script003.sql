-- 11/12/2008 10h30min46s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_TIMESTAMP('2008-12-11 10:30:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000999
;

-- 11/12/2008 10h31min9s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_TIMESTAMP('2008-12-11 10:31:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1001000
;

UPDATE AD_SysConfig SET Value='100-trunk/004-BF_Script003.sql',Updated=TO_TIMESTAMP('2008-12-01 10:36:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_SysConfig_ID=1100006
;

exit
