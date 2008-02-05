-- 05/02/2008 9h1min19s BRST
-- Default comment for updating dictionary
UPDATE AD_Tab SET Description=NULL,Updated=TO_TIMESTAMP('2008-02-05 09:01:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000008
;

-- 05/02/2008 9h1min19s BRST
-- Default comment for updating dictionary
UPDATE AD_Tab_Trl SET IsTranslated='N' WHERE AD_Tab_ID=1000008
;

-- 05/02/2008 9h1min23s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1000447
;

-- 05/02/2008 9h1min24s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1000445
;

-- 05/02/2008 9h1min35s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLength=60,Updated=TO_TIMESTAMP('2008-02-05 09:01:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000445
;

-- 05/02/2008 9h3min12s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Reference_ID=34, FieldLength=255,Updated=TO_TIMESTAMP('2008-02-05 09:03:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000648
;

-- 05/02/2008 9h3min12s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Legal Message', Description=NULL, Help=NULL WHERE AD_Column_ID=1000648 AND IsCentrallyMaintained='Y'
;

-- 05/02/2008 9h3min14s BRST
-- Default comment for updating dictionary
insert into t_alter_column values('lbr_cfopline','lbr_LegalMessage','VARCHAR(255)',null,'NULL')
;

-- 05/02/2008 9h5min8s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Reference_ID=34, FieldLength=255,Updated=TO_TIMESTAMP('2008-02-05 09:05:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000645
;

-- 05/02/2008 9h5min8s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Legal Message', Description=NULL, Help=NULL WHERE AD_Column_ID=1000645 AND IsCentrallyMaintained='Y'
;

-- 05/02/2008 9h5min9s BRST
-- Default comment for updating dictionary
insert into t_alter_column values('lbr_ncm','lbr_LegalMessage','VARCHAR(255)',null,'NULL')
;

-- 05/02/2008 9h6min47s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Reference_Value_ID=1000032,Updated=TO_TIMESTAMP('2008-02-05 09:06:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000635
;

-- 05/02/2008 9h6min47s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Tax Status - Taxing', Description=NULL, Help=NULL WHERE AD_Column_ID=1000635 AND IsCentrallyMaintained='Y'
;

-- 05/02/2008 9h6min52s BRST
-- Default comment for updating dictionary
insert into t_alter_column values('lbr_taxconfig_bpartner','lbr_TaxStatus_Taxing','CHAR(2)',null,'NULL')
;

-- 05/02/2008 9h7min26s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Reference_ID=34, FieldLength=255,Updated=TO_TIMESTAMP('2008-02-05 09:07:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000632
;

-- 05/02/2008 9h7min26s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Legal Message', Description=NULL, Help=NULL WHERE AD_Column_ID=1000632 AND IsCentrallyMaintained='Y'
;

-- 05/02/2008 9h7min27s BRST
-- Default comment for updating dictionary
insert into t_alter_column values('lbr_taxconfig_bpartner','lbr_LegalMessage','VARCHAR(255)',null,'NULL')
;

-- 05/02/2008 9h7min48s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Reference_ID=34, FieldLength=255,Updated=TO_TIMESTAMP('2008-02-05 09:07:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000636
;

-- 05/02/2008 9h7min48s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Legal Message', Description=NULL, Help=NULL WHERE AD_Column_ID=1000636 AND IsCentrallyMaintained='Y'
;

-- 05/02/2008 9h7min50s BRST
-- Default comment for updating dictionary
insert into t_alter_column values('lbr_taxconfig_bpgroup','lbr_LegalMessage','VARCHAR(255)',null,'NULL')
;

-- 05/02/2008 9h8min19s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Reference_ID=34, FieldLength=255,Updated=TO_TIMESTAMP('2008-02-05 09:08:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000639
;

-- 05/02/2008 9h8min19s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Legal Message', Description=NULL, Help=NULL WHERE AD_Column_ID=1000639 AND IsCentrallyMaintained='Y'
;

-- 05/02/2008 9h8min20s BRST
-- Default comment for updating dictionary
insert into t_alter_column values('lbr_taxconfig_product','lbr_LegalMessage','VARCHAR(255)',null,'NULL')
;

-- 05/02/2008 9h10min4s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Reference_ID=34, FieldLength=255,Updated=TO_TIMESTAMP('2008-02-05 09:10:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000642
;

-- 05/02/2008 9h10min4s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Legal Message', Description=NULL, Help=NULL WHERE AD_Column_ID=1000642 AND IsCentrallyMaintained='Y'
;

-- 05/02/2008 9h10min5s BRST
-- Default comment for updating dictionary
insert into t_alter_column values('lbr_taxconfig_productgroup','lbr_LegalMessage','VARCHAR(255)',null,'NULL')
;

-- 05/02/2008 9h12min1s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Element_Trl WHERE AD_Element_ID=1000254
;

-- 05/02/2008 9h12min1s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Attachment WHERE AD_Table_ID=? AND Record_ID=?
;

-- 05/02/2008 9h12min1s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Archive WHERE AD_Table_ID=? AND Record_ID=?
;

-- 05/02/2008 9h12min1s BRST
-- Default comment for updating dictionary
DELETE FROM K_Index WHERE AD_Table_ID=? AND Record_ID=?
;

-- 05/02/2008 9h12min1s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Note WHERE AD_Table_ID=? AND Record_ID=?
;

-- 05/02/2008 9h12min1s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Element WHERE AD_Element_ID=1000254
;

-- 05/02/2008 9h12min41s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000051
;

-- 05/02/2008 9h12min41s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Attachment WHERE AD_Table_ID=? AND Record_ID=?
;

-- 05/02/2008 9h12min41s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Archive WHERE AD_Table_ID=? AND Record_ID=?
;

-- 05/02/2008 9h12min41s BRST
-- Default comment for updating dictionary
DELETE FROM K_Index WHERE AD_Table_ID=? AND Record_ID=?
;

-- 05/02/2008 9h12min41s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Note WHERE AD_Table_ID=? AND Record_ID=?
;

-- 05/02/2008 9h12min41s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000051
;

-- 05/02/2008 9h12min42s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000052
;

-- 05/02/2008 9h12min42s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Attachment WHERE AD_Table_ID=? AND Record_ID=?
;

-- 05/02/2008 9h12min42s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Archive WHERE AD_Table_ID=? AND Record_ID=?
;

-- 05/02/2008 9h12min42s BRST
-- Default comment for updating dictionary
DELETE FROM K_Index WHERE AD_Table_ID=? AND Record_ID=?
;

-- 05/02/2008 9h12min42s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Note WHERE AD_Table_ID=? AND Record_ID=?
;

-- 05/02/2008 9h12min42s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000052
;

-- 05/02/2008 9h12min43s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000053
;

-- 05/02/2008 9h12min43s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Attachment WHERE AD_Table_ID=? AND Record_ID=?
;

-- 05/02/2008 9h12min43s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Archive WHERE AD_Table_ID=? AND Record_ID=?
;

-- 05/02/2008 9h12min43s BRST
-- Default comment for updating dictionary
DELETE FROM K_Index WHERE AD_Table_ID=? AND Record_ID=?
;

-- 05/02/2008 9h12min43s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Note WHERE AD_Table_ID=? AND Record_ID=?
;

-- 05/02/2008 9h12min43s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000053
;

-- 05/02/2008 9h12min46s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Reference_Trl WHERE AD_Reference_ID=1000031
;

-- 05/02/2008 9h12min46s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Attachment WHERE AD_Table_ID=? AND Record_ID=?
;

-- 05/02/2008 9h12min47s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Archive WHERE AD_Table_ID=? AND Record_ID=?
;

-- 05/02/2008 9h12min47s BRST
-- Default comment for updating dictionary
DELETE FROM K_Index WHERE AD_Table_ID=? AND Record_ID=?
;

-- 05/02/2008 9h12min47s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Note WHERE AD_Table_ID=? AND Record_ID=?
;

-- 05/02/2008 9h12min47s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Reference WHERE AD_Reference_ID=1000031
;

-- 05/02/2008 9h12min59s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Reference_Value_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,1000032,1000255,17,1000023,'lbr_TaxStatus_Taxing',TO_TIMESTAMP('2008-02-05 09:12:59','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',2,'Y','N','N','N','N','N','N','N','N','N','Y','Tax Status - Taxing',0,TO_TIMESTAMP('2008-02-05 09:12:59','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000651)
;

-- 05/02/2008 9h12min59s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000651 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 05/02/2008 9h13min1s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_TaxConfig_Region ADD COLUMN lbr_TaxStatus_Taxing CHAR(2)
;

-- 05/02/2008 9h13min31s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version,AD_Client_ID,AD_Column_ID) VALUES (0,1000252,34,1000023,'lbr_LegalMessage',TO_TIMESTAMP('2008-02-05 09:13:31','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',255,'Y','N','N','N','N','N','N','N','N','N','Y','Legal Message',0,TO_TIMESTAMP('2008-02-05 09:13:31','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000652)
;

-- 05/02/2008 9h13min31s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000652 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 05/02/2008 9h13min32s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_TaxConfig_Region ADD COLUMN lbr_LegalMessage VARCHAR(255)
;

-- 05/02/2008 9h16min41s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000450
;

-- 05/02/2008 9h16min41s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1000448
;

-- 05/02/2008 9h16min50s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLength=60,Updated=TO_TIMESTAMP('2008-02-05 09:16:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000448
;

-- 05/02/2008 9h16min54s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLength=255,Updated=TO_TIMESTAMP('2008-02-05 09:16:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000448
;

-- 05/02/2008 9h17min11s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLength=255,Updated=TO_TIMESTAMP('2008-02-05 09:17:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000445
;

-- 05/02/2008 9h17min29s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000435
;

-- 05/02/2008 9h17min30s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000433
;

-- 05/02/2008 9h17min59s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLength=255,Updated=TO_TIMESTAMP('2008-02-05 09:17:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000433
;

-- 05/02/2008 9h18min22s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=107,Updated=TO_TIMESTAMP('2008-02-05 09:18:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000435
;

-- 05/02/2008 9h18min27s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=107,Updated=TO_TIMESTAMP('2008-02-05 09:18:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000433
;

-- 05/02/2008 9h18min44s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000438
;

-- 05/02/2008 9h18min44s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000436
;

-- 05/02/2008 9h18min50s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLength=255,Updated=TO_TIMESTAMP('2008-02-05 09:18:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000436
;

-- 05/02/2008 9h19min0s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=107,Updated=TO_TIMESTAMP('2008-02-05 09:19:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000438
;

-- 05/02/2008 9h19min11s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=107,Updated=TO_TIMESTAMP('2008-02-05 09:19:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000436
;

-- 05/02/2008 9h19min26s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000652,0,1000451,1000017,TO_TIMESTAMP('2008-02-05 09:19:26','YYYY-MM-DD HH24:MI:SS'),100,255,'LBRA','Y','Y','Y','N','N','N','N','N','Legal Message',TO_TIMESTAMP('2008-02-05 09:19:26','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 05/02/2008 9h19min26s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000451 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 05/02/2008 9h19min26s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Field_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy) VALUES (1000651,0,1000452,1000017,TO_TIMESTAMP('2008-02-05 09:19:26','YYYY-MM-DD HH24:MI:SS'),100,2,'LBRA','Y','Y','Y','N','N','N','N','N','Tax Status - Taxing',TO_TIMESTAMP('2008-02-05 09:19:26','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 05/02/2008 9h19min26s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000452 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 05/02/2008 9h19min32s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000452
;

-- 05/02/2008 9h19min32s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1000451
;

-- 05/02/2008 9h19min40s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2008-02-05 09:19:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000452
;

-- 05/02/2008 9h19min45s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=104,Updated=TO_TIMESTAMP('2008-02-05 09:19:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000452
;

-- 05/02/2008 9h19min49s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=104,Updated=TO_TIMESTAMP('2008-02-05 09:19:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000451
;

-- 05/02/2008 9h19min55s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000441
;

-- 05/02/2008 9h19min55s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000439
;

-- 05/02/2008 9h20min3s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=106,Updated=TO_TIMESTAMP('2008-02-05 09:20:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000441
;

-- 05/02/2008 9h20min8s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLength=255, AD_FieldGroup_ID=106,Updated=TO_TIMESTAMP('2008-02-05 09:20:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000439
;

-- 05/02/2008 9h20min39s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000444
;

-- 05/02/2008 9h20min39s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000442
;

-- 05/02/2008 9h20min54s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=106,Updated=TO_TIMESTAMP('2008-02-05 09:20:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000444
;

-- 05/02/2008 9h21min21s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLength=255, AD_FieldGroup_ID=106,Updated=TO_TIMESTAMP('2008-02-05 09:21:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000442
;

-- 05/02/2008 9h23min4s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2008-02-05 09:23:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000197
;

-- 05/02/2008 9h23min19s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2008-02-05 09:23:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000204
;

-- 05/02/2008 9h23min33s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2008-02-05 09:23:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000211
;

-- 05/02/2008 9h23min45s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2008-02-05 09:23:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000218
;

-- 05/02/2008 10h9min27s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=550,IsDisplayed='Y' WHERE AD_Field_ID=1000432
;

-- 05/02/2008 10h9min27s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=560,IsDisplayed='Y' WHERE AD_Field_ID=1000112
;

-- 05/02/2008 10h9min27s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=570,IsDisplayed='Y' WHERE AD_Field_ID=1000429
;

-- 05/02/2008 10h9min27s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=580,IsDisplayed='Y' WHERE AD_Field_ID=1000428
;