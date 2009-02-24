-- 04/03/2008 14h43min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000166,12,1000001,'lbr_Interest',TO_DATE('2008-03-04 14:43:03','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Interest','LBRA',22,'Defines the Interest','Y','N','N','N','N','N','N','N','N','N','Y','Interest',0,TO_DATE('2008-03-04 14:43:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000735)
;

-- 04/03/2008 14h43min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000735 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 04/03/2008 14h43min6s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_Boleto ADD lbr_Interest NUMBER
;

-- 04/03/2008 14h43min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000291,'lbr_HasSue',TO_DATE('2008-03-04 14:43:44','YYYY-MM-DD HH24:MI:SS'),100,'Define if this Document must be Sue','LBRA','Define if this Document must be Sue','Y','Has Sue','Has Sue',TO_DATE('2008-03-04 14:43:44','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 04/03/2008 14h43min44s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000291 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 04/03/2008 14h48min16s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000292,'lbr_SueDays',TO_DATE('2008-03-04 14:48:13','YYYY-MM-DD HH24:MI:SS'),100,'Define the Sue Days','LBRA','Define the Sue Days','Y','Sue Days','Sue Days',TO_DATE('2008-03-04 14:48:13','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 04/03/2008 14h48min16s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000292 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 04/03/2008 14h49min31s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000291,20,1000001,'lbr_HasSue',TO_DATE('2008-03-04 14:49:30','YYYY-MM-DD HH24:MI:SS'),100,'''N''','Define if this Document must be Sue','LBRA',1,'Define if this Document must be Sue','Y','N','N','N','N','Y','N','N','N','N','Y','Has Sue',0,TO_DATE('2008-03-04 14:49:30','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000736)
;

-- 04/03/2008 14h49min31s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000736 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 04/03/2008 14h49min34s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_Boleto ADD lbr_HasSue CHAR(1) DEFAULT 'N' CHECK (lbr_HasSue IN ('Y','N')) NOT NULL
;

-- 04/03/2008 14h50min19s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,ValueMin,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000292,11,1000001,'lbr_SueDays',TO_DATE('2008-03-04 14:50:18','YYYY-MM-DD HH24:MI:SS'),100,'Define the Sue Days','LBRA',4,'Define the Sue Days','Y','N','N','N','N','N','N','N','N','N','Y','Sue Days',0,TO_DATE('2008-03-04 14:50:18','YYYY-MM-DD HH24:MI:SS'),100,'5',0,0,1000737)
;

-- 04/03/2008 14h50min19s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000737 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 04/03/2008 14h50min20s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_Boleto ADD lbr_SueDays NUMBER(10)
;

-- 04/03/2008 14h52min14s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000291,20,113,'lbr_HasSue',TO_DATE('2008-03-04 14:52:13','YYYY-MM-DD HH24:MI:SS'),100,'''N''','Define if this Document must be Sue','LBRA',1,'Define if this Document must be Sue','Y','N','N','N','N','Y','N','N','N','N','Y','Has Sue',0,TO_DATE('2008-03-04 14:52:13','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000738)
;

-- 04/03/2008 14h52min14s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000738 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 04/03/2008 14h52min15s BRT
-- Default comment for updating dictionary
ALTER TABLE C_PaymentTerm ADD lbr_HasSue CHAR(1) DEFAULT 'N' CHECK (lbr_HasSue IN ('Y','N')) NOT NULL
;

-- 04/03/2008 14h53min22s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,ValueMin,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000292,11,113,'lbr_SueDays',TO_DATE('2008-03-04 14:53:21','YYYY-MM-DD HH24:MI:SS'),100,'Define the Sue Days','LBRA',4,'Define the Sue Days','Y','N','N','N','N','N','N','N','N','N','Y','Sue Days',0,TO_DATE('2008-03-04 14:53:21','YYYY-MM-DD HH24:MI:SS'),100,'5',0,0,1000739)
;

-- 04/03/2008 14h53min22s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000739 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 04/03/2008 14h53min23s BRT
-- Default comment for updating dictionary
ALTER TABLE C_PaymentTerm ADD lbr_SueDays NUMBER(10)
;

-- 04/03/2008 15h52min31s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Org_ID,AD_Element_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000293,'lbr_HasInterest',TO_DATE('2008-03-04 15:52:30','YYYY-MM-DD HH24:MI:SS'),100,'Define if this document has Interest','LBRA','Define if this document has Interest','Y','Has Interest','Has Interest',TO_DATE('2008-03-04 15:52:30','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 04/03/2008 15h52min31s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000293 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 04/03/2008 15h55min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Org_ID,AD_Element_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,AD_Client_ID,Version,AD_Column_ID) VALUES (0,1000293,20,113,'lbr_HasInterest',TO_DATE('2008-03-04 15:55:52','YYYY-MM-DD HH24:MI:SS'),100,'''Y''','Define if this document has Interest','LBRA',1,'Define if this document has Interest','Y','N','N','N','N','Y','N','N','N','N','Y','Has Interest',0,TO_DATE('2008-03-04 15:55:52','YYYY-MM-DD HH24:MI:SS'),100,0,0,1000740)
;

-- 04/03/2008 15h55min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000740 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 04/03/2008 15h55min54s BRT
-- Default comment for updating dictionary
ALTER TABLE C_PaymentTerm ADD lbr_HasInterest CHAR(1) DEFAULT 'Y' CHECK (lbr_HasInterest IN ('Y','N')) NOT NULL
;

-- 04/03/2008 15h58min41s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000740,0,184,TO_DATE('2008-03-04 15:58:39','YYYY-MM-DD HH24:MI:SS'),100,'Define if this document has Interest',1,'LBRA','Define if this document has Interest','Y','Y','Y','N','N','N','N','N','Has Interest',TO_DATE('2008-03-04 15:58:39','YYYY-MM-DD HH24:MI:SS'),0,100,1000734)
;

-- 04/03/2008 15h58min41s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000734 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 04/03/2008 15h58min45s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000738,0,184,TO_DATE('2008-03-04 15:58:41','YYYY-MM-DD HH24:MI:SS'),100,'Define if this Document must be Sue',1,'LBRA','Define if this Document must be Sue','Y','Y','Y','N','N','N','N','N','Has Sue',TO_DATE('2008-03-04 15:58:41','YYYY-MM-DD HH24:MI:SS'),0,100,1000735)
;

-- 04/03/2008 15h58min45s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000735 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 04/03/2008 15h58min46s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000739,0,184,TO_DATE('2008-03-04 15:58:45','YYYY-MM-DD HH24:MI:SS'),100,'Define the Sue Days',4,'LBRA','Define the Sue Days','Y','Y','Y','N','N','N','N','N','Sue Days',TO_DATE('2008-03-04 15:58:45','YYYY-MM-DD HH24:MI:SS'),0,100,1000736)
;

-- 04/03/2008 15h58min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000736 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 04/03/2008 16h1min17s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000000,Updated=TO_DATE('2008-03-04 16:01:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000735
;

-- 04/03/2008 16h1min23s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000000,Updated=TO_DATE('2008-03-04 16:01:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000736
;

-- 04/03/2008 16h1min27s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000000,Updated=TO_DATE('2008-03-04 16:01:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000734
;

-- 04/03/2008 16h1min38s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1063
;

-- 04/03/2008 16h1min38s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=1064
;

-- 04/03/2008 16h1min38s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=2050
;

-- 04/03/2008 16h1min38s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=5634
;

-- 04/03/2008 16h1min38s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1066
;

-- 04/03/2008 16h1min38s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1067
;

-- 04/03/2008 16h1min38s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1065
;

-- 04/03/2008 16h1min38s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=3146
;

-- 04/03/2008 16h1min38s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=2108
;

-- 04/03/2008 16h1min38s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1068
;

-- 04/03/2008 16h1min38s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=3081
;

-- 04/03/2008 16h1min38s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=2106
;

-- 04/03/2008 16h1min38s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=2105
;

-- 04/03/2008 16h1min38s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=2107
;

-- 04/03/2008 16h1min38s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1069
;

-- 04/03/2008 16h1min38s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=7365
;

-- 04/03/2008 16h1min38s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1071
;

-- 04/03/2008 16h1min38s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1070
;

-- 04/03/2008 16h1min38s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=2104
;

-- 04/03/2008 16h1min38s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=2103
;

-- 04/03/2008 16h1min38s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=4401
;

-- 04/03/2008 16h1min38s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=3080
;

-- 04/03/2008 16h1min38s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=8662
;

-- 04/03/2008 16h1min38s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=6553
;

-- 04/03/2008 16h1min38s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1000734
;

-- 04/03/2008 16h1min38s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1000735
;

-- 04/03/2008 16h1min38s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1000736
;

-- 04/03/2008 16h1min52s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2008-03-04 16:01:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000736
;

-- 04/03/2008 16h2min31s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@lbr_HasSue@=''Y''',Updated=TO_DATE('2008-03-04 16:02:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000736
;

-- 04/03/2008 16h4min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET DefaultValue='5',Updated=TO_DATE('2008-03-04 16:04:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000739
;

-- 04/03/2008 16h4min4s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Sue Days', Description='Define the Sue Days', Help='Define the Sue Days' WHERE AD_Column_ID=1000739 AND IsCentrallyMaintained='Y'
;

exit
