
-- 03/03/2012 10h25min BRT
-- Remoção do CallOut taxBR que não é mais usado na linha do Pedido - pablobp
UPDATE AD_Column SET CallOut = 'org.compiere.model.CalloutOrder.amt;' WHERE AD_Column_ID = 12875; 


UPDATE AD_SysConfig SET Value='360-trunk/050-BF_LBR-5_RemocaoCallOutTaxBR_2.sql' WHERE AD_SysConfig_ID=1100006;
