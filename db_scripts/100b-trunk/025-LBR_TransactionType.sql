
-- 06/02/2008 16h1min41s BRST
-- Default comment for updating dictionary
UPDATE AD_Ref_List SET Name='End User',Updated=TO_TIMESTAMP('2008-02-06 16:01:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1000035
;

-- 06/02/2008 16h1min41s BRST
-- Default comment for updating dictionary
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1000035
;

-- 06/02/2008 16h2min3s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,Value) VALUES (0,1000024,1000065,TO_TIMESTAMP('2008-02-06 16:02:03','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Resale',TO_TIMESTAMP('2008-02-06 16:02:03','YYYY-MM-DD HH24:MI:SS'),100,0,'RES')
;

-- 06/02/2008 16h2min3s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000065 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- 06/02/2008 16h2min56s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Reference_Value_ID=1000024,Updated=TO_TIMESTAMP('2008-02-06 16:02:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000300
;

-- 06/02/2008 16h2min56s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Transaction Type', Description='Defines the Transaction Type', Help='Defines the Transaction Type' WHERE AD_Column_ID=1000300 AND IsCentrallyMaintained='Y'
;

-- 06/02/2008 16h3min3s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000047
;

-- 06/02/2008 16h3min4s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000047
;

-- 06/02/2008 16h3min4s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000027
;

-- 06/02/2008 16h3min4s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000027
;

-- 06/02/2008 16h3min5s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000026
;

-- 06/02/2008 16h3min5s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000026
;

-- 06/02/2008 16h3min6s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000025
;

-- 06/02/2008 16h3min6s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000025
;

-- 06/02/2008 16h3min12s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Reference_Trl WHERE AD_Reference_ID=1000014
;

-- 06/02/2008 16h3min12s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Reference WHERE AD_Reference_ID=1000014
;

-- 06/02/2008 16h3min22s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET ReadOnlyLogic=NULL,Updated=TO_TIMESTAMP('2008-02-06 16:03:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000300
;

-- 06/02/2008 16h3min22s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Transaction Type', Description='Defines the Transaction Type', Help='Defines the Transaction Type' WHERE AD_Column_ID=1000300 AND IsCentrallyMaintained='Y'
;

