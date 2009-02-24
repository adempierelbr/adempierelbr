-- 01/03/2008 10h41min14s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Form (AD_Org_ID,AD_Form_ID,AccessLevel,Classname,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000003,'3','org.adempierelbr.form.FormNotaFiscal',TO_DATE('2008-03-01 10:41:13','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','Print Nota Fiscal',TO_DATE('2008-03-01 10:41:13','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 01/03/2008 10h41min14s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Form_Trl (AD_Language,AD_Form_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Form_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Form t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Form_ID=1000003 AND EXISTS (SELECT * FROM AD_Form_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Form_ID!=t.AD_Form_ID)
;

-- 01/03/2008 10h41min14s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Form_Access (AD_Org_ID,AD_Form_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000003,0,TO_DATE('2008-03-01 10:41:14','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2008-03-01 10:41:14','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 01/03/2008 10h42min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Menu (AD_Org_ID,AD_Form_ID,AD_Menu_ID,Action,Created,CreatedBy,EntityType,IsActive,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000003,1000027,'X',TO_DATE('2008-03-01 10:42:37','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','N','N','Print Nota Fiscal',TO_DATE('2008-03-01 10:42:37','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 01/03/2008 10h42min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=1000027 AND EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Menu_ID!=t.AD_Menu_ID)
;

-- 01/03/2008 10h42min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID,0, 'Y', SysDate, 0, SysDate, 0,t.AD_Tree_ID, 1000027, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000027)
;

-- 01/03/2008 10h43min1s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 01/03/2008 10h43min1s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 01/03/2008 10h43min1s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 01/03/2008 10h43min1s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 01/03/2008 10h43min1s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 01/03/2008 10h43min1s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 01/03/2008 10h43min1s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 01/03/2008 10h43min1s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 01/03/2008 10h43min1s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 01/03/2008 10h43min1s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 01/03/2008 10h43min1s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 01/03/2008 10h43min1s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 01/03/2008 10h43min1s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 01/03/2008 10h43min1s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 01/03/2008 10h43min1s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 01/03/2008 10h43min1s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 01/03/2008 10h43min1s BRT
-- Default comment for updating dictionary
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 01/03/2008 10h56min35s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000025,1000238,18,1000004,'LBR_MatrixPrinter_ID',TO_DATE('2008-03-01 10:56:34','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_MatrixPrinter','LBRA',22,'Primary key table LBR_MatrixPrinter','Y','N','N','N','N','N','N','N','N','N','Y','Matrix Printer',0,TO_DATE('2008-03-01 10:56:34','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000716)
;

-- 01/03/2008 10h56min35s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000716 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 01/03/2008 11h14min46s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_DocPrint ADD LBR_MatrixPrinter_ID NUMBER(10)
;

exit
