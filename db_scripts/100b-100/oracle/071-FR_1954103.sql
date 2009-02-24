-- 29/04/2008 8h48min16s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000921,1106,0,20,1000016,'IsSOTrx',TO_DATE('2008-04-29 08:48:15','YYYY-MM-DD HH24:MI:SS'),100,'Y','This is a Sales Transaction','LBRA',1,'The Sales Transaction checkbox indicates if this item is a Sales Transaction.','Y','N','N','N','N','Y','N','N','N','N','Y','Sales Transaction',0,TO_DATE('2008-04-29 08:48:15','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 29/04/2008 8h48min16s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000921 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 29/04/2008 8h48min17s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_TaxConfiguration ADD IsSOTrx CHAR(1) DEFAULT 'Y' CHECK (IsSOTrx IN ('Y','N')) NOT NULL
;

-- 29/04/2008 8h49min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1000319,0,'lbr_IsPOTrx',TO_DATE('2008-04-29 08:49:44','YYYY-MM-DD HH24:MI:SS'),100,'This is a Purchase Transaction','LBRA','The Purchase Transaction checkbox indicates if this item is a Purchase Transaction.','Y','Purchase Transaction','Purchase Transaction',TO_DATE('2008-04-29 08:49:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/04/2008 8h49min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000319 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 29/04/2008 8h49min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Transação de Compras',PrintName='Transação de Compras',Updated=TO_DATE('2008-04-29 08:49:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000319 AND AD_Language='pt_BR'
;

-- 29/04/2008 8h50min12s BRT
-- Default comment for updating dictionary
UPDATE AD_Element_Trl SET Description='Esta é uma Transação de Compras',Updated=TO_DATE('2008-04-29 08:50:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000319 AND AD_Language='pt_BR'
;

-- 29/04/2008 8h50min38s BRT
-- Default comment for updating dictionary
UPDATE AD_Element_Trl SET Help='A caixa de verificação "Transação de Compras" indica se este item é uma Transação de Compras.',Updated=TO_DATE('2008-04-29 08:50:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000319 AND AD_Language='pt_BR'
;

-- 29/04/2008 8h51min12s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1000922,1000319,0,20,1000016,'lbr_IsPOTrx',TO_DATE('2008-04-29 08:51:12','YYYY-MM-DD HH24:MI:SS'),100,'Y','This is a Purchase Transaction','U',1,'The Purchase Transaction checkbox indicates if this item is a Purchase Transaction.','Y','N','N','N','N','Y','N','N','N','N','Y','Purchase Transaction',0,TO_DATE('2008-04-29 08:51:12','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 29/04/2008 8h51min12s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000922 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 29/04/2008 8h51min13s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_TaxConfiguration ADD lbr_IsPOTrx CHAR(1) DEFAULT 'Y' CHECK (lbr_IsPOTrx IN ('Y','N')) NOT NULL
;

-- 29/04/2008 8h52min12s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1000922,1000888,0,1000012,TO_DATE('2008-04-29 08:52:12','YYYY-MM-DD HH24:MI:SS'),100,'This is a Purchase Transaction',1,'U','The Purchase Transaction checkbox indicates if this item is a Purchase Transaction.','Y','Y','Y','N','N','N','N','N','Purchase Transaction',TO_DATE('2008-04-29 08:52:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/04/2008 8h52min12s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000888 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 29/04/2008 8h52min12s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1000921,1000889,0,1000012,TO_DATE('2008-04-29 08:52:12','YYYY-MM-DD HH24:MI:SS'),100,'This is a Sales Transaction',1,'LBRA','The Sales Transaction checkbox indicates if this item is a Sales Transaction.','Y','Y','Y','N','N','N','N','N','Sales Transaction',TO_DATE('2008-04-29 08:52:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/04/2008 8h52min12s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000889 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 29/04/2008 8h52min24s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000889
;

-- 29/04/2008 8h52min24s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000888
;

-- 29/04/2008 8h52min24s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1000194
;

-- 29/04/2008 8h52min24s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1000192
;

-- 29/04/2008 8h52min46s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2008-04-29 08:52:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000888
;

exit
