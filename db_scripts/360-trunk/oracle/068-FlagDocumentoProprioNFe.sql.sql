-- 03/01/2013 16h38min26s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@lbr_HasFiscalDocument@=''Y'' & @DocBaseType@=''API'' | @DocBaseType@=''ARC'' | @DocBaseType@=''NFB''',Updated=TO_DATE('2013-01-03 16:38:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000460
;
--	Atualiza o ultimo script
UPDATE AD_SysConfig SET Value='360-trunk/068-FlagDocumentoProprioNFe.sql' WHERE AD_SysConfig_ID=1100006
;
