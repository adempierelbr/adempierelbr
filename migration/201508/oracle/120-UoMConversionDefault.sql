-- 17/07/2015 18h24min30s BRT
UPDATE AD_Field SET DefaultValue='@C_UOM_ID@',Updated=TO_DATE('2015-07-17 18:24:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=57415
;

SELECT Register_Migration_Script ('120-UoMConversionDefault.sql') FROM DUAL
;

EXIT