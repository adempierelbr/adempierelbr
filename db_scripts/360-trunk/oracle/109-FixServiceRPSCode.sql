--	FIX RPS Code
DELETE AD_Ref_List WHERE AD_Reference_ID=1120009 AND Value='S1'
;
INSERT INTO AD_Ref_List (AD_Ref_List_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Value, Name, Description, AD_Reference_ID, ValidFrom, ValidTo, EntityType) VALUES(1121554, 0, 0, 'Y', '2015-03-22 15:50:31.0', 100, '2015-03-22 15:50:31.0', 100, 'S1', 'Nota Fiscal de Serviços Eletrônica (RPS)', NULL, 1120009, NULL, NULL, 'LBRA')
;
UPDATE LBR_NotaFiscal SET LBR_NFModel='S1' WHERE LBR_NFModel IN ('RPS', 'RP')
;
UPDATE C_DocType SET LBR_NFModel='S1' WHERE LBR_NFModel IN ('RPS', 'RP')
;
SELECT Register_Migration_Script ('109-FixServiceRPSCode.sql') FROM DUAL
;