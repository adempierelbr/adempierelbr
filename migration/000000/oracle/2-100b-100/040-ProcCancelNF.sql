-- 20/02/2008 11h7min55s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000272,'lbr_ProcCancelNF',TO_TIMESTAMP('2008-02-20 11:07:54','YYYY-MM-DD HH24:MI:SS'),100,'Process to Cancel Nota Fiscal','LBRA','Process to Cancel Nota Fiscal','Y','Process Cancel Nota Fiscal','Process Cancel Nota Fiscal',TO_TIMESTAMP('2008-02-20 11:07:54','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 20/02/2008 11h7min55s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000272 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 20/02/2008 11h9min16s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process (AD_Org_ID,AD_Process_ID,AccessLevel,Classname,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value,AD_Client_ID) VALUES (0,1000006,'1','org.adempierelbr.process.ProcCancelNF',TO_TIMESTAMP('2008-02-20 11:09:16','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','N','N','N','ProcCancelNF','Y',0,0,TO_TIMESTAMP('2008-02-20 11:09:16','YYYY-MM-DD HH24:MI:SS'),100,'ProcCancelNF',0)
;

-- 20/02/2008 11h9min16s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1000006 AND EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Process_ID!=t.AD_Process_ID)
;

-- 20/02/2008 11h9min16s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000006,0,TO_TIMESTAMP('2008-02-20 11:09:16','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-02-20 11:09:16','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 20/02/2008 11h9min16s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000006,102,TO_TIMESTAMP('2008-02-20 11:09:16','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-02-20 11:09:16','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 20/02/2008 11h9min16s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000006,103,TO_TIMESTAMP('2008-02-20 11:09:16','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-02-20 11:09:16','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 20/02/2008 11h9min16s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000006,50001,TO_TIMESTAMP('2008-02-20 11:09:16','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-02-20 11:09:16','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 20/02/2008 11h11min49s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Process_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000272,1000006,28,1000027,'lbr_ProcCancelNF',TO_TIMESTAMP('2008-02-20 11:11:49','YYYY-MM-DD HH24:MI:SS'),100,'Process to Cancel Nota Fiscal','LBRA',1,'Process to Cancel Nota Fiscal','Y','N','N','N','N','N','N','N','N','N','Y','Process Cancel Nota Fiscal',0,TO_TIMESTAMP('2008-02-20 11:11:49','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000702)
;

-- 20/02/2008 11h11min49s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000702 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 20/02/2008 11h11min51s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_NotaFiscal ADD lbr_ProcCancelNF CHAR(1)
;

-- 20/02/2008 11h12min27s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000702,0,1000028,TO_TIMESTAMP('2008-02-20 11:12:27','YYYY-MM-DD HH24:MI:SS'),100,'Process to Cancel Nota Fiscal',1,'LBRA','Process to Cancel Nota Fiscal','Y','Y','Y','N','N','N','N','N','Process Cancel Nota Fiscal',TO_TIMESTAMP('2008-02-20 11:12:27','YYYY-MM-DD HH24:MI:SS'),0,100,1000617)
;

-- 20/02/2008 11h12min27s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000617 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 20/02/2008 11h14min45s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=155, AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2008-02-20 11:14:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000617
;

-- 20/02/2008 11h14min52s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000702,0,1000020,TO_TIMESTAMP('2008-02-20 11:14:51','YYYY-MM-DD HH24:MI:SS'),100,'Process to Cancel Nota Fiscal',1,'LBRA','Process to Cancel Nota Fiscal','Y','Y','Y','N','N','N','N','N','Process Cancel Nota Fiscal',TO_TIMESTAMP('2008-02-20 11:14:51','YYYY-MM-DD HH24:MI:SS'),0,100,1000618)
;

-- 20/02/2008 11h14min52s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000618 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 20/02/2008 11h15min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=155, AD_FieldGroup_ID=125,Updated=TO_TIMESTAMP('2008-02-20 11:15:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000618
;

-- 20/02/2008 11h15min26s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_TIMESTAMP('2008-02-20 11:15:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000702
;

-- 20/02/2008 11h15min26s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Process Cancel Nota Fiscal', Description='Process to Cancel Nota Fiscal', Help='Process to Cancel Nota Fiscal' WHERE AD_Column_ID=1000702 AND IsCentrallyMaintained='Y'
;

-- 20/02/2008 11h16min28s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=155,Updated=TO_TIMESTAMP('2008-02-20 11:16:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000383
;

-- 20/02/2008 11h16min33s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y', SeqNo=150,Updated=TO_TIMESTAMP('2008-02-20 11:16:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000618
;

-- 20/02/2008 11h16min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2008-02-20 11:16:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000383
;

-- 20/02/2008 11h17min21s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=45,Updated=TO_TIMESTAMP('2008-02-20 11:17:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000383
;

-- 20/02/2008 11h17min40s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=45,Updated=TO_TIMESTAMP('2008-02-20 11:17:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000516
;

-- 20/02/2008 11h17min43s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2008-02-20 11:17:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000516
;

-- 20/02/2008 11h17min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y', SeqNo=150,Updated=TO_TIMESTAMP('2008-02-20 11:17:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000617
;

-- 20/02/2008 11h18min41s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=NULL,Updated=TO_TIMESTAMP('2008-02-20 11:18:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000383
;

-- 20/02/2008 11h18min56s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=NULL,Updated=TO_TIMESTAMP('2008-02-20 11:18:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000516
;

exit
