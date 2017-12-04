-- Consultar Cadastro Mascara para CPF e CNPJ

-- 04/12/2017 17h00min00s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE adempiere.AD_Process_Para SET VFormat = '000.000.000-00', FieldLength=14 WHERE AD_Process_Para_ID = 1120207;
UPDATE adempiere.AD_Process_Para SET VFormat = '00.000.000/0000-00', FieldLength=18 WHERE AD_Process_Para_ID = 1120208;

-- 04/12/2017 17h00min00s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
SELECT Register_Migration_Script ('20171204170000_ConsultarCadCPFCNPJ.sql') FROM DUAL
;

EXIT