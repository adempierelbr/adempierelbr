-- 08/12/2015 14h29min57s BRST
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-12-08 14:29:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3338
;

SELECT Register_Migration_Script ('158-RemoveIsActiveInvoice.sql') FROM DUAL
;

EXIT