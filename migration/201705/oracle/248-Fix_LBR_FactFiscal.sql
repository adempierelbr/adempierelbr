-- 21/12/2016 14h18min36s BRST
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=133,Updated=TO_DATE('2016-12-21 14:18:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1127030
;

-- 21/12/2016 14h18min55s BRST
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=138,Updated=TO_DATE('2016-12-21 14:18:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1127038
;

SELECT Register_Migration_Script ('248-Fix_LBR_FactFiscal.sql') FROM DUAL
;

EXIT