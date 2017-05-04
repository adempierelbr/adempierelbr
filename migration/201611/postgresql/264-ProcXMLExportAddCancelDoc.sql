-- 02/05/2017 15h30min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1000027,0,1120163,1120346,20,'lbr_IsCancelled',TO_TIMESTAMP('2017-05-02 15:30:44','YYYY-MM-DD HH24:MI:SS'),100,'N','Incluir Documentos Cancelados','LBRA',1,'Inclui os XML cancelados das Notas Fiscais.','Y','N','N','N','Incluir Documentos Cancelados',90,TO_TIMESTAMP('2017-05-02 15:30:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/05/2017 15h30min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120346 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

SELECT Register_Migration_Script ('264-ProcXMLExportAddCancelDoc.sql') FROM DUAL
;
