-- 30/12/2010 13h15min2s BRST
-- Correção do Bug #3148121 - Kenos
UPDATE AD_Element SET ColumnName='LBR_ContatoNFe',Updated=TO_DATE('2010-12-30 13:15:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1120002
;

-- 30/12/2010 13h15min2s BRST
-- Correção do Bug #3148121 - Kenos
UPDATE AD_Column SET ColumnName='LBR_ContatoNFe', Name='Contato NFe', Description='Email do Usuario/Contato que servirá como remetente do XML da NFe enviado automáticamente aos Usuários/Contatos do Parceiro de Negócio.', Help=NULL WHERE AD_Element_ID=1120002
;

-- 30/12/2010 13h15min2s BRST
-- Correção do Bug #3148121 - Kenos
UPDATE AD_Process_Para SET ColumnName='LBR_ContatoNFe', Name='Contato NFe', Description='Email do Usuario/Contato que servirá como remetente do XML da NFe enviado automáticamente aos Usuários/Contatos do Parceiro de Negócio.', Help=NULL, AD_Element_ID=1120002 WHERE UPPER(ColumnName)='LBR_CONTATONFE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 30/12/2010 13h15min2s BRST
-- Correção do Bug #3148121 - Kenos
UPDATE AD_Process_Para SET ColumnName='LBR_ContatoNFe', Name='Contato NFe', Description='Email do Usuario/Contato que servirá como remetente do XML da NFe enviado automáticamente aos Usuários/Contatos do Parceiro de Negócio.', Help=NULL WHERE AD_Element_ID=1120002 AND IsCentrallyMaintained='Y'
;

UPDATE AD_SysConfig SET Value='360-trunk/027-BF_3148121.sql' WHERE AD_SysConfig_ID=1100006;

exit