UPDATE AD_SysConfig SET Value='v201605-Development' WHERE AD_SysConfig_ID=1100005
;

-- 31/08/2015 11h54min22s BRT
SELECT Register_Migration_Script ('204-SetVersionLBR.sql') FROM DUAL
;

EXIT