-- 25/05/2016 18h9min51s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1000540,1120052,1125777,0,1000020,TO_TIMESTAMP('2016-05-25 18:09:49','YYYY-MM-DD HH24:MI:SS'),100,'BP Shipper Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books',8,'@DeliveryViaRule@=S','U','BP Shipper Address 3 - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','N','BP Shipper Address 3',622,TO_TIMESTAMP('2016-05-25 18:09:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/05/2016 18h9min51s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125777 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/05/2016 18h10min25s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1000543,1120052,1125778,0,1000020,TO_TIMESTAMP('2016-05-25 18:10:24','YYYY-MM-DD HH24:MI:SS'),100,'BP Shipper City - Copied from the BP Location into Brazilan Legal and Tax Books',8,'@DeliveryViaRule@=S','U','BP Shipper City - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','Y','BP Shipper City',623,TO_TIMESTAMP('2016-05-25 18:10:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/05/2016 18h10min25s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125778 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/05/2016 18h10min54s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1000546,1120052,1125779,0,1000020,TO_TIMESTAMP('2016-05-25 18:10:53','YYYY-MM-DD HH24:MI:SS'),100,'BP Shipper Postal - Copied from the BP Location into Brazilan Legal and Tax Books',8,'@DeliveryViaRule@=S','U','BP Shipper Postal - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','N','BP Shipper Postal',624,TO_TIMESTAMP('2016-05-25 18:10:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/05/2016 18h10min54s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125779 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/05/2016 18h11min7s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1000547,1120052,1125780,0,1000020,TO_TIMESTAMP('2016-05-25 18:11:06','YYYY-MM-DD HH24:MI:SS'),100,'BP ShipperRegion - Copied from the BP Location into Brazilan Legal and Tax Books',8,'@DeliveryViaRule@=S','U','BP ShipperRegion - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','Y','BP ShipperRegion',625,TO_TIMESTAMP('2016-05-25 18:11:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/05/2016 18h11min7s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125780 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/05/2016 18h11min28s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1000542,1120052,1125781,0,1000020,TO_TIMESTAMP('2016-05-25 18:11:28','YYYY-MM-DD HH24:MI:SS'),100,'BP Shipper CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books',8,'@DeliveryViaRule@=S','U','BP Shipper CNPJ - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','N','BP Shipper CNPJ',626,TO_TIMESTAMP('2016-05-25 18:11:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/05/2016 18h11min28s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125781 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/05/2016 18h11min55s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1000545,1120052,1125782,0,1000020,TO_TIMESTAMP('2016-05-25 18:11:54','YYYY-MM-DD HH24:MI:SS'),100,'BP Shipper IE - Copied from the BP Location into Brazilan Legal and Tax Books',8,'@DeliveryViaRule@=S','U','BP Shipper IE - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','Y','BP Shipper IE',627,TO_TIMESTAMP('2016-05-25 18:11:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/05/2016 18h11min55s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125782 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/05/2016 18h14min33s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1000544,1120052,1125783,0,1000020,TO_TIMESTAMP('2016-05-25 18:14:32','YYYY-MM-DD HH24:MI:SS'),100,'BP Shipper Country - Copied from the BP Location into Brazilan Legal and Tax Books',8,'@DeliveryViaRule@=S','U','BP Shipper Country - Copied from the BP Location into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','Y','BP Shipper Country',631,TO_TIMESTAMP('2016-05-25 18:14:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/05/2016 18h14min33s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125783 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/05/2016 18h14min33s BRT
SELECT Register_Migration_Script ('206-NF-ShipperFields.sql') FROM DUAL
;
