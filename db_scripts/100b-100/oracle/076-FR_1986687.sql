-- 06/06/2008 14h6min0s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process (AD_Client_ID,AD_Org_ID,AD_Process_ID,AccessLevel,Classname,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES (0,0,1000012,'3','org.adempierelbr.process.ProcNFNo',TO_TIMESTAMP('2008-06-06 14:06:00','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','N','N','N','ProcNFNo','Y',6,363,TO_TIMESTAMP('2008-06-06 14:06:00','YYYY-MM-DD HH24:MI:SS'),100,'ProcNFNo')
;

-- 06/06/2008 14h6min0s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1000012 AND EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Process_ID!=t.AD_Process_ID)
;

-- 06/06/2008 14h6min0s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,1000012,0,TO_TIMESTAMP('2008-06-06 14:06:00','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-06-06 14:06:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/06/2008 14h6min0s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,1000012,102,TO_TIMESTAMP('2008-06-06 14:06:00','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-06-06 14:06:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/06/2008 14h6min0s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,1000012,103,TO_TIMESTAMP('2008-06-06 14:06:00','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-06-06 14:06:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/06/2008 14h6min0s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,1000012,50001,TO_TIMESTAMP('2008-06-06 14:06:00','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-06-06 14:06:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/06/2008 14h6min35s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Menu (AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,action,Created,CreatedBy,EntityType,IsActive,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES (0,1000032,0,1000012,'P',TO_TIMESTAMP('2008-06-06 14:06:35','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','N','N','ProcNFNo',TO_TIMESTAMP('2008-06-06 14:06:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/06/2008 14h6min35s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=1000032 AND EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Menu_ID!=t.AD_Menu_ID)
;

-- 06/06/2008 14h6min35s BRT
-- Default comment for updating dictionary
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID,0, 'Y', CURRENT_TIMESTAMP, 0, CURRENT_TIMESTAMP, 0,t.AD_Tree_ID, 1000032, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000032)
;

-- 06/06/2008 14h6min56s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 06/06/2008 14h6min56s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 06/06/2008 14h6min56s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 06/06/2008 14h6min56s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 06/06/2008 14h6min56s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 06/06/2008 14h6min56s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 06/06/2008 14h6min56s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 06/06/2008 14h6min56s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 06/06/2008 14h6min56s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 06/06/2008 14h6min56s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 06/06/2008 14h6min56s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 06/06/2008 14h6min56s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53083
;

-- 06/06/2008 14h6min56s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 06/06/2008 14h6min56s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 06/06/2008 14h6min56s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 06/06/2008 14h6min56s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 06/06/2008 14h6min56s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- 06/06/2008 14h6min56s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 06/06/2008 14h6min56s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 06/06/2008 14h31min29s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1000320,0,'ProcReactivateNF',TO_TIMESTAMP('2008-06-06 14:31:29','YYYY-MM-DD HH24:MI:SS'),100,'This Process Reactivates the Nota Fiscal Document','LBRA','Important: Reactivating the Nota Fiscal Document can result Legal Problems. BE AWARE OF THE MODIFICATIONS','Y','Process to Reactivate Nota Fiscal','Process to Reactivate Nota Fiscal',TO_TIMESTAMP('2008-06-06 14:31:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/06/2008 14h31min29s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000320 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 06/06/2008 14h33min33s BRT
-- Default comment for updating dictionary
UPDATE AD_Element SET Name='Reactivate Nota Fiscal', PrintName='Reactivate Nota Fiscal',Updated=TO_TIMESTAMP('2008-06-06 14:33:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000320
;

-- 06/06/2008 14h33min33s BRT
-- Default comment for updating dictionary
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=1000320
;

-- 06/06/2008 14h33min33s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET ColumnName='ProcReactivateNF', Name='Reactivate Nota Fiscal', Description='This Process Reactivates the Nota Fiscal Document', Help='Important: Reactivating the Nota Fiscal Document can result Legal Problems. BE AWARE OF THE MODIFICATIONS' WHERE AD_Element_ID=1000320
;

-- 06/06/2008 14h33min33s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Reactivate Nota Fiscal', Description='This Process Reactivates the Nota Fiscal Document', Help='Important: Reactivating the Nota Fiscal Document can result Legal Problems. BE AWARE OF THE MODIFICATIONS' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1000320) AND IsCentrallyMaintained='Y'
;

-- 06/06/2008 14h33min33s BRT
-- Default comment for updating dictionary
UPDATE AD_Process_Para SET ColumnName='ProcReactivateNF', Name='Reactivate Nota Fiscal', Description='This Process Reactivates the Nota Fiscal Document', Help='Important: Reactivating the Nota Fiscal Document can result Legal Problems. BE AWARE OF THE MODIFICATIONS', AD_Element_ID=1000320 WHERE UPPER(ColumnName)='PROCREACTIVATENF' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 06/06/2008 14h33min33s BRT
-- Default comment for updating dictionary
UPDATE AD_Process_Para SET ColumnName='ProcReactivateNF', Name='Reactivate Nota Fiscal', Description='This Process Reactivates the Nota Fiscal Document', Help='Important: Reactivating the Nota Fiscal Document can result Legal Problems. BE AWARE OF THE MODIFICATIONS' WHERE AD_Element_ID=1000320 AND IsCentrallyMaintained='Y'
;

-- 06/06/2008 14h33min33s BRT
-- Default comment for updating dictionary
UPDATE AD_PrintFormatItem SET PrintName='Reactivate Nota Fiscal', Name='Reactivate Nota Fiscal' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1000320)
;

-- 06/06/2008 14h33min33s BRT
-- Default comment for updating dictionary
UPDATE AD_PrintFormatItem SET PrintName='Reactivate Nota Fiscal', Name='Reactivate Nota Fiscal' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1000320)
;

-- 06/06/2008 14h34min26s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process (AD_Client_ID,AD_Org_ID,AD_Process_ID,AccessLevel,Classname,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES (0,0,1000013,'3','org.adempierelbr.process.ProcReactivateNF',TO_TIMESTAMP('2008-06-06 14:34:26','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','N','N','N','ProcReactivateNF','Y',0,0,TO_TIMESTAMP('2008-06-06 14:34:26','YYYY-MM-DD HH24:MI:SS'),100,'ProcReactivateNF')
;

-- 06/06/2008 14h34min26s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1000013 AND EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Process_ID!=t.AD_Process_ID)
;

-- 06/06/2008 14h34min26s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,1000013,0,TO_TIMESTAMP('2008-06-06 14:34:26','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-06-06 14:34:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/06/2008 14h34min26s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,1000013,102,TO_TIMESTAMP('2008-06-06 14:34:26','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-06-06 14:34:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/06/2008 14h34min26s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,1000013,103,TO_TIMESTAMP('2008-06-06 14:34:26','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-06-06 14:34:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/06/2008 14h34min26s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,1000013,50001,TO_TIMESTAMP('2008-06-06 14:34:26','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-06-06 14:34:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/06/2008 14h34min49s BRT
-- Default comment for updating dictionary
UPDATE AD_Process SET Description='This Process Reactivates the Nota Fiscal Document', Help='Important: Reactivating the Nota Fiscal Document can result Legal Problems. BE AWARE OF THE MODIFICATIONS',Updated=TO_TIMESTAMP('2008-06-06 14:34:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1000013
;

-- 06/06/2008 14h34min49s BRT
-- Default comment for updating dictionary
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=1000013
;

-- 06/06/2008 14h40min12s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000926,1000320,0,1000013,28,1000027,'ProcReactivateNF',TO_TIMESTAMP('2008-06-06 14:40:12','YYYY-MM-DD HH24:MI:SS'),100,'This Process Reactivates the Nota Fiscal Document','LBRA',1,'Important: Reactivating the Nota Fiscal Document can result Legal Problems. BE AWARE OF THE MODIFICATIONS','Y','N','N','N','N','N','N','N','N','N','Y','Reactivate Nota Fiscal',0,TO_TIMESTAMP('2008-06-06 14:40:12','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 06/06/2008 14h40min12s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000926 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 06/06/2008 14h40min15s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_NotaFiscal ADD ProcReactivateNF CHAR(1)
;

-- 06/06/2008 14h40min57s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1000926,1000890,0,1000020,TO_TIMESTAMP('2008-06-06 14:40:57','YYYY-MM-DD HH24:MI:SS'),100,'This Process Reactivates the Nota Fiscal Document',1,'LBRA','Important: Reactivating the Nota Fiscal Document can result Legal Problems. BE AWARE OF THE MODIFICATIONS','Y','Y','Y','N','N','N','N','N','Reactivate Nota Fiscal',TO_TIMESTAMP('2008-06-06 14:40:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/06/2008 14h40min57s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000890 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 06/06/2008 14h44min11s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=125, SeqNo=171,Updated=TO_TIMESTAMP('2008-06-06 14:44:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000890
;

-- 06/06/2008 14h44min32s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_TIMESTAMP('2008-06-06 14:44:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000926
;

-- 06/06/2008 14h44min57s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@Processed@=''Y''',Updated=TO_TIMESTAMP('2008-06-06 14:44:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000890
;

-- 06/06/2008 14h45min1s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2008-06-06 14:45:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000890
;

exit
