-- 17/02/2008 14h2min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET Callout='org.compiere.model.CalloutOrder.product;org.adempierelbr.callout.CalloutDefineCFOP.getCFOP;org.adempierelbr.callout.CalloutTax.getTaxes',Updated=TO_TIMESTAMP('2008-02-17 14:02:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=2221
;

-- 17/02/2008 14h2min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Product', Description='Product, Service, Item', Help='Identifies an item which is either purchased or sold in this organization.' WHERE AD_Column_ID=2221 AND IsCentrallyMaintained='Y'
;

-- 17/02/2008 14h2min24s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET Callout='org.compiere.model.CalloutInvoice.product;org.adempierelbr.callout.CalloutDefineCFOP.getCFOP;org.adempierelbr.callout.CalloutTax.getTaxes',Updated=TO_TIMESTAMP('2008-02-17 14:02:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3840
;

-- 17/02/2008 14h2min24s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Product', Description='Product, Service, Item', Help='Identifies an item which is either purchased or sold in this organization.' WHERE AD_Column_ID=3840 AND IsCentrallyMaintained='Y'
;