-- BF para FR-3168718, mgrigioni
UPDATE AD_Column SET Callout='org.adempierelbr.callout.CalloutTax.taxBR;org.compiere.model.CalloutOrder.amt' WHERE AD_Column_ID=1103000
;

UPDATE AD_SysConfig SET Value='360-trunk/039-BF_3168718.sql' WHERE AD_SysConfig_ID=1100006;

EXIT