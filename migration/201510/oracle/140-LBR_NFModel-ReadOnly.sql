-- 30/09/2015 21h41min30s BRT
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y | @lbr_NFModel@!''''',Updated=TO_DATE('2015-09-30 21:41:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120112
;

-- 30/09/2015 21h41min30s BRT
SELECT Register_Migration_Script ('140-LBR_NFModel-ReadOnly.sql') FROM DUAL
;

EXIT