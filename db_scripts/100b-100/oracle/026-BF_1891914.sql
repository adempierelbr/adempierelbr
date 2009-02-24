-- BF_1891914
-- 12/02/2008 10h53min48s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Reference_Value_ID=1000018, AD_Reference_ID=18, ColumnSQL = '(SELECT LBR_FiscalGroup_Product_ID FROM LBR_TaxConfiguration tax WHERE tax.LBR_TaxConfiguration_ID = LBR_TaxConfig_ProductGroup.LBR_TaxConfiguration_ID)', Updated=TO_TIMESTAMP('2008-02-12 10:53:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000406
;

-- 12/02/2008 10h53min48s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Fiscal Group - Product', Description='Primary key table LBR_FiscalGroup_Product', Help='Primary key table LBR_FiscalGroup_Product' WHERE AD_Column_ID=1000406 AND IsCentrallyMaintained='Y'
;

exit
