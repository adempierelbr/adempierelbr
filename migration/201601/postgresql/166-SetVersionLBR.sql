UPDATE AD_SysConfig SET Value='v201601' WHERE AD_SysConfig_ID=1100005
;

-- 31/08/2015 11h54min22s BRT
SELECT Register_Migration_Script ('166-SetVersionLBR.sql') FROM DUAL
;