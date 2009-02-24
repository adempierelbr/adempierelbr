-- 11/02/2008 13h16min28s BRST
-- Default comment for updating dictionary
-- Oracle Remark: Changed in the original script
--insert into t_alter_column values('c_bpartner','lbr_IsIEExempt','CHAR(1)',null,'Y')
--;

-- 11/02/2008 13h16min29s BRST
-- Default comment for updating dictionary
UPDATE C_BPartner SET lbr_IsIEExempt='Y' WHERE lbr_IsIEExempt IS NULL
;

-- 11/02/2008 13h18min30s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET Callout='org.adempierelbr.callout.CalloutBPartner.isIEExempt',Updated=TO_TIMESTAMP('2008-02-11 13:18:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000024
;

exit
