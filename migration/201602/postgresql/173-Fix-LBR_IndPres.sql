-- 28/01/2016 13h44min32s BRST
UPDATE AD_Column SET DefaultValue='@SQL=SELECT COALESCE (oi.LBR_IndPres, ''9'') FROM AD_OrgInfo oi WHERE oi.AD_Org_ID=@#AD_Org_ID@',Updated=TO_TIMESTAMP('2016-01-28 13:44:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126445
;

-- 28/01/2016 13h44min35s BRST
INSERT INTO T_Alter_Column values('C_Order','LBR_IndPres','CHAR(1)',null,'NULL')
;

-- 28/01/2016 13h44min32s BRST
UPDATE AD_Column SET DefaultValue='@SQL=SELECT COALESCE (oi.LBR_IndPres, ''9'') FROM AD_OrgInfo oi WHERE oi.AD_Org_ID=@#AD_Org_ID@',Updated=TO_TIMESTAMP('2016-01-28 13:44:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126446
;

-- 28/01/2016 13h44min35s BRST
INSERT INTO T_Alter_Column values('C_Invoice','LBR_IndPres','CHAR(1)',null,'NULL')
;

-- 28/01/2016 13h44min32s BRST
UPDATE AD_Column SET DefaultValue='@SQL=SELECT COALESCE (oi.LBR_IndPres, ''9'') FROM AD_OrgInfo oi WHERE oi.AD_Org_ID=@#AD_Org_ID@',Updated=TO_TIMESTAMP('2016-01-28 13:44:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126444
;

-- 28/01/2016 13h44min35s BRST
INSERT INTO T_Alter_Column values('LBR_NotaFiscal','LBR_IndPres','CHAR(1)',null,'NULL')
;

-- 28/01/2016 13h44min35s BRST
SELECT Register_Migration_Script ('173-Fix-LBR_IndPres.sql') FROM DUAL
;