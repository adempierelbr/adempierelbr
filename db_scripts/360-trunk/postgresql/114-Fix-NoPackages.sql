-- 26/05/2015 17h26min29s BRT
UPDATE AD_Column SET DefaultValue='1', IsMandatory='Y',Updated=TO_TIMESTAMP('2015-05-26 17:26:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000570
;

-- 26/05/2015 17h26min31s BRT
INSERT INTO t_alter_column values('lbr_notafiscal','NoPackages','NUMERIC(10)',null,'1')
;

-- 26/05/2015 17h26min31s BRT
UPDATE LBR_NotaFiscal SET NoPackages=1 WHERE NoPackages IS NULL
;

-- 26/05/2015 17h26min31s BRT
INSERT INTO t_alter_column values('lbr_notafiscal','NoPackages',null,'NOT NULL',null)
;

SELECT Register_Migration_Script ('114-Fix-NoPackages.sql') FROM DUAL
;
