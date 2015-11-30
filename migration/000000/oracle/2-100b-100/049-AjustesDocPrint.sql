-- 27/02/2008 11h45min5s BRT
-- Default comment for updating dictionary
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1000626
;

-- 27/02/2008 11h45min5s BRT
-- Default comment for updating dictionary
DELETE FROM AD_Field WHERE AD_Field_ID=1000626
;

-- 27/02/2008 11h45min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@lbr_IsSubDoc@=''Y''', Updated=TO_DATE('2008-02-27 11:45:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000043
;

-- 27/02/2008 11h45min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@lbr_HasSubDoc@=''Y''',Updated=TO_DATE('2008-02-27 11:45:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000043
;

-- 27/02/2008 11h46min11s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1000042
;

-- 27/02/2008 11h46min11s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1000031
;

-- 27/02/2008 11h46min11s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1000043
;

-- 27/02/2008 11h46min36s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@lbr_IsSubDoc@=''Y''', IsSameLine = 'N', Updated=TO_DATE('2008-02-27 11:46:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000042
;

-- 27/02/2008 11h46min43s BRT
-- Default comment for updating dictionary
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1000627
;

-- 27/02/2008 11h46min43s BRT
-- Default comment for updating dictionary
DELETE FROM AD_Field WHERE AD_Field_ID=1000627
;

-- 27/02/2008 11h47min1s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000708,0,1000001,TO_DATE('2008-02-27 11:46:59','YYYY-MM-DD HH24:MI:SS'),100,'Identifies the Starter Row of the SubDocument',10,'LBRA','Identifies the Starter Row of the SubDocument','Y','Y','Y','N','N','N','N','N','SubDoc Row (2)',TO_DATE('2008-02-27 11:46:59','YYYY-MM-DD HH24:MI:SS'),0,100,1000634)
;

-- 27/02/2008 11h47min1s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000634 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 27/02/2008 11h47min1s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000707,0,1000001,TO_DATE('2008-02-27 11:47:01','YYYY-MM-DD HH24:MI:SS'),100,'Identifies the ID of the SubDocument',22,'LBRA','Identifies the ID of the SubDocument','Y','Y','Y','N','N','N','N','N','SubDoc_ID (2)',TO_DATE('2008-02-27 11:47:01','YYYY-MM-DD HH24:MI:SS'),0,100,1000635)
;

-- 27/02/2008 11h47min1s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000635 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 27/02/2008 11h47min18s BRT
-- Default comment for updating dictionary
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1000634
;

-- 27/02/2008 11h47min18s BRT
-- Default comment for updating dictionary
DELETE FROM AD_Field WHERE AD_Field_ID=1000634
;

-- 27/02/2008 11h47min48s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@lbr_HasSubDoc@=''Y''',Updated=TO_DATE('2008-02-27 11:47:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000635
;

-- 27/02/2008 11h47min55s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=104,Updated=TO_DATE('2008-02-27 11:47:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000635
;

-- 27/02/2008 11h49min29s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET AD_FieldGroup_ID=NULL,Updated=TO_DATE('2008-02-27 11:49:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000042
;

-- 27/02/2008 11h49min53s BRT
-- Default comment for updating dictionary
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1000708
;

-- 27/02/2008 11h49min53s BRT
-- Default comment for updating dictionary
DELETE FROM AD_Column WHERE AD_Column_ID=1000708
;

-- 27/02/2008 11h49min56s BRT
-- Default comment for updating dictionary
DELETE  FROM  AD_Element_Trl WHERE AD_Element_ID=1000278
;

-- 27/02/2008 11h49min56s BRT
-- Default comment for updating dictionary
DELETE FROM AD_Element WHERE AD_Element_ID=1000278
;

ALTER TABLE adempiere.lbr_docprint
    DROP COLUMN lbr_subdoc2row
;

exit
