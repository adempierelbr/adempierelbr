ALTER TABLE LBR_TaxAssessment
add CONSTRAINT Unq_LBR_TaxAssessment UNIQUE (AD_Org_ID, C_Period_ID, LBR_TaxName_ID);

--	Atualiza o ultimo script
UPDATE AD_SysConfig SET Value='360-trunk/086-IndexFor_LBR_TaxAssessment.sql' WHERE AD_SysConfig_ID=1100006;

EXIT