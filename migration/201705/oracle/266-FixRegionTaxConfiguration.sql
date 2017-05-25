-- 09/05/2017 15h30min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE C_Region SET IsDefault = 'N' WHERE C_Region_ID=142;

SELECT Register_Migration_Script ('266-FixRegionTaxConfiguration.sql') FROM DUAL
;

EXIT