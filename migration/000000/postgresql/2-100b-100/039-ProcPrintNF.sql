-- 20/02/2008 9h48min24s BRT
-- Default comment for updating dictionary
UPDATE AD_Process_Para SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2008-02-20 09:48:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1000010
;

-- 20/02/2008 9h48min45s BRT
-- Default comment for updating dictionary
UPDATE AD_Process_Para SET IsCentrallyMaintained='N',Updated=TO_TIMESTAMP('2008-02-20 09:48:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1000009
;

-- 20/02/2008 9h50min20s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Val_Rule (AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000006,'LBR_NotaFiscal.C_DocType_ID IS NOT NULL AND LBR_NotaFiscal.IsPrinted=''N''',TO_TIMESTAMP('2008-02-20 09:50:20','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','LBR_NotaFiscal (with C_DocType_ID)','S',TO_TIMESTAMP('2008-02-20 09:50:20','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 20/02/2008 9h50min30s BRT
-- Default comment for updating dictionary
UPDATE AD_Process_Para SET AD_Val_Rule_ID=1000006,Updated=TO_TIMESTAMP('2008-02-20 09:50:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1000009
;

-- 20/02/2008 9h50min39s BRT
-- Default comment for updating dictionary
UPDATE AD_Process_Para SET AD_Val_Rule_ID=1000006,Updated=TO_TIMESTAMP('2008-02-20 09:50:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1000010
;