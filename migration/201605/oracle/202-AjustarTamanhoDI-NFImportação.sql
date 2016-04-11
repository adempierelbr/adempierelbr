-- 11/04/2016 13h57min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET FieldLength=12,Updated=TO_DATE('2016-04-11 13:57:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1100094
;

-- 11/04/2016 13h57min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NFDI MODIFY lbr_DI NVARCHAR2(12) DEFAULT NULL 
;

-- 11/04/2016 11h54min7s BRT
SELECT Register_Migration_Script ('202-AjustarTamanhoDI-NFImportação.sql') FROM DUAL
;

EXIT