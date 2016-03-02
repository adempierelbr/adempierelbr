-- 26/02/2016 16h17min27s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET FieldLength=11, VFormat='LLL-0000/LL',Updated=TO_DATE('2016-02-26 16:17:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000730
;

-- 26/02/2016 16h17min32s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NotaFiscal MODIFY lbr_BPShipperLicensePlate NVARCHAR2(11) DEFAULT NULL 
;

-- 26/02/2016 16h17min27s BRT
SELECT Register_Migration_Script ('192-UFVeiculoNF.sql') FROM DUAL
;

EXIT