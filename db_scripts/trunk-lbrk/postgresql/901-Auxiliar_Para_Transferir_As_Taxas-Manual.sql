SELECT 'UPDATE C_Tax SET LBR_TaxName_ID=' || (SELECT MAX(tn.LBR_TaxName_ID) FROM LBR_TaxName tn WHERE tn.AD_Client_ID=0 AND TRIM(tn.Name)=TRIM(LBR_TaxName.Name))
|| ' WHERE LBR_TaxName_ID=' || LBR_TaxName_ID || ';'
FROM LBR_TaxName WHERE AD_Client_ID <> 0
;
SELECT 'UPDATE LBR_TaxLine SET LBR_TaxName_ID=' || (SELECT MAX(tn.LBR_TaxName_ID) FROM LBR_TaxName tn WHERE tn.AD_Client_ID=0 AND TRIM(tn.Name)=TRIM(LBR_TaxName.Name))
|| ' WHERE LBR_TaxName_ID=' || LBR_TaxName_ID || ';'
FROM LBR_TaxName WHERE AD_Client_ID <> 0
;
SELECT 'DELETE FROM LBR_TaxFormula WHERE LBR_TaxName_ID=' || LBR_TaxName_ID || ';'
FROM LBR_TaxName WHERE AD_Client_ID <> 0 AND TRIM(Name) IN (SELECT TRIM(tn.Name) FROM LBR_TaxName tn WHERE tn.AD_Client_ID=0)
;
SELECT 'DELETE FROM LBR_TaxName WHERE LBR_TaxName_ID=' || LBR_TaxName_ID || ';'
FROM LBR_TaxName WHERE AD_Client_ID <> 0 AND TRIM(Name) IN (SELECT TRIM(tn.Name) FROM LBR_TaxName tn WHERE tn.AD_Client_ID=0)
;