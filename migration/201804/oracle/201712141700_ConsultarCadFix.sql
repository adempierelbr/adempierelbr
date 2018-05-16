SET SQLBLANKLINES ON
SET DEFINE OFF

-- 14/12/2017 15h50min4s BRST
UPDATE AD_Process_Para SET DefaultValue='@#AD_Org_ID@',AD_Val_Rule_ID=202,Updated=TO_DATE('2017-12-14 15:50:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120206
;


SELECT Register_Migration_Script ('201712141700_ConsultarCadFix.sql') FROM DUAL
;
