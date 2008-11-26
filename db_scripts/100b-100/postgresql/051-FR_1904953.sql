-- 29/02/2008 18h28min1s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000282,'lbr_ServiceFactor',TO_TIMESTAMP('2008-02-29 18:27:59','YYYY-MM-DD HH24:MI:SS'),100,'Define the Service Factor Formula','LBRA','Define the Service Factor Formula','Y','Service Factor','Service Factor',TO_TIMESTAMP('2008-02-29 18:27:59','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 29/02/2008 18h28min1s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000282 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 29/02/2008 18h28min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000282,10,1000026,'lbr_ServiceFactor',TO_TIMESTAMP('2008-02-29 18:28:52','YYYY-MM-DD HH24:MI:SS'),100,'Define the Service Factor Formula','LBRA',1000,'Define the Service Factor Formula','Y','N','N','N','N','N','N','N','N','N','Y','Service Factor',0,TO_TIMESTAMP('2008-02-29 18:28:52','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000714)
;

-- 29/02/2008 18h28min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000714 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 29/02/2008 18h28min55s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_TaxFormula ADD COLUMN lbr_ServiceFactor VARCHAR(1000)
;

-- 29/02/2008 18h31min4s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000714,0,1000019,TO_TIMESTAMP('2008-02-29 18:31:03','YYYY-MM-DD HH24:MI:SS'),100,'Define the Service Factor Formula',1000,'LBRA','Define the Service Factor Formula','Y','Y','Y','N','N','N','N','N','Service Factor',TO_TIMESTAMP('2008-02-29 18:31:03','YYYY-MM-DD HH24:MI:SS'),0,100,1000639)
;

-- 29/02/2008 18h31min4s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000639 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 29/02/2008 18h31min40s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=60,Updated=TO_TIMESTAMP('2008-02-29 18:31:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000639
;

-- 29/02/2008 18h32min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@lbr_TaxType@=''S''',Updated=TO_TIMESTAMP('2008-02-29 18:32:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000639
;

-- 29/02/2008 18h33min43s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Reference_ID=34, IsMandatory='Y',Updated=TO_TIMESTAMP('2008-02-29 18:33:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000714
;

-- 29/02/2008 18h33min43s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Service Factor', Description='Define the Service Factor Formula', Help='Define the Service Factor Formula' WHERE AD_Column_ID=1000714 AND IsCentrallyMaintained='Y'
;

