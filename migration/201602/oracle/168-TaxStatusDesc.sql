-- 08/01/2016 15h22min45s BRST
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=2,Updated=TO_DATE('2016-01-08 15:22:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1106059
;

-- 08/01/2016 15h22min45s BRST
SELECT Register_Migration_Script ('168-TaxStatusDesc.sql') FROM DUAL
;

EXIT