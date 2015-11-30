-- 07/06/2010 9h30min40s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET FieldLength=5,Updated=TO_TIMESTAMP('2010-06-07 09:30:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1100045
;

-- 07/06/2010 9h30min45s BRT
-- Default comment for updating dictionary
insert into t_alter_column values('c_doctype','lbr_NFModel','VARCHAR(5)',null,'NULL')
;

-- 07/06/2010 9h43min27s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET FieldLength=1024,Updated=TO_TIMESTAMP('2010-06-07 09:43:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000492
;

-- 07/06/2010 9h43min30s BRT
-- Default comment for updating dictionary
insert into t_alter_column values('lbr_notafiscal','Description','VARCHAR(1024)',null,'NULL')
;

UPDATE AD_SysConfig SET Value='RC110-360/026-BF_3023520.sql' WHERE AD_SysConfig_ID=1100006;
