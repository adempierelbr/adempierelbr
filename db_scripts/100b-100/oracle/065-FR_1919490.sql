-- 19/03/2008 8h37min27s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000306,'lbr_DateInOut',TO_DATE('2008-03-19 08:37:26','YYYY-MM-DD HH24:MI:SS'),100,'Defines the InOut Date','LBRA','Defines the InOut Date','Y','Date InOut','Date InOut',TO_DATE('2008-03-19 08:37:26','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 19/03/2008 8h37min27s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000306 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 19/03/2008 8h38min23s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000307,'lbr_TimeInOut',TO_DATE('2008-03-19 08:38:23','YYYY-MM-DD HH24:MI:SS'),100,'Defines the InOut Time','LBRA','Defines the InOut Time','Y','Time InOut','Time InOut',TO_DATE('2008-03-19 08:38:23','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 19/03/2008 8h38min23s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000307 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 19/03/2008 8h39min3s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000306,15,1000027,'lbr_DateInOut',TO_DATE('2008-03-19 08:39:03','YYYY-MM-DD HH24:MI:SS'),100,'Defines the InOut Date','LBRA',7,'Defines the InOut Date','Y','N','N','N','N','N','N','N','N','N','Y','Date InOut',0,TO_DATE('2008-03-19 08:39:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000908)
;

-- 19/03/2008 8h39min3s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000908 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 19/03/2008 8h39min6s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_NotaFiscal ADD lbr_DateInOut DATE
;

-- 19/03/2008 8h39min30s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,VFormat,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000307,10,1000027,'lbr_TimeInOut',TO_DATE('2008-03-19 08:39:29','YYYY-MM-DD HH24:MI:SS'),100,'Defines the InOut Time','LBRA',5,'Defines the InOut Time','Y','N','N','N','N','N','N','N','N','N','Y','Time InOut',0,TO_DATE('2008-03-19 08:39:29','YYYY-MM-DD HH24:MI:SS'),100,'00:00',0,0,1000909)
;

-- 19/03/2008 8h39min30s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000909 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 19/03/2008 8h39min31s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_NotaFiscal ADD lbr_TimeInOut NVARCHAR2(5)
;

-- 19/03/2008 8h39min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000908,0,1000028,TO_DATE('2008-03-19 08:39:47','YYYY-MM-DD HH24:MI:SS'),100,'Defines the InOut Date',7,'LBRA','Defines the InOut Date','Y','Y','Y','N','N','N','N','N','Date InOut',TO_DATE('2008-03-19 08:39:47','YYYY-MM-DD HH24:MI:SS'),0,100,1000880)
;

-- 19/03/2008 8h39min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000880 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 19/03/2008 8h39min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000909,0,1000028,TO_DATE('2008-03-19 08:39:48','YYYY-MM-DD HH24:MI:SS'),100,'Defines the InOut Time',5,'LBRA','Defines the InOut Time','Y','Y','Y','N','N','N','N','N','Time InOut',TO_DATE('2008-03-19 08:39:48','YYYY-MM-DD HH24:MI:SS'),0,100,1000881)
;

-- 19/03/2008 8h39min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000881 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 19/03/2008 8h40min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=172,Updated=TO_DATE('2008-03-19 08:40:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000880
;

-- 19/03/2008 8h40min25s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y', SeqNo=174,Updated=TO_DATE('2008-03-19 08:40:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000881
;

-- 19/03/2008 8h40min36s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_DATE('2008-03-19 08:40:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000880
;

-- 19/03/2008 8h40min39s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_DATE('2008-03-19 08:40:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000881
;

-- 19/03/2008 8h40min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000908,0,1000020,TO_DATE('2008-03-19 08:40:44','YYYY-MM-DD HH24:MI:SS'),100,'Defines the InOut Date',7,'LBRA','Defines the InOut Date','Y','Y','Y','N','N','N','N','N','Date InOut',TO_DATE('2008-03-19 08:40:44','YYYY-MM-DD HH24:MI:SS'),0,100,1000882)
;

-- 19/03/2008 8h40min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000882 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 19/03/2008 8h40min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000909,0,1000020,TO_DATE('2008-03-19 08:40:44','YYYY-MM-DD HH24:MI:SS'),100,'Defines the InOut Time',5,'LBRA','Defines the InOut Time','Y','Y','Y','N','N','N','N','N','Time InOut',TO_DATE('2008-03-19 08:40:44','YYYY-MM-DD HH24:MI:SS'),0,100,1000883)
;

-- 19/03/2008 8h40min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000883 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 19/03/2008 8h41min2s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y', SeqNo=174, AD_FieldGroup_ID=125,Updated=TO_DATE('2008-03-19 08:41:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000883
;

-- 19/03/2008 8h41min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=172, AD_FieldGroup_ID=125,Updated=TO_DATE('2008-03-19 08:41:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000882
;

exit
