--	Remove o callout TaxBR 
UPDATE AD_Column SET Callout=REPLACE (Callout, ';org.adempierelbr.callout.CalloutTax.taxBR', '') WHERE Callout LIKE '%taxBR%' 
; 
UPDATE AD_Column SET Callout=REPLACE (Callout, 'org.adempierelbr.callout.CalloutTax.taxBR;', '') WHERE Callout LIKE '%taxBR%' 
; 
UPDATE AD_Column SET Callout=REPLACE (Callout, 'org.adempierelbr.callout.CalloutTax.taxBR', '') WHERE Callout LIKE '%taxBR%' 
; 

UPDATE AD_SysConfig SET Value='360-trunk/049-BF_LBR-5_RemocaoCallOutTaxBR.sql' WHERE AD_SysConfig_ID=1100006;


