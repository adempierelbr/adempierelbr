-- 19/02/2016 14h41min31s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Tab SET AD_Process_ID=1120040,Updated=TO_DATE('2016-02-19 14:41:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1100001
;

-- 05/02/2016 11h39min56s BRST
SELECT Register_Migration_Script ('188-ImprimirDANFELoteNF.sql') FROM DUAL
;

EXIT