-- 16/02/2016 11h36min18s BRST
UPDATE AD_Column SET FieldLength=2000, Help='A description is limited to 2000 characters.',Updated=TO_DATE('2016-02-16 11:36:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000492
;

-- 16/02/2016 11h36min18s BRST
UPDATE AD_Field SET Name='Description', Description='Optional short description of the record', Help='A description is limited to 2000 characters.' WHERE AD_Column_ID=1000492 AND IsCentrallyMaintained='Y'
;

-- 16/02/2016 11h36min26s BRST
ALTER TABLE LBR_NotaFiscal MODIFY Description NVARCHAR2(2000) DEFAULT NULL 
;

-- 16/02/2016 11h37min55s BRST
UPDATE AD_Field SET DisplayLength=2000, Help='A description is limited to 2000 characters.',Updated=TO_DATE('2016-02-16 11:37:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000345
;

-- 16/02/2016 11h38min7s BRST
UPDATE AD_Field_Trl SET Help='Uma descrição é limitada a 2000 caracteres.',Updated=TO_DATE('2016-02-16 11:38:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000345 AND AD_Language='pt_BR'
;

-- 16/02/2016 11h38min7s BRST
SELECT Register_Migration_Script ('186-FixNFeDescription.sql') FROM DUAL
;

EXIT
