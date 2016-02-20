-- 20/02/2016 9h47min32s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET DefaultValue='0',Updated=TO_TIMESTAMP('2016-02-20 09:47:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3086
;

-- 20/02/2016 9h47min47s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO t_alter_column values('c_bpartner','DocumentCopies','NUMERIC(10)',null,'0')
;

-- Atualizar os Registros já existentes na tabela
UPDATE C_BPartner SET DocumentCopies = 0;

-- 20/02/2016 9h47min32s BRST
SELECT Register_Migration_Script ('189-CampoCopiaDocBParnter.sql') FROM DUAL
;