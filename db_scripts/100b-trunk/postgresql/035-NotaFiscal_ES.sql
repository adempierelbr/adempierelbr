-- 18/02/2008 9h38min29s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process (AD_Org_ID,AD_Process_ID,AccessLevel,Classname,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value,AD_Client_ID) VALUES (0,1000004,'1','org.adempierelbr.process.ProcGenerateNFS',TO_TIMESTAMP('2008-02-18 09:38:28','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','N','N','N','ProcGenerateNFS','Y',0,0,TO_TIMESTAMP('2008-02-18 09:38:28','YYYY-MM-DD HH24:MI:SS'),100,'ProcGenerateNFS',0)
;

-- 18/02/2008 9h38min29s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1000004 AND EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Process_ID!=t.AD_Process_ID)
;

-- 18/02/2008 9h38min29s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000004,0,TO_TIMESTAMP('2008-02-18 09:38:29','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-02-18 09:38:29','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 18/02/2008 9h38min29s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000004,102,TO_TIMESTAMP('2008-02-18 09:38:29','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-02-18 09:38:29','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 18/02/2008 9h38min29s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000004,103,TO_TIMESTAMP('2008-02-18 09:38:29','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-02-18 09:38:29','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 18/02/2008 9h38min29s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000004,50001,TO_TIMESTAMP('2008-02-18 09:38:29','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-02-18 09:38:29','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 18/02/2008 9h43min54s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process (AD_Org_ID,AD_Process_ID,AccessLevel,Classname,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value,AD_Client_ID) VALUES (0,1000005,'1','org.adempierelbr.process.ProcGenerateNFE',TO_TIMESTAMP('2008-02-18 09:43:54','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','N','N','N','N','ProcGenerateNFE','Y',0,0,TO_TIMESTAMP('2008-02-18 09:43:54','YYYY-MM-DD HH24:MI:SS'),100,'ProcGenerateNFE',0)
;

-- 18/02/2008 9h43min54s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1000005 AND EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Process_ID!=t.AD_Process_ID)
;

-- 18/02/2008 9h43min54s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000005,0,TO_TIMESTAMP('2008-02-18 09:43:54','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-02-18 09:43:54','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 18/02/2008 9h43min54s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000005,102,TO_TIMESTAMP('2008-02-18 09:43:54','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-02-18 09:43:54','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 18/02/2008 9h43min54s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000005,103,TO_TIMESTAMP('2008-02-18 09:43:54','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-02-18 09:43:54','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 18/02/2008 9h43min54s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000005,50001,TO_TIMESTAMP('2008-02-18 09:43:54','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-02-18 09:43:54','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 18/02/2008 9h45min13s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Process_ID=1000004,Updated=TO_TIMESTAMP('2008-02-18 09:45:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000575
;

-- 18/02/2008 9h45min13s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Process Now', Description=NULL, Help=NULL WHERE AD_Column_ID=1000575 AND IsCentrallyMaintained='Y'
;

-- 18/02/2008 9h45min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000271,'Processing2',TO_TIMESTAMP('2008-02-18 09:45:53','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Process Now','Process Now',TO_TIMESTAMP('2008-02-18 09:45:53','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 18/02/2008 9h45min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000271 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 18/02/2008 9h46min30s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Process_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000271,1000005,28,1000027,'Processing2',TO_TIMESTAMP('2008-02-18 09:46:30','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',1,'Y','N','N','N','N','N','N','N','N','N','Y','Process Now',0,TO_TIMESTAMP('2008-02-18 09:46:30','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000699)
;

-- 18/02/2008 9h46min30s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000699 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 18/02/2008 9h46min31s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_NotaFiscal ADD COLUMN Processing2 CHAR(1)
;

-- 18/02/2008 9h47min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000699,0,1000020,TO_TIMESTAMP('2008-02-18 09:47:05','YYYY-MM-DD HH24:MI:SS'),100,1,'LBRA','Y','Y','Y','N','N','N','N','N','Process Now',TO_TIMESTAMP('2008-02-18 09:47:05','YYYY-MM-DD HH24:MI:SS'),0,100,1000497)
;

-- 18/02/2008 9h47min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000497 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h47min12s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000497
;

-- 18/02/2008 9h47min45s BRT
-- Default comment for updating dictionary
UPDATE AD_Window SET Name='Nota Fiscal (SO)',Updated=TO_TIMESTAMP('2008-02-18 09:47:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=1000015
;

-- 18/02/2008 9h47min45s BRT
-- Default comment for updating dictionary
UPDATE AD_Window_Trl SET IsTranslated='N' WHERE AD_Window_ID=1000015
;

-- 18/02/2008 9h47min45s BRT
-- Default comment for updating dictionary
UPDATE AD_Menu SET Description=NULL, IsActive='Y', Name='Nota Fiscal (SO)',Updated=TO_TIMESTAMP('2008-02-18 09:47:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1000020
;

-- 18/02/2008 9h47min45s BRT
-- Default comment for updating dictionary
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=1000020
;

-- 18/02/2008 9h48min30s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Window (AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsSOTrx,Name,Processing,Updated,UpdatedBy,WinHeight,WinWidth,AD_Client_ID,WindowType) VALUES (0,1000019,TO_TIMESTAMP('2008-02-18 09:48:30','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','N','N','Nota Fiscal (PO)','N',TO_TIMESTAMP('2008-02-18 09:48:30','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,'M')
;

-- 18/02/2008 9h48min30s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Window_Trl (AD_Language,AD_Window_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Window_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Window t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Window_ID=1000019 AND EXISTS (SELECT * FROM AD_Window_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Window_ID!=t.AD_Window_ID)
;

-- 18/02/2008 9h48min30s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Window_Access (AD_Org_ID,AD_Role_ID,AD_Window_ID,Created,CreatedBy,IsActive,Updated,AD_Client_ID,UpdatedBy) VALUES (0,0,1000019,TO_TIMESTAMP('2008-02-18 09:48:30','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-02-18 09:48:30','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 18/02/2008 9h48min30s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Window_Access (AD_Org_ID,AD_Role_ID,AD_Window_ID,Created,CreatedBy,IsActive,Updated,AD_Client_ID,UpdatedBy) VALUES (0,102,1000019,TO_TIMESTAMP('2008-02-18 09:48:30','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-02-18 09:48:30','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 18/02/2008 9h48min30s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Window_Access (AD_Org_ID,AD_Role_ID,AD_Window_ID,Created,CreatedBy,IsActive,Updated,AD_Client_ID,UpdatedBy) VALUES (0,103,1000019,TO_TIMESTAMP('2008-02-18 09:48:30','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-02-18 09:48:30','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 18/02/2008 9h48min30s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Window_Access (AD_Org_ID,AD_Role_ID,AD_Window_ID,Created,CreatedBy,IsActive,Updated,AD_Client_ID,UpdatedBy) VALUES (0,50001,1000019,TO_TIMESTAMP('2008-02-18 09:48:30','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-02-18 09:48:30','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 18/02/2008 9h49min13s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Tab (AD_Org_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy,AD_Client_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID) VALUES (0,TO_TIMESTAMP('2008-02-18 09:49:13','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','N','Y','N','N','Y','N','N','N','N','Header','N',10,0,TO_TIMESTAMP('2008-02-18 09:49:13','YYYY-MM-DD HH24:MI:SS'),100,0,1000028,1000027,1000019)
;

-- 18/02/2008 9h49min14s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, Description,Help,Name,CommitWarning, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.Description,t.Help,t.Name,t.CommitWarning, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1000028 AND EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Tab_ID!=t.AD_Tab_ID)
;

-- 18/02/2008 9h49min41s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000699,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:41','YYYY-MM-DD HH24:MI:SS'),100,1,'LBRA','Y','Y','N','N','N','N','N','N','Process Now',0,TO_TIMESTAMP('2008-02-18 09:49:41','YYYY-MM-DD HH24:MI:SS'),0,100,1000498)
;

-- 18/02/2008 9h49min41s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000498 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000564,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:41','YYYY-MM-DD HH24:MI:SS'),100,'Used to Identify the IE (State Tax ID)',30,'LBRA','Used to Identify the IE (State Tax ID)','Y','Y','N','N','N','N','N','N','IE',0,TO_TIMESTAMP('2008-02-18 09:49:41','YYYY-MM-DD HH24:MI:SS'),0,100,1000499)
;

-- 18/02/2008 9h49min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000499 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000563,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:42','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify Legal Entities in Brazil',18,'LBRA','Used to identify Legal Entities in Brazil','Y','Y','N','N','N','N','N','N','CNPJ',0,TO_TIMESTAMP('2008-02-18 09:49:42','YYYY-MM-DD HH24:MI:SS'),0,100,1000500)
;

-- 18/02/2008 9h49min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000500 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000483,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:42','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules',22,'LBRA','The Document Type determines document sequence and processing rules','Y','Y','N','N','N','N','N','N','Document Type',0,TO_TIMESTAMP('2008-02-18 09:49:42','YYYY-MM-DD HH24:MI:SS'),0,100,1000501)
;

-- 18/02/2008 9h49min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000501 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000475,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:42','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'LBRA','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',10,TO_TIMESTAMP('2008-02-18 09:49:42','YYYY-MM-DD HH24:MI:SS'),0,100,1000502)
;

-- 18/02/2008 9h49min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000502 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000474,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:42','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'LBRA','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','Y','Organization',20,TO_TIMESTAMP('2008-02-18 09:49:42','YYYY-MM-DD HH24:MI:SS'),0,100,1000503)
;

-- 18/02/2008 9h49min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000503 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min43s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000495,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:42','YYYY-MM-DD HH24:MI:SS'),100,'The transaction was cancelled',1,'LBRA','Y','Y','Y','N','N','N','N','N','Cancelled',30,TO_TIMESTAMP('2008-02-18 09:49:42','YYYY-MM-DD HH24:MI:SS'),0,100,1000504)
;

-- 18/02/2008 9h49min43s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000504 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min43s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000476,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:43','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'LBRA','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','Y','Active',40,TO_TIMESTAMP('2008-02-18 09:49:43','YYYY-MM-DD HH24:MI:SS'),0,100,1000505)
;

-- 18/02/2008 9h49min43s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000505 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min43s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000484,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:43','YYYY-MM-DD HH24:MI:SS'),100,'Target document type for conversing documents',22,'LBRA','You can convert document types (e.g. from Offer to Order or Invoice).  The conversion is then reflected in the current type.  This processing is initiated by selecting the appropriate Document Action.','Y','Y','Y','N','N','N','N','N','Target Document Type',50,TO_TIMESTAMP('2008-02-18 09:49:43','YYYY-MM-DD HH24:MI:SS'),0,100,104,1000506)
;

-- 18/02/2008 9h49min43s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000506 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min43s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000494,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:43','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if this document / line is printed',1,'LBRA','The Printed checkbox indicates if this document or line will included when printing.','Y','Y','Y','N','N','N','N','Y','Printed',60,TO_TIMESTAMP('2008-02-18 09:49:43','YYYY-MM-DD HH24:MI:SS'),0,100,104,1000507)
;

-- 18/02/2008 9h49min43s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000507 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min43s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000491,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:43','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document',22,'LBRA','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Y','Y','N','N','N','N','N','Document No',70,TO_TIMESTAMP('2008-02-18 09:49:43','YYYY-MM-DD HH24:MI:SS'),0,100,104,1000508)
;

-- 18/02/2008 9h49min43s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000508 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000493,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:44','YYYY-MM-DD HH24:MI:SS'),100,'This is a Sales Transaction',1,'LBRA','The Sales Transaction checkbox indicates if this item is a Sales Transaction.','Y','Y','Y','N','N','N','N','Y','Sales Transaction',80,TO_TIMESTAMP('2008-02-18 09:49:44','YYYY-MM-DD HH24:MI:SS'),0,100,104,1000509)
;

-- 18/02/2008 9h49min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000509 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000492,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:44','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record',255,'LBRA','A description is limited to 255 characters.','Y','Y','Y','N','N','N','N','N','Description',90,TO_TIMESTAMP('2008-02-18 09:49:44','YYYY-MM-DD HH24:MI:SS'),0,100,104,1000510)
;

-- 18/02/2008 9h49min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000510 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000486,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:44','YYYY-MM-DD HH24:MI:SS'),100,'Order',22,'LBRA','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you cloase an order, unshipped (backordered) quantities are cancelled.','Y','Y','Y','N','N','N','N','N','Order',100,TO_TIMESTAMP('2008-02-18 09:49:44','YYYY-MM-DD HH24:MI:SS'),0,100,104,1000511)
;

-- 18/02/2008 9h49min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000511 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000488,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:44','YYYY-MM-DD HH24:MI:SS'),100,'Material Shipment Document',22,'LBRA','The Material Shipment / Receipt ','Y','Y','Y','N','N','N','N','Y','Shipment/Receipt',110,TO_TIMESTAMP('2008-02-18 09:49:44','YYYY-MM-DD HH24:MI:SS'),0,100,104,1000512)
;

-- 18/02/2008 9h49min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000512 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000485,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:44','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Identifier',22,'LBRA','The Invoice Document.','Y','Y','Y','N','N','N','N','N','Invoice',120,TO_TIMESTAMP('2008-02-18 09:49:44','YYYY-MM-DD HH24:MI:SS'),0,100,104,1000513)
;

-- 18/02/2008 9h49min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000513 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min45s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000487,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:44','YYYY-MM-DD HH24:MI:SS'),100,'The terms of Payment (timing, discount)',22,'LBRA','Payment Terms identify the method and timing of payment.','Y','Y','Y','N','N','N','N','Y','Payment Term',130,TO_TIMESTAMP('2008-02-18 09:49:44','YYYY-MM-DD HH24:MI:SS'),0,100,104,1000514)
;

-- 18/02/2008 9h49min45s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000514 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min45s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000575,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:45','YYYY-MM-DD HH24:MI:SS'),100,1,'LBRA','Y','Y','Y','N','N','N','N','N','Process Now',140,TO_TIMESTAMP('2008-02-18 09:49:45','YYYY-MM-DD HH24:MI:SS'),0,100,125,1000515)
;

-- 18/02/2008 9h49min45s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000515 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min45s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000574,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:45','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed',1,'LBRA','The Processed checkbox indicates that a document has been processed.','Y','Y','Y','N','N','N','N','Y','Processed',150,TO_TIMESTAMP('2008-02-18 09:49:45','YYYY-MM-DD HH24:MI:SS'),0,100,125,1000516)
;

-- 18/02/2008 9h49min45s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000516 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min45s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000565,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:45','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document',7,'LBRA','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','Y','N','N','N','N','N','Document Date',160,TO_TIMESTAMP('2008-02-18 09:49:45','YYYY-MM-DD HH24:MI:SS'),0,100,125,1000517)
;

-- 18/02/2008 9h49min45s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000517 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min45s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000578,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:45','YYYY-MM-DD HH24:MI:SS'),100,'Additional information for a Document',300,'LBRA','The Document Note is used for recording any additional information regarding this product.','Y','Y','Y','N','N','N','N','N','Document Note',170,TO_TIMESTAMP('2008-02-18 09:49:45','YYYY-MM-DD HH24:MI:SS'),0,100,125,1000518)
;

-- 18/02/2008 9h49min45s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000518 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min46s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000576,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:45','YYYY-MM-DD HH24:MI:SS'),100,'Defines the NCM Reference',300,'LBRA','Defines the NCM Reference','Y','Y','Y','N','N','N','N','N','NCM Reference',180,TO_TIMESTAMP('2008-02-18 09:49:45','YYYY-MM-DD HH24:MI:SS'),0,100,125,1000519)
;

-- 18/02/2008 9h49min46s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000519 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min46s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000577,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:46','YYYY-MM-DD HH24:MI:SS'),100,'Defines the CFOP Reference',300,'LBRA','Defines the CFOP Reference','Y','Y','Y','N','N','N','N','N','CFOP Reference',190,TO_TIMESTAMP('2008-02-18 09:49:46','YYYY-MM-DD HH24:MI:SS'),0,100,125,1000520)
;

-- 18/02/2008 9h49min46s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000520 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min46s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000481,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:46','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner',22,'LBRA','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','Y','N','N','N','N','N','Business Partner ',200,TO_TIMESTAMP('2008-02-18 09:49:46','YYYY-MM-DD HH24:MI:SS'),0,100,107,1000521)
;

-- 18/02/2008 9h49min46s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000521 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min46s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000482,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:46','YYYY-MM-DD HH24:MI:SS'),100,'Identifies the (ship to) address for this Business Partner',22,'LBRA','The Partner address indicates the location of a Business Partner','Y','Y','Y','N','N','N','N','Y','Partner Location',210,TO_TIMESTAMP('2008-02-18 09:49:46','YYYY-MM-DD HH24:MI:SS'),0,100,107,1000522)
;

-- 18/02/2008 9h49min46s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000522 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000500,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:46','YYYY-MM-DD HH24:MI:SS'),100,60,'LBRA','Y','Y','Y','N','N','N','N','N','BP Name',220,TO_TIMESTAMP('2008-02-18 09:49:46','YYYY-MM-DD HH24:MI:SS'),0,100,107,1000523)
;

-- 18/02/2008 9h49min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000523 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000512,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:47','YYYY-MM-DD HH24:MI:SS'),100,'BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books',22,'LBRA','BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','N','BP CNPJ',230,TO_TIMESTAMP('2008-02-18 09:49:47','YYYY-MM-DD HH24:MI:SS'),0,100,107,1000524)
;

-- 18/02/2008 9h49min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000524 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000515,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:47','YYYY-MM-DD HH24:MI:SS'),100,'BP IE - Copied from the BP into Brazilan Legal and Tax Books',22,'LBRA','BP IE - Copied from the BP into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','Y','BP IE',240,TO_TIMESTAMP('2008-02-18 09:49:47','YYYY-MM-DD HH24:MI:SS'),0,100,107,1000525)
;

-- 18/02/2008 9h49min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000525 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000513,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:47','YYYY-MM-DD HH24:MI:SS'),100,'BP City - Copied from the BP Location into Brazilan Legal and Tax Books',22,'LBRA','BP City - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','N','BP City',250,TO_TIMESTAMP('2008-02-18 09:49:47','YYYY-MM-DD HH24:MI:SS'),0,100,107,1000526)
;

-- 18/02/2008 9h49min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000526 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000518,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:47','YYYY-MM-DD HH24:MI:SS'),100,'BP Region - Copied from the BP Location into Brazilan Legal and Tax Books',2,'LBRA','BP Region - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','Y','BP Region',260,TO_TIMESTAMP('2008-02-18 09:49:47','YYYY-MM-DD HH24:MI:SS'),0,100,107,1000527)
;

-- 18/02/2008 9h49min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000527 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000517,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:47','YYYY-MM-DD HH24:MI:SS'),100,'BP Postal - Copied from the BP Location into Brazilan Legal and Tax Books',22,'LBRA','BP Postal - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','N','BP Postal',270,TO_TIMESTAMP('2008-02-18 09:49:47','YYYY-MM-DD HH24:MI:SS'),0,100,107,1000528)
;

-- 18/02/2008 9h49min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000528 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000516,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:48','YYYY-MM-DD HH24:MI:SS'),100,'BP Phone - Copied from the BP Location into Brazilan Legal and Tax Books',22,'LBRA','BP Phone - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','Y','BP Phone',280,TO_TIMESTAMP('2008-02-18 09:49:48','YYYY-MM-DD HH24:MI:SS'),0,100,107,1000529)
;

-- 18/02/2008 9h49min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000529 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000514,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:48','YYYY-MM-DD HH24:MI:SS'),100,'BP Country - Copied from the BP Location into Brazilan Legal and Tax Books',22,'LBRA','BP Country - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','N','BP Country',290,TO_TIMESTAMP('2008-02-18 09:49:48','YYYY-MM-DD HH24:MI:SS'),0,100,107,1000530)
;

-- 18/02/2008 9h49min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000530 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000508,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:48','YYYY-MM-DD HH24:MI:SS'),100,'BP Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books',60,'LBRA','BP Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','N','BP Address 1',300,TO_TIMESTAMP('2008-02-18 09:49:48','YYYY-MM-DD HH24:MI:SS'),0,100,107,1000531)
;

-- 18/02/2008 9h49min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000531 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000509,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:48','YYYY-MM-DD HH24:MI:SS'),100,'BP Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books',60,'LBRA','BP Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','N','BP Address 2',310,TO_TIMESTAMP('2008-02-18 09:49:48','YYYY-MM-DD HH24:MI:SS'),0,100,107,1000532)
;

-- 18/02/2008 9h49min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000532 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min49s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000510,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:48','YYYY-MM-DD HH24:MI:SS'),100,'BP Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books',60,'LBRA','BP Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','N','BP Address 3',320,TO_TIMESTAMP('2008-02-18 09:49:48','YYYY-MM-DD HH24:MI:SS'),0,100,107,1000533)
;

-- 18/02/2008 9h49min49s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000533 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min49s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000511,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:49','YYYY-MM-DD HH24:MI:SS'),100,'BP Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books',60,'LBRA','BP Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','N','BP Address 4',330,TO_TIMESTAMP('2008-02-18 09:49:49','YYYY-MM-DD HH24:MI:SS'),0,100,107,1000534)
;

-- 18/02/2008 9h49min49s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000534 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min49s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000523,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:49','YYYY-MM-DD HH24:MI:SS'),100,'BP Delivery CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books',22,'LBRA','BP Delivery CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','N','BP Delivery CNPJ',340,TO_TIMESTAMP('2008-02-18 09:49:49','YYYY-MM-DD HH24:MI:SS'),0,100,124,1000535)
;

-- 18/02/2008 9h49min49s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000535 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min49s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000526,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:49','YYYY-MM-DD HH24:MI:SS'),100,'BP Delivery IE - Copied from the BP Location into Brazilan Legal and Tax Books',22,'LBRA','BP Delivery IE - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','Y','BP Delivery IE',350,TO_TIMESTAMP('2008-02-18 09:49:49','YYYY-MM-DD HH24:MI:SS'),0,100,124,1000536)
;

-- 18/02/2008 9h49min49s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000536 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min49s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000524,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:49','YYYY-MM-DD HH24:MI:SS'),100,'BP Delivery City - Copied from the BP Location into Brazilan Legal and Tax Books',22,'LBRA','BP Delivery City - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','N','BP Delivery City',360,TO_TIMESTAMP('2008-02-18 09:49:49','YYYY-MM-DD HH24:MI:SS'),0,100,124,1000537)
;

-- 18/02/2008 9h49min49s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000537 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min50s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000528,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:49','YYYY-MM-DD HH24:MI:SS'),100,'BP DeliveryRegion - Copied from the BP Location into Brazilan Legal and Tax Books',2,'LBRA','BP DeliveryRegion - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','Y','BP DeliveryRegion',370,TO_TIMESTAMP('2008-02-18 09:49:49','YYYY-MM-DD HH24:MI:SS'),0,100,124,1000538)
;

-- 18/02/2008 9h49min50s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000538 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min50s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000527,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:50','YYYY-MM-DD HH24:MI:SS'),100,'BP Delivery Postal - Copied from the BP Location into Brazilan Legal and Tax Books',22,'LBRA','BP Delivery Postal - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','N','BP Delivery Postal',380,TO_TIMESTAMP('2008-02-18 09:49:50','YYYY-MM-DD HH24:MI:SS'),0,100,124,1000539)
;

-- 18/02/2008 9h49min50s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000539 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min50s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000525,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:50','YYYY-MM-DD HH24:MI:SS'),100,'BP Delivery Country - Copied from the BP Location into Brazilan Legal and Tax Books',22,'LBRA','BP Delivery Country - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','Y','BP Delivery Country',390,TO_TIMESTAMP('2008-02-18 09:49:50','YYYY-MM-DD HH24:MI:SS'),0,100,124,1000540)
;

-- 18/02/2008 9h49min50s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000540 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min50s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000519,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:50','YYYY-MM-DD HH24:MI:SS'),100,'BP Delivery Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books',60,'LBRA','BP Delivery Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','N','BP Delivery Address 1',400,TO_TIMESTAMP('2008-02-18 09:49:50','YYYY-MM-DD HH24:MI:SS'),0,100,124,1000541)
;

-- 18/02/2008 9h49min50s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000541 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min50s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000520,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:50','YYYY-MM-DD HH24:MI:SS'),100,'BP Delivery Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books',60,'LBRA','BP Delivery Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','N','BP Delivery Address 2',410,TO_TIMESTAMP('2008-02-18 09:49:50','YYYY-MM-DD HH24:MI:SS'),0,100,124,1000542)
;

-- 18/02/2008 9h49min50s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000542 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min51s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000521,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:50','YYYY-MM-DD HH24:MI:SS'),100,'BP Delivery Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books',60,'LBRA','BP Delivery Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','N','BP Delivery Address 3',420,TO_TIMESTAMP('2008-02-18 09:49:50','YYYY-MM-DD HH24:MI:SS'),0,100,124,1000543)
;

-- 18/02/2008 9h49min51s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000543 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min51s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000522,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:51','YYYY-MM-DD HH24:MI:SS'),100,'BP Delivery Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books',60,'LBRA','BP Delivery Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','N','BP Delivery Address 4',430,TO_TIMESTAMP('2008-02-18 09:49:51','YYYY-MM-DD HH24:MI:SS'),0,100,124,1000544)
;

-- 18/02/2008 9h49min51s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000544 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min51s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000490,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:51','YYYY-MM-DD HH24:MI:SS'),100,'Business Partner Location for invoicing',22,'LBRA','Y','Y','Y','N','N','N','N','N','Invoice Location',440,TO_TIMESTAMP('2008-02-18 09:49:51','YYYY-MM-DD HH24:MI:SS'),0,100,131,1000545)
;

-- 18/02/2008 9h49min51s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000545 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min51s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000533,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:51','YYYY-MM-DD HH24:MI:SS'),100,'BP Invoice CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books',22,'LBRA','BP Invoice CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','N','BP Invoice CNPJ',450,TO_TIMESTAMP('2008-02-18 09:49:51','YYYY-MM-DD HH24:MI:SS'),0,100,131,1000546)
;

-- 18/02/2008 9h49min51s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000546 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min51s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000536,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:51','YYYY-MM-DD HH24:MI:SS'),100,'BP Invoice IE - Copied from the BP Location into Brazilan Legal and Tax Books',22,'LBRA','BP Invoice IE - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','Y','BP Invoice IE',460,TO_TIMESTAMP('2008-02-18 09:49:51','YYYY-MM-DD HH24:MI:SS'),0,100,131,1000547)
;

-- 18/02/2008 9h49min52s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000547 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min52s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000534,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:52','YYYY-MM-DD HH24:MI:SS'),100,'BP Invoice City - Copied from the BP Location into Brazilan Legal and Tax Books',22,'LBRA','BP Invoice City - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','N','BP Invoice City',470,TO_TIMESTAMP('2008-02-18 09:49:52','YYYY-MM-DD HH24:MI:SS'),0,100,131,1000548)
;

-- 18/02/2008 9h49min52s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000548 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min52s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000537,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:52','YYYY-MM-DD HH24:MI:SS'),100,'BP InvoiceRegion - Copied from the BP Location into Brazilan Legal and Tax Books',2,'LBRA','BP InvoiceRegion - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','Y','BP InvoiceRegion',480,TO_TIMESTAMP('2008-02-18 09:49:52','YYYY-MM-DD HH24:MI:SS'),0,100,131,1000549)
;

-- 18/02/2008 9h49min52s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000549 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min52s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000562,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:52','YYYY-MM-DD HH24:MI:SS'),100,'BP Invoice Postal - Copied from the BP Location into Brazilan Legal and Tax Books',22,'LBRA','BP Invoice Postal - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','N','BP Invoice Postal',490,TO_TIMESTAMP('2008-02-18 09:49:52','YYYY-MM-DD HH24:MI:SS'),0,100,131,1000550)
;

-- 18/02/2008 9h49min52s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000550 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min52s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000535,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:52','YYYY-MM-DD HH24:MI:SS'),100,'BP Invoice Country - Copied from the BP Location into Brazilan Legal and Tax Books',22,'LBRA','BP Invoice Country - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','Y','BP Invoice Country',500,TO_TIMESTAMP('2008-02-18 09:49:52','YYYY-MM-DD HH24:MI:SS'),0,100,131,1000551)
;

-- 18/02/2008 9h49min52s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000551 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min52s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000529,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:52','YYYY-MM-DD HH24:MI:SS'),100,'BP Invoice Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books',60,'LBRA','BP Invoice Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','N','BP Invoice Address 1',510,TO_TIMESTAMP('2008-02-18 09:49:52','YYYY-MM-DD HH24:MI:SS'),0,100,131,1000552)
;

-- 18/02/2008 9h49min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000552 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000530,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:53','YYYY-MM-DD HH24:MI:SS'),100,'BP Invoice Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books',60,'LBRA','BP Invoice Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','N','BP Invoice Address 2',520,TO_TIMESTAMP('2008-02-18 09:49:53','YYYY-MM-DD HH24:MI:SS'),0,100,131,1000553)
;

-- 18/02/2008 9h49min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000553 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000531,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:53','YYYY-MM-DD HH24:MI:SS'),100,'BP Invoice Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books',60,'LBRA','BP Invoice Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','N','BP Invoice Address 3',530,TO_TIMESTAMP('2008-02-18 09:49:53','YYYY-MM-DD HH24:MI:SS'),0,100,131,1000554)
;

-- 18/02/2008 9h49min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000554 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000532,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:53','YYYY-MM-DD HH24:MI:SS'),100,'BP Invoice Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books',60,'LBRA','BP Invoice Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','N','BP Invoice Address 4',540,TO_TIMESTAMP('2008-02-18 09:49:53','YYYY-MM-DD HH24:MI:SS'),0,100,131,1000555)
;

-- 18/02/2008 9h49min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000555 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000571,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:53','YYYY-MM-DD HH24:MI:SS'),100,'Total of all document lines',22,'LBRA','The Total amount displays the total of all lines in document currency','Y','Y','Y','N','N','N','N','N','Total Lines',550,TO_TIMESTAMP('2008-02-18 09:49:53','YYYY-MM-DD HH24:MI:SS'),0,100,131,1000556)
;

-- 18/02/2008 9h49min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000556 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min54s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000572,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:53','YYYY-MM-DD HH24:MI:SS'),100,'Total amount of document',22,'LBRA','The Grand Total displays the total amount including Tax and Freight in document currency','Y','Y','Y','N','N','N','N','Y','Grand Total',560,TO_TIMESTAMP('2008-02-18 09:49:53','YYYY-MM-DD HH24:MI:SS'),0,100,131,1000557)
;

-- 18/02/2008 9h49min54s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000557 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min54s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000489,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:54','YYYY-MM-DD HH24:MI:SS'),100,'Method or manner of product delivery',22,'LBRA','The Shipper indicates the method of delivering product','Y','Y','Y','N','N','N','N','N','Shipper',570,TO_TIMESTAMP('2008-02-18 09:49:54','YYYY-MM-DD HH24:MI:SS'),0,100,130,1000558)
;

-- 18/02/2008 9h49min54s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000558 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min54s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000542,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:54','YYYY-MM-DD HH24:MI:SS'),100,'BP Shipper CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books',22,'LBRA','BP Shipper CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','N','BP Shipper CNPJ',580,TO_TIMESTAMP('2008-02-18 09:49:54','YYYY-MM-DD HH24:MI:SS'),0,100,130,1000559)
;

-- 18/02/2008 9h49min54s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000559 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min54s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000545,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:54','YYYY-MM-DD HH24:MI:SS'),100,'BP Shipper IE - Copied from the BP Location into Brazilan Legal and Tax Books',22,'LBRA','BP Shipper IE - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','Y','BP Shipper IE',590,TO_TIMESTAMP('2008-02-18 09:49:54','YYYY-MM-DD HH24:MI:SS'),0,100,130,1000560)
;

-- 18/02/2008 9h49min54s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000560 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min55s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000543,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:54','YYYY-MM-DD HH24:MI:SS'),100,'BP Shipper City - Copied from the BP Location into Brazilan Legal and Tax Books',22,'LBRA','BP Shipper City - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','N','BP Shipper City',600,TO_TIMESTAMP('2008-02-18 09:49:54','YYYY-MM-DD HH24:MI:SS'),0,100,130,1000561)
;

-- 18/02/2008 9h49min55s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000561 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min55s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000547,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:55','YYYY-MM-DD HH24:MI:SS'),100,'BP ShipperRegion - Copied from the BP Location into Brazilan Legal and Tax Books',2,'LBRA','BP ShipperRegion - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','Y','BP ShipperRegion',610,TO_TIMESTAMP('2008-02-18 09:49:55','YYYY-MM-DD HH24:MI:SS'),0,100,130,1000562)
;

-- 18/02/2008 9h49min55s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000562 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min55s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000546,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:55','YYYY-MM-DD HH24:MI:SS'),100,'BP Shipper Postal - Copied from the BP Location into Brazilan Legal and Tax Books',22,'LBRA','BP Shipper Postal - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','N','BP Shipper Postal',620,TO_TIMESTAMP('2008-02-18 09:49:55','YYYY-MM-DD HH24:MI:SS'),0,100,130,1000563)
;

-- 18/02/2008 9h49min55s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000563 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min55s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000544,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:55','YYYY-MM-DD HH24:MI:SS'),100,'BP Shipper Country - Copied from the BP Location into Brazilan Legal and Tax Books',22,'LBRA','BP Shipper Country - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','Y','BP Shipper Country',630,TO_TIMESTAMP('2008-02-18 09:49:55','YYYY-MM-DD HH24:MI:SS'),0,100,130,1000564)
;

-- 18/02/2008 9h49min55s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000564 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min55s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000538,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:55','YYYY-MM-DD HH24:MI:SS'),100,'BP Shipper Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books',60,'LBRA','BP Shipper Address 1 - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','N','BP Shipper Address 1',640,TO_TIMESTAMP('2008-02-18 09:49:55','YYYY-MM-DD HH24:MI:SS'),0,100,130,1000565)
;

-- 18/02/2008 9h49min55s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000565 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min56s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000539,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:55','YYYY-MM-DD HH24:MI:SS'),100,'BP Shipper Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books',60,'LBRA','BP Shipper Address 2 - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','N','BP Shipper Address 2',650,TO_TIMESTAMP('2008-02-18 09:49:55','YYYY-MM-DD HH24:MI:SS'),0,100,130,1000566)
;

-- 18/02/2008 9h49min56s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000566 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min56s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000540,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:56','YYYY-MM-DD HH24:MI:SS'),100,'BP Shipper Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books',60,'LBRA','BP Shipper Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','N','BP Shipper Address 3',660,TO_TIMESTAMP('2008-02-18 09:49:56','YYYY-MM-DD HH24:MI:SS'),0,100,130,1000567)
;

-- 18/02/2008 9h49min56s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000567 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min56s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000541,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:56','YYYY-MM-DD HH24:MI:SS'),100,'BP Shipper Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books',60,'LBRA','BP Shipper Address 4 - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','N','BP Shipper Address 4',670,TO_TIMESTAMP('2008-02-18 09:49:56','YYYY-MM-DD HH24:MI:SS'),0,100,130,1000568)
;

-- 18/02/2008 9h49min56s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000568 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min56s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000570,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:56','YYYY-MM-DD HH24:MI:SS'),100,'Number of packages shipped',10,'LBRA','Y','Y','Y','N','N','N','N','N','No Packages',680,TO_TIMESTAMP('2008-02-18 09:49:56','YYYY-MM-DD HH24:MI:SS'),0,100,130,1000569)
;

-- 18/02/2008 9h49min56s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000569 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min56s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000567,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:56','YYYY-MM-DD HH24:MI:SS'),100,'Method for charging Freight',1,'LBRA','The Freight Cost Rule indicates the method used when charging for freight.','Y','Y','Y','N','N','N','N','Y','Freight Cost Rule',690,TO_TIMESTAMP('2008-02-18 09:49:56','YYYY-MM-DD HH24:MI:SS'),0,100,130,1000570)
;

-- 18/02/2008 9h49min56s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000570 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min57s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000566,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:57','YYYY-MM-DD HH24:MI:SS'),100,'Freight Amount ',22,'LBRA','The Freight Amount indicates the amount charged for Freight in the document currency.','Y','Y','Y','N','N','N','N','N','Freight Amount',700,TO_TIMESTAMP('2008-02-18 09:49:57','YYYY-MM-DD HH24:MI:SS'),0,100,130,1000571)
;

-- 18/02/2008 9h49min57s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000571 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min57s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000573,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:57','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Insurance Amt',22,'LBRA','Defines the Insurance Amt','Y','Y','Y','N','N','N','N','Y','Insurance Amt',710,TO_TIMESTAMP('2008-02-18 09:49:57','YYYY-MM-DD HH24:MI:SS'),0,100,130,1000572)
;

-- 18/02/2008 9h49min57s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000572 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min57s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000568,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:57','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Gross Weight',10,'LBRA','Defines the Gross Weight','Y','Y','Y','N','N','N','N','N','Gross Weight',720,TO_TIMESTAMP('2008-02-18 09:49:57','YYYY-MM-DD HH24:MI:SS'),0,100,130,1000573)
;

-- 18/02/2008 9h49min57s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000573 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min57s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000569,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:57','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Net Weight',10,'LBRA','Defines the Net Weight','Y','Y','Y','N','N','N','N','Y','Net Weight',730,TO_TIMESTAMP('2008-02-18 09:49:57','YYYY-MM-DD HH24:MI:SS'),0,100,130,1000574)
;

-- 18/02/2008 9h49min57s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000574 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h49min57s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000473,0,1000028,TO_TIMESTAMP('2008-02-18 09:49:57','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_NotaFiscal',22,'LBRA','Primary key table LBR_NotaFiscal','Y','Y','N','N','N','N','N','N','Nota Fiscal',TO_TIMESTAMP('2008-02-18 09:49:57','YYYY-MM-DD HH24:MI:SS'),0,100,1000575)
;

-- 18/02/2008 9h49min57s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000575 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h50min29s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000515
;

-- 18/02/2008 9h50min29s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1000498
;

-- 18/02/2008 9h50min41s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2008-02-18 09:50:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000498
;

-- 18/02/2008 9h51min24s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Tab (AD_Column_ID,AD_Org_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy,AD_Client_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID) VALUES (1000681,0,TO_TIMESTAMP('2008-02-18 09:51:24','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','N','Y','N','N','N','Y','N','N','N','Nota Fiscal Tax','N',20,1,TO_TIMESTAMP('2008-02-18 09:51:24','YYYY-MM-DD HH24:MI:SS'),100,0,1000029,1000034,1000019)
;

-- 18/02/2008 9h51min24s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, Description,Help,Name,CommitWarning, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.Description,t.Help,t.Name,t.CommitWarning, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1000029 AND EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Tab_ID!=t.AD_Tab_ID)
;

-- 18/02/2008 9h51min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000674,0,1000029,TO_TIMESTAMP('2008-02-18 09:51:47','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'LBRA','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',10,TO_TIMESTAMP('2008-02-18 09:51:47','YYYY-MM-DD HH24:MI:SS'),0,100,1000576)
;

-- 18/02/2008 9h51min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000576 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h51min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000675,0,1000029,TO_TIMESTAMP('2008-02-18 09:51:47','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'LBRA','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','Y','Organization',20,TO_TIMESTAMP('2008-02-18 09:51:47','YYYY-MM-DD HH24:MI:SS'),0,100,1000577)
;

-- 18/02/2008 9h51min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000577 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h51min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000681,0,1000029,TO_TIMESTAMP('2008-02-18 09:51:47','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_NotaFiscal',22,'LBRA','Primary key table LBR_NotaFiscal','Y','Y','Y','N','N','N','N','N','Nota Fiscal',30,TO_TIMESTAMP('2008-02-18 09:51:47','YYYY-MM-DD HH24:MI:SS'),0,100,1000578)
;

-- 18/02/2008 9h51min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000578 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h51min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000676,0,1000029,TO_TIMESTAMP('2008-02-18 09:51:47','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'LBRA','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','Y','Active',40,TO_TIMESTAMP('2008-02-18 09:51:47','YYYY-MM-DD HH24:MI:SS'),0,100,1000579)
;

-- 18/02/2008 9h51min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000579 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h51min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000682,0,1000029,TO_TIMESTAMP('2008-02-18 09:51:48','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Tax Group',22,'LBRA','Primary key table LBR_TaxGroup','Y','Y','Y','N','N','N','N','N','Tax Group',50,TO_TIMESTAMP('2008-02-18 09:51:48','YYYY-MM-DD HH24:MI:SS'),0,100,1000580)
;

-- 18/02/2008 9h51min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000580 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h51min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000683,0,1000029,TO_TIMESTAMP('2008-02-18 09:51:48','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Tax Base Amount',22,'LBRA','Defines the Tax Base Amount','Y','Y','Y','N','N','N','N','N','Tax Base Amount',60,TO_TIMESTAMP('2008-02-18 09:51:48','YYYY-MM-DD HH24:MI:SS'),0,100,1000581)
;

-- 18/02/2008 9h51min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000581 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h51min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000684,0,1000029,TO_TIMESTAMP('2008-02-18 09:51:48','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Tax Amount',22,'LBRA','Defines the Tax Amount','Y','Y','Y','N','N','N','N','Y','Tax Amount',70,TO_TIMESTAMP('2008-02-18 09:51:48','YYYY-MM-DD HH24:MI:SS'),0,100,1000582)
;

-- 18/02/2008 9h51min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000582 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h51min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000673,0,1000029,TO_TIMESTAMP('2008-02-18 09:51:48','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Nota Fiscal Tax',22,'LBRA','Primary key table LBR_NFTax','Y','Y','N','N','N','N','N','N','Nota Fiscal Tax',TO_TIMESTAMP('2008-02-18 09:51:48','YYYY-MM-DD HH24:MI:SS'),0,100,1000583)
;

-- 18/02/2008 9h51min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000583 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h52min29s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Tab (AD_Column_ID,AD_Org_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy,AD_Client_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID) VALUES (1000557,0,TO_TIMESTAMP('2008-02-18 09:52:29','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','N','Y','N','N','Y','N','N','N','N','Line','N',30,1,TO_TIMESTAMP('2008-02-18 09:52:29','YYYY-MM-DD HH24:MI:SS'),100,0,1000030,1000028,1000019)
;

-- 18/02/2008 9h52min29s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, Description,Help,Name,CommitWarning, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.Description,t.Help,t.Name,t.CommitWarning, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1000030 AND EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Tab_ID!=t.AD_Tab_ID)
;

-- 18/02/2008 9h52min39s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000583,0,1000030,TO_TIMESTAMP('2008-02-18 09:52:39','YYYY-MM-DD HH24:MI:SS'),100,'Valuation with List Price',10,'LBRA','Y','Y','N','N','N','N','N','N','List price Value',0,TO_TIMESTAMP('2008-02-18 09:52:39','YYYY-MM-DD HH24:MI:SS'),0,100,1000584)
;

-- 18/02/2008 9h52min39s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000584 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h52min39s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000557,0,1000030,TO_TIMESTAMP('2008-02-18 09:52:39','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_NotaFiscal',22,'LBRA','Primary key table LBR_NotaFiscal','Y','Y','N','N','N','N','N','N','Nota Fiscal',0,TO_TIMESTAMP('2008-02-18 09:52:39','YYYY-MM-DD HH24:MI:SS'),0,100,1000585)
;

-- 18/02/2008 9h52min39s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000585 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h52min40s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000550,0,1000030,TO_TIMESTAMP('2008-02-18 09:52:39','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'LBRA','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',10,TO_TIMESTAMP('2008-02-18 09:52:39','YYYY-MM-DD HH24:MI:SS'),0,100,1000586)
;

-- 18/02/2008 9h52min40s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000586 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h52min40s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000549,0,1000030,TO_TIMESTAMP('2008-02-18 09:52:40','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'LBRA','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','Y','Organization',20,TO_TIMESTAMP('2008-02-18 09:52:40','YYYY-MM-DD HH24:MI:SS'),0,100,1000587)
;

-- 18/02/2008 9h52min40s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000587 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h52min40s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000551,0,1000030,TO_TIMESTAMP('2008-02-18 09:52:40','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'LBRA','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',30,TO_TIMESTAMP('2008-02-18 09:52:40','YYYY-MM-DD HH24:MI:SS'),0,100,1000588)
;

-- 18/02/2008 9h52min40s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000588 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h52min40s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000556,0,1000030,TO_TIMESTAMP('2008-02-18 09:52:40','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Detail Line',22,'LBRA','The Invoice Line uniquely identifies a single line of an Invoice.','Y','Y','Y','N','N','N','N','N','Invoice Line',40,TO_TIMESTAMP('2008-02-18 09:52:40','YYYY-MM-DD HH24:MI:SS'),0,100,125,1000589)
;

-- 18/02/2008 9h52min40s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000589 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h52min41s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000588,0,1000030,TO_TIMESTAMP('2008-02-18 09:52:40','YYYY-MM-DD HH24:MI:SS'),100,'Unique line for this document',3,'LBRA','Indicates the unique line for a document.  It will also control the display order of the lines within a document.','Y','Y','Y','N','N','N','N','Y','Line No',50,TO_TIMESTAMP('2008-02-18 09:52:40','YYYY-MM-DD HH24:MI:SS'),0,100,125,1000590)
;

-- 18/02/2008 9h52min41s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000590 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h52min41s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000561,0,1000030,TO_TIMESTAMP('2008-02-18 09:52:41','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_CFOP',22,'LBRA','Primary key table LBR_CFOP','Y','Y','Y','N','N','N','N','N','CFOP',60,TO_TIMESTAMP('2008-02-18 09:52:41','YYYY-MM-DD HH24:MI:SS'),0,100,125,1000591)
;

-- 18/02/2008 9h52min41s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000591 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h52min41s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000590,0,1000030,TO_TIMESTAMP('2008-02-18 09:52:41','YYYY-MM-DD HH24:MI:SS'),100,'Defines the CFOP Name',22,'LBRA','Defines the CFOP Name','Y','Y','Y','N','N','N','N','Y','CFOP Name',70,TO_TIMESTAMP('2008-02-18 09:52:41','YYYY-MM-DD HH24:MI:SS'),0,100,125,1000592)
;

-- 18/02/2008 9h52min41s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000592 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h52min41s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000586,0,1000030,TO_TIMESTAMP('2008-02-18 09:52:41','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record',255,'LBRA','A description is limited to 255 characters.','Y','Y','Y','N','N','N','N','N','Description',80,TO_TIMESTAMP('2008-02-18 09:52:41','YYYY-MM-DD HH24:MI:SS'),0,100,125,1000593)
;

-- 18/02/2008 9h52min41s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000593 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h52min41s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000558,0,1000030,TO_TIMESTAMP('2008-02-18 09:52:41','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item',22,'LBRA','Identifies an item which is either purchased or sold in this organization.','Y','Y','Y','N','N','N','N','N','Product',90,TO_TIMESTAMP('2008-02-18 09:52:41','YYYY-MM-DD HH24:MI:SS'),0,100,106,1000594)
;

-- 18/02/2008 9h52min41s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000594 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h52min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000579,0,1000030,TO_TIMESTAMP('2008-02-18 09:52:41','YYYY-MM-DD HH24:MI:SS'),100,'Name of the Product',60,'LBRA','Y','Y','Y','N','N','N','N','N','Product Name',100,TO_TIMESTAMP('2008-02-18 09:52:41','YYYY-MM-DD HH24:MI:SS'),0,100,106,1000595)
;

-- 18/02/2008 9h52min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000595 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h52min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000580,0,1000030,TO_TIMESTAMP('2008-02-18 09:52:42','YYYY-MM-DD HH24:MI:SS'),100,'Key of the Product',22,'LBRA','Y','Y','Y','N','N','N','N','N','Product Key',110,TO_TIMESTAMP('2008-02-18 09:52:42','YYYY-MM-DD HH24:MI:SS'),0,100,106,1000596)
;

-- 18/02/2008 9h52min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000596 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h52min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000591,0,1000030,TO_TIMESTAMP('2008-02-18 09:52:42','YYYY-MM-DD HH24:MI:SS'),100,'Product Key of the Business Partner',22,'LBRA','The Business Partner Product Key identifies the number used by the Business Partner for this product. It can be printed on orders and invoices when you include the Product Key in the print format.','Y','Y','Y','N','N','N','N','Y','Partner Product Key',120,TO_TIMESTAMP('2008-02-18 09:52:42','YYYY-MM-DD HH24:MI:SS'),0,100,106,1000597)
;

-- 18/02/2008 9h52min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000597 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h52min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000559,0,1000030,TO_TIMESTAMP('2008-02-18 09:52:42','YYYY-MM-DD HH24:MI:SS'),100,'Unit of Measure',22,'LBRA','The UOM defines a unique non monetary Unit of Measure','Y','Y','Y','N','N','N','N','N','UOM',130,TO_TIMESTAMP('2008-02-18 09:52:42','YYYY-MM-DD HH24:MI:SS'),0,100,106,1000598)
;

-- 18/02/2008 9h52min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000598 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h52min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000585,0,1000030,TO_TIMESTAMP('2008-02-18 09:52:42','YYYY-MM-DD HH24:MI:SS'),100,'Defines the UOM Name',22,'LBRA','Defines the UOM Name','Y','Y','Y','N','N','N','N','Y','UOM Name',140,TO_TIMESTAMP('2008-02-18 09:52:42','YYYY-MM-DD HH24:MI:SS'),0,100,106,1000599)
;

-- 18/02/2008 9h52min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000599 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h52min43s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000560,0,1000030,TO_TIMESTAMP('2008-02-18 09:52:42','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_NCM',22,'LBRA','Primary key table LBR_NCM','Y','Y','Y','N','N','N','N','N','NCM',150,TO_TIMESTAMP('2008-02-18 09:52:42','YYYY-MM-DD HH24:MI:SS'),0,100,106,1000600)
;

-- 18/02/2008 9h52min43s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000600 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h52min43s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000589,0,1000030,TO_TIMESTAMP('2008-02-18 09:52:43','YYYY-MM-DD HH24:MI:SS'),100,'Defines the NCM Name',22,'LBRA','Defines the NCM Name','Y','Y','Y','N','N','N','N','Y','NCM Name',160,TO_TIMESTAMP('2008-02-18 09:52:43','YYYY-MM-DD HH24:MI:SS'),0,100,106,1000601)
;

-- 18/02/2008 9h52min43s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000601 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h52min43s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000584,0,1000030,TO_TIMESTAMP('2008-02-18 09:52:43','YYYY-MM-DD HH24:MI:SS'),100,'Quantity',10,'LBRA','The Quantity indicates the number of a specific product or item for this document.','Y','Y','Y','N','N','N','N','N','Quantity',170,TO_TIMESTAMP('2008-02-18 09:52:43','YYYY-MM-DD HH24:MI:SS'),0,100,103,1000602)
;

-- 18/02/2008 9h52min43s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000602 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h52min43s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000581,0,1000030,TO_TIMESTAMP('2008-02-18 09:52:43','YYYY-MM-DD HH24:MI:SS'),100,'Price',10,'LBRA','The Price indicates the Price for a product or service.','Y','Y','Y','N','N','N','N','Y','Price',180,TO_TIMESTAMP('2008-02-18 09:52:43','YYYY-MM-DD HH24:MI:SS'),0,100,103,1000603)
;

-- 18/02/2008 9h52min43s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000603 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h52min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000587,0,1000030,TO_TIMESTAMP('2008-02-18 09:52:43','YYYY-MM-DD HH24:MI:SS'),100,'Discount in percent',10,'LBRA','The Discount indicates the discount applied or taken as a percentage.','Y','N','Y','N','N','N','N','N','Discount %',190,TO_TIMESTAMP('2008-02-18 09:52:43','YYYY-MM-DD HH24:MI:SS'),0,100,103,1000604)
;

-- 18/02/2008 9h52min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000604 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h52min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_FieldGroup_ID,AD_Field_ID) VALUES (1000582,0,1000030,TO_TIMESTAMP('2008-02-18 09:52:44','YYYY-MM-DD HH24:MI:SS'),100,'Total line amount incl. Tax',10,'LBRA','Total line amount','Y','Y','Y','N','N','N','N','Y','Line Total',200,TO_TIMESTAMP('2008-02-18 09:52:44','YYYY-MM-DD HH24:MI:SS'),0,100,103,1000605)
;

-- 18/02/2008 9h52min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000605 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h52min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000548,0,1000030,TO_TIMESTAMP('2008-02-18 09:52:44','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_NotaFiscalLine',22,'LBRA','Primary key table LBR_NotaFiscalLine','Y','Y','N','N','N','N','N','N','Nota Fiscal Line',TO_TIMESTAMP('2008-02-18 09:52:44','YYYY-MM-DD HH24:MI:SS'),0,100,1000606)
;

-- 18/02/2008 9h52min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000606 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h53min34s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Tab (AD_Column_ID,AD_Org_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy,AD_Client_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID) VALUES (1000693,0,TO_TIMESTAMP('2008-02-18 09:53:34','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','N','Y','N','N','N','Y','N','N','N','Nota Fiscal Line Tax','N',40,2,TO_TIMESTAMP('2008-02-18 09:53:34','YYYY-MM-DD HH24:MI:SS'),100,0,1000031,1000035,1000019)
;

-- 18/02/2008 9h53min34s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, Description,Help,Name,CommitWarning, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.Description,t.Help,t.Name,t.CommitWarning, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1000031 AND EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Tab_ID!=t.AD_Tab_ID)
;

-- 18/02/2008 9h53min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000686,0,1000031,TO_TIMESTAMP('2008-02-18 09:53:47','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'LBRA','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',10,TO_TIMESTAMP('2008-02-18 09:53:47','YYYY-MM-DD HH24:MI:SS'),0,100,1000607)
;

-- 18/02/2008 9h53min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000607 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h53min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000687,0,1000031,TO_TIMESTAMP('2008-02-18 09:53:47','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'LBRA','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','Y','Organization',20,TO_TIMESTAMP('2008-02-18 09:53:47','YYYY-MM-DD HH24:MI:SS'),0,100,1000608)
;

-- 18/02/2008 9h53min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000608 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h53min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000693,0,1000031,TO_TIMESTAMP('2008-02-18 09:53:47','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_NotaFiscalLine',22,'LBRA','Primary key table LBR_NotaFiscalLine','Y','Y','Y','N','N','N','N','N','Nota Fiscal Line',30,TO_TIMESTAMP('2008-02-18 09:53:47','YYYY-MM-DD HH24:MI:SS'),0,100,1000609)
;

-- 18/02/2008 9h53min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000609 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h53min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000688,0,1000031,TO_TIMESTAMP('2008-02-18 09:53:47','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'LBRA','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','Y','Active',40,TO_TIMESTAMP('2008-02-18 09:53:47','YYYY-MM-DD HH24:MI:SS'),0,100,1000610)
;

-- 18/02/2008 9h53min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000610 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h53min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000694,0,1000031,TO_TIMESTAMP('2008-02-18 09:53:47','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Tax Group',22,'LBRA','Primary key table LBR_TaxGroup','Y','Y','Y','N','N','N','N','N','Tax Group',50,TO_TIMESTAMP('2008-02-18 09:53:47','YYYY-MM-DD HH24:MI:SS'),0,100,1000611)
;

-- 18/02/2008 9h53min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000611 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h53min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000695,0,1000031,TO_TIMESTAMP('2008-02-18 09:53:48','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Tax Base Amount',22,'LBRA','Defines the Tax Base Amount','Y','Y','Y','N','N','N','N','N','Tax Base Amount',60,TO_TIMESTAMP('2008-02-18 09:53:48','YYYY-MM-DD HH24:MI:SS'),0,100,1000612)
;

-- 18/02/2008 9h53min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000612 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h53min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000696,0,1000031,TO_TIMESTAMP('2008-02-18 09:53:48','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Tax Amount',22,'LBRA','Defines the Tax Amount','Y','Y','Y','N','N','N','N','Y','Tax Amount',70,TO_TIMESTAMP('2008-02-18 09:53:48','YYYY-MM-DD HH24:MI:SS'),0,100,1000613)
;

-- 18/02/2008 9h53min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000613 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h53min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000685,0,1000031,TO_TIMESTAMP('2008-02-18 09:53:48','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Nota Fiscal Line Tax',22,'LBRA','Primary key table LBR_NFLineTax','Y','Y','N','N','N','N','N','N','Nota Fiscal Line Tax',TO_TIMESTAMP('2008-02-18 09:53:48','YYYY-MM-DD HH24:MI:SS'),0,100,1000614)
;

-- 18/02/2008 9h53min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000614 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 18/02/2008 9h54min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Table SET PO_Window_ID=1000019,Updated=TO_TIMESTAMP('2008-02-18 09:54:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1000027
;

-- 18/02/2008 9h54min41s BRT
-- Default comment for updating dictionary
UPDATE AD_Menu SET IsSOTrx='Y',Updated=TO_TIMESTAMP('2008-02-18 09:54:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1000020
;

-- 18/02/2008 9h54min58s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Menu (AD_Org_ID,AD_Menu_ID,AD_Window_ID,"action",Created,CreatedBy,EntityType,IsActive,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000026,1000019,'W',TO_TIMESTAMP('2008-02-18 09:54:58','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','N','N','Nota Fiscal (PO)',TO_TIMESTAMP('2008-02-18 09:54:58','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 18/02/2008 9h54min58s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=1000026 AND EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Menu_ID!=t.AD_Menu_ID)
;

-- 18/02/2008 9h54min58s BRT
-- Default comment for updating dictionary
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID,0, 'Y', CURRENT_TIMESTAMP, 0, CURRENT_TIMESTAMP, 0,t.AD_Tree_ID, 1000026, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000026)
;

-- 18/02/2008 9h55min10s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 18/02/2008 9h55min10s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 18/02/2008 9h55min10s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 18/02/2008 9h55min10s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 18/02/2008 9h55min11s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 18/02/2008 9h55min11s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 18/02/2008 9h55min11s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 18/02/2008 9h55min11s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 18/02/2008 9h55min11s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 18/02/2008 9h55min11s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 18/02/2008 9h55min11s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 18/02/2008 9h55min11s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 18/02/2008 9h55min11s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 18/02/2008 9h55min11s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 18/02/2008 9h55min11s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 18/02/2008 9h55min11s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 18/02/2008 9h55min17s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 18/02/2008 9h55min17s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 18/02/2008 9h55min17s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 18/02/2008 9h55min17s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 18/02/2008 9h55min17s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 18/02/2008 9h56min52s BRT
-- Default comment for updating dictionary
UPDATE AD_Tab SET WhereClause='IsSOTrx=''N''',Updated=TO_TIMESTAMP('2008-02-18 09:56:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000028
;

-- 18/02/2008 9h57min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Tab SET WhereClause='IsSOTrx=''Y''',Updated=TO_TIMESTAMP('2008-02-18 09:57:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000020
;

INSERT INTO ADEMPIERE.AD_FIELD(ad_field_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, iscentrallymaintained, ad_tab_id, ad_column_id, ad_fieldgroup_id, isdisplayed, displaylogic, displaylength, isreadonly, seqno, sortno, issameline, isheading, isfieldonly, isencrypted, entitytype, obscuretype, ad_reference_id, ismandatory, included_tab_id, defaultvalue, ad_reference_value_id, ad_val_rule_id, infofactoryclass)
  VALUES(1000622, 0, 0, 'Y', '2008-02-26 12:16:35.0', 100, '2008-02-26 12:16:35.0', 100, 'Legal Message', 'Defines the Legal Message', 'Primary key table LBR_LegalMessage', 'Y', 1000030, 1000700, NULL, 'N', NULL, 22, 'N', 0, NULL, 'N', 'N', 'N', 'N', 'LBRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ADEMPIERE.AD_FIELD(ad_field_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, iscentrallymaintained, ad_tab_id, ad_column_id, ad_fieldgroup_id, isdisplayed, displaylogic, displaylength, isreadonly, seqno, sortno, issameline, isheading, isfieldonly, isencrypted, entitytype, obscuretype, ad_reference_id, ismandatory, included_tab_id, defaultvalue, ad_reference_value_id, ad_val_rule_id, infofactoryclass)
  VALUES(1000623, 0, 0, 'Y', '2008-02-26 12:16:35.0', 100, '2008-02-26 12:16:35.0', 100, 'Tax Status', 'Defines the Tax Status', 'Defines the Tax Status', 'Y', 1000030, 1000701, NULL, 'N', NULL, 3, 'N', 0, NULL, 'N', 'N', 'N', 'N', 'LBRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);