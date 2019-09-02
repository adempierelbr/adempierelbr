SET SQLBLANKLINES ON
SET DEFINE OFF

-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 02/05/2019 16h56min59s BRT
UPDATE AD_Process_Para SET ColumnName='IsCancelled', AD_Element_ID=2531,Updated=TO_DATE('2019-05-02 16:56:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120346
;

SELECT Register_Migration_Script ('201905021700_FixParameterExportXML.sql') FROM DUAL
;