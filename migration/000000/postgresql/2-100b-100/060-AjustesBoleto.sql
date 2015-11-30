-- 12/03/2008 8h19min24s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,343,1384,18,1000001,'C_Payment_ID',TO_TIMESTAMP('2008-03-12 08:19:19','YYYY-MM-DD HH24:MI:SS'),100,'Payment identifier','LBRA',22,'The Payment is a unique identifier of this payment.','Y','N','N','N','N','N','N','N','N','N','Y','Payment',0,TO_TIMESTAMP('2008-03-12 08:19:19','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000895)
;

-- 12/03/2008 8h19min24s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000895 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 12/03/2008 8h19min25s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_Boleto ADD COLUMN C_Payment_ID NUMERIC(10)
;

-- 12/03/2008 8h19min49s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1402,20,1000001,'IsPaid',TO_TIMESTAMP('2008-03-12 08:19:48','YYYY-MM-DD HH24:MI:SS'),100,'''N''','The document is paid','LBRA',1,'Y','N','N','N','N','Y','N','N','N','N','Y','Paid',0,TO_TIMESTAMP('2008-03-12 08:19:48','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000896)
;

-- 12/03/2008 8h19min49s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000896 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 12/03/2008 8h19min51s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_Boleto ADD COLUMN IsPaid CHAR(1) DEFAULT 'N' CHECK (IsPaid IN ('Y','N')) NOT NULL
;

-- 12/03/2008 8h20min24s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000133,11,1000001,'lbr_OccurNo',TO_TIMESTAMP('2008-03-12 08:20:23','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Occurrence Number','LBRA',10,'Defines the Occurrence Number','Y','N','N','N','N','N','N','N','N','N','Y','Occurrence Number',0,TO_TIMESTAMP('2008-03-12 08:20:23','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000897)
;

-- 12/03/2008 8h20min24s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000897 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 12/03/2008 8h20min25s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_Boleto ADD COLUMN lbr_OccurNo NUMERIC(10)
;

-- 12/03/2008 8h20min46s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,289,34,1000001,'DocStatus',TO_TIMESTAMP('2008-03-12 08:20:45','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','LBRA',255,'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','N','N','N','N','N','N','N','N','N','Y','Document Status',0,TO_TIMESTAMP('2008-03-12 08:20:45','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000898)
;

-- 12/03/2008 8h20min46s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000898 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 12/03/2008 8h20min48s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_Boleto ADD COLUMN DocStatus VARCHAR(255)
;

-- 12/03/2008 8h21min39s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000898,0,1000034,TO_TIMESTAMP('2008-03-12 08:21:38','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document',255,'LBRA','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','Y','Y','N','N','N','N','N','Document Status',TO_TIMESTAMP('2008-03-12 08:21:38','YYYY-MM-DD HH24:MI:SS'),0,100,1000861)
;

-- 12/03/2008 8h21min39s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000861 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 12/03/2008 8h21min40s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000736,0,1000034,TO_TIMESTAMP('2008-03-12 08:21:39','YYYY-MM-DD HH24:MI:SS'),100,'Define if this Document must be Sue',1,'LBRA','Define if this Document must be Sue','Y','Y','Y','N','N','N','N','N','Has Sue',TO_TIMESTAMP('2008-03-12 08:21:39','YYYY-MM-DD HH24:MI:SS'),0,100,1000862)
;

-- 12/03/2008 8h21min40s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000862 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 12/03/2008 8h21min41s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000735,0,1000034,TO_TIMESTAMP('2008-03-12 08:21:40','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Interest',22,'LBRA','Defines the Interest','Y','Y','Y','N','N','N','N','N','Interest',TO_TIMESTAMP('2008-03-12 08:21:40','YYYY-MM-DD HH24:MI:SS'),0,100,1000863)
;

-- 12/03/2008 8h21min41s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000863 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 12/03/2008 8h21min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000897,0,1000034,TO_TIMESTAMP('2008-03-12 08:21:41','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Occurrence Number',10,'LBRA','Defines the Occurrence Number','Y','Y','Y','N','N','N','N','N','Occurrence Number',TO_TIMESTAMP('2008-03-12 08:21:41','YYYY-MM-DD HH24:MI:SS'),0,100,1000864)
;

-- 12/03/2008 8h21min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000864 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 12/03/2008 8h21min43s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000896,0,1000034,TO_TIMESTAMP('2008-03-12 08:21:42','YYYY-MM-DD HH24:MI:SS'),100,'The document is paid',1,'LBRA','Y','Y','Y','N','N','N','N','N','Paid',TO_TIMESTAMP('2008-03-12 08:21:42','YYYY-MM-DD HH24:MI:SS'),0,100,1000865)
;

-- 12/03/2008 8h21min43s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000865 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 12/03/2008 8h21min43s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000895,0,1000034,TO_TIMESTAMP('2008-03-12 08:21:43','YYYY-MM-DD HH24:MI:SS'),100,'Payment identifier',22,'LBRA','The Payment is a unique identifier of this payment.','Y','Y','Y','N','N','N','N','N','Payment',TO_TIMESTAMP('2008-03-12 08:21:43','YYYY-MM-DD HH24:MI:SS'),0,100,1000866)
;

-- 12/03/2008 8h21min43s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000866 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 12/03/2008 8h21min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000737,0,1000034,TO_TIMESTAMP('2008-03-12 08:21:43','YYYY-MM-DD HH24:MI:SS'),100,'Define the Sue Days',4,'LBRA','Define the Sue Days','Y','Y','Y','N','N','N','N','N','Sue Days',TO_TIMESTAMP('2008-03-12 08:21:43','YYYY-MM-DD HH24:MI:SS'),0,100,1000867)
;

-- 12/03/2008 8h21min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000867 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 12/03/2008 8h22min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000862
;

-- 12/03/2008 8h22min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000863
;

-- 12/03/2008 8h22min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000867
;

-- 12/03/2008 8h22min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1000864
;

-- 12/03/2008 8h22min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1000861
;

-- 12/03/2008 8h22min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1000866
;

-- 12/03/2008 8h22min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1000865
;

-- 12/03/2008 8h22min53s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=101,Updated=TO_TIMESTAMP('2008-03-12 08:22:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000864
;

-- 12/03/2008 8h22min56s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=101,Updated=TO_TIMESTAMP('2008-03-12 08:22:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000861
;

-- 12/03/2008 8h23min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=101,Updated=TO_TIMESTAMP('2008-03-12 08:23:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000866
;

-- 12/03/2008 8h23min9s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsReadOnly='Y', IsSameLine='Y', AD_FieldGroup_ID=101,Updated=TO_TIMESTAMP('2008-03-12 08:23:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000865
;

-- 12/03/2008 8h23min25s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2008-03-12 08:23:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000866
;

-- 12/03/2008 8h23min29s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2008-03-12 08:23:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000861
;

-- 12/03/2008 8h23min33s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2008-03-12 08:23:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000864
;

-- 12/03/2008 10h39min9s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,2211,20,1000002,'IsRegistered',TO_TIMESTAMP('2008-03-12 10:39:08','YYYY-MM-DD HH24:MI:SS'),100,'''N''','The application is registered.','LBRA',1,'Y','N','N','N','N','Y','N','N','N','N','Y','Registered',0,TO_TIMESTAMP('2008-03-12 10:39:08','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000899)
;

-- 12/03/2008 10h39min9s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000899 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 12/03/2008 10h39min11s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_CNAB ADD COLUMN IsRegistered CHAR(1) DEFAULT 'N' CHECK (IsRegistered IN ('Y','N')) NOT NULL
;

-- 12/03/2008 14h5min39s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000008,1000017,18,1000002,'LBR_Boleto_ID',TO_TIMESTAMP('2008-03-12 14:05:31','YYYY-MM-DD HH24:MI:SS'),100,'Primary Key table LBR_Boleto','LBRA',22,'Primary Key table LBR_Boleto','Y','N','N','N','N','N','N','N','N','N','Y','Boleto',0,TO_TIMESTAMP('2008-03-12 14:05:31','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000900)
;

-- 12/03/2008 14h5min39s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000900 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 12/03/2008 14h5min41s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_CNAB ADD COLUMN LBR_Boleto_ID NUMERIC(10)
;

-- 12/03/2008 14h55min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000299,'ProcCancelBoleto',TO_TIMESTAMP('2008-03-12 14:55:39','YYYY-MM-DD HH24:MI:SS'),100,'Process to Cancel Boleto','LBRA','Process to Cancel Boleto','Y','Process Cancel Boleto','Process Cancel Boleto',TO_TIMESTAMP('2008-03-12 14:55:39','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 12/03/2008 14h55min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000299 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 12/03/2008 14h56min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process (AD_Org_ID,AD_Process_ID,AccessLevel,Classname,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value,AD_Client_ID) VALUES (0,1000011,'3','org.adempierelbr.process.ProcCancelBoleto',TO_TIMESTAMP('2008-03-12 14:56:43','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','N','N','N','ProcCancelBoleto','Y',0,0,TO_TIMESTAMP('2008-03-12 14:56:43','YYYY-MM-DD HH24:MI:SS'),100,'ProcCancelBoleto',0)
;

-- 12/03/2008 14h56min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1000011 AND EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Process_ID!=t.AD_Process_ID)
;

-- 12/03/2008 14h56min45s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000011,0,TO_TIMESTAMP('2008-03-12 14:56:44','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-03-12 14:56:44','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 12/03/2008 14h56min45s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000011,102,TO_TIMESTAMP('2008-03-12 14:56:45','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-03-12 14:56:45','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 12/03/2008 14h56min45s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000011,103,TO_TIMESTAMP('2008-03-12 14:56:45','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-03-12 14:56:45','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 12/03/2008 14h56min45s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Process_Access (AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000011,50001,TO_TIMESTAMP('2008-03-12 14:56:45','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2008-03-12 14:56:45','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 12/03/2008 14h57min4s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Process_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000299,1000011,28,318,'ProcCancelBoleto',TO_TIMESTAMP('2008-03-12 14:57:02','YYYY-MM-DD HH24:MI:SS'),100,'Process to Cancel Boleto','LBRA',1,'Process to Cancel Boleto','Y','Y','N','N','N','N','N','N','N','N','Y','Process Cancel Boleto',0,TO_TIMESTAMP('2008-03-12 14:57:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000901)
;

-- 12/03/2008 14h57min4s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000901 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 12/03/2008 14h57min6s BRT
-- Default comment for updating dictionary
ALTER TABLE C_Invoice ADD COLUMN ProcCancelBoleto CHAR(1)
;

-- 12/03/2008 14h57min31s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000901,0,263,TO_TIMESTAMP('2008-03-12 14:57:29','YYYY-MM-DD HH24:MI:SS'),100,'Process to Cancel Boleto',1,'LBRA','Process to Cancel Boleto','Y','Y','Y','N','N','N','N','N','Process Cancel Boleto',TO_TIMESTAMP('2008-03-12 14:57:29','YYYY-MM-DD HH24:MI:SS'),0,100,1000868)
;

-- 12/03/2008 14h57min31s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000868 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 12/03/2008 14h57min32s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000715,0,263,TO_TIMESTAMP('2008-03-12 14:57:31','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Withhold Invoice',22,'LBRA','Defines the Withhold Invoice','Y','Y','Y','N','N','N','N','N','Withhold Invoice',TO_TIMESTAMP('2008-03-12 14:57:31','YYYY-MM-DD HH24:MI:SS'),0,100,1000869)
;

-- 12/03/2008 14h57min32s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000869 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 12/03/2008 14h57min41s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000869
;

-- 12/03/2008 14h57min41s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=1000868
;

-- 12/03/2008 14h59min5s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@lbr_IsBillPrinted@=''Y''',Updated=TO_TIMESTAMP('2008-03-12 14:59:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000868
;

-- 12/03/2008 14h59min17s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000868
;

