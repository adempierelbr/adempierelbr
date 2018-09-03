-- 30/05/2018 15h53min9s BRT
-- NF-e 4.0
INSERT INTO AD_Process (AD_Client_ID,AD_Org_ID,AD_Process_ID,AccessLevel,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,Help,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES (0,0,1120216,'3','org.adempierelbr.process.ProcInutNF','N',TO_TIMESTAMP('2018-05-30 15:53:09','YYYY-MM-DD HH24:MI:SS'),100,'Skip NF Number','LBRA','Register at SeFaz that some NF numbering will not be used','Y','N','N','N','N','Skip NF Number','Y',0,0,TO_TIMESTAMP('2018-05-30 15:53:09','YYYY-MM-DD HH24:MI:SS'),100,'InutNF')
;

-- 30/05/2018 15h53min9s BRT
-- NF-e 4.0
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1120216 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 30/05/2018 15h54min12s BRT
-- NF-e 4.0
UPDATE AD_Process_Trl SET IsTranslated='Y',Name='Inutilização de Numeração de NF-e',Description='Inutilização de Número/Sequência de NF',Help='Inutiliza um número ou uma sequência, informando a SeFaz que estes números não serão usados',Updated=TO_TIMESTAMP('2018-05-30 15:54:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120216 AND AD_Language='pt_BR'
;

-- 30/05/2018 15h55min29s BRT
-- NF-e 4.0
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,1120216,1120412,19,'AD_Org_ID',TO_TIMESTAMP('2018-05-30 15:55:28','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',0,'Y','Y','N','N','AD_Org_ID',10,TO_TIMESTAMP('2018-05-30 15:55:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/05/2018 15h55min29s BRT
-- NF-e 4.0
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120412 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 30/05/2018 15h55min40s BRT
-- NF-e 4.0
UPDATE AD_Process_Para SET Name='Organization',Updated=TO_TIMESTAMP('2018-05-30 15:55:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120412
;

-- 30/05/2018 15h55min40s BRT
-- NF-e 4.0
UPDATE AD_Process_Para_Trl SET IsTranslated='N' WHERE AD_Process_Para_ID=1120412
;

-- 30/05/2018 15h55min40s BRT
-- NF-e 4.0
UPDATE AD_Process_Para_Trl SET Description=NULL,Help=NULL,Name='Organization',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Process_Para_ID=1120412
;

-- 30/05/2018 15h55min47s BRT
-- NF-e 4.0
UPDATE AD_Process_Para_Trl SET IsTranslated='Y',Name='Organização',Updated=TO_TIMESTAMP('2018-05-30 15:55:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120412 AND AD_Language='pt_BR'
;

-- 30/05/2018 15h55min53s BRT
-- NF-e 4.0
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_TIMESTAMP('2018-05-30 15:55:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120412
;

-- 30/05/2018 15h56min59s BRT
-- NF-e 4.0
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1100010,0,1120216,1120413,10,'lbr_NFSerie',TO_TIMESTAMP('2018-05-30 15:56:58','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',0,'Y','Y','Y','N','Série da NF',20,TO_TIMESTAMP('2018-05-30 15:56:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/05/2018 15h56min59s BRT
-- NF-e 4.0
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120413 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 30/05/2018 15h57min27s BRT
-- NF-e 4.0
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,290,0,1120216,1120414,10,'DocumentNo',TO_TIMESTAMP('2018-05-30 15:57:27','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',0,'Y','Y','Y','Y','Número da NF',30,TO_TIMESTAMP('2018-05-30 15:57:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/05/2018 15h57min27s BRT
-- NF-e 4.0
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120414 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 30/05/2018 15h58min1s BRT
-- NF-e 4.0
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,265,0,1120216,1120415,15,'DateDoc',TO_TIMESTAMP('2018-05-30 15:58:00','YYYY-MM-DD HH24:MI:SS'),100,'@#Date@','LBRA',0,'Y','Y','Y','N','Data',40,TO_TIMESTAMP('2018-05-30 15:58:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/05/2018 15h58min1s BRT
-- NF-e 4.0
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120415 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 30/05/2018 15h58min18s BRT
-- NF-e 4.0
UPDATE AD_Process_Para SET SeqNo=50,Updated=TO_TIMESTAMP('2018-05-30 15:58:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120415
;

-- 30/05/2018 15h58min25s BRT
-- NF-e 4.0
UPDATE AD_Process_Para SET SeqNo=40,Updated=TO_TIMESTAMP('2018-05-30 15:58:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120414
;

-- 30/05/2018 15h58min29s BRT
-- NF-e 4.0
UPDATE AD_Process_Para SET SeqNo=30,Updated=TO_TIMESTAMP('2018-05-30 15:58:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120413
;

-- 30/05/2018 15h58min57s BRT
-- NF-e 4.0
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1100009,0,1120216,1120416,17,1120257,'lbr_NFModel',TO_TIMESTAMP('2018-05-30 15:58:57','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',0,'Y','Y','N','N','Modelo da NF',20,TO_TIMESTAMP('2018-05-30 15:58:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/05/2018 15h58min57s BRT
-- NF-e 4.0
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120416 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 30/05/2018 16h0min0s BRT
-- NF-e 4.0
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1100011,0,1120216,1120417,17,1100001,'lbr_NFeEnv',TO_TIMESTAMP('2018-05-30 15:59:59','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',0,'Y','Y','N','N','Ambiente',60,TO_TIMESTAMP('2018-05-30 15:59:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/05/2018 16h0min0s BRT
-- NF-e 4.0
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120417 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 30/05/2018 16h0min8s BRT
-- NF-e 4.0
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_TIMESTAMP('2018-05-30 16:00:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120416
;

-- 30/05/2018 16h0min48s BRT
-- NF-e 4.0
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1100037,0,1120216,1120418,14,'lbr_MotivoCancel',TO_TIMESTAMP('2018-05-30 16:00:48','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',0,'Y','Y','Y','N','Motivo do Cancelamento',70,TO_TIMESTAMP('2018-05-30 16:00:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/05/2018 16h0min48s BRT
-- NF-e 4.0
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120418 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 30/05/2018 16h1min25s BRT
-- NF-e 4.0
INSERT INTO AD_Menu (AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,"action",Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES (0,1120310,0,1120216,'P',TO_TIMESTAMP('2018-05-30 16:01:25','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Y','N','N','N','Inutilização de Numeração de NF-e',TO_TIMESTAMP('2018-05-30 16:01:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/05/2018 16h1min25s BRT
-- NF-e 4.0
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=1120310 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 30/05/2018 16h1min25s BRT
-- NF-e 4.0
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 1120310, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120310)
;

-- 30/05/2018 16h1min44s BRT
-- NF-e 4.0
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 30/05/2018 16h1min44s BRT
-- NF-e 4.0
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1120257
;

-- 30/05/2018 16h1min44s BRT
-- NF-e 4.0
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 30/05/2018 16h1min44s BRT
-- NF-e 4.0
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 30/05/2018 16h1min44s BRT
-- NF-e 4.0
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1120253
;

-- 30/05/2018 16h1min44s BRT
-- NF-e 4.0
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 30/05/2018 16h1min44s BRT
-- NF-e 4.0
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 30/05/2018 16h1min44s BRT
-- NF-e 4.0
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1120229
;

-- 30/05/2018 16h1min44s BRT
-- NF-e 4.0
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1120240
;

-- 30/05/2018 16h1min44s BRT
-- NF-e 4.0
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1120248
;

-- 30/05/2018 16h1min44s BRT
-- NF-e 4.0
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1120241
;

-- 30/05/2018 16h1min44s BRT
-- NF-e 4.0
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1120254
;

-- 30/05/2018 16h1min44s BRT
-- NF-e 4.0
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1120277
;

-- 30/05/2018 16h1min44s BRT
-- NF-e 4.0
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1120252
;

-- 30/05/2018 16h1min44s BRT
-- NF-e 4.0
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1120239
;

-- 30/05/2018 16h1min44s BRT
-- NF-e 4.0
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 30/05/2018 16h1min44s BRT
-- NF-e 4.0
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=16, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 30/05/2018 16h1min44s BRT
-- NF-e 4.0
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=17, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1120246
;

-- 30/05/2018 16h1min44s BRT
-- NF-e 4.0
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=18, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1120310
;

-- 30/05/2018 16h1min44s BRT
-- NF-e 4.0
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=19, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1120244
;

-- 30/05/2018 16h1min44s BRT
-- NF-e 4.0
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=20, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 30/05/2018 16h1min44s BRT
-- NF-e 4.0
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=21, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1120293
;

-- 30/05/2018 16h1min44s BRT
-- NF-e 4.0
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=22, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 30/05/2018 16h1min44s BRT
-- NF-e 4.0
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=23, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 30/05/2018 16h1min44s BRT
SELECT Register_Migration_Script ('201805301605_NFeInut.sql') FROM DUAL
;
