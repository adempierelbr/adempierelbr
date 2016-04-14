-- Apr 14, 2016 5:44:09 PM BRT
UPDATE AD_Process_Para SET DefaultValue='-1', IsMandatory='N',Updated=TO_DATE('2016-04-14 17:44:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120219
;

-- Apr 14, 2016 5:44:19 PM BRT
SELECT Register_Migration_Script ('203-DocTypeOptionalXMLExport.sql') FROM DUAL
;

EXIT