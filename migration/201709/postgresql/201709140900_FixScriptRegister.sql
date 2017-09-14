UPDATE AD_MigrationScript 
SET Name='097-Fix-LBR_MotivoCancel.sql' 
WHERE  Name='097-Fix-LBR_MotivoCancel'
;

UPDATE AD_MigrationScript 
SET Name='117-AjusteListaReferencia-NFReferenciada.sql' 
WHERE  Name='117-AjusteListaReferencia-AcessoXMLNFe-NFReferenciada.sql'
;

SELECT Register_Migration_Script ('999-SetVersionLBR.sql') FROM DUAL
;

SELECT Register_Migration_Script ('201709140900_FixScriptRegister.sql') FROM DUAL
;