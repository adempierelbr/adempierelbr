-- 17/12/2015 12h24min44s BRST
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,1120163,'org.adempierelbr.process.ProcXMLExport','N',TO_DATE('2015-12-17 12:24:43','YYYY-MM-DD HH24:MI:SS'),100,'Export all XML archives in range of dates','LBRA','Y','N','N','N','N','Export XML','Y',0,0,TO_DATE('2015-12-17 12:24:43','YYYY-MM-DD HH24:MI:SS'),100,'ProcXMLExport')
;

-- 17/12/2015 12h24min44s BRST
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1120163 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 17/12/2015 12h25min45s BRST
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=1120163
;

-- 17/12/2015 12h25min45s BRST
UPDATE AD_Process_Trl SET Description='Export all XML archives in range of dates',Help=NULL,Name='Export NFe XML',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Process_ID=1120163
;

-- 17/12/2015 12h26min44s BRST
UPDATE AD_Process_Trl SET IsTranslated='Y',Name='Exportar XML da NF-e',Description='Exporta todos os arquivos XML dentro de um intervalo de datas',Updated=TO_DATE('2015-12-17 12:26:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120163 AND AD_Language='pt_BR'
;

-- 17/12/2015 12h32min59s BRST
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,197,0,1120163,1120219,18,170,1120092,'C_DocTypeTarget_ID',TO_DATE('2015-12-17 12:32:58','YYYY-MM-DD HH24:MI:SS'),100,'Target document type for conversing documents','LBRA',0,'You can convert document types (e.g. from Offer to Order or Invoice).  The conversion is then reflected in the current type.  This processing is initiated by selecting the appropriate Document Action.	','Y','Y','Y','N','Target Document Type',10,TO_DATE('2015-12-17 12:32:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/12/2015 12h32min59s BRST
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120219 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 17/12/2015 12h35min51s BRST
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,50022,0,1120163,1120220,38,'File_Directory',TO_DATE('2015-12-17 12:35:50','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',0,'Y','Y','N','N','File Directory',20,TO_DATE('2015-12-17 12:35:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/12/2015 12h35min51s BRST
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120220 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 17/12/2015 12h37min7s BRST
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,265,0,1120163,1120221,15,'DateDoc',TO_DATE('2015-12-17 12:37:06','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','LBRA',0,'The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.	','Y','Y','Y','Y','Document Date',30,TO_DATE('2015-12-17 12:37:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/12/2015 12h37min7s BRST
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120221 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 17/12/2015 12h40min19s BRST
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('P',0,1120244,0,1120163,TO_DATE('2015-12-17 12:40:18','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Y','N','N','N','Exportar XML',TO_DATE('2015-12-17 12:40:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/12/2015 12h40min19s BRST
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=1120244 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 17/12/2015 12h40min19s BRST
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1120244, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120244)
;

-- 17/12/2015 12h41min35s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 17/12/2015 12h41min35s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 17/12/2015 12h41min35s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000036
;

-- 17/12/2015 12h41min35s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 17/12/2015 12h41min35s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 17/12/2015 12h41min35s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 17/12/2015 12h41min35s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120229
;

-- 17/12/2015 12h41min35s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 17/12/2015 12h41min35s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 17/12/2015 12h41min35s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- 17/12/2015 12h41min35s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 17/12/2015 12h41min35s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 17/12/2015 12h41min35s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 17/12/2015 12h41min35s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 17/12/2015 12h41min35s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120244
;

-- 17/12/2015 12h41min35s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 11/01/2016 13h50min5s BRST
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,1120122,'C_DocType.DocBaseType=''NFB''',TO_DATE('2016-01-11 13:49:43','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','C_DocType NF - Export XML','S',TO_DATE('2016-01-11 13:49:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/01/2016 13h52min46s BRST
UPDATE AD_Process_Para SET AD_Val_Rule_ID=1120122,Updated=TO_DATE('2016-01-11 13:52:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120219
;

INSERT INTO AD_Process_Access (AD_Process_ID,AD_Role_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadWrite)
SELECT 1120163 AS AD_Process_ID,pa.AD_Role_ID,pa.AD_Client_ID,pa.AD_Org_ID,pa.IsActive,pa.Created,pa.CreatedBy,pa.Updated,pa.UpdatedBy, pa.IsReadWrite
FROM AD_Process_Access pa
	JOIN AD_Role r ON pa.AD_Role_ID = r.AD_Role_ID
	JOIN AD_Process p ON pa.AD_Process_ID = p.AD_Process_ID
WHERE  p.ClassName = 'org.adempierelbr.process.ProcXMLExport' AND p.AD_Process_ID <> 1120163 AND NOT EXISTS (SELECT '1' FROM AD_Process_Access WHERE AD_Process_ID = 1120163)
;

DELETE FROM AD_Process_Access pa USING AD_Process p  
WHERE  p.AD_Process_ID = pa.AD_Process_ID AND p.ClassName = 'org.adempierelbr.process.ProcXMLExport' AND p.AD_Process_ID <> 1120163 
;


DELETE FROM AD_Menu m USING AD_Process p 
WHERE p.AD_Process_ID = m.AD_Process_ID AND p.ClassName = 'org.adempierelbr.process.ProcXMLExport' AND p.AD_Process_ID <> 1120163
;

UPDATE AD_PInstance  pi SET AD_Process_ID = 1120163 FROM AD_Process p  
WHERE  p.AD_Process_ID = pi.AD_Process_ID AND p.ClassName = 'org.adempierelbr.process.ProcXMLExport' AND p.AD_Process_ID <> 1120163
;

DELETE FROM AD_Process
WHERE ClassName = 'org.adempierelbr.process.ProcXMLExport' AND AD_Process_ID <> 1120163
;

-- 20/01/2016 15h30min48s BRST
UPDATE AD_Process_Para SET IsMandatory='N',Updated=TO_DATE('2016-01-20 15:30:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120219
;

-- 20/01/2016 16h34min56s BRST
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,1120163,1120227,19,'AD_Org_ID',TO_DATE('2016-01-20 16:34:54','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','LBRA',0,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','AD_Org_ID',40,TO_DATE('2016-01-20 16:34:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 20/01/2016 16h34min56s BRST
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120227 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 20/01/2016 16h36min8s BRST
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,1120163,1120228,30,'C_BPartner_ID',TO_DATE('2016-01-20 16:36:08','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','LBRA',0,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','C_BPartner_ID',50,TO_DATE('2016-01-20 16:36:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 20/01/2016 16h36min8s BRST
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120228 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 20/01/2016 17h23min30s BRST
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1383,0,1120163,1120232,19,'C_BP_Group_ID',TO_DATE('2016-01-20 17:23:29','YYYY-MM-DD HH24:MI:SS'),100,'Business Partner Group','LBRA',0,'The Business Partner Group provides a method of defining defaults to be used for individual Business Partners.','Y','Y','N','N','C_BP_Group_ID',60,TO_DATE('2016-01-20 17:23:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 20/01/2016 17h23min30s BRST
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120232 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 20/01/2016 17h24min17s BRST
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,455,0,1120163,1120233,19,'M_Shipper_ID',TO_DATE('2016-01-20 17:24:16','YYYY-MM-DD HH24:MI:SS'),100,'Method or manner of product delivery','LBRA',0,'The Shipper indicates the method of delivering product','Y','Y','N','N','M_Shipper_ID',70,TO_DATE('2016-01-20 17:24:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 20/01/2016 17h24min17s BRST
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120233 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 20/01/2016 17h26min49s BRST
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1000256,0,1120163,1120234,17,'lbr_IsOwnDocument',TO_DATE('2016-01-20 17:26:49','YYYY-MM-DD HH24:MI:SS'),100,'Identifies this is an own document','LBRA',0,'Identifies this is an own document','Y','Y','N','N','lbr_IsOwnDocument',80,TO_DATE('2016-01-20 17:26:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 20/01/2016 17h26min49s BRST
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120234 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 17/12/2015 12h41min35s BRST
SELECT Register_Migration_Script ('167-ExportXML.sql') FROM DUAL
;

EXIT
