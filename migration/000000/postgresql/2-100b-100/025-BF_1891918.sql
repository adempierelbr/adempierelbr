-- BF_1891918
-- 12/02/2008 8h52min36s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET FieldLength=2000,Updated=TO_TIMESTAMP('2008-02-12 08:52:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000465
;

-- 12/02/2008 8h52min36s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Formula', Description='Defines the Tax Formula', Help='Defines the Tax Formula' WHERE AD_Column_ID=1000465 AND IsCentrallyMaintained='Y'
;

-- 12/02/2008 8h52min37s BRST
-- Default comment for updating dictionary
insert into t_alter_column values('lbr_taxformula','lbr_Formula','VARCHAR(2000)',null,'NULL')
;

-- 12/02/2008 8h52min45s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET FieldLength=2000,Updated=TO_TIMESTAMP('2008-02-12 08:52:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000472
;

-- 12/02/2008 8h52min45s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Formula NetWorth', Description='Defines the Tax Formula NetWorth', Help='Defines the Tax Formula NetWorth' WHERE AD_Column_ID=1000472 AND IsCentrallyMaintained='Y'
;

-- 12/02/2008 8h52min46s BRST
-- Default comment for updating dictionary
insert into t_alter_column values('lbr_taxformula','lbr_FormulaNetWorth','VARCHAR(2000)',null,'NULL')
;