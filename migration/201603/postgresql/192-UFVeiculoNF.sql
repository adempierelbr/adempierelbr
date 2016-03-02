-- 26/02/2016 16h17min27s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET FieldLength=11, VFormat='LLL-0000/LL',Updated=TO_TIMESTAMP('2016-02-26 16:17:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000730
;

-- 26/02/2016 16h17min32s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO t_alter_column values('lbr_notafiscal','lbr_BPShipperLicensePlate','VARCHAR(11)',null,'NULL')
;

-- 26/02/2016 16h17min27s BRT
SELECT Register_Migration_Script ('192-UFVeiculoNF.sql') FROM DUAL
;