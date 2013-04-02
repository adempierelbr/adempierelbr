-- 14/03/2013 14h7min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_SysConfig (AD_Client_ID,AD_Org_ID,AD_SysConfig_ID,ConfigurationLevel,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120035,'S',TO_TIMESTAMP('2013-03-14 14:07:11','YYYY-MM-DD HH24:MI:SS'),100,'Disable Org * from the Org List','U','Y','LBR_DISABLE_ORG_0',TO_TIMESTAMP('2013-03-14 14:07:11','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;

--	Atualiza o ultimo script
UPDATE AD_SysConfig SET Value='360-trunk/76-DesabilitarOrganizacao0.sql' WHERE AD_SysConfig_ID=1100006
;
