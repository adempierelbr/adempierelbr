-- 17/05/2017 18h46min51s BRT
INSERT INTO AD_ModelValidator (AD_Client_ID,AD_ModelValidator_ID,AD_Org_ID,Created,CreatedBy,Description,EntityType,IsActive,ModelValidationClass,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1120016,0,TO_TIMESTAMP('2017-05-17 18:46:50','YYYY-MM-DD HH24:MI:SS'),100,'Validator for Billing process','LBRA','Y','org.adempierelbr.validator.VLBRBilling','Validator Billing',30,TO_TIMESTAMP('2017-05-17 18:46:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/05/2017 18h46min51s BRT
SELECT Register_Migration_Script ('271-ValidatorBilling.sql') FROM DUAL
;