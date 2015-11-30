-- 11/02/2008 9h52min24s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET IsMandatory='N',Updated=TO_TIMESTAMP('2008-02-11 09:52:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000300
;

-- 11/02/2008 9h52min24s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Transaction Type', Description='Defines the Transaction Type', Help='Defines the Transaction Type' WHERE AD_Column_ID=1000300 AND IsCentrallyMaintained='Y'
;

-- 11/02/2008 9h52min25s BRST
-- Default comment for updating dictionary
-- Oracle Remark: Changed in the original script
--insert into t_alter_column values('lbr_cfopline','lbr_TransactionType','CHAR(3)',null,'NULL')
--;

-- 11/02/2008 9h52min26s BRST
-- Default comment for updating dictionary
-- Oracle Remark: Changed in the original script
--insert into t_alter_column values('lbr_cfopline','lbr_TransactionType',null,'NULL',null)
--;

-- 11/02/2008 9h52min38s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET IsMandatory='N',Updated=TO_TIMESTAMP('2008-02-11 09:52:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000287
;

-- 11/02/2008 9h52min38s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Product Category', Description='Primary key table LBR_ProductCategory', Help='Primary key table LBR_ProductCategory' WHERE AD_Column_ID=1000287 AND IsCentrallyMaintained='Y'
;

-- 11/02/2008 9h52min39s BRST
-- Default comment for updating dictionary
-- Oracle Remark: Changed in the original script
--insert into t_alter_column values('lbr_cfopline','LBR_ProductCategory_ID','NUMERIC(10)',null,'NULL')
--;

-- 11/02/2008 9h52min39s BRST
-- Default comment for updating dictionary
-- Oracle Remark: Changed in the original script
--insert into t_alter_column values('lbr_cfopline','LBR_ProductCategory_ID',null,'NULL',null)
--;

-- 11/02/2008 9h52min48s BRST
-- Default comment for updating dictionary
-- Oracle Remark: Changed in the original script
--insert into t_alter_column values('lbr_cfopline','LBR_BPartnerCategory_ID','NUMERIC(10)',null,'NULL')
--;

-- 11/02/2008 9h54min24s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Reference (AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,ValidationType) VALUES (0,1000027,TO_TIMESTAMP('2008-02-11 09:54:24','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','lbr_Yes_No_Both',TO_TIMESTAMP('2008-02-11 09:54:24','YYYY-MM-DD HH24:MI:SS'),100,0,'L')
;

-- 11/02/2008 9h54min24s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1000027 AND EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Reference_ID!=t.AD_Reference_ID)
;

-- 11/02/2008 9h54min44s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,Value) VALUES (0,1000040,1000027,TO_TIMESTAMP('2008-02-11 09:54:44','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Yes',TO_TIMESTAMP('2008-02-11 09:54:44','YYYY-MM-DD HH24:MI:SS'),100,0,'Y')
;

-- 11/02/2008 9h54min44s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000040 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- 11/02/2008 9h54min49s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,Value) VALUES (0,1000041,1000027,TO_TIMESTAMP('2008-02-11 09:54:49','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','No',TO_TIMESTAMP('2008-02-11 09:54:49','YYYY-MM-DD HH24:MI:SS'),100,0,'N')
;

-- 11/02/2008 9h54min49s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000041 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- 11/02/2008 9h54min59s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,Value) VALUES (0,1000042,1000027,TO_TIMESTAMP('2008-02-11 09:54:59','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Both',TO_TIMESTAMP('2008-02-11 09:54:59','YYYY-MM-DD HH24:MI:SS'),100,0,'B')
;

-- 11/02/2008 9h54min59s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000042 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- 11/02/2008 9h55min36s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Reference_Value_ID=1000027, AD_Reference_ID=17,Updated=TO_TIMESTAMP('2008-02-11 09:55:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000301
;

-- 11/02/2008 9h55min36s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Is Manufactured', Description='Defines if the Product is Manufactured', Help='Defines if the Product is Manufactured' WHERE AD_Column_ID=1000301 AND IsCentrallyMaintained='Y'
;

-- 11/02/2008 9h55min37s BRST
-- Default comment for updating dictionary
-- Oracle Remark: Changed in the original script
--insert into t_alter_column values('lbr_cfopline','lbr_IsManufactured','CHAR(1)',null,'N')
--;

-- 11/02/2008 9h55min37s BRST
-- Default comment for updating dictionary
UPDATE LBR_CFOPLine SET lbr_IsManufactured='N' WHERE lbr_IsManufactured IS NULL
;

-- 11/02/2008 9h55min58s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Reference_Value_ID=1000027, AD_Reference_ID=17,Updated=TO_TIMESTAMP('2008-02-11 09:55:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000299
;

-- 11/02/2008 9h55min58s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Is Substituicao Tributaria', Description='Defines the Is Substituicao Tributaria Status', Help='Defines the Is Substituicao Tributaria Status' WHERE AD_Column_ID=1000299 AND IsCentrallyMaintained='Y'
;

-- 11/02/2008 9h55min59s BRST
-- Default comment for updating dictionary
-- Oracle Remark: Changed in the original script
--insert into t_alter_column values('lbr_cfopline','lbr_IsSubTributaria','CHAR(1)',null,'N')
--;

-- 11/02/2008 9h55min59s BRST
-- Default comment for updating dictionary
UPDATE LBR_CFOPLine SET lbr_IsSubTributaria='N' WHERE lbr_IsSubTributaria IS NULL
;

-- 11/02/2008 9h55min59s BRST
-- Default comment for updating dictionary
UPDATE LBR_CFOPLine SET lbr_IsSubTributaria='N' WHERE lbr_IsSubTributaria IS NULL
;

-- 11/02/2008 9h55min59s BRST
-- Default comment for updating dictionary
UPDATE LBR_CFOPLine SET lbr_IsSubTributaria='N' WHERE lbr_IsSubTributaria IS NULL
;

-- 11/02/2008 9h59min15s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET IsMandatory='N',Updated=TO_TIMESTAMP('2008-02-11 09:59:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000312
;

-- 11/02/2008 9h59min15s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='BPartner Category', Description='Primary key table LBR_BPartnerCategory', Help='Primary key table LBR_BPartnerCategory' WHERE AD_Column_ID=1000312 AND IsCentrallyMaintained='Y'
;

-- 11/02/2008 9h59min16s BRST
-- Default comment for updating dictionary
-- Oracle Remark: Changed in the original script
--insert into t_alter_column values('lbr_cfopline','LBR_BPartnerCategory_ID','NUMERIC(10)',null,'NULL')
--;

-- 11/02/2008 9h59min16s BRST
-- Default comment for updating dictionary
-- Oracle Remark: Changed in the original script
--insert into t_alter_column values('lbr_cfopline','LBR_BPartnerCategory_ID',null,'NULL',null)
--;

-- 11/02/2008 10h5min37s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET Callout='org.adempierelbr.callout.CalloutTax.getDestinationType', IsUpdateable='N',Updated=TO_TIMESTAMP('2008-02-11 10:05:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000284
;

-- 11/02/2008 10h5min37s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='CFOP', Description='Primary key table LBR_CFOP', Help='Primary key table LBR_CFOP' WHERE AD_Column_ID=1000284 AND IsCentrallyMaintained='Y'
;

-- 11/02/2008 10h7min56s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,AD_Client_ID,Value) VALUES (0,1000043,1000024,TO_TIMESTAMP('2008-02-11 10:07:56','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Resale',TO_TIMESTAMP('2008-02-11 10:07:56','YYYY-MM-DD HH24:MI:SS'),100,0,'RES')
;

-- 11/02/2008 10h7min56s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000043 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- 11/02/2008 10h8min21s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000028
;

-- 11/02/2008 10h8min21s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000028
;

-- 11/02/2008 10h8min21s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000027
;

-- 11/02/2008 10h8min21s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000027
;

-- 11/02/2008 10h8min21s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000026
;

-- 11/02/2008 10h8min21s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000026
;

-- 11/02/2008 10h8min21s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Ref_List_Trl WHERE AD_Ref_List_ID=1000025
;

-- 11/02/2008 10h8min21s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=1000025
;

-- 11/02/2008 10h8min25s BRST
-- Default comment for updating dictionary
-- DELETE FROM AD_Reference_Trl WHERE AD_Reference_ID=1000014
--;

-- 11/02/2008 10h8min25s BRST
-- Default comment for updating dictionary
-- DELETE FROM AD_Reference WHERE AD_Reference_ID=1000014
--;

-- 11/02/2008 10h8min33s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Reference_Value_ID=1000024,Updated=TO_TIMESTAMP('2008-02-11 10:08:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000300
;

-- 11/02/2008 10h8min33s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Transaction Type', Description='Defines the Transaction Type', Help='Defines the Transaction Type' WHERE AD_Column_ID=1000300 AND IsCentrallyMaintained='Y'
;

-- 11/02/2008 10h8min33s BRST
-- Default comment for updating dictionary
-- Oracle Remark: Changed in the original script
--insert into t_alter_column values('lbr_cfopline','lbr_TransactionType','CHAR(3)',null,'NULL')
--;

-- 11/02/2008 10h8min48s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Reference_Trl WHERE AD_Reference_ID=1000014
;

-- 11/02/2008 10h8min49s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Reference WHERE AD_Reference_ID=1000014
;

ALTER TABLE adempiere.lbr_cfopline
    DROP CONSTRAINT lbr_cfopline_ismanuf_check CASCADE 
;

ALTER TABLE adempiere.lbr_cfopline
    DROP CONSTRAINT lbr_cfopline_issubtrib_check CASCADE 
;

exit
