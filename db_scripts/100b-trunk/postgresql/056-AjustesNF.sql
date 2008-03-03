-- 03/03/2008 15h43min55s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000286,'lbr_BPShipperLicensePlate',TO_TIMESTAMP('2008-03-03 15:43:50','YYYY-MM-DD HH24:MI:SS'),100,'Defines the BP Shipper License Plate','LBRA','Defines the BP Shipper License Plate','Y','BP Shipper License Plate','BP Shipper License Plate',TO_TIMESTAMP('2008-03-03 15:43:50','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 03/03/2008 15h43min55s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000286 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 03/03/2008 15h46min52s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,VFormat,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000286,10,1000027,'lbr_BPShipperLicensePlate',TO_TIMESTAMP('2008-03-03 15:46:49','YYYY-MM-DD HH24:MI:SS'),100,'Defines the BP Shipper License Plate','LBRA',8,'Defines the BP Shipper License Plate','Y','N','N','N','N','N','N','N','N','N','Y','BP Shipper License Plate',0,TO_TIMESTAMP('2008-03-03 15:46:49','YYYY-MM-DD HH24:MI:SS'),100,'LLL-0000',0,0,1000730)
;

-- 03/03/2008 15h46min52s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000730 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 03/03/2008 15h46min55s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_NotaFiscal ADD COLUMN lbr_BPShipperLicensePlate VARCHAR(8)
;

-- 03/03/2008 15h49min6s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000287,'lbr_PackingType',TO_TIMESTAMP('2008-03-03 15:49:05','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Packing Type','LBRA','Defines the Packing Type','Y','Packing Type','Packing Type',TO_TIMESTAMP('2008-03-03 15:49:05','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 03/03/2008 15h49min6s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000287 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 03/03/2008 15h50min20s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000287,10,1000027,'lbr_PackingType',TO_TIMESTAMP('2008-03-03 15:50:19','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Packing Type','LBRA',60,'Defines the Packing Type','Y','N','N','N','N','N','N','N','N','N','Y','Packing Type',0,TO_TIMESTAMP('2008-03-03 15:50:19','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000731)
;

-- 03/03/2008 15h50min21s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000731 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 03/03/2008 15h50min22s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_NotaFiscal ADD COLUMN lbr_PackingType VARCHAR(60)
;

-- 03/03/2008 15h51min6s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000730,0,1000028,TO_TIMESTAMP('2008-03-03 15:51:04','YYYY-MM-DD HH24:MI:SS'),100,'Defines the BP Shipper License Plate',8,'LBRA','Defines the BP Shipper License Plate','Y','Y','Y','N','N','N','N','N','BP Shipper License Plate',TO_TIMESTAMP('2008-03-03 15:51:04','YYYY-MM-DD HH24:MI:SS'),0,100,1000657)
;

-- 03/03/2008 15h51min6s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000657 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 03/03/2008 15h51min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000731,0,1000028,TO_TIMESTAMP('2008-03-03 15:51:06','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Packing Type',60,'LBRA','Defines the Packing Type','Y','Y','Y','N','N','N','N','N','Packing Type',TO_TIMESTAMP('2008-03-03 15:51:06','YYYY-MM-DD HH24:MI:SS'),0,100,1000658)
;

-- 03/03/2008 15h51min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000658 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1000636
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1000520
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1000521
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1000522
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1000523
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1000524
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1000525
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1000526
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1000527
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1000528
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1000529
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1000530
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1000531
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1000532
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1000533
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1000534
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1000535
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1000536
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1000537
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1000538
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=1000539
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=1000540
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=1000541
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=1000542
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=1000543
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=1000544
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=1000545
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=1000546
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=1000547
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=1000548
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=1000549
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=1000550
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=1000551
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=1000552
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=540,IsDisplayed='Y' WHERE AD_Field_ID=1000553
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=550,IsDisplayed='Y' WHERE AD_Field_ID=1000554
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=560,IsDisplayed='Y' WHERE AD_Field_ID=1000555
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=570,IsDisplayed='Y' WHERE AD_Field_ID=1000556
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=580,IsDisplayed='Y' WHERE AD_Field_ID=1000620
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=590,IsDisplayed='Y' WHERE AD_Field_ID=1000557
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=600,IsDisplayed='Y' WHERE AD_Field_ID=1000624
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=610,IsDisplayed='Y' WHERE AD_Field_ID=1000558
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=620,IsDisplayed='Y' WHERE AD_Field_ID=1000559
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=630,IsDisplayed='Y' WHERE AD_Field_ID=1000560
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=640,IsDisplayed='Y' WHERE AD_Field_ID=1000561
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=650,IsDisplayed='Y' WHERE AD_Field_ID=1000562
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=660,IsDisplayed='Y' WHERE AD_Field_ID=1000563
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=670,IsDisplayed='Y' WHERE AD_Field_ID=1000564
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=680,IsDisplayed='Y' WHERE AD_Field_ID=1000565
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=690,IsDisplayed='Y' WHERE AD_Field_ID=1000566
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=700,IsDisplayed='Y' WHERE AD_Field_ID=1000567
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=710,IsDisplayed='Y' WHERE AD_Field_ID=1000568
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=720,IsDisplayed='Y' WHERE AD_Field_ID=1000657
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=730,IsDisplayed='Y' WHERE AD_Field_ID=1000658
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=740,IsDisplayed='Y' WHERE AD_Field_ID=1000569
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=750,IsDisplayed='Y' WHERE AD_Field_ID=1000570
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=760,IsDisplayed='Y' WHERE AD_Field_ID=1000571
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=770,IsDisplayed='Y' WHERE AD_Field_ID=1000572
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=780,IsDisplayed='Y' WHERE AD_Field_ID=1000573
;

-- 03/03/2008 15h51min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=790,IsDisplayed='Y' WHERE AD_Field_ID=1000574
;

-- 03/03/2008 15h52min21s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2008-03-03 15:52:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000658
;

-- 03/03/2008 15h52min41s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000730,0,1000020,TO_TIMESTAMP('2008-03-03 15:52:40','YYYY-MM-DD HH24:MI:SS'),100,'Defines the BP Shipper License Plate',8,'LBRA','Defines the BP Shipper License Plate','Y','Y','Y','N','N','N','N','N','BP Shipper License Plate',TO_TIMESTAMP('2008-03-03 15:52:40','YYYY-MM-DD HH24:MI:SS'),0,100,1000659)
;

-- 03/03/2008 15h52min41s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000659 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 03/03/2008 15h52min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000731,0,1000020,TO_TIMESTAMP('2008-03-03 15:52:41','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Packing Type',60,'LBRA','Defines the Packing Type','Y','Y','Y','N','N','N','N','N','Packing Type',TO_TIMESTAMP('2008-03-03 15:52:41','YYYY-MM-DD HH24:MI:SS'),0,100,1000660)
;

-- 03/03/2008 15h52min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000660 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 03/03/2008 15h52min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1000637
;

-- 03/03/2008 15h52min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1000369
;

-- 03/03/2008 15h52min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1000343
;

-- 03/03/2008 15h52min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1000351
;

-- 03/03/2008 15h52min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1000329
;

-- 03/03/2008 15h52min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1000306
;

-- 03/03/2008 15h52min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1000319
;

-- 03/03/2008 15h52min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1000307
;

-- 03/03/2008 15h52min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1000332
;

-- 03/03/2008 15h52min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1000331
;

-- 03/03/2008 15h52min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1000330
;

-- 03/03/2008 15h52min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1000308
;

-- 03/03/2008 15h52min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1000302
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1000303
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1000304
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1000305
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1000313
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1000316
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1000314
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1000318
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=1000317
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=1000315
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=1000309
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=1000310
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=1000311
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=1000312
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=1000349
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=1000324
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=1000327
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=1000325
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=1000328
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=1000368
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=1000326
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=1000320
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=540,IsDisplayed='Y' WHERE AD_Field_ID=1000321
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=550,IsDisplayed='Y' WHERE AD_Field_ID=1000322
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=560,IsDisplayed='Y' WHERE AD_Field_ID=1000323
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=570,IsDisplayed='Y' WHERE AD_Field_ID=1000384
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=580,IsDisplayed='Y' WHERE AD_Field_ID=1000496
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=590,IsDisplayed='Y' WHERE AD_Field_ID=1000375
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=600,IsDisplayed='Y' WHERE AD_Field_ID=1000625
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=610,IsDisplayed='Y' WHERE AD_Field_ID=1000356
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=620,IsDisplayed='Y' WHERE AD_Field_ID=1000337
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=630,IsDisplayed='Y' WHERE AD_Field_ID=1000340
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=640,IsDisplayed='Y' WHERE AD_Field_ID=1000338
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=650,IsDisplayed='Y' WHERE AD_Field_ID=1000342
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=660,IsDisplayed='Y' WHERE AD_Field_ID=1000341
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=670,IsDisplayed='Y' WHERE AD_Field_ID=1000339
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=680,IsDisplayed='Y' WHERE AD_Field_ID=1000333
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=690,IsDisplayed='Y' WHERE AD_Field_ID=1000334
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=700,IsDisplayed='Y' WHERE AD_Field_ID=1000335
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=710,IsDisplayed='Y' WHERE AD_Field_ID=1000336
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=720,IsDisplayed='Y' WHERE AD_Field_ID=1000659
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=730,IsDisplayed='Y' WHERE AD_Field_ID=1000660
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=740,IsDisplayed='Y' WHERE AD_Field_ID=1000381
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=750,IsDisplayed='Y' WHERE AD_Field_ID=1000374
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=760,IsDisplayed='Y' WHERE AD_Field_ID=1000373
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=770,IsDisplayed='Y' WHERE AD_Field_ID=1000378
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=780,IsDisplayed='Y' WHERE AD_Field_ID=1000376
;

-- 03/03/2008 15h53min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=790,IsDisplayed='Y' WHERE AD_Field_ID=1000380
;

-- 03/03/2008 15h53min13s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2008-03-03 15:53:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000660
;

-- 03/03/2008 15h53min19s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=130,Updated=TO_TIMESTAMP('2008-03-03 15:53:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000659
;

-- 03/03/2008 15h53min23s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=130,Updated=TO_TIMESTAMP('2008-03-03 15:53:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000660
;

-- 03/03/2008 15h53min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=130,Updated=TO_TIMESTAMP('2008-03-03 15:53:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000657
;

-- 03/03/2008 15h53min47s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=130,Updated=TO_TIMESTAMP('2008-03-03 15:53:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000658
;

