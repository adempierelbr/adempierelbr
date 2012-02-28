
-- 28/02/2012 09h17min20s BRT
-- Remoção do CallOut taxBR que não é mais usado na linha do Pedido - pablobp
UPDATE AD_Column SET CallOut = 'org.compiere.model.CalloutOrder.product;org.adempierelbr.callout.CalloutTax.getTaxes;' WHERE AD_Column_ID = 2221; 


-- 28/02/2012 09h17min20s BRT
-- Remoção do CallOut taxBR que não é mais usado na linha da Fatura - pablobp
UPDATE AD_Column SET CallOut = 'org.compiere.model.CalloutOrder.product;org.adempierelbr.callout.CalloutTax.getTaxes;' WHERE AD_Column_ID = 3840; 