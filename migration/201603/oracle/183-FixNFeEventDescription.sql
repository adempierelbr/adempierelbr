-- 11/02/2016 11h4min40s BRST
UPDATE AD_Column SET FieldLength=1000, Help='A description is limited to 1000 characters.',Updated=TO_TIMESTAMP('2016-02-11 11:04:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1122478
;

-- 11/02/2016 11h4min40s BRST
UPDATE AD_Field SET Name='Description', Description='Optional short description of the record', Help='A description is limited to 1000 characters.' WHERE AD_Column_ID=1122478 AND IsCentrallyMaintained='Y'
;

-- 11/02/2016 11h5min21s BRST
INSERT INTO t_alter_column values('lbr_nfeevent','Description','VARCHAR(1000)',null,'NULL')
;

-- 11/02/2016 11h6min0s BRST
UPDATE AD_Field SET DisplayLength=1000,Updated=TO_TIMESTAMP('2016-02-11 11:06:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121197
;

-- 11/02/2016 11h6min17s BRST
UPDATE AD_Field_Trl SET Help='Uma descrição é limitada a 1000 caracteres.',Updated=TO_TIMESTAMP('2016-02-11 11:06:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121197 AND AD_Language='pt_BR'
;

-- 05/02/2016 12h25min52s BRST
SELECT Register_Migration_Script ('183-FixNFeEventDescription.sql') FROM DUAL
;

EXIT
