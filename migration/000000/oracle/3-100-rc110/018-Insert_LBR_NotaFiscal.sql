-- 10/03/2009 15h30min52s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1000999,1001062,0,290,TO_DATE('2009-03-10 15:30:52','YYYY-MM-DD HH24:MI:SS'),100,'Define the Boleto Comments',70,'LBRA','Define the Boleto Comments','Y','Y','Y','N','N','N','N','N','Boleto Comments',TO_DATE('2009-03-10 15:30:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 15h30min52s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001062 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 15h30min52s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1000907,1001063,0,290,TO_DATE('2009-03-10 15:30:52','YYYY-MM-DD HH24:MI:SS'),100,'How you pay the invoice',1,'LBRA','The Payment Rule indicates the method of invoice payment.','Y','Y','Y','N','N','N','N','N','Payment Rule',TO_DATE('2009-03-10 15:30:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 15h30min52s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001063 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 15h30min52s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1000901,1001064,0,290,TO_DATE('2009-03-10 15:30:52','YYYY-MM-DD HH24:MI:SS'),100,'Process to Cancel Boleto',1,'LBRA','Process to Cancel Boleto','Y','Y','Y','N','N','N','N','N','Process Cancel Boleto',TO_DATE('2009-03-10 15:30:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 15h30min52s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001064 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 15h30min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001055,1001065,0,290,TO_DATE('2009-03-10 15:30:52','YYYY-MM-DD HH24:MI:SS'),100,'Number of the receipt NF',25,'LBRA','Number of the receipt NF','Y','Y','Y','N','N','N','N','N','Receipt NF Number',TO_DATE('2009-03-10 15:30:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 15h30min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001065 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 15h30min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1000715,1001066,0,290,TO_DATE('2009-03-10 15:30:53','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Withhold Invoice',22,'LBRA','Defines the Withhold Invoice','Y','Y','Y','N','N','N','N','N','Withhold Invoice',TO_DATE('2009-03-10 15:30:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 15h30min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001066 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 15h31min47s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001062
;

-- 10/03/2009 15h31min47s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001063
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001064
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001066
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1001065
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=3352
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=3338
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1000296
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1000478
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=3344
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=3348
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=3333
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=3325
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=3326
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=3324
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=3350
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=3328
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=8649
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=3322
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=3355
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=3354
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=3346
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=3353
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=3331
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=4246
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=4247
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=3332
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=3323
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=3327
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=6936
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=7796
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=7797
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=3343
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=3337
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=3335
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=3329
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=10486
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=6532
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=3334
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=3670
;

-- 10/03/2009 15h31min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=3900
;

-- 10/03/2009 15h35min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001054,1001067,0,296,TO_DATE('2009-03-10 15:35:53','YYYY-MM-DD HH24:MI:SS'),100,'Number of the receipt NF',20,'LBRA','Number of the receipt NF','Y','Y','Y','N','N','N','N','N','Receipt NF Number',TO_DATE('2009-03-10 15:35:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 15h35min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001067 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 15h35min54s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,15904,1001069,0,296,TO_DATE('2009-03-10 15:35:54','YYYY-MM-DD HH24:MI:SS'),100,'Weight of a product',22,'D','The Weight indicates the weight  of the product in the Weight UOM of the Client','Y','Y','Y','N','N','N','N','N','Weight',TO_DATE('2009-03-10 15:35:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 15h35min54s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001069 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001068
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001069
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1001067
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=3478
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=3489
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=3481
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=3493
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=3486
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=3487
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=3485
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=3501
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=3503
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=3495
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=3504
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=6528
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=3494
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=3498
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=3497
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=3488
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=3491
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=4248
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=4249
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=7804
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=7802
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=7803
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=7805
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=7801
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=7800
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=3482
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=10347
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=9236
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=9235
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=3505
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=3506
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=10531
;

-- 10/03/2009 15h36min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=5146
;

-- 10/03/2009 17h10min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1000365,0,'lbr_OrgAddress1',TO_DATE('2009-03-10 17:10:42','YYYY-MM-DD HH24:MI:SS'),100,'The issuer organization address 1','LBRA','The issuer organization address 1','Y','Organization Address 1','Organization Address 1',TO_DATE('2009-03-10 17:10:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 17h10min42s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000365 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 10/03/2009 17h12min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Endereço da Organização',PrintName='Endereço da Organização',Description='Endereço da Organização Emitente',Help='Endereço da Organização Emitente',Updated=TO_DATE('2009-03-10 17:12:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000365 AND AD_Language='pt_BR'
;

-- 10/03/2009 17h12min33s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1000366,0,'lbr_OrgAddress2',TO_DATE('2009-03-10 17:12:33','YYYY-MM-DD HH24:MI:SS'),100,'The issuer organization address 2','LBRA','The issuer organization address 2','Y','Organization Address 2','Organization Address 2',TO_DATE('2009-03-10 17:12:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 17h12min33s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000366 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 10/03/2009 17h14min0s BRT
-- Default comment for updating dictionary
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Número da Organização',PrintName='Número da Organização',Description='Número da Organização Emitente',Help='Número da Organização Emitente',Updated=TO_DATE('2009-03-10 17:14:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000366 AND AD_Language='pt_BR'
;

-- 10/03/2009 17h14min32s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1000367,0,'lbr_OrgAddress3',TO_DATE('2009-03-10 17:14:32','YYYY-MM-DD HH24:MI:SS'),100,'The issuer organization address 3','LBRA','The issuer organization address 3','Y','Organization Address 3','Organization Address 3',TO_DATE('2009-03-10 17:14:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 17h14min32s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000367 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 10/03/2009 17h15min6s BRT
-- Default comment for updating dictionary
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Bairro da Organização',PrintName='Bairro da Organização',Description='Bairro da Organização Emitente',Help='Bairro da Organização Emitente',Updated=TO_DATE('2009-03-10 17:15:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000367 AND AD_Language='pt_BR'
;

-- 10/03/2009 17h15min39s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1000368,0,'lbr_OrgAddress4',TO_DATE('2009-03-10 17:15:39','YYYY-MM-DD HH24:MI:SS'),100,'The issuer organization address 4','LBRA','The issuer organization address 4','Y','Organization Address 4','Organization Address 4',TO_DATE('2009-03-10 17:15:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 17h15min39s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000368 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 10/03/2009 17h16min2s BRT
-- Default comment for updating dictionary
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Complemento da Organização',PrintName='Complemento da Organização',Description='Complemento da Organização Emitente',Help='Complemento da Organização Emitente',Updated=TO_DATE('2009-03-10 17:16:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000368 AND AD_Language='pt_BR'
;

-- 10/03/2009 17h22min11s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1000369,0,'lbr_OrgCity',TO_DATE('2009-03-10 17:22:11','YYYY-MM-DD HH24:MI:SS'),100,'The City of the Organization','LBRA','The City of the Organization','Y','Organization City','Organization City',TO_DATE('2009-03-10 17:22:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 17h22min11s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000369 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 10/03/2009 17h22min33s BRT
-- Default comment for updating dictionary
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Cidade da Organização',PrintName='Cidade da Organização',Description='A Cidade da Organização',Help='A Cidade da Organização',Updated=TO_DATE('2009-03-10 17:22:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000369 AND AD_Language='pt_BR'
;

-- 10/03/2009 17h26min6s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1000370,0,'lbr_OrgPostal',TO_DATE('2009-03-10 17:26:06','YYYY-MM-DD HH24:MI:SS'),100,'The Postal Code of the Organization','LBRA','The Postal Code of the Organization','Y','Organization Postal Code','Organization Postal Code',TO_DATE('2009-03-10 17:26:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 17h26min6s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000370 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 10/03/2009 17h26min29s BRT
-- Default comment for updating dictionary
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='CEP da Organização',PrintName='CEP da Organização',Description='O CEP da Organização emitente',Help='O CEP da Organização emitente',Updated=TO_DATE('2009-03-10 17:26:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000370 AND AD_Language='pt_BR'
;

-- 10/03/2009 17h27min3s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1000371,0,'lbr_OrgRegion',TO_DATE('2009-03-10 17:27:03','YYYY-MM-DD HH24:MI:SS'),100,'The Region of the Organization','LBRA','The Region of the Organization','Y','Organization Region','Organization Region',TO_DATE('2009-03-10 17:27:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 17h27min3s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000371 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 10/03/2009 17h27min50s BRT
-- Default comment for updating dictionary
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Estado da Organização',PrintName='Estado da Organização',Description='O Estado da Organização',Help='O Estado da Organização',Updated=TO_DATE('2009-03-10 17:27:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000371 AND AD_Language='pt_BR'
;

-- 10/03/2009 17h28min23s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1000372,0,'lbr_OrgCountry',TO_DATE('2009-03-10 17:28:23','YYYY-MM-DD HH24:MI:SS'),100,'The Country of the Organization','LBRA','The Country of the Organizarion','Y','Organization Country','Organization Country',TO_DATE('2009-03-10 17:28:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 17h28min23s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000372 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 10/03/2009 17h31min41s BRT
-- Default comment for updating dictionary
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='País da Organização',PrintName='País da Organização',Updated=TO_DATE('2009-03-10 17:31:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000372 AND AD_Language='pt_BR'
;

-- 10/03/2009 17h31min56s BRT
-- Default comment for updating dictionary
UPDATE AD_Element_Trl SET Description='O País da Organização',Help='O País da Organização',Updated=TO_DATE('2009-03-10 17:31:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000372 AND AD_Language='pt_BR'
;

-- 10/03/2009 17h33min35s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1000373,0,'lbr_OrgCCM',TO_DATE('2009-03-10 17:33:35','YYYY-MM-DD HH24:MI:SS'),100,'The Organization CCM','LBRA','The Organization CCM','Y','Organization CCM','Organization CCM',TO_DATE('2009-03-10 17:33:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 17h33min35s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000373 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 10/03/2009 17h35min24s BRT
-- Default comment for updating dictionary
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='CCM da Organização',PrintName='CCM da Organização',Description='O CCM da Organização',Help='O CCM da Organização',Updated=TO_DATE('2009-03-10 17:35:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000373 AND AD_Language='pt_BR'
;

-- 10/03/2009 17h36min18s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1000374,0,'lbr_OrgPhone',TO_DATE('2009-03-10 17:36:18','YYYY-MM-DD HH24:MI:SS'),100,'The Organization Phone','LBRA','The Organization Phone','Y','Organization Phone','Organization Phone',TO_DATE('2009-03-10 17:36:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 17h36min18s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000374 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 10/03/2009 17h37min9s BRT
-- Default comment for updating dictionary
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Telefone da Organização',PrintName='Telefone da Organização',Description='O Telefone da Organização',Help='O Telefone da Organização',Updated=TO_DATE('2009-03-10 17:37:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000374 AND AD_Language='pt_BR'
;

-- 10/03/2009 17h37min56s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1000375,0,'lbr_OrgName',TO_DATE('2009-03-10 17:37:56','YYYY-MM-DD HH24:MI:SS'),100,'The Name of the Organization','LBRA','The Name of the Organization','Y','Organization Name','Organization Name',TO_DATE('2009-03-10 17:37:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 17h37min56s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000375 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 10/03/2009 17h39min27s BRT
-- Default comment for updating dictionary
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Nome da Organização',PrintName='Nome da Organização',Description='O Nome da Organização',Help='O Nome da Organização',Updated=TO_DATE('2009-03-10 17:39:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000375 AND AD_Language='pt_BR'
;

-- 10/03/2009 17h40min35s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1000376,0,'lbr_Org_C_Location_ID',TO_DATE('2009-03-10 17:40:35','YYYY-MM-DD HH24:MI:SS'),100,'The Location of the Organization','LBRA','The Location of the Organization','Y','Organization Location','Organization Location',TO_DATE('2009-03-10 17:40:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 17h40min35s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000376 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 10/03/2009 17h41min12s BRT
-- Default comment for updating dictionary
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Localização da Organização',PrintName='Localização da Organização',Description='A Localização da Organização',Help='A Localização da Organização',Updated=TO_DATE('2009-03-10 17:41:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000376 AND AD_Language='pt_BR'
;

-- 10/03/2009 23h39min50s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001056,1000365,0,10,1000027,'lbr_OrgAddress1',TO_DATE('2009-03-10 23:39:50','YYYY-MM-DD HH24:MI:SS'),100,'The issuer organization address 1','LBRA',60,'The issuer organization address 1','Y','N','N','N','N','N','N','N','N','N','Y','Organization Address 1',0,TO_DATE('2009-03-10 23:39:50','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10/03/2009 23h39min50s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001056 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 10/03/2009 23h39min51s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_NotaFiscal ADD lbr_OrgAddress1 NVARCHAR2(60)
;

-- 10/03/2009 23h40min7s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001057,1000366,0,10,1000027,'lbr_OrgAddress2',TO_DATE('2009-03-10 23:40:07','YYYY-MM-DD HH24:MI:SS'),100,'The issuer organization address 2','LBRA',60,'The issuer organization address 2','Y','N','N','N','N','N','N','N','N','N','Y','Organization Address 2',0,TO_DATE('2009-03-10 23:40:07','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10/03/2009 23h40min7s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001057 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 10/03/2009 23h40min8s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_NotaFiscal ADD lbr_OrgAddress2 NVARCHAR2(60)
;

-- 10/03/2009 23h40min39s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001058,1000367,0,10,1000027,'lbr_OrgAddress3',TO_DATE('2009-03-10 23:40:39','YYYY-MM-DD HH24:MI:SS'),100,'The issuer organization address 3','LBRA',60,'The issuer organization address 3','Y','N','N','N','N','N','N','N','N','N','Y','Organization Address 3',0,TO_DATE('2009-03-10 23:40:39','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10/03/2009 23h40min39s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001058 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 10/03/2009 23h40min40s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_NotaFiscal ADD lbr_OrgAddress3 NVARCHAR2(60)
;

-- 10/03/2009 23h40min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001059,1000368,0,10,1000027,'lbr_OrgAddress4',TO_DATE('2009-03-10 23:40:53','YYYY-MM-DD HH24:MI:SS'),100,'The issuer organization address 4','LBRA',60,'The issuer organization address 4','Y','N','N','N','N','N','N','N','N','N','Y','Organization Address 4',0,TO_DATE('2009-03-10 23:40:53','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10/03/2009 23h40min53s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001059 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 10/03/2009 23h40min54s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_NotaFiscal ADD lbr_OrgAddress4 NVARCHAR2(60)
;

-- 10/03/2009 23h41min58s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001060,1000369,0,10,1000027,'lbr_OrgCity',TO_DATE('2009-03-10 23:41:58','YYYY-MM-DD HH24:MI:SS'),100,'The City of the Organization','LBRA',60,'The City of the Organization','Y','N','N','N','N','N','N','N','N','N','Y','Organization City',0,TO_DATE('2009-03-10 23:41:58','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10/03/2009 23h41min58s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001060 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 10/03/2009 23h41min59s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_NotaFiscal ADD lbr_OrgCity NVARCHAR2(60)
;

-- 10/03/2009 23h42min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001061,1000370,0,10,1000027,'lbr_OrgPostal',TO_DATE('2009-03-10 23:42:48','YYYY-MM-DD HH24:MI:SS'),100,'The Postal Code of the Organization','LBRA',10,'The Postal Code of the Organization','Y','N','N','N','N','N','N','N','N','N','Y','Organization Postal Code',0,TO_DATE('2009-03-10 23:42:48','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10/03/2009 23h42min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001061 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 10/03/2009 23h42min49s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_NotaFiscal ADD lbr_OrgPostal NVARCHAR2(10)
;

-- 10/03/2009 23h43min24s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001062,1000371,0,10,1000027,'lbr_OrgRegion',TO_DATE('2009-03-10 23:43:23','YYYY-MM-DD HH24:MI:SS'),100,'The Region of the Organization','LBRA',40,'The Region of the Organization','Y','N','N','N','N','N','N','N','N','N','Y','Organization Region',0,TO_DATE('2009-03-10 23:43:23','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10/03/2009 23h43min24s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001062 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 10/03/2009 23h43min25s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_NotaFiscal ADD lbr_OrgRegion NVARCHAR2(40)
;

-- 10/03/2009 23h47min1s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001063,1000372,0,10,1000027,'lbr_OrgCountry',TO_DATE('2009-03-10 23:47:01','YYYY-MM-DD HH24:MI:SS'),100,'The Country of the Organization','LBRA',60,'The Country of the Organizarion','Y','N','N','N','N','N','N','N','N','N','Y','Organization Country',0,TO_DATE('2009-03-10 23:47:01','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10/03/2009 23h47min1s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001063 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 10/03/2009 23h47min2s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_NotaFiscal ADD lbr_OrgCountry NVARCHAR2(60)
;

-- 10/03/2009 23h47min52s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001064,1000373,0,10,1000027,'lbr_OrgCCM',TO_DATE('2009-03-10 23:47:52','YYYY-MM-DD HH24:MI:SS'),100,'The Organization CCM','LBRA',30,'The Organization CCM','Y','N','N','N','N','N','N','N','N','N','Y','Organization CCM',0,TO_DATE('2009-03-10 23:47:52','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10/03/2009 23h47min52s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001064 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 10/03/2009 23h47min53s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_NotaFiscal ADD lbr_OrgCCM NVARCHAR2(30)
;

-- 10/03/2009 23h49min39s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001065,1000374,0,10,1000027,'lbr_OrgPhone',TO_DATE('2009-03-10 23:49:39','YYYY-MM-DD HH24:MI:SS'),100,'The Organization Phone','LBRA',40,'The Organization Phone','Y','N','N','N','N','N','N','N','N','N','Y','Organization Phone',0,TO_DATE('2009-03-10 23:49:39','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10/03/2009 23h49min39s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001065 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 10/03/2009 23h49min40s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_NotaFiscal ADD lbr_OrgPhone NVARCHAR2(40)
;

-- 10/03/2009 23h50min45s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001066,1000375,0,10,1000027,'lbr_OrgName',TO_DATE('2009-03-10 23:50:45','YYYY-MM-DD HH24:MI:SS'),100,'The Name of the Organization','LBRA',60,'The Name of the Organization','Y','N','N','N','N','N','N','N','N','N','Y','Organization Name',0,TO_DATE('2009-03-10 23:50:45','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10/03/2009 23h50min45s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001066 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 10/03/2009 23h50min46s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_NotaFiscal ADD lbr_OrgName NVARCHAR2(60)
;

-- 10/03/2009 23h51min49s BRT
-- Default comment for updating dictionary
-- UPDATE AD_Element SET ColumnName='lbr_Org_Location_ID',Updated=TO_DATE('2009-03-10 23:51:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1874
-- ;

-- 10/03/2009 23h51min49s BRT
-- Default comment for updating dictionary
-- UPDATE AD_Column SET ColumnName='lbr_Org_Location_ID', Name='Org Address', Description='Organization Location/Address', Help=NULL WHERE AD_Element_ID=1874
-- ;

-- 10/03/2009 23h51min49s BRT
-- Default comment for updating dictionary
-- UPDATE AD_Field SET Name='Org Address', Description='Organization Location/Address', Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1874) AND IsCentrallyMaintained='Y'
-- ;

-- 10/03/2009 23h51min50s BRT
-- Default comment for updating dictionary
-- UPDATE AD_Process_Para SET ColumnName='lbr_Org_Location_ID', Name='Org Address', Description='Organization Location/Address', Help=NULL, AD_Element_ID=1874 WHERE UPPER(ColumnName)='LBR_ORG_LOCATION_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
-- ;

-- 10/03/2009 23h51min50s BRT
-- Default comment for updating dictionary
-- UPDATE AD_Process_Para SET ColumnName='lbr_Org_Location_ID', Name='Org Address', Description='Organization Location/Address', Help=NULL WHERE AD_Element_ID=1874 AND IsCentrallyMaintained='Y'
-- ;

-- 10/03/2009 23h51min50s BRT
-- Default comment for updating dictionary
-- UPDATE AD_PrintFormatItem pi SET PrintName='Org Address', Name='Org Address' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=1874)
-- ;

-- 10/03/2009 23h51min50s BRT
-- Default comment for updating dictionary
-- UPDATE AD_PrintFormatItem pi SET PrintName='Org Address', Name='Org Address' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=1874)
-- ;

-- 10/03/2009 23h52min15s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001067,1874,0,21,1000027,'Org_Location_ID',TO_DATE('2009-03-10 23:52:15','YYYY-MM-DD HH24:MI:SS'),100,'Organization Location/Address','LBRA',22,'Y','N','N','N','N','N','N','N','N','N','Y','Org Address',0,TO_DATE('2009-03-10 23:52:15','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10/03/2009 23h52min15s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001067 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 10/03/2009 23h52min17s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_NotaFiscal ADD Org_Location_ID NUMBER(10)
;

-- 10/03/2009 23h53min36s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001033,1001070,0,1000020,TO_DATE('2009-03-10 23:53:36','YYYY-MM-DD HH24:MI:SS'),100,'First Barcode of the Nota Fiscal',255,'LBRA','First Barcode of the Nota Fiscal','Y','Y','Y','N','N','N','N','N','Barcode 1',TO_DATE('2009-03-10 23:53:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h53min36s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001070 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h53min36s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001034,1001071,0,1000020,TO_DATE('2009-03-10 23:53:36','YYYY-MM-DD HH24:MI:SS'),100,'Second Barcode of the Nota Fiscal',255,'LBRA','Second Barcode of the Nota Fiscal','Y','Y','Y','N','N','N','N','N','Barcode 2',TO_DATE('2009-03-10 23:53:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h53min36s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001071 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h53min36s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001052,1001072,0,1000020,TO_DATE('2009-03-10 23:53:36','YYYY-MM-DD HH24:MI:SS'),100,'Bill Note',255,'LBRA','Bill Note','Y','Y','Y','N','N','N','N','N','Bill Note',TO_DATE('2009-03-10 23:53:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h53min36s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001072 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h53min36s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001045,1001073,0,1000020,TO_DATE('2009-03-10 23:53:36','YYYY-MM-DD HH24:MI:SS'),100,'CIF Total for all the document',22,'LBRA','Cost, Insurance and Freight total for all the document','Y','Y','Y','N','N','N','N','N','CIF Total',TO_DATE('2009-03-10 23:53:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h53min36s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001073 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h53min36s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001049,1001074,0,1000020,TO_DATE('2009-03-10 23:53:36','YYYY-MM-DD HH24:MI:SS'),100,'The Delivery Location ID',22,'LBRA','The Delivery Location ID','Y','Y','Y','N','N','N','N','N','Delivery Location',TO_DATE('2009-03-10 23:53:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h53min36s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001074 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h53min36s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001043,1001075,0,1000020,TO_DATE('2009-03-10 23:53:36','YYYY-MM-DD HH24:MI:SS'),100,'Fiscal Observation for the Fiscal Books',64,'LBRA','Fiscal Observation for the Fiscal Books','Y','Y','Y','N','N','N','N','N','Fiscal Obs.',TO_DATE('2009-03-10 23:53:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h53min36s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001075 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h53min36s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001047,1001076,0,1000020,TO_DATE('2009-03-10 23:53:36','YYYY-MM-DD HH24:MI:SS'),100,'Reference to other NF',22,'LBRA','Reference to other NF','Y','Y','Y','N','N','N','N','N','NF Reference',TO_DATE('2009-03-10 23:53:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h53min36s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001076 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h53min36s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001042,1001077,0,1000020,TO_DATE('2009-03-10 23:53:36','YYYY-MM-DD HH24:MI:SS'),100,'Nota Fiscal Type',6,'LBRA','Nota Fiscal Type','Y','Y','Y','N','N','N','N','N','NF Type',TO_DATE('2009-03-10 23:53:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h53min36s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001077 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h53min36s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1000956,1001078,0,1000020,TO_DATE('2009-03-10 23:53:36','YYYY-MM-DD HH24:MI:SS'),100,22,'LBRA','Y','Y','Y','N','N','N','N','N','NFe No',TO_DATE('2009-03-10 23:53:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h53min36s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001078 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h53min36s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001067,1001079,0,1000020,TO_DATE('2009-03-10 23:53:36','YYYY-MM-DD HH24:MI:SS'),100,'Organization Location/Address',22,'LBRA','Y','Y','Y','N','N','N','N','N','Org Address',TO_DATE('2009-03-10 23:53:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h53min36s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001079 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h53min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001056,1001080,0,1000020,TO_DATE('2009-03-10 23:53:36','YYYY-MM-DD HH24:MI:SS'),100,'The issuer organization address 1',60,'LBRA','The issuer organization address 1','Y','Y','Y','N','N','N','N','N','Organization Address 1',TO_DATE('2009-03-10 23:53:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h53min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001080 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h53min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001057,1001081,0,1000020,TO_DATE('2009-03-10 23:53:37','YYYY-MM-DD HH24:MI:SS'),100,'The issuer organization address 2',60,'LBRA','The issuer organization address 2','Y','Y','Y','N','N','N','N','N','Organization Address 2',TO_DATE('2009-03-10 23:53:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h53min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001081 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h53min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001058,1001082,0,1000020,TO_DATE('2009-03-10 23:53:37','YYYY-MM-DD HH24:MI:SS'),100,'The issuer organization address 3',60,'LBRA','The issuer organization address 3','Y','Y','Y','N','N','N','N','N','Organization Address 3',TO_DATE('2009-03-10 23:53:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h53min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001082 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h53min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001059,1001083,0,1000020,TO_DATE('2009-03-10 23:53:37','YYYY-MM-DD HH24:MI:SS'),100,'The issuer organization address 4',60,'LBRA','The issuer organization address 4','Y','Y','Y','N','N','N','N','N','Organization Address 4',TO_DATE('2009-03-10 23:53:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h53min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001083 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h53min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001064,1001084,0,1000020,TO_DATE('2009-03-10 23:53:37','YYYY-MM-DD HH24:MI:SS'),100,'The Organization CCM',30,'LBRA','The Organization CCM','Y','Y','Y','N','N','N','N','N','Organization CCM',TO_DATE('2009-03-10 23:53:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h53min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001084 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h53min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001060,1001085,0,1000020,TO_DATE('2009-03-10 23:53:37','YYYY-MM-DD HH24:MI:SS'),100,'The City of the Organization',60,'LBRA','The City of the Organization','Y','Y','Y','N','N','N','N','N','Organization City',TO_DATE('2009-03-10 23:53:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h53min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001085 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h53min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001063,1001086,0,1000020,TO_DATE('2009-03-10 23:53:37','YYYY-MM-DD HH24:MI:SS'),100,'The Country of the Organization',60,'LBRA','The Country of the Organizarion','Y','Y','Y','N','N','N','N','N','Organization Country',TO_DATE('2009-03-10 23:53:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h53min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001086 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h53min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001066,1001087,0,1000020,TO_DATE('2009-03-10 23:53:37','YYYY-MM-DD HH24:MI:SS'),100,'The Name of the Organization',60,'LBRA','The Name of the Organization','Y','Y','Y','N','N','N','N','N','Organization Name',TO_DATE('2009-03-10 23:53:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h53min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001087 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h53min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001065,1001088,0,1000020,TO_DATE('2009-03-10 23:53:37','YYYY-MM-DD HH24:MI:SS'),100,'The Organization Phone',40,'LBRA','The Organization Phone','Y','Y','Y','N','N','N','N','N','Organization Phone',TO_DATE('2009-03-10 23:53:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h53min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001088 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h53min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001061,1001089,0,1000020,TO_DATE('2009-03-10 23:53:37','YYYY-MM-DD HH24:MI:SS'),100,'The Postal Code of the Organization',10,'LBRA','The Postal Code of the Organization','Y','Y','Y','N','N','N','N','N','Organization Postal Code',TO_DATE('2009-03-10 23:53:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h53min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001089 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h53min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001062,1001090,0,1000020,TO_DATE('2009-03-10 23:53:37','YYYY-MM-DD HH24:MI:SS'),100,'The Region of the Organization',40,'LBRA','The Region of the Organization','Y','Y','Y','N','N','N','N','N','Organization Region',TO_DATE('2009-03-10 23:53:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h53min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001090 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h53min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001046,1001091,0,1000020,TO_DATE('2009-03-10 23:53:37','YYYY-MM-DD HH24:MI:SS'),100,'SISCOMEX Total for all the document',22,'LBRA','SISCOMEX Total for all the document','Y','Y','Y','N','N','N','N','N','SISCOMEX Total',TO_DATE('2009-03-10 23:53:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h53min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001091 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h53min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001048,1001092,0,1000020,TO_DATE('2009-03-10 23:53:37','YYYY-MM-DD HH24:MI:SS'),100,'The Shipment Location ID',22,'LBRA','The Shipment Location ID','Y','Y','Y','N','N','N','N','N','Ship Location',TO_DATE('2009-03-10 23:53:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h53min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001092 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h53min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001044,1001093,0,1000020,TO_DATE('2009-03-10 23:53:37','YYYY-MM-DD HH24:MI:SS'),100,'Extra Shipment Information ',255,'LBRA','Extra Shipment Information','Y','Y','Y','N','N','N','N','N','Shipment Note',TO_DATE('2009-03-10 23:53:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h53min37s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001093 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001070
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001071
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001072
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001073
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001074
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001075
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001076
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001077
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001078
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001091
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001092
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001093
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1000890
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1000882
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1000883
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1000372
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1000379
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1000637
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1000369
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1000343
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1000351
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1000329
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1000306
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1000319
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1000307
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1000332
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1000331
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1000330
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1000308
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1000302
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1000303
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1000304
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1000305
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1000313
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=1000316
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=1000314
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=1000318
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=1000317
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=1000315
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=1000309
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=1000310
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=1000311
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=1000312
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=1000349
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=1000324
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=1000327
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=1000325
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=1000328
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=540,IsDisplayed='Y' WHERE AD_Field_ID=1000368
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=550,IsDisplayed='Y' WHERE AD_Field_ID=1000326
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=560,IsDisplayed='Y' WHERE AD_Field_ID=1000320
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=570,IsDisplayed='Y' WHERE AD_Field_ID=1000321
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=580,IsDisplayed='Y' WHERE AD_Field_ID=1000322
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=590,IsDisplayed='Y' WHERE AD_Field_ID=1000323
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=600,IsDisplayed='Y' WHERE AD_Field_ID=1000384
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=610,IsDisplayed='Y' WHERE AD_Field_ID=1000496
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=620,IsDisplayed='Y' WHERE AD_Field_ID=1000375
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=630,IsDisplayed='Y' WHERE AD_Field_ID=1000625
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=640,IsDisplayed='Y' WHERE AD_Field_ID=1000356
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=650,IsDisplayed='Y' WHERE AD_Field_ID=1000337
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=660,IsDisplayed='Y' WHERE AD_Field_ID=1000340
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=670,IsDisplayed='Y' WHERE AD_Field_ID=1000338
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=680,IsDisplayed='Y' WHERE AD_Field_ID=1000342
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=690,IsDisplayed='Y' WHERE AD_Field_ID=1000341
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=700,IsDisplayed='Y' WHERE AD_Field_ID=1000339
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=710,IsDisplayed='Y' WHERE AD_Field_ID=1000333
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=720,IsDisplayed='Y' WHERE AD_Field_ID=1000334
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=730,IsDisplayed='Y' WHERE AD_Field_ID=1000335
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=740,IsDisplayed='Y' WHERE AD_Field_ID=1000336
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=750,IsDisplayed='Y' WHERE AD_Field_ID=1000659
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=760,IsDisplayed='Y' WHERE AD_Field_ID=1000660
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=770,IsDisplayed='Y' WHERE AD_Field_ID=1000381
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=780,IsDisplayed='Y' WHERE AD_Field_ID=1000374
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=790,IsDisplayed='Y' WHERE AD_Field_ID=1000373
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=800,IsDisplayed='Y' WHERE AD_Field_ID=1000378
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=810,IsDisplayed='Y' WHERE AD_Field_ID=1000376
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=820,IsDisplayed='Y' WHERE AD_Field_ID=1000380
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=830,IsDisplayed='Y' WHERE AD_Field_ID=1001079
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=840,IsDisplayed='Y' WHERE AD_Field_ID=1001080
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=850,IsDisplayed='Y' WHERE AD_Field_ID=1001081
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=860,IsDisplayed='Y' WHERE AD_Field_ID=1001082
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=870,IsDisplayed='Y' WHERE AD_Field_ID=1001083
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=880,IsDisplayed='Y' WHERE AD_Field_ID=1001084
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=890,IsDisplayed='Y' WHERE AD_Field_ID=1001085
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=900,IsDisplayed='Y' WHERE AD_Field_ID=1001086
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=910,IsDisplayed='Y' WHERE AD_Field_ID=1001087
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=920,IsDisplayed='Y' WHERE AD_Field_ID=1001088
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=930,IsDisplayed='Y' WHERE AD_Field_ID=1001089
;

-- 10/03/2009 23h54min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=940,IsDisplayed='Y' WHERE AD_Field_ID=1001090
;

-- 10/03/2009 23h56min50s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001084
;

-- 10/03/2009 23h56min50s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=840,IsDisplayed='Y' WHERE AD_Field_ID=1001087
;

-- 10/03/2009 23h56min50s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=850,IsDisplayed='Y' WHERE AD_Field_ID=1000370
;

-- 10/03/2009 23h56min50s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=860,IsDisplayed='Y' WHERE AD_Field_ID=1000377
;

-- 10/03/2009 23h56min50s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=870,IsDisplayed='Y' WHERE AD_Field_ID=1001085
;

-- 10/03/2009 23h56min50s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=880,IsDisplayed='Y' WHERE AD_Field_ID=1001090
;

-- 10/03/2009 23h56min50s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=890,IsDisplayed='Y' WHERE AD_Field_ID=1001088
;

-- 10/03/2009 23h56min50s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=900,IsDisplayed='Y' WHERE AD_Field_ID=1001089
;

-- 10/03/2009 23h56min50s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=910,IsDisplayed='Y' WHERE AD_Field_ID=1001086
;

-- 10/03/2009 23h56min50s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=920,IsDisplayed='Y' WHERE AD_Field_ID=1001080
;

-- 10/03/2009 23h56min50s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=930,IsDisplayed='Y' WHERE AD_Field_ID=1001081
;

-- 10/03/2009 23h56min50s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=940,IsDisplayed='Y' WHERE AD_Field_ID=1001082
;

-- 10/03/2009 23h56min50s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=950,IsDisplayed='Y' WHERE AD_Field_ID=1001083
;

-- 10/03/2009 23h57min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001033,1001094,0,1000028,TO_DATE('2009-03-10 23:57:07','YYYY-MM-DD HH24:MI:SS'),100,'First Barcode of the Nota Fiscal',255,'LBRA','First Barcode of the Nota Fiscal','Y','Y','Y','N','N','N','N','N','Barcode 1',TO_DATE('2009-03-10 23:57:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h57min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001094 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h57min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001034,1001095,0,1000028,TO_DATE('2009-03-10 23:57:08','YYYY-MM-DD HH24:MI:SS'),100,'Second Barcode of the Nota Fiscal',255,'LBRA','Second Barcode of the Nota Fiscal','Y','Y','Y','N','N','N','N','N','Barcode 2',TO_DATE('2009-03-10 23:57:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h57min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001095 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h57min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001052,1001096,0,1000028,TO_DATE('2009-03-10 23:57:08','YYYY-MM-DD HH24:MI:SS'),100,'Bill Note',255,'LBRA','Bill Note','Y','Y','Y','N','N','N','N','N','Bill Note',TO_DATE('2009-03-10 23:57:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h57min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001096 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h57min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001045,1001097,0,1000028,TO_DATE('2009-03-10 23:57:08','YYYY-MM-DD HH24:MI:SS'),100,'CIF Total for all the document',22,'LBRA','Cost, Insurance and Freight total for all the document','Y','Y','Y','N','N','N','N','N','CIF Total',TO_DATE('2009-03-10 23:57:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h57min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001097 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h57min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001049,1001098,0,1000028,TO_DATE('2009-03-10 23:57:08','YYYY-MM-DD HH24:MI:SS'),100,'The Delivery Location ID',22,'LBRA','The Delivery Location ID','Y','Y','Y','N','N','N','N','N','Delivery Location',TO_DATE('2009-03-10 23:57:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h57min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001098 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h57min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001043,1001099,0,1000028,TO_DATE('2009-03-10 23:57:08','YYYY-MM-DD HH24:MI:SS'),100,'Fiscal Observation for the Fiscal Books',64,'LBRA','Fiscal Observation for the Fiscal Books','Y','Y','Y','N','N','N','N','N','Fiscal Obs.',TO_DATE('2009-03-10 23:57:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h57min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001099 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h57min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001047,1001100,0,1000028,TO_DATE('2009-03-10 23:57:08','YYYY-MM-DD HH24:MI:SS'),100,'Reference to other NF',22,'LBRA','Reference to other NF','Y','Y','Y','N','N','N','N','N','NF Reference',TO_DATE('2009-03-10 23:57:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h57min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001100 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h57min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001042,1001101,0,1000028,TO_DATE('2009-03-10 23:57:08','YYYY-MM-DD HH24:MI:SS'),100,'Nota Fiscal Type',6,'LBRA','Nota Fiscal Type','Y','Y','Y','N','N','N','N','N','NF Type',TO_DATE('2009-03-10 23:57:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h57min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001101 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h57min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1000956,1001102,0,1000028,TO_DATE('2009-03-10 23:57:08','YYYY-MM-DD HH24:MI:SS'),100,22,'LBRA','Y','Y','Y','N','N','N','N','N','NFe No',TO_DATE('2009-03-10 23:57:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h57min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001102 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h57min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001067,1001103,0,1000028,TO_DATE('2009-03-10 23:57:08','YYYY-MM-DD HH24:MI:SS'),100,'Organization Location/Address',22,'LBRA','Y','Y','Y','N','N','N','N','N','Org Address',TO_DATE('2009-03-10 23:57:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h57min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001103 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h57min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001056,1001104,0,1000028,TO_DATE('2009-03-10 23:57:08','YYYY-MM-DD HH24:MI:SS'),100,'The issuer organization address 1',60,'LBRA','The issuer organization address 1','Y','Y','Y','N','N','N','N','N','Organization Address 1',TO_DATE('2009-03-10 23:57:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h57min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001104 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h57min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001057,1001105,0,1000028,TO_DATE('2009-03-10 23:57:08','YYYY-MM-DD HH24:MI:SS'),100,'The issuer organization address 2',60,'LBRA','The issuer organization address 2','Y','Y','Y','N','N','N','N','N','Organization Address 2',TO_DATE('2009-03-10 23:57:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h57min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001105 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h57min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001058,1001106,0,1000028,TO_DATE('2009-03-10 23:57:08','YYYY-MM-DD HH24:MI:SS'),100,'The issuer organization address 3',60,'LBRA','The issuer organization address 3','Y','Y','Y','N','N','N','N','N','Organization Address 3',TO_DATE('2009-03-10 23:57:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h57min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001106 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h57min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001059,1001107,0,1000028,TO_DATE('2009-03-10 23:57:08','YYYY-MM-DD HH24:MI:SS'),100,'The issuer organization address 4',60,'LBRA','The issuer organization address 4','Y','Y','Y','N','N','N','N','N','Organization Address 4',TO_DATE('2009-03-10 23:57:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h57min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001107 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h57min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001064,1001108,0,1000028,TO_DATE('2009-03-10 23:57:08','YYYY-MM-DD HH24:MI:SS'),100,'The Organization CCM',30,'LBRA','The Organization CCM','Y','Y','Y','N','N','N','N','N','Organization CCM',TO_DATE('2009-03-10 23:57:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h57min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001108 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h57min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001060,1001109,0,1000028,TO_DATE('2009-03-10 23:57:08','YYYY-MM-DD HH24:MI:SS'),100,'The City of the Organization',60,'LBRA','The City of the Organization','Y','Y','Y','N','N','N','N','N','Organization City',TO_DATE('2009-03-10 23:57:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h57min8s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001109 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h57min9s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001063,1001110,0,1000028,TO_DATE('2009-03-10 23:57:08','YYYY-MM-DD HH24:MI:SS'),100,'The Country of the Organization',60,'LBRA','The Country of the Organizarion','Y','Y','Y','N','N','N','N','N','Organization Country',TO_DATE('2009-03-10 23:57:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h57min9s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001110 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h57min9s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001066,1001111,0,1000028,TO_DATE('2009-03-10 23:57:09','YYYY-MM-DD HH24:MI:SS'),100,'The Name of the Organization',60,'LBRA','The Name of the Organization','Y','Y','Y','N','N','N','N','N','Organization Name',TO_DATE('2009-03-10 23:57:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h57min9s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001111 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h57min9s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001065,1001112,0,1000028,TO_DATE('2009-03-10 23:57:09','YYYY-MM-DD HH24:MI:SS'),100,'The Organization Phone',40,'LBRA','The Organization Phone','Y','Y','Y','N','N','N','N','N','Organization Phone',TO_DATE('2009-03-10 23:57:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h57min9s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001112 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h57min9s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001061,1001113,0,1000028,TO_DATE('2009-03-10 23:57:09','YYYY-MM-DD HH24:MI:SS'),100,'The Postal Code of the Organization',10,'LBRA','The Postal Code of the Organization','Y','Y','Y','N','N','N','N','N','Organization Postal Code',TO_DATE('2009-03-10 23:57:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h57min9s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001113 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h57min9s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001062,1001114,0,1000028,TO_DATE('2009-03-10 23:57:09','YYYY-MM-DD HH24:MI:SS'),100,'The Region of the Organization',40,'LBRA','The Region of the Organization','Y','Y','Y','N','N','N','N','N','Organization Region',TO_DATE('2009-03-10 23:57:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h57min9s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001114 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h57min9s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1000926,1001115,0,1000028,TO_DATE('2009-03-10 23:57:09','YYYY-MM-DD HH24:MI:SS'),100,'This Process Reactivates the Nota Fiscal Document',1,'LBRA','Important: Reactivating the Nota Fiscal Document can result Legal Problems. BE AWARE OF THE MODIFICATIONS','Y','Y','Y','N','N','N','N','N','Reactivate Nota Fiscal',TO_DATE('2009-03-10 23:57:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h57min9s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001115 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h57min9s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001046,1001116,0,1000028,TO_DATE('2009-03-10 23:57:09','YYYY-MM-DD HH24:MI:SS'),100,'SISCOMEX Total for all the document',22,'LBRA','SISCOMEX Total for all the document','Y','Y','Y','N','N','N','N','N','SISCOMEX Total',TO_DATE('2009-03-10 23:57:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h57min9s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001116 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h57min9s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001048,1001117,0,1000028,TO_DATE('2009-03-10 23:57:09','YYYY-MM-DD HH24:MI:SS'),100,'The Shipment Location ID',22,'LBRA','The Shipment Location ID','Y','Y','Y','N','N','N','N','N','Ship Location',TO_DATE('2009-03-10 23:57:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h57min9s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001117 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h57min9s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1001044,1001118,0,1000028,TO_DATE('2009-03-10 23:57:09','YYYY-MM-DD HH24:MI:SS'),100,'Extra Shipment Information ',255,'LBRA','Extra Shipment Information','Y','Y','Y','N','N','N','N','N','Shipment Note',TO_DATE('2009-03-10 23:57:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h57min9s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1001118 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001094
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001095
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001096
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001097
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001098
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001099
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001100
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001101
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001102
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001108
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001115
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001116
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001117
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001118
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1000880
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1000881
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1000518
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1000519
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1000636
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1000520
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1000521
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1000522
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1000523
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1000524
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1000525
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1000526
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1000527
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1000528
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1000529
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1000530
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1000531
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1000532
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1000533
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1000534
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1000535
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1000536
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=1000537
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=1000538
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=1000539
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=1000540
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=1000541
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=1000542
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=1000543
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=1000544
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=1000545
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=1000546
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=1000547
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=1000548
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=1000549
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=1000550
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=540,IsDisplayed='Y' WHERE AD_Field_ID=1000551
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=550,IsDisplayed='Y' WHERE AD_Field_ID=1000552
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=560,IsDisplayed='Y' WHERE AD_Field_ID=1000553
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=570,IsDisplayed='Y' WHERE AD_Field_ID=1000554
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=580,IsDisplayed='Y' WHERE AD_Field_ID=1000555
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=590,IsDisplayed='Y' WHERE AD_Field_ID=1000556
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=600,IsDisplayed='Y' WHERE AD_Field_ID=1000620
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=610,IsDisplayed='Y' WHERE AD_Field_ID=1000557
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=620,IsDisplayed='Y' WHERE AD_Field_ID=1000624
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=630,IsDisplayed='Y' WHERE AD_Field_ID=1000558
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=640,IsDisplayed='Y' WHERE AD_Field_ID=1000559
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=650,IsDisplayed='Y' WHERE AD_Field_ID=1000560
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=660,IsDisplayed='Y' WHERE AD_Field_ID=1000561
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=670,IsDisplayed='Y' WHERE AD_Field_ID=1000562
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=680,IsDisplayed='Y' WHERE AD_Field_ID=1000563
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=690,IsDisplayed='Y' WHERE AD_Field_ID=1000564
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=700,IsDisplayed='Y' WHERE AD_Field_ID=1000565
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=710,IsDisplayed='Y' WHERE AD_Field_ID=1000566
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=720,IsDisplayed='Y' WHERE AD_Field_ID=1000567
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=730,IsDisplayed='Y' WHERE AD_Field_ID=1000568
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=740,IsDisplayed='Y' WHERE AD_Field_ID=1000657
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=750,IsDisplayed='Y' WHERE AD_Field_ID=1000658
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=760,IsDisplayed='Y' WHERE AD_Field_ID=1000569
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=770,IsDisplayed='Y' WHERE AD_Field_ID=1000570
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=780,IsDisplayed='Y' WHERE AD_Field_ID=1000571
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=790,IsDisplayed='Y' WHERE AD_Field_ID=1000572
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=800,IsDisplayed='Y' WHERE AD_Field_ID=1000573
;

-- 10/03/2009 23h59min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=810,IsDisplayed='Y' WHERE AD_Field_ID=1000574
;

-- 10/03/2009 23h59min9s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=820,IsDisplayed='Y' WHERE AD_Field_ID=1001103
;

-- 10/03/2009 23h59min9s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=830,IsDisplayed='Y' WHERE AD_Field_ID=1001111
;

-- 10/03/2009 23h59min9s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=840,IsDisplayed='Y' WHERE AD_Field_ID=1000500
;

-- 10/03/2009 23h59min9s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=850,IsDisplayed='Y' WHERE AD_Field_ID=1000499
;

-- 10/03/2009 23h59min9s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=860,IsDisplayed='Y' WHERE AD_Field_ID=1001109
;

-- 10/03/2009 23h59min9s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=870,IsDisplayed='Y' WHERE AD_Field_ID=1001114
;

-- 10/03/2009 23h59min9s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=880,IsDisplayed='Y' WHERE AD_Field_ID=1001113
;

-- 10/03/2009 23h59min9s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=890,IsDisplayed='Y' WHERE AD_Field_ID=1001112
;

-- 10/03/2009 23h59min9s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=900,IsDisplayed='Y' WHERE AD_Field_ID=1001110
;

-- 10/03/2009 23h59min9s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=910,IsDisplayed='Y' WHERE AD_Field_ID=1001104
;

-- 10/03/2009 23h59min9s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=920,IsDisplayed='Y' WHERE AD_Field_ID=1001105
;

-- 10/03/2009 23h59min9s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=930,IsDisplayed='Y' WHERE AD_Field_ID=1001106
;

-- 10/03/2009 23h59min9s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=940,IsDisplayed='Y' WHERE AD_Field_ID=1001107
;

-- 10/03/2009 23h59min46s BRT
-- Default comment for updating dictionary
INSERT INTO AD_FieldGroup (AD_Client_ID,AD_FieldGroup_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,IsCollapsedByDefault,Name,Updated,UpdatedBy) VALUES (0,1000001,0,TO_DATE('2009-03-10 23:59:46','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','Organização',TO_DATE('2009-03-10 23:59:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 23h59min46s BRT
-- Default comment for updating dictionary
INSERT INTO AD_FieldGroup_Trl (AD_Language,AD_FieldGroup_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_FieldGroup_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_FieldGroup t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_FieldGroup_ID=1000001 AND EXISTS (SELECT * FROM AD_FieldGroup_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_FieldGroup_ID!=t.AD_FieldGroup_ID)
;

-- 11/03/2009 0h0min8s BRT
-- Default comment for updating dictionary
UPDATE AD_FieldGroup SET FieldGroupType='C',Updated=TO_DATE('2009-03-11 00:00:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1000001
;

-- 11/03/2009 0h0min22s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000001,Updated=TO_DATE('2009-03-11 00:00:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001103
;

-- 11/03/2009 0h0min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000001,Updated=TO_DATE('2009-03-11 00:00:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001111
;

-- 11/03/2009 0h0min47s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000001,Updated=TO_DATE('2009-03-11 00:00:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000500
;

-- 11/03/2009 0h0min55s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000001,Updated=TO_DATE('2009-03-11 00:00:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000499
;

-- 11/03/2009 0h0min57s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000001,Updated=TO_DATE('2009-03-11 00:00:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001109
;

-- 11/03/2009 0h0min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000001,Updated=TO_DATE('2009-03-11 00:00:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001114
;

-- 11/03/2009 0h1min2s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000001,Updated=TO_DATE('2009-03-11 00:01:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001113
;

-- 11/03/2009 0h1min5s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000001,Updated=TO_DATE('2009-03-11 00:01:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001112
;

-- 11/03/2009 0h1min7s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000001,Updated=TO_DATE('2009-03-11 00:01:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001110
;

-- 11/03/2009 0h1min11s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000001,Updated=TO_DATE('2009-03-11 00:01:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001104
;

-- 11/03/2009 0h1min13s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000001,Updated=TO_DATE('2009-03-11 00:01:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001105
;

-- 11/03/2009 0h1min15s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000001,Updated=TO_DATE('2009-03-11 00:01:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001106
;

-- 11/03/2009 0h1min22s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000001,Updated=TO_DATE('2009-03-11 00:01:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001107
;

-- 11/03/2009 0h2min21s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2009-03-11 00:02:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000499
;

-- 11/03/2009 0h2min25s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2009-03-11 00:02:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001114
;

-- 11/03/2009 0h2min29s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2009-03-11 00:02:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001112
;

-- 11/03/2009 0h2min40s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2009-03-11 00:02:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001109
;

-- 11/03/2009 0h2min46s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2009-03-11 00:02:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001114
;

-- 11/03/2009 0h2min53s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2009-03-11 00:02:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001112
;

-- 11/03/2009 0h2min58s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2009-03-11 00:02:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001110
;

-- 11/03/2009 0h4min5s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000001,Updated=TO_DATE('2009-03-11 00:04:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001079
;

-- 11/03/2009 0h4min7s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000001,Updated=TO_DATE('2009-03-11 00:04:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001087
;

-- 11/03/2009 0h4min9s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000001,Updated=TO_DATE('2009-03-11 00:04:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000370
;

-- 11/03/2009 0h4min10s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000001,Updated=TO_DATE('2009-03-11 00:04:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000377
;

-- 11/03/2009 0h4min11s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000001,Updated=TO_DATE('2009-03-11 00:04:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001085
;

-- 11/03/2009 0h4min13s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000001,Updated=TO_DATE('2009-03-11 00:04:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001090
;

-- 11/03/2009 0h4min14s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000001,Updated=TO_DATE('2009-03-11 00:04:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001088
;

-- 11/03/2009 0h4min18s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000001,Updated=TO_DATE('2009-03-11 00:04:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001089
;

-- 11/03/2009 0h4min20s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000001,Updated=TO_DATE('2009-03-11 00:04:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001086
;

-- 11/03/2009 0h4min21s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000001,Updated=TO_DATE('2009-03-11 00:04:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001080
;

-- 11/03/2009 0h4min23s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000001,Updated=TO_DATE('2009-03-11 00:04:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001081
;

-- 11/03/2009 0h4min25s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000001,Updated=TO_DATE('2009-03-11 00:04:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001082
;

-- 11/03/2009 0h4min29s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=1000001,Updated=TO_DATE('2009-03-11 00:04:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001083
;

-- 11/03/2009 0h4min46s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2009-03-11 00:04:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000377
;

-- 11/03/2009 0h4min49s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2009-03-11 00:04:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000377
;

-- 11/03/2009 0h4min55s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2009-03-11 00:04:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001085
;

-- 11/03/2009 0h5min1s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLength=22, IsSameLine='Y',Updated=TO_DATE('2009-03-11 00:05:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001090
;

-- 11/03/2009 0h5min7s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2009-03-11 00:05:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001088
;

-- 11/03/2009 0h5min13s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2009-03-11 00:05:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001089
;

-- 11/03/2009 0h5min19s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2009-03-11 00:05:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001086
;

-- 11/03/2009 0h29min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001088
;

-- 11/03/2009 0h29min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=890,IsDisplayed='Y' WHERE AD_Field_ID=1001089
;

-- 11/03/2009 0h29min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=900,IsDisplayed='Y' WHERE AD_Field_ID=1001086
;

-- 11/03/2009 0h29min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=910,IsDisplayed='Y' WHERE AD_Field_ID=1001080
;

-- 11/03/2009 0h29min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=920,IsDisplayed='Y' WHERE AD_Field_ID=1001081
;

-- 11/03/2009 0h29min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=930,IsDisplayed='Y' WHERE AD_Field_ID=1001082
;

-- 11/03/2009 0h29min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=940,IsDisplayed='Y' WHERE AD_Field_ID=1001083
;

-- 11/03/2009 0h30min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2009-03-11 00:30:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001086
;

-- 11/03/2009 0h30min13s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2009-03-11 00:30:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001089
;

-- 11/03/2009 0h30min55s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1001112
;

-- 11/03/2009 0h30min55s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=890,IsDisplayed='Y' WHERE AD_Field_ID=1001110
;

-- 11/03/2009 0h30min55s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=900,IsDisplayed='Y' WHERE AD_Field_ID=1001104
;

-- 11/03/2009 0h30min55s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=910,IsDisplayed='Y' WHERE AD_Field_ID=1001105
;

-- 11/03/2009 0h30min55s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=920,IsDisplayed='Y' WHERE AD_Field_ID=1001106
;

-- 11/03/2009 0h30min55s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=930,IsDisplayed='Y' WHERE AD_Field_ID=1001107
;

-- 11/03/2009 0h31min5s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2009-03-11 00:31:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001110
;

exit