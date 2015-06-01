-- 13/02/2015 16h43min23s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element SET ColumnName='LBR_ContatoNFe_ID',Updated=TO_DATE('2015-02-13 16:43:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1120002
;

-- 13/02/2015 16h43min24s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ColumnName='LBR_ContatoNFe_ID', Name='Contato NFe', Description='Email do Usuario/Contato que servirá como remetente do XML da NFe enviado automáticamente aos Usuários/Contatos do Parceiro de Negócio.', Help=NULL WHERE AD_Element_ID=1120002
;

-- 13/02/2015 16h43min24s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='LBR_ContatoNFe_ID', Name='Contato NFe', Description='Email do Usuario/Contato que servirá como remetente do XML da NFe enviado automáticamente aos Usuários/Contatos do Parceiro de Negócio.', Help=NULL, AD_Element_ID=1120002 WHERE UPPER(ColumnName)='LBR_CONTATONFE_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 13/02/2015 16h43min24s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='LBR_ContatoNFe_ID', Name='Contato NFe', Description='Email do Usuario/Contato que servirá como remetente do XML da NFe enviado automáticamente aos Usuários/Contatos do Parceiro de Negócio.', Help=NULL WHERE AD_Element_ID=1120002 AND IsCentrallyMaintained='Y'
;

-- 13/02/2015 16h45min3s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE AD_OrgInfo ADD LBR_ContatoNFe_ID NUMBER(10) DEFAULT NULL 
;

-- CAST funciona com Postgres se não funcionar com Oracle utilizar 
UPDATE AD_OrgInfo SET LBR_ContatoNFe_ID = TO_NUMBER (LBR_ContatoNFe);

ALTER TABLE AD_OrgInfo DROP COLUMN LBR_ContatoNFe;
