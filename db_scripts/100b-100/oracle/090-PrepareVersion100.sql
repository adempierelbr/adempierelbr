-- 26/11/2008 9h58min3s BRST
-- Default comment for updating dictionary
INSERT INTO AD_SysConfig (AD_Client_ID,AD_Org_ID,AD_SysConfig_ID,ConfigurationLevel,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1100005,'C',TO_TIMESTAMP('2008-11-26 09:58:03','YYYY-MM-DD HH24:MI:SS'),100,'Define a versão do AdempiereLBR','LBRA','Y','LBR_VERSION_NO',TO_TIMESTAMP('2008-11-26 09:58:03','YYYY-MM-DD HH24:MI:SS'),100,'100')
;

-- 26/11/2008 9h59min36s BRST
-- Default comment for updating dictionary
INSERT INTO AD_SysConfig (AD_Client_ID,AD_Org_ID,AD_SysConfig_ID,ConfigurationLevel,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1100006,'C',TO_TIMESTAMP('2008-11-26 09:59:36','YYYY-MM-DD HH24:MI:SS'),100,'Define o último script executado','LBRA','Y','LBR_LAST_SCRIPT_EXECUTED',TO_TIMESTAMP('2008-11-26 09:59:36','YYYY-MM-DD HH24:MI:SS'),100,'100b-100/090-PrepareVersion100.sql')
;


-- 26/11/2008 10h2min59s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Process (AD_Client_ID,AD_Org_ID,AD_Process_ID,AccessLevel,Classname,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES (0,0,1000017,'3','org.adempierelbr.process.ProcCancelBoleto',TO_TIMESTAMP('2008-11-26 10:02:59','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','N','N','N','N','Sobre AdempiereLBR','Y',0,0,TO_TIMESTAMP('2008-11-26 10:02:59','YYYY-MM-DD HH24:MI:SS'),100,'ProcLBRVersion')
;

-- 26/11/2008 10h2min59s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1000017 AND EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Process_ID!=t.AD_Process_ID)
;

-- 26/11/2008 10h2min59s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,1000017,0,TO_TIMESTAMP('2008-11-26 10:02:59','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-11-26 10:02:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/11/2008 10h2min59s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,1000017,102,TO_TIMESTAMP('2008-11-26 10:02:59','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-11-26 10:02:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/11/2008 10h2min59s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,1000017,103,TO_TIMESTAMP('2008-11-26 10:02:59','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-11-26 10:02:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/11/2008 10h2min59s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,1000017,50001,TO_TIMESTAMP('2008-11-26 10:02:59','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-11-26 10:02:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/11/2008 10h3min18s BRST
-- Default comment for updating dictionary
UPDATE AD_Process SET Classname='org.adempierelbr.process.ProcLBRVersion', EntityType='LBRA',Updated=TO_TIMESTAMP('2008-11-26 10:03:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1000017
;

-- 26/11/2008 10h4min17s BRST
-- Default comment for updating dictionary
UPDATE AD_Process SET AccessLevel='7',Updated=TO_TIMESTAMP('2008-11-26 10:04:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1000017
;

-- 26/11/2008 10h4min53s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Menu (AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,action,Created,CreatedBy,EntityType,IsActive,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES (0,1000037,0,1000017,'P',TO_TIMESTAMP('2008-11-26 10:04:53','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','N','N','ProcLBRVersion',TO_TIMESTAMP('2008-11-26 10:04:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/11/2008 10h4min53s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=1000037 AND EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Menu_ID!=t.AD_Menu_ID)
;

-- 26/11/2008 10h4min53s BRST
-- Default comment for updating dictionary
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID,0, 'Y', CURRENT_TIMESTAMP, 0, CURRENT_TIMESTAMP, 0,t.AD_Tree_ID, 1000037, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000037)
;

-- 26/11/2008 10h4min58s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 26/11/2008 10h4min58s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 26/11/2008 10h4min58s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 26/11/2008 10h4min58s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 26/11/2008 10h4min58s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 26/11/2008 10h4min58s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 26/11/2008 10h4min58s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 26/11/2008 10h4min58s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 26/11/2008 10h4min58s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 26/11/2008 10h4min58s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 26/11/2008 10h4min58s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 26/11/2008 10h4min58s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000037
;

-- 26/11/2008 10h4min58s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000008
;

-- 26/11/2008 10h4min58s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- 26/11/2008 10h4min58s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000004
;

-- 26/11/2008 10h5min6s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000004
;

-- 26/11/2008 10h5min6s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000037
;

-- 26/11/2008 10h5min6s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000008
;

-- 26/11/2008 10h5min6s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- 26/11/2008 10h5min8s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- 26/11/2008 10h5min8s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000004
;

-- 26/11/2008 10h5min8s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000037
;

-- 26/11/2008 10h5min8s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000008
;

-- 26/11/2008 10h5min11s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000008
;

-- 26/11/2008 10h5min11s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000001
;

-- 26/11/2008 10h5min11s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000004
;

-- 26/11/2008 10h5min11s BRST
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000037
;

exit
