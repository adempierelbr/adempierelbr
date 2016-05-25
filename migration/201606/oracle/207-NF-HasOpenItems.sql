-- 25/05/2016 18h17min39s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1128799,1000235,0,20,1000027,'lbr_HasOpenItems',TO_DATE('2016-05-25 18:17:37','YYYY-MM-DD HH24:MI:SS'),100,'Y','Identifies if this Document Has Open Items','LBRA',1,'Identifies if this Document Has Open Items','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Has Open Items',0,TO_DATE('2016-05-25 18:17:37','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 25/05/2016 18h17min39s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128799 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 25/05/2016 18h17min41s BRT
ALTER TABLE LBR_NotaFiscal ADD lbr_HasOpenItems CHAR(1) DEFAULT 'Y' CHECK (lbr_HasOpenItems IN ('Y','N')) NOT NULL
;

-- 25/05/2016 18h19min46s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1128799,1125797,0,1000020,TO_DATE('2016-05-25 18:19:46','YYYY-MM-DD HH24:MI:SS'),100,'Identifies if this Document Has Open Items',1,'LBRA','Identifies if this Document Has Open Items','Y','Y','Y','N','N','N','N','N','Has Open Items',TO_DATE('2016-05-25 18:19:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/05/2016 18h19min46s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125797 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1125797
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1000329
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1124869
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1124939
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1000302
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1000303
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1000304
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1000305
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1000331
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1000307
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1000332
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1000308
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1000330
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1000313
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=1000316
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=1000309
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=1000310
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=1000311
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=1000312
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=1000317
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=1000314
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=1000318
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=1000315
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=1001093
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=1124850
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=1000356
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=1001092
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=1000660
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=540,IsDisplayed='Y' WHERE AD_Field_ID=1000376
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=550,IsDisplayed='Y' WHERE AD_Field_ID=1000380
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=560,IsDisplayed='Y' WHERE AD_Field_ID=1123448
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=570,IsDisplayed='Y' WHERE AD_Field_ID=1000381
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=580,IsDisplayed='Y' WHERE AD_Field_ID=1000882
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=590,IsDisplayed='Y' WHERE AD_Field_ID=1125483
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=600,IsDisplayed='Y' WHERE AD_Field_ID=1125484
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=610,IsDisplayed='Y' WHERE AD_Field_ID=1125485
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=620,IsDisplayed='Y' WHERE AD_Field_ID=1000625
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=630,IsDisplayed='Y' WHERE AD_Field_ID=1124867
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=640,IsDisplayed='Y' WHERE AD_Field_ID=1125777
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=650,IsDisplayed='Y' WHERE AD_Field_ID=1125778
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=660,IsDisplayed='Y' WHERE AD_Field_ID=1125779
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=670,IsDisplayed='Y' WHERE AD_Field_ID=1125780
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=680,IsDisplayed='Y' WHERE AD_Field_ID=1125781
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=690,IsDisplayed='Y' WHERE AD_Field_ID=1125782
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=700,IsDisplayed='Y' WHERE AD_Field_ID=1000659
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=710,IsDisplayed='Y' WHERE AD_Field_ID=1125783
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=720,IsDisplayed='Y' WHERE AD_Field_ID=1001075
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=730,IsDisplayed='Y' WHERE AD_Field_ID=1000345
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=740,IsDisplayed='Y' WHERE AD_Field_ID=1000384
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=750,IsDisplayed='Y' WHERE AD_Field_ID=1000375
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=760,IsDisplayed='Y' WHERE AD_Field_ID=1000373
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=770,IsDisplayed='Y' WHERE AD_Field_ID=1000378
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=780,IsDisplayed='Y' WHERE AD_Field_ID=1000496
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=790,IsDisplayed='Y' WHERE AD_Field_ID=1120081
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=800,IsDisplayed='Y' WHERE AD_Field_ID=1122767
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=810,IsDisplayed='Y' WHERE AD_Field_ID=1000347
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=820,IsDisplayed='Y' WHERE AD_Field_ID=1124947
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=830,IsDisplayed='Y' WHERE AD_Field_ID=1124946
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=840,IsDisplayed='Y' WHERE AD_Field_ID=1125370
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=850,IsDisplayed='Y' WHERE AD_Field_ID=1125373
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=860,IsDisplayed='Y' WHERE AD_Field_ID=1000344
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=870,IsDisplayed='Y' WHERE AD_Field_ID=1000383
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=880,IsDisplayed='Y' WHERE AD_Field_ID=1100049
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=890,IsDisplayed='Y' WHERE AD_Field_ID=1100044
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=900,IsDisplayed='Y' WHERE AD_Field_ID=1100048
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=910,IsDisplayed='Y' WHERE AD_Field_ID=1124925
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=920,IsDisplayed='Y' WHERE AD_Field_ID=1125405
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=930,IsDisplayed='Y' WHERE AD_Field_ID=1001087
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=940,IsDisplayed='Y' WHERE AD_Field_ID=1000370
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=950,IsDisplayed='Y' WHERE AD_Field_ID=1000377
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=960,IsDisplayed='Y' WHERE AD_Field_ID=1001079
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=970,IsDisplayed='Y' WHERE AD_Field_ID=1001080
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=980,IsDisplayed='Y' WHERE AD_Field_ID=1001081
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=990,IsDisplayed='Y' WHERE AD_Field_ID=1001082
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=1000,IsDisplayed='Y' WHERE AD_Field_ID=1001083
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=1010,IsDisplayed='Y' WHERE AD_Field_ID=1001089
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=1020,IsDisplayed='Y' WHERE AD_Field_ID=1001085
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=1030,IsDisplayed='Y' WHERE AD_Field_ID=1001090
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=1040,IsDisplayed='Y' WHERE AD_Field_ID=1001086
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=1050,IsDisplayed='Y' WHERE AD_Field_ID=1124943
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=1060,IsDisplayed='Y' WHERE AD_Field_ID=1001088
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=1070,IsDisplayed='Y' WHERE AD_Field_ID=1100077
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=1080,IsDisplayed='Y' WHERE AD_Field_ID=1120313
;

-- 25/05/2016 18h26min57s BRT
UPDATE AD_Field SET SeqNo=1090,IsDisplayed='Y' WHERE AD_Field_ID=1120314
;

-- 25/05/2016 18h27min43s BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2016-05-25 18:27:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125797
;

-- 25/05/2016 18h27min43s BRT
SELECT Register_Migration_Script ('207-NF-HasOpenItems.sql') FROM DUAL
;

EXIT