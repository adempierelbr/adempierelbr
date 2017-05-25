-- 17/05/2017 16h40min24s BRT
INSERT INTO AD_ModelValidator (AD_Client_ID,AD_ModelValidator_ID,AD_Org_ID,Created,CreatedBy,Description,EntityType,IsActive,ModelValidationClass,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1120014,0,TO_DATE('2017-05-17 16:40:23','YYYY-MM-DD HH24:MI:SS'),100,'Validator for NFe process','LBRA','Y','org.adempierelbr.validator.VLBRNFe','Validator NFe',10,TO_DATE('2017-05-17 16:40:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/05/2017 16h40min24s BRT
SELECT Register_Migration_Script ('269-ValidatorNFe.sql') FROM DUAL
;

EXIT