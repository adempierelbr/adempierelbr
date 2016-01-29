-- 29/01/2016 14h3min39s BRST
INSERT INTO AD_SysConfig (AD_Client_ID,AD_Org_ID,AD_SysConfig_ID,ConfigurationLevel,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120048,'S',TO_DATE('2016-01-29 14:03:37','YYYY-MM-DD HH24:MI:SS'),100,'Configuração da URL para impressão da NFS-e para a cidade de São Paulo','LBRA','Y','LBR_NFSE_SP_PRINT_URL',TO_DATE('2016-01-29 14:03:37','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.prefeitura.sp.gov.br/contribuinte/notaprintimg.aspx?ccm={0}&nf={1}&cod={2}&imprimir=1')
;

-- 29/01/2016 14h3min39s BRST
SELECT Register_Migration_Script ('174-NFSePrinting.sql') FROM DUAL
;

EXIT
