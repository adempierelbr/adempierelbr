-- 05/02/2008 8h22min39s GMT-04:00
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000256,'LBR_Withhold_Order_ID',TO_TIMESTAMP('2008-02-05 08:22:38','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Withhold Order','Withhold Order',TO_TIMESTAMP('2008-02-05 08:22:38','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 05/02/2008 8h22min39s GMT-04:00
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000256 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 05/02/2008 8h36min40s GMT-04:00
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,290,1000256,30,259,'LBR_Withhold_Order_ID',TO_TIMESTAMP('2008-02-05 08:36:40','YYYY-MM-DD HH24:MI:SS'),100,'U',10,'Y','N','N','N','N','N','N','N','N','N','Y','Withhold Order',0,TO_TIMESTAMP('2008-02-05 08:36:40','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000664)
;

-- 05/02/2008 8h36min40s GMT-04:00
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000664 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 05/02/2008 8h56min20s GMT-04:00
-- Default comment for updating dictionary
ALTER TABLE C_Order ADD COLUMN LBR_Withhold_Order_ID NUMERIC(10)
;

