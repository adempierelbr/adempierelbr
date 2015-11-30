-- 01/03/2008 9h26min58s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000283,'LBR_Withhold_Invoice_ID',TO_DATE('2008-03-01 09:26:54','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Withhold Invoice','LBRA','Defines the Withhold Invoice','Y','Withhold Invoice','Withhold Invoice',TO_DATE('2008-03-01 09:26:54','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 01/03/2008 9h26min58s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000283 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 01/03/2008 9h30min33s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,336,1000283,18,318,'LBR_Withhold_Invoice_ID',TO_DATE('2008-03-01 09:30:31','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Withhold Invoice','LBRA',22,'Defines the Withhold Invoice','Y','N','N','N','N','N','N','N','N','N','Y','Withhold Invoice',0,TO_DATE('2008-03-01 09:30:31','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000715)
;

-- 01/03/2008 9h30min33s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000715 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 01/03/2008 9h30min37s BRT
-- Default comment for updating dictionary
ALTER TABLE C_Invoice ADD LBR_Withhold_Invoice_ID NUMBER(10)
;

exit
