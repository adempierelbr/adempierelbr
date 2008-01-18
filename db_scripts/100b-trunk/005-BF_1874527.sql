-- 004 [ 1874527 ] Flag Gerar contas a Pagar/Receber no tipo de Documento
-- AD_Field
UPDATE ADEMPIERE.AD_FIELD SET displaylogic = '@DocBaseType@=''API'' | @DocBaseType@=''ARI''' WHERE AD_Field_ID = 1000410;