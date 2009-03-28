-- 28/03/2009 11h51min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001073,1000145,0,18,1000013,313,'LBR_ProductCategory_ID',TO_DATE('2009-03-28 11:51:48','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_ProductCategory','LBRA',22,'Primary key table LBR_ProductCategory','Y','N','N','N','N','N','N','N','N','N','Y','Product Category',0,TO_DATE('2009-03-28 11:51:48','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 28/03/2009 11h51min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001073 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 28/03/2009 11h51min53s BRT
-- Default comment for updating dictionary
ALTER TABLE C_Charge ADD LBR_ProductCategory_ID NUMBER(10)
;

-- 28/03/2009 11h54min45s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1001073,1000000,1001129,0,237,TO_DATE('2009-03-28 11:54:45','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_ProductCategory',0,'LBRA','Primary key table LBR_ProductCategory','Y','Y','Y','N','N','N','N','N','Product Category',110,0,TO_DATE('2009-03-28 11:54:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/03/2009 11h54min45s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001129 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 28/03/2009 12h19min37s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET Callout='org.compiere.model.CalloutOrder.charge;org.adempierelbr.callout.CalloutDefineCFOP.getCFOP',Updated=TO_DATE('2009-03-28 12:19:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3050
;

-- Mar 28, 2009 2:08:22 PM BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET Callout='org.compiere.model.CalloutInvoice.charge;org.adempierelbr.callout.CalloutDefineCFOP.getCFOP',Updated=TO_DATE('2009-03-28 14:08:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3845
;

-- Mar 28, 2009 2:29:01 PM BRT
-- Default comment for updating dictionary
UPDATE AD_SysConfig SET Value='100-trunk/021-DefineCFOP_Charge.sql',Updated=TO_DATE('2009-03-28 14:29:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_SysConfig_ID=1100006
;

exit

