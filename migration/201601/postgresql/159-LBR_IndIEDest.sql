-- 08/12/2015 10h37min40s BRST
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120235,TO_TIMESTAMP('2015-12-08 10:37:37','YYYY-MM-DD HH24:MI:SS'),100,'LBR_IndIEDest','LBRA','Indicador da IE do Destinatário','Y','N','LBR_IndIEDest',TO_TIMESTAMP('2015-12-08 10:37:37','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 08/12/2015 10h37min40s BRST
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120235 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 08/12/2015 10h40min45s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120235,1121696,TO_TIMESTAMP('2015-12-08 10:40:45','YYYY-MM-DD HH24:MI:SS'),100,'informar a IE do destinatário','LBRA','Y','1 - Contribuinte de ICMS',TO_TIMESTAMP('2015-12-08 10:40:45','YYYY-MM-DD HH24:MI:SS'),100,'1')
;

-- 08/12/2015 10h40min45s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121696 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 08/12/2015 10h41min40s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120235,1121697,TO_TIMESTAMP('2015-12-08 10:41:40','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','2 - Contribuinte de ICMS - Isento',TO_TIMESTAMP('2015-12-08 10:41:40','YYYY-MM-DD HH24:MI:SS'),100,'2')
;

-- 08/12/2015 10h41min40s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121697 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 08/12/2015 10h43min22s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120235,1121698,TO_TIMESTAMP('2015-12-08 10:43:20','YYYY-MM-DD HH24:MI:SS'),100,'Pode ou não possuir Inscrição Estadual no Cadastro de Contribuintes do ICMS','LBRA','Y','9 - Não Contribuinte de ICMS',TO_TIMESTAMP('2015-12-08 10:43:20','YYYY-MM-DD HH24:MI:SS'),100,'9')
;

-- 08/12/2015 10h43min22s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121698 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 09/12/2015 15h34min35s BRST
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122099,0,'LBR_IndIEDest',TO_TIMESTAMP('2015-12-09 15:34:34','YYYY-MM-DD HH24:MI:SS'),100,'Indicador da IE do Destinatário','LBRA','Indicador da IE do Destinatário','Y','Indicador da IE','Indicador da IE',TO_TIMESTAMP('2015-12-09 15:34:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/12/2015 15h34min35s BRST
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122099 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 09/12/2015 15h35min36s BRST
INSERT INTO AD_Column (DefaultValue,AD_Column_ID,AD_Table_ID,EntityType,Version,AD_Reference_Value_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,CreatedBy,Updated,Help,IsParent,AD_Client_ID,AD_Org_ID,Description,Name,IsActive,FieldLength,IsSelectionColumn,AD_Reference_ID,IsSyncDatabase,Created,IsKey,AD_Element_ID,UpdatedBy,IsAutocomplete,IsAllowLogging,ColumnName,IsEncrypted,IsUpdateable,IsAlwaysUpdateable) VALUES ('1',1127951,291,'LBRA',0,1120235,'Y','N','N',0,100,TO_TIMESTAMP('2015-12-09 15:35:35','YYYY-MM-DD HH24:MI:SS'),'Indicador da IE do Destinatário','N',0,0,'Indicador da IE do Destinatário','Indicador da IE','Y',1,'N',17,'N',TO_TIMESTAMP('2015-12-09 15:35:35','YYYY-MM-DD HH24:MI:SS'),'N',1122099,100,'N','Y','LBR_IndIEDest','N','Y','N')
;

-- 09/12/2015 15h35min36s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1127951 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/12/2015 15h35min39s BRST
ALTER TABLE C_BPartner ADD COLUMN LBR_IndIEDest CHAR(1) DEFAULT '1' NOT NULL
;

-- 09/12/2015 15h37min2s BRST
UPDATE AD_Field SET AD_Column_ID=1127951, Description='Indicador da IE do Destinatário', Help='Indicador da IE do Destinatário', Name='Indicador da IE',Updated=TO_TIMESTAMP('2015-12-09 15:37:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000013
;

-- 09/12/2015 15h37min2s BRST
UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=1000013
;

-- 09/12/2015 15h37min2s BRST
UPDATE AD_Field_Trl SET Description='Indicador da IE do Destinatário',Help='Indicador da IE do Destinatário',Name='Indicador da IE',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Field_ID=1000013
;

-- 09/12/2015 15h37min28s BRST
UPDATE AD_Field SET DisplayLogic='@#LBR_ENABLED@=Y & @LBR_IndIEDest@=''1'' & @#LBR_USE_UNIFIED_BP@!''Y'' & @lbr_BPTypeBR@!''XX'' & @lbr_BPTypeBR@!''''',Updated=TO_TIMESTAMP('2015-12-09 15:37:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000012
;

-- 09/12/2015 15h37min41s BRST
UPDATE AD_Column SET IsActive='N',Updated=TO_TIMESTAMP('2015-12-09 15:37:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000024
;

-- 09/12/2015 15h38min21s BRST
INSERT INTO AD_Column (DefaultValue,AD_Column_ID,AD_Table_ID,EntityType,Version,AD_Reference_Value_ID,IsMandatory,IsTranslated,IsIdentifier,SeqNo,CreatedBy,Updated,Help,IsParent,AD_Client_ID,AD_Org_ID,Description,Name,IsActive,FieldLength,IsSelectionColumn,AD_Reference_ID,IsSyncDatabase,Created,IsKey,AD_Element_ID,UpdatedBy,IsAutocomplete,IsAllowLogging,ColumnName,IsEncrypted,IsUpdateable,IsAlwaysUpdateable) VALUES ('1',1127960,293,'LBRA',0,1120235,'Y','N','N',0,100,TO_TIMESTAMP('2015-12-09 15:38:20','YYYY-MM-DD HH24:MI:SS'),'Indicador da IE do Destinatário','N',0,0,'Indicador da IE do Destinatário','Indicador da IE','Y',1,'N',17,'N',TO_TIMESTAMP('2015-12-09 15:38:20','YYYY-MM-DD HH24:MI:SS'),'N',1122099,100,'N','Y','LBR_IndIEDest','N','Y','N')
;

-- 09/12/2015 15h38min21s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1127960 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/12/2015 15h38min22s BRST
ALTER TABLE C_BPartner_Location ADD COLUMN LBR_IndIEDest CHAR(1) DEFAULT '1' NOT NULL
;

-- 09/12/2015 15h38min52s BRST
UPDATE AD_Field SET AD_Column_ID=1127960, Description='Indicador da IE do Destinatário', Help='Indicador da IE do Destinatário', Name='Indicador da IE',Updated=TO_TIMESTAMP('2015-12-09 15:38:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001060
;

-- 09/12/2015 15h38min52s BRST
UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=1001060
;

-- 09/12/2015 15h38min52s BRST
UPDATE AD_Field_Trl SET Description='Indicador da IE do Destinatário',Help='Indicador da IE do Destinatário',Name='Indicador da IE',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Field_ID=1001060
;

-- 09/12/2015 15h39min8s BRST
UPDATE AD_Field SET DisplayLogic='@AD_Language@=''pt_BR'' & @lbr_BPTypeBR@=''PJ'' & @#LBR_USE_UNIFIED_BP@=''Y'' & @LBR_IndIEDest@=''1''',Updated=TO_TIMESTAMP('2015-12-09 15:39:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001059
;

-- 09/12/2015 15h39min21s BRST
UPDATE AD_Column SET IsActive='N',Updated=TO_TIMESTAMP('2015-12-09 15:39:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1001041
;

-- 09/12/2015 16h3min8s BRST
UPDATE AD_Column SET IsActive='N',Updated=TO_TIMESTAMP('2015-12-09 16:03:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126494
;

-- 09/12/2015 16h3min49s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1128314,1122099,0,17,1120235,1120447,'LBR_IndIEDest',TO_TIMESTAMP('2015-12-09 16:03:46','YYYY-MM-DD HH24:MI:SS'),100,'1','Indicador da IE do Destinatário','LBRA',1,'Indicador da IE do Destinatário','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Indicador da IE',0,TO_TIMESTAMP('2015-12-09 16:03:46','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/12/2015 16h3min49s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128314 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/12/2015 16h3min51s BRST
ALTER TABLE LBR_NotaFiscalDocRef ADD COLUMN LBR_IndIEDest CHAR(1) DEFAULT '1' NOT NULL
;

-- 09/12/2015 16h4min17s BRST
UPDATE AD_Table SET AD_Window_ID=1000015, PO_Window_ID=1000019,Updated=TO_TIMESTAMP('2015-12-09 16:04:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120447
;

-- 09/12/2015 16h4min41s BRST
UPDATE AD_Field SET AD_Column_ID=1128314, Description='Indicador da IE do Destinatário', Help='Indicador da IE do Destinatário', Name='Indicador da IE',Updated=TO_TIMESTAMP('2015-12-09 16:04:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124899
;

-- 09/12/2015 16h4min41s BRST
UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=1124899
;

-- 09/12/2015 16h4min41s BRST
UPDATE AD_Field_Trl SET Description='Indicador da IE do Destinatário',Help='Indicador da IE do Destinatário',Name='Indicador da IE',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Field_ID=1124899
;

-- 09/12/2015 16h5min13s BRST
UPDATE AD_Field SET AD_Column_ID=1128314, Description='Indicador da IE do Destinatário', Help='Indicador da IE do Destinatário', Name='Indicador da IE',Updated=TO_TIMESTAMP('2015-12-09 16:05:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124922
;

-- 09/12/2015 16h5min13s BRST
UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=1124922
;

-- 09/12/2015 16h5min13s BRST
UPDATE AD_Field_Trl SET Description='Indicador da IE do Destinatário',Help='Indicador da IE do Destinatário',Name='Indicador da IE',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Field_ID=1124922
;

-- 09/12/2015 16h9min25s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1128315,1122099,0,17,1120235,1000027,'LBR_IndIEDest',TO_TIMESTAMP('2015-12-09 16:09:23','YYYY-MM-DD HH24:MI:SS'),100,'1','Indicador da IE do Destinatário','LBRA',1,'Indicador da IE do Destinatário','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Indicador da IE',0,TO_TIMESTAMP('2015-12-09 16:09:23','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/12/2015 16h9min25s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128315 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/12/2015 16h9min32s BRST
ALTER TABLE LBR_NotaFiscal ADD COLUMN LBR_IndIEDest CHAR(1) DEFAULT '1' NOT NULL
;

-- 09/12/2015 16h13min32s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1128315,1125605,0,1000020,TO_TIMESTAMP('2015-12-09 16:13:30','YYYY-MM-DD HH24:MI:SS'),100,'Indicador da IE do Destinatário',1,'LBRA','Indicador da IE do Destinatário','Y','Y','Y','N','N','N','N','N','Indicador da IE',TO_TIMESTAMP('2015-12-09 16:13:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/12/2015 16h13min32s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125605 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1125605
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1000329
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1124869
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1124939
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1000302
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1000303
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1000304
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1000305
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1000331
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1000307
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1000332
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1000308
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1000330
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1000313
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1000316
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=1000309
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=1000310
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=1000311
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=1000312
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=1000317
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=1000314
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=1000318
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=1000315
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=1001093
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=1124850
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=1000356
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=1001092
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=1000660
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=1000376
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=540,IsDisplayed='Y' WHERE AD_Field_ID=1000380
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=550,IsDisplayed='Y' WHERE AD_Field_ID=1123448
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=560,IsDisplayed='Y' WHERE AD_Field_ID=1000381
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=570,IsDisplayed='Y' WHERE AD_Field_ID=1000882
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=580,IsDisplayed='Y' WHERE AD_Field_ID=1125483
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=590,IsDisplayed='Y' WHERE AD_Field_ID=1125484
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=600,IsDisplayed='Y' WHERE AD_Field_ID=1125485
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=610,IsDisplayed='Y' WHERE AD_Field_ID=1000625
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=620,IsDisplayed='Y' WHERE AD_Field_ID=1124867
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=630,IsDisplayed='Y' WHERE AD_Field_ID=1000659
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=640,IsDisplayed='Y' WHERE AD_Field_ID=1001075
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=650,IsDisplayed='Y' WHERE AD_Field_ID=1000345
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=660,IsDisplayed='Y' WHERE AD_Field_ID=1000384
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=670,IsDisplayed='Y' WHERE AD_Field_ID=1000375
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=680,IsDisplayed='Y' WHERE AD_Field_ID=1000373
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=690,IsDisplayed='Y' WHERE AD_Field_ID=1000378
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=700,IsDisplayed='Y' WHERE AD_Field_ID=1000496
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=710,IsDisplayed='Y' WHERE AD_Field_ID=1120081
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=720,IsDisplayed='Y' WHERE AD_Field_ID=1122767
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=730,IsDisplayed='Y' WHERE AD_Field_ID=1000347
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=740,IsDisplayed='Y' WHERE AD_Field_ID=1124947
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=750,IsDisplayed='Y' WHERE AD_Field_ID=1124946
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=760,IsDisplayed='Y' WHERE AD_Field_ID=1125370
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=770,IsDisplayed='Y' WHERE AD_Field_ID=1125373
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=780,IsDisplayed='Y' WHERE AD_Field_ID=1000344
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=790,IsDisplayed='Y' WHERE AD_Field_ID=1000383
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=800,IsDisplayed='Y' WHERE AD_Field_ID=1100049
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=810,IsDisplayed='Y' WHERE AD_Field_ID=1100044
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=820,IsDisplayed='Y' WHERE AD_Field_ID=1100048
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=830,IsDisplayed='Y' WHERE AD_Field_ID=1124925
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=840,IsDisplayed='Y' WHERE AD_Field_ID=1125405
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=850,IsDisplayed='Y' WHERE AD_Field_ID=1001087
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=860,IsDisplayed='Y' WHERE AD_Field_ID=1000370
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=870,IsDisplayed='Y' WHERE AD_Field_ID=1000377
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=880,IsDisplayed='Y' WHERE AD_Field_ID=1001079
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=890,IsDisplayed='Y' WHERE AD_Field_ID=1001080
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=900,IsDisplayed='Y' WHERE AD_Field_ID=1001081
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=910,IsDisplayed='Y' WHERE AD_Field_ID=1001082
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=920,IsDisplayed='Y' WHERE AD_Field_ID=1001083
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=930,IsDisplayed='Y' WHERE AD_Field_ID=1001089
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=940,IsDisplayed='Y' WHERE AD_Field_ID=1001085
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=950,IsDisplayed='Y' WHERE AD_Field_ID=1001090
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=960,IsDisplayed='Y' WHERE AD_Field_ID=1001086
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=970,IsDisplayed='Y' WHERE AD_Field_ID=1124943
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=980,IsDisplayed='Y' WHERE AD_Field_ID=1001088
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=990,IsDisplayed='Y' WHERE AD_Field_ID=1100077
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=1000,IsDisplayed='Y' WHERE AD_Field_ID=1120313
;

-- 09/12/2015 16h29min35s BRST
UPDATE AD_Field SET SeqNo=1010,IsDisplayed='Y' WHERE AD_Field_ID=1120314
;

-- 09/12/2015 16h31min27s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1128315,1125607,0,1000028,TO_TIMESTAMP('2015-12-09 16:31:25','YYYY-MM-DD HH24:MI:SS'),100,'Indicador da IE do Destinatário',22,'LBRA','Indicador da IE do Destinatário','Y','Y','Y','N','N','N','N','N','Indicador da IE',235,TO_TIMESTAMP('2015-12-09 16:31:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/12/2015 16h31min27s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125607 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/12/2015 18h1min42s BRST
UPDATE AD_Field SET IsSameLine='N', SeqNo=379,Updated=TO_TIMESTAMP('2015-12-09 18:01:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000013
;

-- 09/12/2015 18h1min48s BRST
UPDATE AD_Field SET IsSameLine='Y', SeqNo=390,Updated=TO_TIMESTAMP('2015-12-09 18:01:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000012
;

-- 09/12/2015 18h1min54s BRST
UPDATE AD_Field SET SeqNo=380,Updated=TO_TIMESTAMP('2015-12-09 18:01:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000013
;

-- 09/12/2015 18h44min16s BRST
UPDATE AD_Column SET MandatoryLogic='@LBR_IndIEDest@=1',Updated=TO_TIMESTAMP('2015-12-09 18:44:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000023
;

DELETE FROM AD_Field WHERE AD_Column_ID=1000024
;

DELETE FROM AD_Column WHERE AD_Element_ID=1000015
;

DELETE FROM AD_Element WHERE AD_Element_ID=1000015
;

UPDATE C_BPartner SET LBR_IndIEDest='2' WHERE LBR_IsIEExempt='Y' OR UPPER(LBR_IE) LIKE '%ISENT%' OR LBR_IE='' OR LBR_IE IS NULL
;

SELECT Register_Migration_Script ('159-LBR_IndIEDest.sql') FROM DUAL
;