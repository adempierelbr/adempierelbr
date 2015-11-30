-- 13/02/2008 15h8min21s BRST
-- Default comment for updating dictionary
UPDATE AD_Table SET AccessLevel='7',Updated=TO_TIMESTAMP('2008-02-13 15:08:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1000013
;

-- 13/02/2008 15h8min32s BRST
-- Default comment for updating dictionary
UPDATE AD_Table SET AccessLevel='7',Updated=TO_TIMESTAMP('2008-02-13 15:08:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1000014
;

UPDATE LBR_BPartnerCategory SET AD_Client_ID = 0, AD_Org_ID = 0;

UPDATE LBR_ProductCategory SET AD_Client_ID = 0, AD_Org_ID = 0;