-- ALTERAR ID DA AD_REF_LIST 2000205 PARA 1121569

BEGIN;
-- 06/04/2015 18h1min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List SET AD_Ref_List_ID = 1121569 WHERE AD_Client_ID = 0 AND AD_Org_ID = 0 AND 
AD_Reference_ID = 1120208 AND AD_Ref_List_ID = 2000205;

UPDATE AD_Ref_List_Trl SET AD_Ref_List_ID = 1121569 WHERE AD_Ref_List_ID = 2000205;

COMMIT;

SELECT register_migration_script('115-AjusteListaReferencia-AcessoXMLNFe-NFReferenciada.sql') FROM dual;