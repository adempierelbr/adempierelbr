-- 24/02/2009 10h49min2s BRT
-- Default comment for updating dictionary
INSERT INTO AD_SysConfig (AD_Client_ID,AD_Org_ID,AD_SysConfig_ID,ConfigurationLevel,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1100009,'C',TO_TIMESTAMP('2009-02-24 10:49:02','YYYY-MM-DD HH24:MI:SS'),100,'Habilita o lançamento da retenção de impostos retroativos','LBRA','Y','LBR_ALLOW_RETROACTIVE_SERVICETAX',TO_TIMESTAMP('2009-02-24 10:49:02','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;

-- 24/02/2009 10h49min32s BRT
-- Default comment for updating dictionary
UPDATE AD_SysConfig SET Value='100-trunk/013-Retroactive_ServiceTax.sql',Updated=TO_TIMESTAMP('2009-02-24 10:49:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_SysConfig_ID=1100006
;

