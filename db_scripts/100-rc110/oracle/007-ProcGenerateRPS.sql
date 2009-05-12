-- 21/01/2009 11h18min27s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Process (AD_Client_ID,AD_Org_ID,AD_Process_ID,AccessLevel,Classname,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES (0,0,1000018,'3','org.adempierelbr.process.ProcGenerateRPS',TO_TIMESTAMP('2009-01-21 11:18:27','YYYY-MM-DD HH24:MI:SS'),100,'Process to Generate RPS File (NFe)','LBRA','Y','N','N','N','N','ProcGenerateRPS','Y',0,0,TO_TIMESTAMP('2009-01-21 11:18:27','YYYY-MM-DD HH24:MI:SS'),100,'ProcGenerateRPS')
;

-- 21/01/2009 11h18min27s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1000018 AND EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Process_ID!=t.AD_Process_ID)
;

-- 21/01/2009 11h18min27s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,1000018,0,TO_TIMESTAMP('2009-01-21 11:18:27','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2009-01-21 11:18:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/01/2009 11h18min27s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,1000018,102,TO_TIMESTAMP('2009-01-21 11:18:27','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2009-01-21 11:18:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/01/2009 11h18min27s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,1000018,103,TO_TIMESTAMP('2009-01-21 11:18:27','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2009-01-21 11:18:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/01/2009 11h18min27s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,1000018,50001,TO_TIMESTAMP('2009-01-21 11:18:27','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2009-01-21 11:18:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/01/2009 11h18min57s BRST
-- Default comment for updating dictionary
UPDATE AD_Process_Trl SET IsTranslated='Y',Name='Geração Arquivo RPS',Description='Processo para Geração de Arquivo RPS (NFe)',Updated=TO_TIMESTAMP('2009-01-21 11:18:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1000018 AND AD_Language='pt_BR'
;

-- 21/01/2009 11h19min35s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1000018,0,1000018,1000013,15,'lbr_DocDate',TO_TIMESTAMP('2009-01-21 11:19:35','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',7,'Y','Y','Y','Y','lbr_DocDate',10,TO_TIMESTAMP('2009-01-21 11:19:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/01/2009 11h19min35s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1000013 AND EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Process_Para_ID!=t.AD_Process_Para_ID)
;

-- 21/01/2009 11h20min11s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,50022,0,1000018,1000014,38,'File_Directory',TO_TIMESTAMP('2009-01-21 11:20:11','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',22,'Y','Y','Y','N','File_Directory',20,TO_TIMESTAMP('2009-01-21 11:20:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/01/2009 11h20min11s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1000014 AND EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Process_Para_ID!=t.AD_Process_Para_ID)
;

-- 21/01/2009 11h20min50s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Menu (AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,action,Created,CreatedBy,EntityType,IsActive,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES (0,1000038,0,1000018,'P',TO_TIMESTAMP('2009-01-21 11:20:50','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','Y','N','ProcGenerateRPS',TO_TIMESTAMP('2009-01-21 11:20:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/01/2009 11h20min50s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=1000038 AND EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Menu_ID!=t.AD_Menu_ID)
;

-- 21/01/2009 11h20min50s BRST
-- Default comment for updating dictionary
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID,0, 'Y', CURRENT_TIMESTAMP, 0, CURRENT_TIMESTAMP, 0,t.AD_Tree_ID, 1000038, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000038)
;

-- 21/01/2009 11h21min5s BRST
-- Default comment for updating dictionary
UPDATE AD_Menu_Trl SET IsTranslated='Y',Name='Geração Arquivo RPS',Updated=TO_TIMESTAMP('2009-01-21 11:21:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1000038 AND AD_Language='pt_BR'
;

-- 21/01/2009 11h21min18s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 21/01/2009 11h21min18s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 21/01/2009 11h21min18s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 21/01/2009 11h21min18s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 21/01/2009 11h21min18s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 21/01/2009 11h21min18s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 21/01/2009 11h21min18s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 21/01/2009 11h21min18s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 21/01/2009 11h21min18s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 21/01/2009 11h21min18s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 21/01/2009 11h21min18s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 21/01/2009 11h21min18s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 21/01/2009 11h21min18s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000036
;

-- 21/01/2009 11h21min18s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 21/01/2009 11h21min18s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 21/01/2009 11h21min18s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000033
;

-- 21/01/2009 11h21min18s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 21/01/2009 11h21min18s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 21/01/2009 11h21min18s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- 21/01/2009 11h21min18s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 21/01/2009 11h21min18s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 21/01/2009 11h21min26s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000036
;

-- 21/01/2009 11h21min26s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 21/01/2009 11h21min26s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 21/01/2009 11h21min26s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000033
;

-- 21/01/2009 11h21min26s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 21/01/2009 11h21min26s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 21/01/2009 11h21min26s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- 21/01/2009 11h21min26s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 21/01/2009 11h21min26s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 21/01/2009 11h21min26s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 21/01/2009 11h22min7s BRST
-- Default comment for updating dictionary
UPDATE AD_SysConfig SET Value='100-trunk/007-ProcGenerateRPS.sql',Updated=TO_TIMESTAMP('2009-01-21 11:22:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_SysConfig_ID=1100006
;

-- VIEW RPS
--drop view adempiere.lbr_rps_v;

CREATE OR REPLACE VIEW adempiere.lbr_rps_v AS 
(SELECT
    nf.ad_client_id, nf.ad_org_id, 
    2 AS tipo_de_registro, 'RPS' AS tipo_de_rps,
    '     ' AS serie_do_rps, 
    nf.documentno AS numero_do_rps, 
    nf.datedoc AS data_de_emissao_do_rps,
    CASE WHEN (nf.iscancelled = 'Y') THEN 'C' ELSE 'T' END AS situacao_do_rps,
    inv.totallines AS valor_dos_servicos, 0 AS valor_das_deducoes, 
    (SELECT MAX(nfl.productvalue) FROM lbr_notafiscalline nfl WHERE nfl.lbr_notafiscal_id = nf.lbr_notafiscal_id) AS codigo_do_servico_prestado,
    0 AS aliquota, 
    2 AS iss_retido,
    CASE to_char(tomador.lbr_bptypebr) 
        WHEN 'PF' THEN 1
        WHEN 'PJ' THEN 2
        ELSE 3 END AS indicador_pf_pj_tomador,
    nf.lbr_bpcnpj AS cpf_cnpj_tomador, 
    tomador.lbr_ccm AS insc_municipal_tomador,
    CASE WHEN (to_char(nf.lbr_bpie) IS NULL) THEN '000'
         WHEN (UPPER(to_char(nf.lbr_bpie)) LIKE '%ISENT%') THEN '000'
         ELSE to_char(nf.lbr_bpie) END AS insc_estadual_tomador,
    nf.bpname AS nome_razao_tomador, 
    substr(nf.lbr_bpaddress1,1,3) AS tipo_end_tomador,
    nf.lbr_bpaddress1 AS end_tomador, 
    nf.lbr_bpaddress2 AS num_tomador,
    nf.lbr_bpaddress4 AS complemento_tomador, 
    nf.lbr_bpaddress3 AS bairro_tomador,
    nf.lbr_bpcity AS cidade_tomador, 
    nf.lbr_bpregion AS uf_tomador,
    nf.lbr_bppostal AS cep_tomador, 
    '' AS email_tomador,
    COALESCE(nf.description,(SELECT MAX(nfl.productname) 
                             FROM lbr_notafiscalline nfl 
                             WHERE nfl.lbr_notafiscal_id = nf.lbr_notafiscal_id)) AS discriminacao_dos_servicos 
FROM lbr_notafiscal nf 
    INNER JOIN c_bpartner tomador ON (nf.c_bpartner_id = tomador.c_bpartner_id)
    INNER JOIN c_invoice inv ON (nf.c_invoice_id = inv.c_invoice_id)
WHERE
    nf.issotrx = 'Y' AND nf.iscancelled = 'N');

    
exit
