-- 03/03/2012 12h6min6s BRT
-- LBR-9
ALTER TABLE LBR_NotaFiscal ADD COLUMN lbr_RPSStatus CHAR(1) DEFAULT NULL 
;

-- 03/03/2012 11h32min54s BRT
-- LBR-9
UPDATE AD_SysConfig SET Value='360-trunk/052-BF_LBR-9-SincronizarCampoRPSStatus.sql' WHERE AD_SysConfig_ID=1100006
;