-- 10/01/2013 16h13min48s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_SysConfig (AD_Client_ID,AD_Org_ID,AD_SysConfig_ID,ConfigurationLevel,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (2000000,0,1120034,'C',TO_DATE('2013-01-10 16:13:46','YYYY-MM-DD HH24:MI:SS'),100,'Y/N - Imprimir descontos na NF não descontando o valor da Base de Cálculo dos impostos ','U','Y','LBR_TAXBASE_DISCOUNT_PRINT_NF',TO_DATE('2013-01-10 16:13:46','YYYY-MM-DD HH24:MI:SS'),100,'N')
;

--	Atualiza o ultimo script
UPDATE AD_SysConfig SET Value='360-trunk/078-Tag_LBR_TAXBASE_DISCOUNT_PRINT_NF.sql' WHERE AD_SysConfig_ID=1100006
;