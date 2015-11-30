-- 26/02/2008 11h53min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000273,'lbr_IsService',TO_TIMESTAMP('2008-02-26 11:53:09','YYYY-MM-DD HH24:MI:SS'),100,'Defines if the lines is a Service','LBRA','Defines if the lines is a Service','Y','Is Service','Is Service',TO_TIMESTAMP('2008-02-26 11:53:09','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 26/02/2008 11h53min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000273 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 26/02/2008 11h54min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000273,20,1000028,'lbr_IsService',TO_TIMESTAMP('2008-02-26 11:54:42','YYYY-MM-DD HH24:MI:SS'),100,'''N''','Defines if the lines is a Service','LBRA',1,'Defines if the lines is a Service','Y','N','N','N','N','Y','N','N','N','N','Y','Is Service',0,TO_TIMESTAMP('2008-02-26 11:54:42','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000703)
;

-- 26/02/2008 11h54min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000703 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 26/02/2008 11h54min45s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_NotaFiscalLine ADD COLUMN lbr_IsService CHAR(1) DEFAULT 'N' CHECK (lbr_IsService IN ('Y','N')) NOT NULL
;

-- 26/02/2008 12h2min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000274,'lbr_ServiceTotalAmt',TO_TIMESTAMP('2008-02-26 12:02:41','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Service Total Amount','LBRA','Defines the Service Total Amount','Y','Service Total Amount','Service Total Amount',TO_TIMESTAMP('2008-02-26 12:02:41','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 26/02/2008 12h2min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000274 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 26/02/2008 12h4min22s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000274,12,1000027,'lbr_ServiceTotalAmt',TO_TIMESTAMP('2008-02-26 12:04:21','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Service Total Amount','LBRA',22,'Defines the Service Total Amount','Y','N','N','N','N','N','N','N','N','N','Y','Service Total Amount',0,TO_TIMESTAMP('2008-02-26 12:04:21','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000704)
;

-- 26/02/2008 12h4min22s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000704 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 26/02/2008 12h4min24s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_NotaFiscal ADD COLUMN lbr_ServiceTotalAmt NUMERIC
;

-- 26/02/2008 12h4min56s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000704,0,1000020,TO_TIMESTAMP('2008-02-26 12:04:54','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Service Total Amount',22,'LBRA','Defines the Service Total Amount','Y','Y','Y','N','N','N','N','N','Service Total Amount',TO_TIMESTAMP('2008-02-26 12:04:54','YYYY-MM-DD HH24:MI:SS'),0,100,1000496)
;

-- 26/02/2008 12h4min56s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000496 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000383
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000357
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1000353
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1000346
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1000354
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1000345
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1000350
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1000355
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1000348
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1000352
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1000382
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1000618
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1000371
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1000372
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1000379
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1000369
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1000343
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1000351
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1000329
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1000306
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1000319
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1000307
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1000332
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1000331
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1000330
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1000308
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1000302
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1000303
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1000304
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1000305
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1000313
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1000316
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1000314
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1000318
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1000317
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=1000315
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=1000309
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=1000310
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=1000311
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=1000312
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=1000349
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=1000324
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=1000327
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=1000325
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=1000328
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=1000368
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=1000326
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=1000320
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=1000321
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=540,IsDisplayed='Y' WHERE AD_Field_ID=1000322
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=550,IsDisplayed='Y' WHERE AD_Field_ID=1000323
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=560,IsDisplayed='Y' WHERE AD_Field_ID=1000384
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=570,IsDisplayed='Y' WHERE AD_Field_ID=1000496
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=580,IsDisplayed='Y' WHERE AD_Field_ID=1000375
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=590,IsDisplayed='Y' WHERE AD_Field_ID=1000356
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=600,IsDisplayed='Y' WHERE AD_Field_ID=1000337
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=610,IsDisplayed='Y' WHERE AD_Field_ID=1000340
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=620,IsDisplayed='Y' WHERE AD_Field_ID=1000338
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=630,IsDisplayed='Y' WHERE AD_Field_ID=1000342
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=640,IsDisplayed='Y' WHERE AD_Field_ID=1000341
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=650,IsDisplayed='Y' WHERE AD_Field_ID=1000339
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=660,IsDisplayed='Y' WHERE AD_Field_ID=1000333
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=670,IsDisplayed='Y' WHERE AD_Field_ID=1000334
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=680,IsDisplayed='Y' WHERE AD_Field_ID=1000335
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=690,IsDisplayed='Y' WHERE AD_Field_ID=1000336
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=700,IsDisplayed='Y' WHERE AD_Field_ID=1000381
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=710,IsDisplayed='Y' WHERE AD_Field_ID=1000374
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=720,IsDisplayed='Y' WHERE AD_Field_ID=1000373
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=730,IsDisplayed='Y' WHERE AD_Field_ID=1000378
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=740,IsDisplayed='Y' WHERE AD_Field_ID=1000376
;

-- 26/02/2008 12h5min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=750,IsDisplayed='Y' WHERE AD_Field_ID=1000380
;

-- 26/02/2008 12h12min51s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000703,0,1000021,TO_TIMESTAMP('2008-02-26 12:12:50','YYYY-MM-DD HH24:MI:SS'),100,'Defines if the lines is a Service',0,'LBRA','Defines if the lines is a Service','Y','Y','Y','N','N','N','N','N','Is Service',230,0,TO_TIMESTAMP('2008-02-26 12:12:50','YYYY-MM-DD HH24:MI:SS'),0,100,1000619)
;

-- 26/02/2008 12h12min51s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000619 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 26/02/2008 12h13min5s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLength=1,Updated=TO_TIMESTAMP('2008-02-26 12:13:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000619
;

-- 26/02/2008 12h15min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1000619
;

-- 26/02/2008 12h15min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000361
;

-- 26/02/2008 12h15min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000388
;

-- 26/02/2008 12h15min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1000359
;

-- 26/02/2008 12h15min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1000385
;

-- 26/02/2008 12h15min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1000386
;

-- 26/02/2008 12h15min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1000366
;

-- 26/02/2008 12h15min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1000395
;

-- 26/02/2008 12h15min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1000394
;

-- 26/02/2008 12h15min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1000392
;

-- 26/02/2008 12h15min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1000367
;

-- 26/02/2008 12h15min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1000397
;

-- 26/02/2008 12h15min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1000362
;

-- 26/02/2008 12h15min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1000391
;

-- 26/02/2008 12h15min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1000615
;

-- 26/02/2008 12h15min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1000616
;

-- 26/02/2008 12h15min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1000396
;

-- 26/02/2008 12h15min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1000393
;

-- 26/02/2008 12h15min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1000387
;

-- 26/02/2008 12h15min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1000389
;

-- 26/02/2008 12h15min11s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2008-02-26 12:15:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000619
;

-- 26/02/2008 12h15min24s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000704,0,1000028,TO_TIMESTAMP('2008-02-26 12:15:22','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Service Total Amount',22,'LBRA','Defines the Service Total Amount','Y','Y','Y','N','N','N','N','N','Service Total Amount',TO_TIMESTAMP('2008-02-26 12:15:22','YYYY-MM-DD HH24:MI:SS'),0,100,1000620)
;

-- 26/02/2008 12h15min24s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000620 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000516
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000506
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1000507
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1000508
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1000509
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1000510
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1000511
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1000512
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1000513
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1000514
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1000498
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1000617
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1000517
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1000518
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1000519
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1000520
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1000521
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1000522
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1000523
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1000524
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1000525
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1000526
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1000527
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1000528
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1000529
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1000530
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1000531
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1000532
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1000533
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1000534
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1000535
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1000536
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1000537
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1000538
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1000539
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=1000540
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=1000541
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=1000542
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=1000543
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=1000544
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=1000545
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=1000546
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=1000547
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=1000548
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=1000549
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=1000550
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=1000551
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=1000552
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=1000553
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=540,IsDisplayed='Y' WHERE AD_Field_ID=1000554
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=550,IsDisplayed='Y' WHERE AD_Field_ID=1000555
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=560,IsDisplayed='Y' WHERE AD_Field_ID=1000556
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=570,IsDisplayed='Y' WHERE AD_Field_ID=1000620
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=580,IsDisplayed='Y' WHERE AD_Field_ID=1000557
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=590,IsDisplayed='Y' WHERE AD_Field_ID=1000558
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=600,IsDisplayed='Y' WHERE AD_Field_ID=1000559
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=610,IsDisplayed='Y' WHERE AD_Field_ID=1000560
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=620,IsDisplayed='Y' WHERE AD_Field_ID=1000561
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=630,IsDisplayed='Y' WHERE AD_Field_ID=1000562
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=640,IsDisplayed='Y' WHERE AD_Field_ID=1000563
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=650,IsDisplayed='Y' WHERE AD_Field_ID=1000564
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=660,IsDisplayed='Y' WHERE AD_Field_ID=1000565
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=670,IsDisplayed='Y' WHERE AD_Field_ID=1000566
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=680,IsDisplayed='Y' WHERE AD_Field_ID=1000567
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=690,IsDisplayed='Y' WHERE AD_Field_ID=1000568
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=700,IsDisplayed='Y' WHERE AD_Field_ID=1000569
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=710,IsDisplayed='Y' WHERE AD_Field_ID=1000570
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=720,IsDisplayed='Y' WHERE AD_Field_ID=1000571
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=730,IsDisplayed='Y' WHERE AD_Field_ID=1000572
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=740,IsDisplayed='Y' WHERE AD_Field_ID=1000573
;

-- 26/02/2008 12h15min42s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=750,IsDisplayed='Y' WHERE AD_Field_ID=1000574
;

-- 26/02/2008 12h15min55s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2008-02-26 12:15:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000620
;

-- 26/02/2008 12h15min57s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2008-02-26 12:15:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000557
;

-- 26/02/2008 12h16min1s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=131,Updated=TO_TIMESTAMP('2008-02-26 12:16:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000620
;

-- 26/02/2008 12h16min22s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y', AD_FieldGroup_ID=131,Updated=TO_TIMESTAMP('2008-02-26 12:16:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000496
;

-- 26/02/2008 12h16min24s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2008-02-26 12:16:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000375
;

-- 26/02/2008 12h16min34s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000703,0,1000030,TO_TIMESTAMP('2008-02-26 12:16:33','YYYY-MM-DD HH24:MI:SS'),100,'Defines if the lines is a Service',1,'LBRA','Defines if the lines is a Service','Y','Y','Y','N','N','N','N','N','Is Service',TO_TIMESTAMP('2008-02-26 12:16:33','YYYY-MM-DD HH24:MI:SS'),0,100,1000621)
;

-- 26/02/2008 12h16min34s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000621 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 26/02/2008 12h16min53s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000622
;

-- 26/02/2008 12h16min53s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000623
;

-- 26/02/2008 12h16min53s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1000621
;

-- 26/02/2008 12h16min53s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000589
;

-- 26/02/2008 12h16min53s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000590
;

-- 26/02/2008 12h16min53s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1000591
;

-- 26/02/2008 12h16min53s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1000592
;

-- 26/02/2008 12h16min53s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1000593
;

-- 26/02/2008 12h16min53s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1000594
;

-- 26/02/2008 12h16min53s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1000595
;

-- 26/02/2008 12h16min53s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1000596
;

-- 26/02/2008 12h16min53s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1000597
;

-- 26/02/2008 12h16min53s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1000598
;

-- 26/02/2008 12h16min53s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1000599
;

-- 26/02/2008 12h16min53s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1000600
;

-- 26/02/2008 12h16min53s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1000601
;

-- 26/02/2008 12h16min53s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1000602
;

-- 26/02/2008 12h16min53s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1000603
;

-- 26/02/2008 12h16min53s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1000604
;

-- 26/02/2008 12h16min53s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1000605
;

-- 26/02/2008 12h17min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2008-02-26 12:17:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000621
;

-- 26/02/2008 14h58min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000275,'lbr_BPShipperName',TO_TIMESTAMP('2008-02-26 14:58:03','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Shipper Name','LBRA','Defines the Shipper Name','Y','BPShipper Name','BPShipper Name',TO_TIMESTAMP('2008-02-26 14:58:03','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 26/02/2008 14h58min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000275 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 26/02/2008 14h59min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000275,10,1000027,'lbr_BPShipperName',TO_TIMESTAMP('2008-02-26 14:59:09','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Shipper Name','LBRA',255,'Defines the Shipper Name','Y','N','N','N','N','N','N','N','N','N','Y','BPShipper Name',0,TO_TIMESTAMP('2008-02-26 14:59:09','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000705)
;

-- 26/02/2008 14h59min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000705 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 26/02/2008 14h59min12s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_NotaFiscal ADD COLUMN lbr_BPShipperName VARCHAR(255)
;

-- 26/02/2008 14h59min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000705,0,1000028,TO_TIMESTAMP('2008-02-26 14:59:35','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Shipper Name',255,'LBRA','Defines the Shipper Name','Y','Y','Y','N','N','N','N','N','BPShipper Name',TO_TIMESTAMP('2008-02-26 14:59:35','YYYY-MM-DD HH24:MI:SS'),0,100,1000624)
;

-- 26/02/2008 14h59min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000624 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 26/02/2008 14h59min43s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000705,0,1000020,TO_TIMESTAMP('2008-02-26 14:59:42','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Shipper Name',255,'LBRA','Defines the Shipper Name','Y','Y','Y','N','N','N','N','N','BPShipper Name',TO_TIMESTAMP('2008-02-26 14:59:42','YYYY-MM-DD HH24:MI:SS'),0,100,1000625)
;

-- 26/02/2008 14h59min43s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000625 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 26/02/2008 15h0min22s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=585, AD_FieldGroup_ID=130,Updated=TO_TIMESTAMP('2008-02-26 15:00:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000625
;

-- 26/02/2008 15h1min1s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=585, AD_FieldGroup_ID=130,Updated=TO_TIMESTAMP('2008-02-26 15:01:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000624
;
