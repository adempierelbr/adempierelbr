-- 01/12/2008 9h48min25s BRST
-- Default comment for updating dictionary
INSERT INTO AD_SysConfig (AD_Client_ID,AD_Org_ID,AD_SysConfig_ID,ConfigurationLevel,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1100008,'C',TO_TIMESTAMP('2008-12-01 09:48:25','YYYY-MM-DD HH24:MI:SS'),100,'Y/N - Permite que um Embarque/Recebimento faça movimentações com estoque negativo','LBRA','Y','LBR_ALLOW_NEGATIVE_STOCK',TO_TIMESTAMP('2008-12-01 09:48:25','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;

-- 01/12/2008 9h49min1s BRST
-- Default comment for updating dictionary
UPDATE AD_SysConfig SET Value='100-trunk/002-Allow_NegativeStock.sql',Updated=TO_TIMESTAMP('2008-12-01 09:49:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_SysConfig_ID=1100006
;

exit

