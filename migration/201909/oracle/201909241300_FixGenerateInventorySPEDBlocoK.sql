SET SQLBLANKLINES ON
SET DEFINE OFF

DELETE FROM adempiere.AD_Field_trl WHERE AD_Field_ID = (SELECT AD_Field_ID FROM adempiere.AD_Field WHERE AD_Column_ID = 1131411 AND Name = 'Generate Book Inventory' AND AD_Field_ID = 200001);

UPDATE adempiere.AD_Field SET AD_Field_ID = 1128207 WHERE AD_Column_ID = 1131411 AND Name = 'Generate Book Inventory' AND AD_Field_ID = 200001;

SELECT Register_Migration_Script ('201909241300_FixGenerateInventorySPEDBlocoK.sql') FROM DUAL
;
