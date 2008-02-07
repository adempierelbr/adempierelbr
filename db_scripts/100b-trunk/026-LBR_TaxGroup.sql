-- 07/02/2008 9h36min21s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Reference (AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,ValidationType,AD_Client_ID) VALUES (0,1000034,TO_TIMESTAMP('2008-02-07 09:36:21','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','LBR_TaxGroup',TO_TIMESTAMP('2008-02-07 09:36:21','YYYY-MM-DD HH24:MI:SS'),100,'T',0)
;

-- 07/02/2008 9h36min21s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1000034 AND EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Reference_ID!=t.AD_Reference_ID)
;

-- 07/02/2008 9h36min52s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_Table (AD_Display,AD_Key,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy,AD_Client_ID,AD_Reference_ID,AD_Table_ID) VALUES (1000660,1000659,0,TO_TIMESTAMP('2008-02-07 09:36:52','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N',TO_TIMESTAMP('2008-02-07 09:36:52','YYYY-MM-DD HH24:MI:SS'),100,0,1000034,1000031)
;

-- 07/02/2008 9h37min4s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Reference_Value_ID=1000034, AD_Reference_ID=18,Updated=TO_TIMESTAMP('2008-02-07 09:37:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000665
;

-- 07/02/2008 9h37min4s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Tax Group', Description=NULL, Help=NULL WHERE AD_Column_ID=1000665 AND IsCentrallyMaintained='Y'
;

-- 07/02/2008 9h37min31s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000454
;

-- 07/02/2008 9h37min31s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000459
;

-- 07/02/2008 9h37min31s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1000457
;

-- 07/02/2008 9h37min32s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1000456
;

-- 07/02/2008 9h37min41s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLength=60,Updated=TO_TIMESTAMP('2008-02-07 09:37:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000457
;

-- 07/02/2008 9h37min45s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLength=255,Updated=TO_TIMESTAMP('2008-02-07 09:37:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000456
;

-- 07/02/2008 9h39min11s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@IsSummary@=N',Updated=TO_TIMESTAMP('2008-02-07 09:39:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000453
;