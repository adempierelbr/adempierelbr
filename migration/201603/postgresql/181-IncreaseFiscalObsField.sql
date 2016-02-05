-- 05/02/2016 12h25min51s BRST
UPDATE AD_Column SET FieldLength=2000,Updated=TO_TIMESTAMP('2016-02-05 12:25:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1001043
;

-- 05/02/2016 12h25min52s BRST
INSERT INTO t_alter_column values('lbr_notafiscal','lbr_FiscalOBS','VARCHAR(2000)',null,'NULL')
;

-- 05/02/2016 12h25min52s BRST
SELECT Register_Migration_Script ('181-IncreaseFiscalObsField.sql') FROM DUAL
;