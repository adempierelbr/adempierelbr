UPDATE C_City SET Name=REPLACE (Name, '`', '''') WHERE Name LIKE '%`%'
;
UPDATE C_Location SET City=REPLACE (City, '`', '''') WHERE City LIKE '%`%'
;
UPDATE LBR_Boleto SET City=REPLACE (City, '`', '''') WHERE City LIKE '%`%'
;
UPDATE LBR_NotaFiscal SET lbr_BPCity=REPLACE (lbr_BPCity, '`', '''') WHERE lbr_BPCity LIKE '%`%'
;
UPDATE LBR_NotaFiscal SET lbr_BPDeliveryCity=REPLACE (lbr_BPDeliveryCity, '`', '''') WHERE lbr_BPDeliveryCity LIKE '%`%'
;
UPDATE LBR_NotaFiscal SET lbr_BPInvoiceCity=REPLACE (lbr_BPInvoiceCity, '`', '''') WHERE lbr_BPInvoiceCity LIKE '%`%'
;
UPDATE LBR_NotaFiscal SET lbr_BPShipperCity=REPLACE (lbr_BPShipperCity, '`', '''') WHERE lbr_BPShipperCity LIKE '%`%'
;
UPDATE LBR_NotaFiscal SET lbr_OrgCity=REPLACE (lbr_OrgCity, '`', '''') WHERE lbr_OrgCity LIKE '%`%'
;
SELECT Register_Migration_Script ('216-FixCityNames.sql') FROM DUAL
;