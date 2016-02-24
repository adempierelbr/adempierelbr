-- 24/02/2016 16h35min38s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Reference_ID=16,Updated=TO_DATE('2016-02-24 16:35:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000908
;

-- 24/02/2016 16h35min38s BRT
SELECT Register_Migration_Script ('190-NF-DataHoraSaidaEntrada.sql') FROM DUAL
;

EXIT