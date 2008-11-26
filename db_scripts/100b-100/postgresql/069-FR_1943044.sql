-- 15/04/2008 11h5min36s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,404,20,115,'IsRange',TO_TIMESTAMP('2008-04-15 11:05:35','YYYY-MM-DD HH24:MI:SS'),100,'N','The parameter is a range of values','LBRA',1,'The Range checkbox indicates that this parameter is a range of values.','Y','N','N','N','N','Y','N','N','N','N','Y','Range',0,TO_TIMESTAMP('2008-04-15 11:05:35','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000918)
;

-- 15/04/2008 11h5min36s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000918 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 15/04/2008 11h5min37s BRT
-- Default comment for updating dictionary
ALTER TABLE AD_Sequence ADD COLUMN IsRange CHAR(1) DEFAULT 'N' CHECK (IsRange IN ('Y','N')) NOT NULL
;

-- 15/04/2008 11h6min34s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1060,12,115,'ValueMin',TO_TIMESTAMP('2008-04-15 11:06:33','YYYY-MM-DD HH24:MI:SS'),100,'Minimum Value for a field','LBRA',22,'The Minimum Value indicates the lowest  allowable value for a field.','Y','N','N','N','N','N','N','N','N','N','Y','Min. Value',0,TO_TIMESTAMP('2008-04-15 11:06:33','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000919)
;

-- 15/04/2008 11h6min34s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000919 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 15/04/2008 11h6min35s BRT
-- Default comment for updating dictionary
ALTER TABLE AD_Sequence ADD COLUMN ValueMin NUMERIC
;

-- 15/04/2008 11h6min37s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2008-04-15 11:06:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000919
;

-- 15/04/2008 11h6min37s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Min. Value', Description='Minimum Value for a field', Help='The Minimum Value indicates the lowest  allowable value for a field.' WHERE AD_Column_ID=1000919 AND IsCentrallyMaintained='Y'
;

-- 15/04/2008 11h6min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1059,12,115,'ValueMax',TO_TIMESTAMP('2008-04-15 11:06:53','YYYY-MM-DD HH24:MI:SS'),100,'Maximum Value for a field','LBRA',22,'The Maximum Value indicates the highest allowable value for a field','Y','N','N','N','N','N','N','N','N','N','Y','Max. Value',0,TO_TIMESTAMP('2008-04-15 11:06:53','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000920)
;

-- 15/04/2008 11h6min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000920 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 15/04/2008 11h6min54s BRT
-- Default comment for updating dictionary
ALTER TABLE AD_Sequence ADD COLUMN ValueMax NUMERIC
;

-- 15/04/2008 11h6min57s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2008-04-15 11:06:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000920
;

-- 15/04/2008 11h6min57s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Max. Value', Description='Maximum Value for a field', Help='The Maximum Value indicates the highest allowable value for a field' WHERE AD_Column_ID=1000920 AND IsCentrallyMaintained='Y'
;

-- 15/04/2008 11h9min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000920,0,146,TO_TIMESTAMP('2008-04-15 11:09:05','YYYY-MM-DD HH24:MI:SS'),100,'Maximum Value for a field',22,'LBRA','The Maximum Value indicates the highest allowable value for a field','Y','Y','Y','N','N','N','N','N','Max. Value',TO_TIMESTAMP('2008-04-15 11:09:05','YYYY-MM-DD HH24:MI:SS'),0,100,1000885)
;

-- 15/04/2008 11h9min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000885 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 15/04/2008 11h9min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000919,0,146,TO_TIMESTAMP('2008-04-15 11:09:05','YYYY-MM-DD HH24:MI:SS'),100,'Minimum Value for a field',22,'LBRA','The Minimum Value indicates the lowest  allowable value for a field.','Y','Y','Y','N','N','N','N','N','Min. Value',TO_TIMESTAMP('2008-04-15 11:09:05','YYYY-MM-DD HH24:MI:SS'),0,100,1000886)
;

-- 15/04/2008 11h9min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000886 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 15/04/2008 11h9min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000918,0,146,TO_TIMESTAMP('2008-04-15 11:09:05','YYYY-MM-DD HH24:MI:SS'),100,'The parameter is a range of values',1,'LBRA','The Range checkbox indicates that this parameter is a range of values.','Y','Y','Y','N','N','N','N','N','Range',TO_TIMESTAMP('2008-04-15 11:09:05','YYYY-MM-DD HH24:MI:SS'),0,100,1000887)
;

-- 15/04/2008 11h9min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000887 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 15/04/2008 11h9min15s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=54391
;

-- 15/04/2008 11h9min15s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=335
;

-- 15/04/2008 11h9min15s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1555
;

-- 15/04/2008 11h9min15s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=54357
;

-- 15/04/2008 11h9min15s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=332
;

-- 15/04/2008 11h9min15s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=333
;

-- 15/04/2008 11h9min16s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=334
;

-- 15/04/2008 11h9min16s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1000887
;

-- 15/04/2008 11h9min16s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1000886
;

-- 15/04/2008 11h9min16s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1000885
;

-- 15/04/2008 11h9min24s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000000,Updated=TO_TIMESTAMP('2008-04-15 11:09:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000887
;

-- 15/04/2008 11h9min37s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@IsRange@=''Y''', AD_FieldGroup_ID=1000000,Updated=TO_TIMESTAMP('2008-04-15 11:09:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000886
;

-- 15/04/2008 11h9min47s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@IsRange@=''Y''', IsSameLine='Y', AD_FieldGroup_ID=1000000,Updated=TO_TIMESTAMP('2008-04-15 11:09:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000885
;

-- 15/04/2008 11h20min18s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Reference_ID=11,Updated=TO_TIMESTAMP('2008-04-15 11:20:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000920
;

-- 15/04/2008 11h20min18s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Max. Value', Description='Maximum Value for a field', Help='The Maximum Value indicates the highest allowable value for a field' WHERE AD_Column_ID=1000920 AND IsCentrallyMaintained='Y'
;

-- 15/04/2008 11h20min19s BRT
-- Default comment for updating dictionary
insert into t_alter_column values('ad_sequence','ValueMax','NUMERIC(10)',null,'NULL')
;

-- 15/04/2008 11h20min29s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET IsMandatory='N',Updated=TO_TIMESTAMP('2008-04-15 11:20:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000920
;

-- 15/04/2008 11h20min29s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Max. Value', Description='Maximum Value for a field', Help='The Maximum Value indicates the highest allowable value for a field' WHERE AD_Column_ID=1000920 AND IsCentrallyMaintained='Y'
;

-- 15/04/2008 11h20min30s BRT
-- Default comment for updating dictionary
insert into t_alter_column values('ad_sequence','ValueMax','NUMERIC(10)',null,'NULL')
;

-- 15/04/2008 11h20min34s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2008-04-15 11:20:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000920
;

-- 15/04/2008 11h20min34s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Max. Value', Description='Maximum Value for a field', Help='The Maximum Value indicates the highest allowable value for a field' WHERE AD_Column_ID=1000920 AND IsCentrallyMaintained='Y'
;

-- 15/04/2008 11h20min52s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Reference_ID=11, IsMandatory='N',Updated=TO_TIMESTAMP('2008-04-15 11:20:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000919
;

-- 15/04/2008 11h20min52s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Min. Value', Description='Minimum Value for a field', Help='The Minimum Value indicates the lowest  allowable value for a field.' WHERE AD_Column_ID=1000919 AND IsCentrallyMaintained='Y'
;

-- 15/04/2008 11h20min56s BRT
-- Default comment for updating dictionary
insert into t_alter_column values('ad_sequence','ValueMin','NUMERIC(10)',null,'NULL')
;

-- 15/04/2008 11h20min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2008-04-15 11:20:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000919
;

-- 15/04/2008 11h20min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Min. Value', Description='Minimum Value for a field', Help='The Minimum Value indicates the lowest  allowable value for a field.' WHERE AD_Column_ID=1000919 AND IsCentrallyMaintained='Y'
;

