ALTER TABLE adempiere.lbr_cfopline
    DROP CONSTRAINT lbr_ismanufactured_check CASCADE
;

ALTER TABLE adempiere.lbr_cfopline
    DROP CONSTRAINT lbr_issubtributaria_check CASCADE
;

-- 04/02/2008 15h48min57s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Ref_List_Trl WHERE AD_Language='pt_BR' AND AD_Ref_List_ID=1000028
;

-- 04/02/2008 15h49min3s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000028
;

-- 04/02/2008 15h49min3s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000028
;

-- 04/02/2008 16h1min29s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Reference (AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,ValidationType,AD_Client_ID) VALUES (0,1000029,TO_TIMESTAMP('2008-02-04 16:01:29','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','lbr_IsManufactured',TO_TIMESTAMP('2008-02-04 16:01:29','YYYY-MM-DD HH24:MI:SS'),100,'L',0)
;

-- 04/02/2008 16h1min29s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1000029 AND EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Reference_ID!=t.AD_Reference_ID)
;

-- 04/02/2008 16h1min51s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,Value) VALUES (0,1000029,1000044,TO_TIMESTAMP('2008-02-04 16:01:51','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Yes',TO_TIMESTAMP('2008-02-04 16:01:51','YYYY-MM-DD HH24:MI:SS'),100,0,'Y')
;

-- 04/02/2008 16h1min51s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000044 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- 04/02/2008 16h2min2s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,Value) VALUES (0,1000029,1000045,TO_TIMESTAMP('2008-02-04 16:02:02','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','No',TO_TIMESTAMP('2008-02-04 16:02:02','YYYY-MM-DD HH24:MI:SS'),100,0,'N')
;

-- 04/02/2008 16h2min2s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000045 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- 04/02/2008 16h2min13s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,Value) VALUES (0,1000029,1000046,TO_TIMESTAMP('2008-02-04 16:02:13','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Both',TO_TIMESTAMP('2008-02-04 16:02:13','YYYY-MM-DD HH24:MI:SS'),100,0,'B')
;

-- 04/02/2008 16h2min13s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000046 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- 04/02/2008 16h9min51s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Reference_Value_ID=1000029, AD_Reference_ID=17,Updated=TO_TIMESTAMP('2008-02-04 16:09:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000301
;

-- 04/02/2008 16h9min51s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Is Manufactured', Description='Defines if the Product is Manufactured', Help='Defines if the Product is Manufactured' WHERE AD_Column_ID=1000301 AND IsCentrallyMaintained='Y'
;

-- 04/02/2008 16h15min51s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,Value) VALUES (0,1000014,1000047,TO_TIMESTAMP('2008-02-04 16:15:50','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','End User (IE Exempt)',TO_TIMESTAMP('2008-02-04 16:15:50','YYYY-MM-DD HH24:MI:SS'),100,0,'CNC')
;

-- 04/02/2008 16h15min51s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000047 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- 04/02/2008 16h17min21s BRST
-- Default comment for updating dictionary
UPDATE AD_Ref_List SET Name='End User / Resale',Updated=TO_TIMESTAMP('2008-02-04 16:17:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1000035
;

-- 04/02/2008 16h17min21s BRST
-- Default comment for updating dictionary
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1000035
;