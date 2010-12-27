-- 07/06/2010 9h30min40s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET FieldLength=5,Updated=TO_DATE('2010-06-07 09:30:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1100045
;

-- 07/06/2010 9h30min45s BRT
-- Default comment for updating dictionary
ALTER TABLE C_DocType MODIFY lbr_NFModel NVARCHAR2(5) DEFAULT  NULL 
;

-- 07/06/2010 9h43min27s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET FieldLength=1024,Updated=TO_DATE('2010-06-07 09:43:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000492
;

-- 07/06/2010 9h43min30s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_NotaFiscal MODIFY Description NVARCHAR2(1024) DEFAULT  NULL 
;

UPDATE AD_SysConfig SET Value='RC110-360/026-BF_3023520.sql' WHERE AD_SysConfig_ID=1100006;

exit
