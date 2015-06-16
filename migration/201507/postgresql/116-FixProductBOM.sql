-- 16/06/2015 16h5min25s BRT
UPDATE AD_Field SET DefaultValue='@M_Product_ID@', IsReadOnly='Y',Updated=TO_TIMESTAMP('2015-06-16 16:05:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=58085
;

SELECT Register_Migration_Script ('116-FixProductBOM.sql') FROM DUAL
;