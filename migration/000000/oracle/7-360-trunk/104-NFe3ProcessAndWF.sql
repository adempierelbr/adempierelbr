-- 16/03/2015 18h29min34s BRT
INSERT INTO AD_Workflow (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Workflow_ID,AccessLevel,Author,Cost,Created,CreatedBy,Description,DocumentNo,Duration,DurationUnit,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsValid,Name,PublishStatus,Updated,UpdatedBy,Value,Version,WaitingTime,WorkflowType,WorkingTime) VALUES (0,0,1000027,1120020,'1','Kenos Ltda',0,TO_DATE('2015-03-16 18:29:33','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Process Nota Fiscal)','10000000',1,'D','LBRA','Y','N','N','N','Process_LBR_NotaFiscal','T',TO_DATE('2015-03-16 18:29:33','YYYY-MM-DD HH24:MI:SS'),100,'Process_LBR_NotaFiscal',0,0,'P',0)
;

-- 16/03/2015 18h29min34s BRT
INSERT INTO AD_Workflow_Trl (AD_Language,AD_Workflow_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Workflow_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Workflow t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Workflow_ID=1120020 AND NOT EXISTS (SELECT * FROM AD_Workflow_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Workflow_ID=t.AD_Workflow_ID)
;

-- 16/03/2015 18h31min28s BRT
INSERT INTO AD_WF_Node (AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Action,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,Limit,Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitTime,WaitingTime,WorkingTime,XPosition,YPosition) VALUES (0,0,1120076,1120020,'D',0,TO_DATE('2015-03-16 18:31:27','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','--',0,0,'U','Y','Y','X',0,'(DocAuto)',0,'X',TO_DATE('2015-03-16 18:31:27','YYYY-MM-DD HH24:MI:SS'),100,'(DocAuto)',0,0,0,0,0)
;

-- 16/03/2015 18h31min28s BRT
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=1120076 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- 16/03/2015 18h31min32s BRT
UPDATE AD_WF_Node SET EntityType='LBRA',Updated=TO_DATE('2015-03-16 18:31:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Node_ID=1120076
;

-- 16/03/2015 18h31min55s BRT
INSERT INTO AD_WF_Node (AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Action,Cost,Created,CreatedBy,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,Limit,Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitTime,WaitingTime,WorkingTime,XPosition,YPosition) VALUES (0,0,1120077,1120020,'D',0,TO_DATE('2015-03-16 18:31:55','YYYY-MM-DD HH24:MI:SS'),100,'--',0,0,'LBRA','Y','Y','X',0,'(DocComplete)',0,'X',TO_DATE('2015-03-16 18:31:55','YYYY-MM-DD HH24:MI:SS'),100,'(DocComplete)',0,0,0,0,0)
;

-- 16/03/2015 18h31min55s BRT
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=1120077 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- 16/03/2015 18h32min25s BRT
INSERT INTO AD_WF_Node (AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Action,Cost,Created,CreatedBy,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,Limit,Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitTime,WaitingTime,WorkingTime,XPosition,YPosition) VALUES (0,0,1120078,1120020,'D',0,TO_DATE('2015-03-16 18:32:24','YYYY-MM-DD HH24:MI:SS'),100,'PR',0,0,'LBRA','Y','Y','X',0,'(DocPrepare)',0,'X',TO_DATE('2015-03-16 18:32:24','YYYY-MM-DD HH24:MI:SS'),100,'(DocPrepare)',0,0,0,0,0)
;

-- 16/03/2015 18h32min25s BRT
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=1120078 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- 16/03/2015 18h32min39s BRT
INSERT INTO AD_WF_Node (AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Action,Cost,Created,CreatedBy,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,Limit,Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitTime,WaitingTime,WorkingTime,XPosition,YPosition) VALUES (0,0,1120079,1120020,'Z',0,TO_DATE('2015-03-16 18:32:39','YYYY-MM-DD HH24:MI:SS'),100,'CO',0,0,'LBRA','Y','Y','X',0,'(Start)',0,'X',TO_DATE('2015-03-16 18:32:39','YYYY-MM-DD HH24:MI:SS'),100,'(Start)',0,0,0,0,0)
;

-- 16/03/2015 18h32min39s BRT
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=1120079 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- 16/03/2015 18h33min3s BRT
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_NodeNext_ID,AD_WF_Node_ID,Created,CreatedBy,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,1120078,1120060,1120079,TO_DATE('2015-03-16 18:33:03','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N',10,TO_DATE('2015-03-16 18:33:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/03/2015 18h33min26s BRT
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_NodeNext_ID,AD_WF_Node_ID,Created,CreatedBy,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,1120076,1120061,1120079,TO_DATE('2015-03-16 18:33:25','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N',100,TO_DATE('2015-03-16 18:33:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/03/2015 18h33min45s BRT
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_NodeNext_ID,AD_WF_Node_ID,Created,CreatedBy,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,1120077,1120062,1120078,TO_DATE('2015-03-16 18:33:45','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N',10,TO_DATE('2015-03-16 18:33:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/03/2015 18h34min21s BRT
UPDATE AD_Workflow SET AD_WF_Node_ID=1120079, IsValid='Y',Updated=TO_DATE('2015-03-16 18:34:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=1120020
;

-- 16/03/2015 18h35min0s BRT
INSERT INTO AD_Process (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Workflow_ID,AccessLevel,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES (0,0,1120147,1120020,'1',TO_DATE('2015-03-16 18:34:59','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','N','N','N','Process Nota Fiscal','Y',0,0,TO_DATE('2015-03-16 18:34:59','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NotaFiscal Process')
;

-- 16/03/2015 18h35min0s BRT
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1120147 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 16/03/2015 18h35min36s BRT
UPDATE AD_Column SET AD_Process_ID=1120147,Updated=TO_DATE('2015-03-16 18:35:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126536
;

-- 16/03/2015 18h36min12s BRT
UPDATE AD_Field SET DefaultValue='Y',Updated=TO_DATE('2015-03-16 18:36:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124949
;

-- 19/03/2015 14h41min29s BRT
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121724,0,'LBR_NFeLotMethod',TO_DATE('2015-03-19 14:41:28','YYYY-MM-DD HH24:MI:SS'),100,'Method of transmission of NFe Lot','LBRA','Y','Lot Method','Lot Method',TO_DATE('2015-03-19 14:41:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 19/03/2015 14h41min29s BRT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121724 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 19/03/2015 14h42min32s BRT
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Método de Transmissão',PrintName='Método de Transmissão',Description='Método de Transmissão do Lote da NF-e',Updated=TO_DATE('2015-03-19 14:42:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121724 AND AD_Language='pt_BR'
;

-- 19/03/2015 14h43min12s BRT
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120209,TO_DATE('2015-03-19 14:43:11','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','LBR_NFeLot - LBR_NFeLotMethod',TO_DATE('2015-03-19 14:43:11','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 19/03/2015 14h43min12s BRT
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120209 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 19/03/2015 14h44min9s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121550,1120209,TO_DATE('2015-03-19 14:44:08','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Asynchronous',TO_DATE('2015-03-19 14:44:08','YYYY-MM-DD HH24:MI:SS'),100,'0')
;

-- 19/03/2015 14h44min9s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121550 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 19/03/2015 14h44min20s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Assíncrono',Updated=TO_DATE('2015-03-19 14:44:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121550 AND AD_Language='pt_BR'
;

-- 19/03/2015 14h44min30s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121551,1120209,TO_DATE('2015-03-19 14:44:29','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Synchronous',TO_DATE('2015-03-19 14:44:29','YYYY-MM-DD HH24:MI:SS'),100,'1')
;

-- 19/03/2015 14h44min30s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121551 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 19/03/2015 14h44min44s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Síncrono',Updated=TO_DATE('2015-03-19 14:44:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121551 AND AD_Language='pt_BR'
;

-- 19/03/2015 14h46min14s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126590,1121724,0,17,1120209,1100001,'LBR_NFeLotMethod',TO_DATE('2015-03-19 14:46:13','YYYY-MM-DD HH24:MI:SS'),100,'0','Method of transmission of NFe Lot','LBRA',1,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Lot Method',0,TO_DATE('2015-03-19 14:46:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 19/03/2015 14h46min14s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126590 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 19/03/2015 14h46min17s BRT
ALTER TABLE LBR_NFeLot ADD LBR_NFeLotMethod CHAR(1) DEFAULT '0' NOT NULL
;

-- 19/03/2015 14h54min20s BRT
UPDATE AD_Column SET IsMandatory='N',Updated=TO_DATE('2015-03-19 14:54:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1100059
;

-- 19/03/2015 14h54min25s BRT
ALTER TABLE LBR_NFeLot MODIFY Name NVARCHAR2(60) DEFAULT NULL 
;

-- 19/03/2015 14h54min25s BRT
ALTER TABLE LBR_NFeLot MODIFY Name NULL
;

-- 19/03/2015 14h54min48s BRT
UPDATE AD_Column SET IsIdentifier='N',Updated=TO_DATE('2015-03-19 14:54:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1100059
;

-- 19/03/2015 14h54min55s BRT
UPDATE AD_Column SET IsIdentifier='Y',Updated=TO_DATE('2015-03-19 14:54:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1100068
;

-- 19/03/2015 14h55min22s BRT
UPDATE AD_Column SET IsIdentifier='Y',Updated=TO_DATE('2015-03-19 14:55:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1100059
;

-- 19/03/2015 14h56min33s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126591,289,0,17,131,1100001,'DocStatus',TO_DATE('2015-03-19 14:56:32','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','LBRA',2,'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Document Status',0,TO_DATE('2015-03-19 14:56:32','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 19/03/2015 14h56min33s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126591 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 19/03/2015 14h57min12s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126592,287,0,17,135,1100001,'DocAction',TO_DATE('2015-03-19 14:57:11','YYYY-MM-DD HH24:MI:SS'),100,'CO','The targeted status of the document','LBRA',2,'You find the current status in the Document Status field. The options are listed in a popup','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Document Action',0,TO_DATE('2015-03-19 14:57:11','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 19/03/2015 14h57min12s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126592 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 19/03/2015 14h57min13s BRT
ALTER TABLE LBR_NFeLot ADD DocAction NVARCHAR2(2) DEFAULT 'CO' NOT NULL
;

-- 19/03/2015 14h57min27s BRT
UPDATE AD_Column SET DefaultValue='DR', IsMandatory='Y',Updated=TO_DATE('2015-03-19 14:57:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126591
;

-- 19/03/2015 14h57min29s BRT
ALTER TABLE LBR_NFeLot ADD DocStatus NVARCHAR2(2) DEFAULT 'DR' NOT NULL
;

-- 19/03/2015 14h58min8s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126592,1124991,0,1100001,TO_DATE('2015-03-19 14:58:07','YYYY-MM-DD HH24:MI:SS'),100,'The targeted status of the document',2,'LBRA','You find the current status in the Document Status field. The options are listed in a popup','Y','Y','Y','N','N','N','N','N','Document Action',TO_DATE('2015-03-19 14:58:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 19/03/2015 14h58min8s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124991 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/03/2015 14h58min9s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126591,1124992,0,1100001,TO_DATE('2015-03-19 14:58:08','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document',2,'LBRA','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','Y','Y','N','N','N','N','N','Document Status',TO_DATE('2015-03-19 14:58:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 19/03/2015 14h58min9s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124992 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/03/2015 14h58min9s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126590,1124993,0,1100001,TO_DATE('2015-03-19 14:58:09','YYYY-MM-DD HH24:MI:SS'),100,'Method of transmission of NFe Lot',1,'LBRA','Y','Y','Y','N','N','N','N','N','Lot Method',TO_DATE('2015-03-19 14:58:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 19/03/2015 14h58min9s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124993 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/03/2015 14h59min39s BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1100023
;

-- 19/03/2015 14h59min39s BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1100042
;

-- 19/03/2015 14h59min39s BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1100030
;

-- 19/03/2015 14h59min39s BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1100031
;

-- 19/03/2015 14h59min39s BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1124993
;

-- 19/03/2015 14h59min39s BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1124992
;

-- 19/03/2015 14h59min39s BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1124991
;

-- 19/03/2015 14h59min39s BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1100034
;

-- 19/03/2015 14h59min39s BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1100032
;

-- 19/03/2015 14h59min39s BRT
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1100033
;

-- 19/03/2015 14h59min39s BRT
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1100040
;

-- 19/03/2015 14h59min39s BRT
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1100041
;

-- 19/03/2015 14h59min39s BRT
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1100043
;

-- 19/03/2015 14h59min39s BRT
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1100038
;

-- 19/03/2015 14h59min39s BRT
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1100039
;

-- 19/03/2015 14h59min49s BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2015-03-19 14:59:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100031
;

-- 19/03/2015 14h59min54s BRT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2015-03-19 14:59:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124992
;

-- 19/03/2015 14h59min57s BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2015-03-19 14:59:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124991
;

-- 19/03/2015 15h2min30s BRT
INSERT INTO AD_Workflow (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Workflow_ID,AccessLevel,Author,Cost,Created,CreatedBy,DocumentNo,Duration,DurationUnit,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsValid,Limit,Name,Priority,PublishStatus,Updated,UpdatedBy,ValidateWorkflow,Value,Version,WaitingTime,WorkflowType,WorkingTime) VALUES (0,0,1100001,1120021,'1','Kenos Ltda',0,TO_DATE('2015-03-19 15:02:30','YYYY-MM-DD HH24:MI:SS'),100,'10000000',0,'D','LBRA','Y','N','N','N',0,'Process_LBR_NFeLot',0,'U',TO_DATE('2015-03-19 15:02:30','YYYY-MM-DD HH24:MI:SS'),100,'N','Process_LBR_NFeLot',0,0,'P',0)
;

-- 19/03/2015 15h2min30s BRT
INSERT INTO AD_Workflow_Trl (AD_Language,AD_Workflow_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Workflow_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Workflow t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Workflow_ID=1120021 AND NOT EXISTS (SELECT * FROM AD_Workflow_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Workflow_ID=t.AD_Workflow_ID)
;

-- 19/03/2015 15h3min8s BRT
INSERT INTO AD_WF_Node (AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Action,Cost,Created,CreatedBy,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,Limit,Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitTime,WaitingTime,WorkingTime,XPosition,YPosition) VALUES (0,0,1120080,1120021,'D',0,TO_DATE('2015-03-19 15:03:07','YYYY-MM-DD HH24:MI:SS'),100,'--',0,0,'LBRA','Y','Y','X',0,'(DocAuto)',0,'X',TO_DATE('2015-03-19 15:03:07','YYYY-MM-DD HH24:MI:SS'),100,'(DocAuto)',0,0,0,0,0)
;

-- 19/03/2015 15h3min8s BRT
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=1120080 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- 19/03/2015 15h3min19s BRT
INSERT INTO AD_WF_Node (AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Action,Cost,Created,CreatedBy,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,Limit,Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitTime,WaitingTime,WorkingTime,XPosition,YPosition) VALUES (0,0,1120081,1120021,'D',0,TO_DATE('2015-03-19 15:03:19','YYYY-MM-DD HH24:MI:SS'),100,'--',0,0,'U','Y','Y','X',0,'(DocComplete)',0,'X',TO_DATE('2015-03-19 15:03:19','YYYY-MM-DD HH24:MI:SS'),100,'(DocComplete)',0,0,0,0,0)
;

-- 19/03/2015 15h3min19s BRT
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=1120081 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- 19/03/2015 15h3min22s BRT
UPDATE AD_WF_Node SET EntityType='LBRA',Updated=TO_DATE('2015-03-19 15:03:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Node_ID=1120081
;

-- 19/03/2015 15h3min37s BRT
INSERT INTO AD_WF_Node (AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Action,Cost,Created,CreatedBy,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,Limit,Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitTime,WaitingTime,WorkingTime,XPosition,YPosition) VALUES (0,0,1120082,1120021,'D',0,TO_DATE('2015-03-19 15:03:36','YYYY-MM-DD HH24:MI:SS'),100,'PR',0,0,'LBRA','Y','Y','X',0,'(DocPrepare)',0,'X',TO_DATE('2015-03-19 15:03:36','YYYY-MM-DD HH24:MI:SS'),100,'(DocComplete)(DocPrepare)',0,0,0,0,0)
;

-- 19/03/2015 15h3min37s BRT
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=1120082 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- 19/03/2015 15h3min49s BRT
INSERT INTO AD_WF_Node (AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Action,Cost,Created,CreatedBy,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,JoinElement,Limit,Name,Priority,SplitElement,Updated,UpdatedBy,Value,WaitTime,WaitingTime,WorkingTime,XPosition,YPosition) VALUES (0,0,1120083,1120021,'Z',0,TO_DATE('2015-03-19 15:03:48','YYYY-MM-DD HH24:MI:SS'),100,'CO',0,0,'LBRA','Y','Y','X',0,'(Start)',0,'X',TO_DATE('2015-03-19 15:03:48','YYYY-MM-DD HH24:MI:SS'),100,'(Start)',0,0,0,0,0)
;

-- 19/03/2015 15h3min49s BRT
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=1120083 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- 19/03/2015 15h4min5s BRT
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_NodeNext_ID,AD_WF_Node_ID,Created,CreatedBy,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,1120082,1120063,1120083,TO_DATE('2015-03-19 15:04:04','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N',10,TO_DATE('2015-03-19 15:04:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 19/03/2015 15h4min27s BRT
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_NodeNext_ID,AD_WF_Node_ID,Created,CreatedBy,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,1120080,1120064,1120083,TO_DATE('2015-03-19 15:04:26','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N',100,TO_DATE('2015-03-19 15:04:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 19/03/2015 15h4min41s BRT
UPDATE AD_WF_Node SET Value='(DocPrepare)',Updated=TO_DATE('2015-03-19 15:04:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Node_ID=1120082
;

-- 19/03/2015 15h4min49s BRT
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_NodeNext_ID,AD_WF_Node_ID,Created,CreatedBy,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,1120081,1120065,1120082,TO_DATE('2015-03-19 15:04:49','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N',10,TO_DATE('2015-03-19 15:04:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 19/03/2015 15h5min42s BRT
INSERT INTO AD_Process (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Workflow_ID,AccessLevel,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES (0,0,1120148,1120021,'1',TO_DATE('2015-03-19 15:05:40','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','N','N','N','Process NFe Lot','Y',0,0,TO_DATE('2015-03-19 15:05:40','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NFeLot Process')
;

-- 19/03/2015 15h5min42s BRT
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1120148 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 19/03/2015 15h6min14s BRT
UPDATE AD_Column SET AD_Process_ID=1120148, AD_Reference_ID=28,Updated=TO_DATE('2015-03-19 15:06:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126592
;

-- 30/03/2015 17h39min43s BRT
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120211,TO_DATE('2015-03-30 17:39:42','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','_Document Action NF-e',TO_DATE('2015-03-30 17:39:42','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 30/03/2015 17h39min43s BRT
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120211 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 30/03/2015 18h11min44s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121556,1120211,TO_DATE('2015-03-30 18:11:43','YYYY-MM-DD HH24:MI:SS'),100,'No Action','LBRA','Y','<None>',TO_DATE('2015-03-30 18:11:43','YYYY-MM-DD HH24:MI:SS'),100,'--')
;

-- 30/03/2015 18h11min44s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121556 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 30/03/2015 18h11min59s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='<Sem Ação>',Description='Sem Ação',Updated=TO_DATE('2015-03-30 18:11:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121556 AND AD_Language='pt_BR'
;

-- 30/03/2015 18h13min34s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121557,1120211,TO_DATE('2015-03-30 18:13:33','YYYY-MM-DD HH24:MI:SS'),100,'Generate XML and Transmmit the NF-e','LBRA','Y','Complete',TO_DATE('2015-03-30 18:13:33','YYYY-MM-DD HH24:MI:SS'),100,'CO')
;

-- 30/03/2015 18h13min34s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121557 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 30/03/2015 18h13min56s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Description='Gera o XML e Transmite a NF-e',Updated=TO_DATE('2015-03-30 18:13:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121557 AND AD_Language='pt_BR'
;

-- 30/03/2015 18h16min45s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121558,1120211,TO_DATE('2015-03-30 18:16:44','YYYY-MM-DD HH24:MI:SS'),100,'Validate and Generate XML','LBRA','Y','Prepare',TO_DATE('2015-03-30 18:16:44','YYYY-MM-DD HH24:MI:SS'),100,'PR')
;

-- 30/03/2015 18h16min45s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121558 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 30/03/2015 18h17min5s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Preparar',Description='Valida a NF e gera o XML',Updated=TO_DATE('2015-03-30 18:17:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121558 AND AD_Language='pt_BR'
;

-- 30/03/2015 18h17min43s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121559,1120211,TO_DATE('2015-03-30 18:17:43','YYYY-MM-DD HH24:MI:SS'),100,'Unlock and Re-activate','LBRA','Y','Unlock',TO_DATE('2015-03-30 18:17:43','YYYY-MM-DD HH24:MI:SS'),100,'XL')
;

-- 30/03/2015 18h17min43s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121559 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 30/03/2015 18h19min33s BRT
UPDATE AD_Ref_List_Trl SET Name='Destravar (Reativar)',Description='Reativa a NF e destrava para edição',Updated=TO_DATE('2015-03-30 18:19:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121559 AND AD_Language='pt_BR'
;

-- 30/03/2015 18h19min55s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_DATE('2015-03-30 18:19:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121559 AND AD_Language='pt_BR'
;

-- 30/03/2015 18h20min36s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121560,1120211,TO_DATE('2015-03-30 18:20:35','YYYY-MM-DD HH24:MI:SS'),100,'Void or invalidate','LBRA','Y','Void/Invalidate',TO_DATE('2015-03-30 18:20:35','YYYY-MM-DD HH24:MI:SS'),100,'VO')
;

-- 30/03/2015 18h20min36s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121560 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 30/03/2015 18h21min8s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Cancelar / Invalidar',Description='Cancale a NF se já tiver sido autorizada ou inutiliza a numeração',Updated=TO_DATE('2015-03-30 18:21:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121560 AND AD_Language='pt_BR'
;

-- 30/03/2015 18h21min33s BRT
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120212,TO_DATE('2015-03-30 18:21:33','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','_Document Status NF-e',TO_DATE('2015-03-30 18:21:33','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 30/03/2015 18h21min33s BRT
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120212 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 30/03/2015 18h22min16s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121561,1120212,TO_DATE('2015-03-30 18:22:15','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Completed',TO_DATE('2015-03-30 18:22:15','YYYY-MM-DD HH24:MI:SS'),100,'CO')
;

-- 30/03/2015 18h22min16s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121561 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 30/03/2015 18h22min24s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Completada',Updated=TO_DATE('2015-03-30 18:22:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121561 AND AD_Language='pt_BR'
;

-- 30/03/2015 18h22min37s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121562,1120212,TO_DATE('2015-03-30 18:22:36','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Drafted',TO_DATE('2015-03-30 18:22:36','YYYY-MM-DD HH24:MI:SS'),100,'DR')
;

-- 30/03/2015 18h22min37s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121562 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 30/03/2015 18h22min59s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Rascunho/Esboçado',Updated=TO_DATE('2015-03-30 18:22:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121562 AND AD_Language='pt_BR'
;

-- 30/03/2015 18h23min17s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121563,1120212,TO_DATE('2015-03-30 18:23:16','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Inválida',TO_DATE('2015-03-30 18:23:16','YYYY-MM-DD HH24:MI:SS'),100,'IN')
;

-- 30/03/2015 18h23min17s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121563 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 30/03/2015 18h23min24s BRT
UPDATE AD_Ref_List SET Name='Invalid',Updated=TO_DATE('2015-03-30 18:23:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121563
;

-- 30/03/2015 18h23min24s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121563
;

-- 30/03/2015 18h23min24s BRT
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Invalid',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121563
;

-- 30/03/2015 18h23min27s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_DATE('2015-03-30 18:23:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121563 AND AD_Language='pt_BR'
;

-- 30/03/2015 18h24min47s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121564,1120212,TO_DATE('2015-03-30 18:24:47','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Em Progresso (Validada)',TO_DATE('2015-03-30 18:24:47','YYYY-MM-DD HH24:MI:SS'),100,'IP')
;

-- 30/03/2015 18h24min47s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121564 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 30/03/2015 18h25min6s BRT
UPDATE AD_Ref_List SET Name='In Progress',Updated=TO_DATE('2015-03-30 18:25:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121564
;

-- 30/03/2015 18h25min6s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121564
;

-- 30/03/2015 18h25min6s BRT
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='In Progress',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121564
;

-- 30/03/2015 18h25min8s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_DATE('2015-03-30 18:25:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121564 AND AD_Language='pt_BR'
;

-- 30/03/2015 18h25min32s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121565,1120212,TO_DATE('2015-03-30 18:25:31','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Voided',TO_DATE('2015-03-30 18:25:31','YYYY-MM-DD HH24:MI:SS'),100,'VO')
;

-- 30/03/2015 18h25min32s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121565 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 30/03/2015 18h26min9s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Anulada / Inutilizada',Updated=TO_DATE('2015-03-30 18:26:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121565 AND AD_Language='pt_BR'
;

-- 30/03/2015 18h26min35s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121566,1120212,TO_DATE('2015-03-30 18:26:34','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Waiting Confirmation',TO_DATE('2015-03-30 18:26:34','YYYY-MM-DD HH24:MI:SS'),100,'WC')
;

-- 30/03/2015 18h26min35s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121566 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 30/03/2015 18h26min53s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Aguardando a SeFaz',Updated=TO_DATE('2015-03-30 18:26:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121566 AND AD_Language='pt_BR'
;

-- 30/03/2015 18h27min48s BRT
UPDATE AD_Column SET AD_Reference_Value_ID=1120211,Updated=TO_DATE('2015-03-30 18:27:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126536
;

-- 30/03/2015 18h27min52s BRT
UPDATE AD_Column SET AD_Reference_Value_ID=1120212,Updated=TO_DATE('2015-03-30 18:27:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126535
;

-- 31/03/2015 18h54min37s BRT
UPDATE AD_Workflow SET IsValid='Y', AD_WF_Node_ID=1120083,Updated=TO_DATE('2015-03-31 18:54:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=1120021
;

SELECT register_migration_script('104-NFe3ProcessAndWF.sql') FROM dual;

EXIT