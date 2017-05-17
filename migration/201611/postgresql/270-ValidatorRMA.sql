-- 17/05/2017 16h40min49s BRT
INSERT INTO AD_ModelValidator (AD_Client_ID,AD_ModelValidator_ID,AD_Org_ID,Created,CreatedBy,Description,EntityType,IsActive,ModelValidationClass,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1120015,0,TO_TIMESTAMP('2017-05-17 16:40:48','YYYY-MM-DD HH24:MI:SS'),100,'Validator for RMA process','LBRA','Y','org.adempierelbr.validator.VLBRRMA','Validator RMA',20,TO_TIMESTAMP('2017-05-17 16:40:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/05/2017 16h40min24s BRT
SELECT Register_Migration_Script ('270-ValidatorRMA.sql') FROM DUAL
;