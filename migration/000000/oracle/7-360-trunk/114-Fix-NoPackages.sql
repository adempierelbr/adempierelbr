-- 26/05/2015 17h26min29s BRT
UPDATE AD_Column SET DefaultValue='1', IsMandatory='Y',Updated=TO_DATE('2015-05-26 17:26:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000570
;

-- 26/05/2015 17h26min31s BRT
ALTER TABLE LBR_NotaFiscal MODIFY NoPackages NUMBER(10) DEFAULT 1
;

-- 26/05/2015 17h26min31s BRT
UPDATE LBR_NotaFiscal SET NoPackages=1 WHERE NoPackages IS NULL
;

-- 26/05/2015 17h26min31s BRT
ALTER TABLE LBR_NotaFiscal MODIFY NoPackages NOT NULL
;

SELECT Register_Migration_Script ('114-Fix-NoPackages.sql') FROM DUAL
;

EXIT