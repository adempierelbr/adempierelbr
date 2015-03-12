-- 12/03/2015 10h31min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NotaFiscal ADD lbr_MotivoCancel NVARCHAR2(255) DEFAULT NULL 
;

SELECT Register_Migration_Script('097-Fix-LBR_MotivoCancel') FROM dual;