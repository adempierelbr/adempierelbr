DELETE FROM AD_SysConfig WHERE Name='LBR_LAST_SCRIPT_EXECUTED'
;

UPDATE AD_SysConfig SET Value='v201508', Description='Define a versão da Localização Brasil' WHERE AD_SysConfig_ID=1100005
;

SELECT Register_Migration_Script ('123-FixVersionLBR.sql') FROM DUAL
;

EXIT