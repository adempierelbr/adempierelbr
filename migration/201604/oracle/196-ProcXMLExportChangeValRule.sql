-- 02/03/2016 11h27min32s BRT
UPDATE AD_Process_Para SET AD_Val_Rule_ID=1120123 WHERE AD_Process_Para_ID=1120219;

-- 02/03/2016 11h27min32s BRT
SELECT Register_Migration_Script ('196-ProcXMLExportChangeValRule.sql') FROM DUAL
;

EXIT