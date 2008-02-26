-- M_Product_ID C_InvoiceLine
UPDATE ADEMPIERE.AD_Column SET CallOut = 'org.compiere.model.CalloutInvoice.product;org.adempierelbr.callout.CalloutTax.getTaxes' WHERE AD_Column_ID = 3840;
-- M_Product_ID C_OrderLine
UPDATE ADEMPIERE.AD_Column SET CallOut = 'org.compiere.model.CalloutOrder.product;org.adempierelbr.callout.CalloutTax.getTaxes' WHERE AD_Column_ID = 2221;
