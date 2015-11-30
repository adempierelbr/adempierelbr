-- 003 - Atualizações tipo de Documento, atualização lógica de visualização
-- AD_Field
UPDATE ADEMPIERE.AD_FIELD SET displaylogic = '@DocBaseType@=''SOO'' & @DocSubTypeSO@=''SO''' WHERE AD_Field_ID = 1000408;
UPDATE ADEMPIERE.AD_FIELD SET displaylogic = '@DocBaseType@=''SOO'' & @DocSubTypeSO@=''SO''' WHERE AD_Field_ID = 1000409;