-- 27/11/2008 15h17min39s BRST
-- Default comment for updating dictionary
INSERT INTO AD_SysConfig (AD_Client_ID,AD_Org_ID,AD_SysConfig_ID,ConfigurationLevel,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1100007,'C',TO_TIMESTAMP('2008-11-27 15:17:39','YYYY-MM-DD HH24:MI:SS'),100,'Habilita o comando ESCP para mudar o linespacing de impressão','LBRA','Y','LBR_ENABLE_LINESPACING_COMMAND',TO_TIMESTAMP('2008-11-27 15:17:39','YYYY-MM-DD HH24:MI:SS'),100,'N')
;

-- 27/11/2008 15h18min15s BRST
-- Default comment for updating dictionary
UPDATE AD_SysConfig SET Value='100-trunk/001-LineSpacing_Config.sql',Updated=TO_TIMESTAMP('2008-11-27 15:18:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_SysConfig_ID=1100006
;

