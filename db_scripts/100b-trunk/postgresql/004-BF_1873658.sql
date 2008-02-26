-- 004 - BF [ 1873658 ] Validação Parceiro de Negócios
-- AD_COLUMN
UPDATE ADEMPIERE.AD_COLUMN SET readonlylogic = '@lbr_BPTypeBRIsValid=''Y''' WHERE AD_Column_ID = 1000017; -- BPTypeBR
UPDATE ADEMPIERE.AD_COLUMN SET readonlylogic = '@lbr_BPTypeBRIsValid=''Y''' WHERE AD_Column_ID = 1000018; -- CNPJ
UPDATE ADEMPIERE.AD_COLUMN SET readonlylogic = '@lbr_BPTypeBRIsValid=''Y''' WHERE AD_Column_ID = 1000019; -- CPF