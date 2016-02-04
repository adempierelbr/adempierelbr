-- 04/02/2016 13h53min30s BRST
INSERT INTO AD_Process (AD_Client_ID,AD_Org_ID,AD_Process_ID,AccessLevel,Classname,Created,CreatedBy,Description,EntityType,Help,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES (0,0,1120164,'3','org.adempierelbr.process.ProcReturnRPS',TO_DATE('2016-02-04 13:53:29','YYYY-MM-DD HH24:MI:SS'),100,'Process the file with results of RPS processing','LBRA','Process the file with results of RPS processing','Y','N','N','N','N','Return RPS Process','Y',0,0,TO_DATE('2016-02-04 13:53:29','YYYY-MM-DD HH24:MI:SS'),100,'ReturnRPS')
;

-- 04/02/2016 13h53min30s BRST
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1120164 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 04/02/2016 13h54min26s BRST
UPDATE AD_Process_Trl SET IsTranslated='Y',Name='Processar Retorno do RPS',Description='Processar Retorno do RPS',Help='Processa o arquivo de retorno do RPS',Updated=TO_DATE('2016-02-04 13:54:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120164 AND AD_Language='pt_BR'
;

-- 04/02/2016 13h55min28s BRST
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,2295,0,1120164,1120235,39,'FileName',TO_DATE('2016-02-04 13:55:27','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',0,'Y','Y','Y','N','FileName',10,TO_DATE('2016-02-04 13:55:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 04/02/2016 13h55min28s BRST
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120235 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 04/02/2016 13h55min40s BRST
UPDATE AD_Process_Para SET SeqNo=20,Updated=TO_DATE('2016-02-04 13:55:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120235
;

-- 04/02/2016 13h56min34s BRST
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,1120164,1120236,19,322,202,'AD_Org_ID',TO_DATE('2016-02-04 13:56:33','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Org_ID@','LBRA',0,'Y','Y','N','N','Organization',10,TO_DATE('2016-02-04 13:56:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 04/02/2016 13h56min34s BRST
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120236 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 04/02/2016 13h56min41s BRST
UPDATE AD_Process_Para_Trl SET IsTranslated='Y',Name='Organização',Updated=TO_DATE('2016-02-04 13:56:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120236 AND AD_Language='pt_BR'
;

-- 04/02/2016 13h56min49s BRST
UPDATE AD_Process_Para_Trl SET IsTranslated='Y',Name='Arquivo',Updated=TO_DATE('2016-02-04 13:56:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120235 AND AD_Language='pt_BR'
;

-- 04/02/2016 13h57min19s BRST
INSERT INTO AD_Menu (AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Action,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES (0,1120246,0,1120164,'P',TO_DATE('2016-02-04 13:57:18','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Y','N','N','N','Return RPS',TO_DATE('2016-02-04 13:57:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 04/02/2016 13h57min19s BRST
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=1120246 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 04/02/2016 13h57min19s BRST
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1120246, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120246)
;

-- 04/02/2016 13h57min32s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 04/02/2016 13h57min32s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 04/02/2016 13h57min32s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000036
;

-- 04/02/2016 13h57min32s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 04/02/2016 13h57min32s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 04/02/2016 13h57min32s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 04/02/2016 13h57min32s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120229
;

-- 04/02/2016 13h57min32s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 04/02/2016 13h57min32s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 04/02/2016 13h57min32s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- 04/02/2016 13h57min32s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 04/02/2016 13h57min32s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 04/02/2016 13h57min32s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 04/02/2016 13h57min32s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120246
;

-- 04/02/2016 13h57min32s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 04/02/2016 13h57min32s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120244
;

-- 04/02/2016 13h57min32s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=16, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

--	FIX Legacy
INSERT INTO AD_Process_Access (AD_Process_ID,AD_Role_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadWrite)
SELECT 1120164 AS AD_Process_ID,pa.AD_Role_ID,pa.AD_Client_ID,pa.AD_Org_ID,pa.IsActive,pa.Created,pa.CreatedBy,pa.Updated,pa.UpdatedBy, pa.IsReadWrite
FROM AD_Process_Access pa
	JOIN AD_Role r ON pa.AD_Role_ID = r.AD_Role_ID
	JOIN AD_Process p ON pa.AD_Process_ID = p.AD_Process_ID
WHERE  p.ClassName = 'org.adempierelbr.process.ProcReturnRPS' AND p.AD_Process_ID <> 1120164 AND NOT EXISTS (SELECT '1' FROM AD_Process_Access WHERE AD_Process_ID = 1120164)
;

INSERT INTO AD_Process_Access (AD_Process_ID,AD_Role_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadWrite)
SELECT 1120164 AS AD_Process_ID,pa.AD_Role_ID,pa.AD_Client_ID,pa.AD_Org_ID,pa.IsActive,pa.Created,pa.CreatedBy,pa.Updated,pa.UpdatedBy, pa.IsReadWrite
FROM AD_Process_Access pa
	JOIN AD_Role r ON pa.AD_Role_ID = r.AD_Role_ID
	JOIN AD_Process p ON pa.AD_Process_ID = p.AD_Process_ID
WHERE  p.ClassName = 'org.adempierelbr.process.ProcGenerateRPS' AND NOT EXISTS (SELECT '1' FROM AD_Process_Access WHERE AD_Process_ID = 1120164)
;

DELETE FROM AD_Process_Access pa USING AD_Process p  
WHERE  p.AD_Process_ID = pa.AD_Process_ID AND p.ClassName = 'org.adempierelbr.process.ProcReturnRPS' AND p.AD_Process_ID <> 1120164 
;

DELETE FROM AD_Menu m USING AD_Process p 
WHERE p.AD_Process_ID = m.AD_Process_ID AND p.ClassName = 'org.adempierelbr.process.ProcReturnRPS' AND p.AD_Process_ID <> 1120164
;

UPDATE AD_PInstance  pi SET AD_Process_ID = 1120164 FROM AD_Process p  
WHERE  p.AD_Process_ID = pi.AD_Process_ID AND p.ClassName = 'org.adempierelbr.process.ProcReturnRPS' AND p.AD_Process_ID <> 1120164
;

DELETE FROM AD_Process
WHERE ClassName = 'org.adempierelbr.process.ProcReturnRPS' AND AD_Process_ID <> 1120164
;

-- 04/02/2016 13h57min32s BRST
SELECT Register_Migration_Script ('179-FixRPSReturn.sql') FROM DUAL
;

EXIT