--  Revert do script 028
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1120080
;
DELETE FROM AD_Field WHERE AD_Field_ID=1120080
;
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1120115
;
DELETE FROM AD_Column WHERE AD_Column_ID=1120115
;
ALTER TABLE LBR_CFOP DROP COLUMN lbr_IsService
;

--  Revert do script 035
DELETE FROM AD_Field_Trl WHERE AD_Field_ID IN (SELECT AD_Field_ID FROM AD_Field WHERE AD_Tab_ID IN (SELECT AD_Tab_ID FROM AD_Tab WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_ICMSBasis')))
;
DELETE FROM AD_Field WHERE AD_Field_ID IN (SELECT AD_Field_ID FROM AD_Field WHERE AD_Tab_ID IN (SELECT AD_Tab_ID FROM AD_Tab WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_ICMSBasis')))
;
DELETE FROM AD_Tab WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_ICMSBasis')
;
DELETE FROM AD_Ref_Table WHERE AD_Key IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_ICMSBasis'))
;
DELETE FROM AD_Column_Trl WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_ICMSBasis'))
;
DELETE FROM AD_Column WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_ICMSBasis')
;
DROP TABLE LBR_ICMSBasis
;

DELETE FROM AD_Field_Trl WHERE AD_Field_ID IN (SELECT AD_Field_ID FROM AD_Field WHERE AD_Tab_ID IN (SELECT AD_Tab_ID FROM AD_Tab WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_ApuracaoICMS')))
;
DELETE FROM AD_Field WHERE AD_Field_ID IN (SELECT AD_Field_ID FROM AD_Field WHERE AD_Tab_ID IN (SELECT AD_Tab_ID FROM AD_Tab WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_ApuracaoICMS')))
;
DELETE FROM AD_Tab WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_ApuracaoICMS')
;
DELETE FROM AD_Ref_Table WHERE AD_Key IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_ApuracaoICMS'))
;
DELETE FROM AD_Column_Trl WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_ApuracaoICMS'))
;
DELETE FROM AD_Column WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_ApuracaoICMS')
;
DROP TABLE LBR_ApuracaoICMS
;

DELETE FROM AD_Field_Trl WHERE AD_Field_ID IN (SELECT AD_Field_ID FROM AD_Field WHERE AD_Tab_ID IN (SELECT AD_Tab_ID FROM AD_Tab WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_ApuracaoICMSLine')))
;
DELETE FROM AD_Field WHERE AD_Field_ID IN (SELECT AD_Field_ID FROM AD_Field WHERE AD_Tab_ID IN (SELECT AD_Tab_ID FROM AD_Tab WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_ApuracaoICMSLine')))
;
DELETE FROM AD_Tab WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_ApuracaoICMSLine')
;
DELETE FROM AD_Ref_Table WHERE AD_Key IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_ApuracaoICMSLine'))
;
DELETE FROM AD_Column_Trl WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_ApuracaoICMSLine'))
;
DELETE FROM AD_Column WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_ApuracaoICMSLine')
;
DROP TABLE LBR_ApuracaoICMSLine
;

DELETE FROM AD_Menu WHERE AD_Window_ID=1120005
;
DELETE FROM AD_Window_Trl WHERE AD_Window_ID=1120005
;
DELETE FROM AD_Window WHERE AD_Window_ID=1120005
;
DELETE FROM AD_Menu WHERE AD_Window_ID=1120006
;
DELETE FROM AD_Window_Trl WHERE AD_Window_ID=1120006
;
DELETE FROM AD_Window WHERE AD_Window_ID=1120006
;
DELETE FROM AD_Process_Para WHERE AD_Process_ID=1120005
;
DELETE FROM AD_Process WHERE AD_Process_ID=1120005
;
DELETE FROM AD_Process_Para WHERE AD_Process_ID=1120006
;
DELETE FROM AD_Process WHERE AD_Process_ID=1120006
;
DELETE FROM AD_Reference WHERE ValidationType='T' AND NOT EXISTS (SELECT '1' FROM AD_Ref_Table WHERE AD_Ref_Table.AD_Reference_ID=AD_Reference.AD_Reference_ID) AND EntityType='LBRA'
;


--  Revert do script 036
DELETE FROM AD_Field_Trl WHERE AD_Field_ID IN (SELECT AD_Field_ID FROM AD_Field WHERE AD_Tab_ID IN (SELECT AD_Tab_ID FROM AD_Tab WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_ApuracaoIPI')))
;
DELETE FROM AD_Field WHERE AD_Field_ID IN (SELECT AD_Field_ID FROM AD_Field WHERE AD_Tab_ID IN (SELECT AD_Tab_ID FROM AD_Tab WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_ApuracaoIPI')))
;
DELETE FROM AD_Tab WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_ApuracaoIPI')
;
DELETE FROM AD_Ref_Table WHERE AD_Key IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_ApuracaoIPI'))
;
DELETE FROM AD_Column_Trl WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_ApuracaoIPI'))
;
DELETE FROM AD_Column WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_ApuracaoIPI')
;
DROP TABLE LBR_ApuracaoIPI
;
DELETE FROM AD_Field_Trl WHERE AD_Field_ID IN (SELECT AD_Field_ID FROM AD_Field WHERE AD_Tab_ID IN (SELECT AD_Tab_ID FROM AD_Tab WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_ApuracaoIPILine')))
;
DELETE FROM AD_Field WHERE AD_Field_ID IN (SELECT AD_Field_ID FROM AD_Field WHERE AD_Tab_ID IN (SELECT AD_Tab_ID FROM AD_Tab WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_ApuracaoIPILine')))
;
DELETE FROM AD_Tab WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_ApuracaoIPILine')
;
DELETE FROM AD_Ref_Table WHERE AD_Key IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_ApuracaoIPILine'))
;
DELETE FROM AD_Column_Trl WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_ApuracaoIPILine'))
;
DELETE FROM AD_Column WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_ApuracaoIPILine')
;
DROP TABLE LBR_ApuracaoIPILine
;

DELETE FROM AD_Menu WHERE AD_Window_ID=1120007
;
DELETE FROM AD_Window_Trl WHERE AD_Window_ID=1120007
;
DELETE FROM AD_Window WHERE AD_Window_ID=1120007
;
DELETE FROM AD_Process_Para WHERE AD_Process_ID=1120007
;
DELETE FROM AD_Process WHERE AD_Process_ID=1120007
;
DELETE FROM AD_Process_Para WHERE AD_Process_ID=1120008
;
DELETE FROM AD_Process WHERE AD_Process_ID=1120008
;
DELETE FROM AD_Reference WHERE ValidationType='T' AND NOT EXISTS (SELECT '1' FROM AD_Ref_Table WHERE AD_Ref_Table.AD_Reference_ID=AD_Reference.AD_Reference_ID) AND EntityType='LBRA'
;


--  Revert do script 038
UPDATE AD_Column SET Callout=REPLACE (Callout, ';org.adempierelbr.callout.CalloutNF.setNCM', '') WHERE Callout LIKE '%setNCM%' 
; 
UPDATE AD_Column SET Callout=REPLACE (Callout, 'org.adempierelbr.callout.CalloutNF.setNCM;', '') WHERE Callout LIKE '%setNCM%' 
; 
UPDATE AD_Column SET Callout=REPLACE (Callout, 'org.adempierelbr.callout.CalloutNF.setNCM', '') WHERE Callout LIKE '%setNCM%' 
; 
UPDATE AD_Column SET Callout=REPLACE (Callout, ';org.adempierelbr.callout.CalloutNF.setCFOP', '') WHERE Callout LIKE '%setCFOP%' 
; 
UPDATE AD_Column SET Callout=REPLACE (Callout, 'org.adempierelbr.callout.CalloutNF.setCFOP;', '') WHERE Callout LIKE '%setCFOP%' 
; 
UPDATE AD_Column SET Callout=REPLACE (Callout, 'org.adempierelbr.callout.CalloutNF.setCFOP', '') WHERE Callout LIKE '%setCFOP%' 
; 

--  Revert do script 040
DELETE FROM AD_Field_Trl WHERE AD_Field_ID IN (SELECT AD_Field_ID FROM AD_Field WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE ColumnName='lbr_TaxStatusPIS'))
;
DELETE FROM AD_Field WHERE AD_Field_ID IN (SELECT AD_Field_ID FROM AD_Field WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE ColumnName='lbr_TaxStatusPIS'))
;
DELETE FROM AD_Field_Trl WHERE AD_Field_ID IN (SELECT AD_Field_ID FROM AD_Field WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE ColumnName='lbr_TaxStatusCOFINS'))
;
DELETE FROM AD_Field WHERE AD_Field_ID IN (SELECT AD_Field_ID FROM AD_Field WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE ColumnName='lbr_TaxStatusCOFINS'))
;
DELETE FROM AD_Column WHERE ColumnName='lbr_TaxStatusPIS'
;
DELETE FROM AD_Column WHERE ColumnName='lbr_TaxStatusCOFINS'
;
ALTER TABLE C_InvoiceLine DROP COLUMN lbr_TaxStatusPIS
;
ALTER TABLE C_InvoiceLine DROP COLUMN lbr_TaxStatusCOFINS
;
ALTER TABLE LBR_NotaFiscalLine DROP COLUMN lbr_TaxStatusPIS
;
ALTER TABLE LBR_NotaFiscalLine DROP COLUMN lbr_TaxStatusCOFINS
;
DELETE FROM AD_Ref_List WHERE AD_Reference_ID=1120023
;
DELETE FROM AD_Reference WHERE AD_Reference_ID=1120023
;

--  Revert do script 043
DELETE FROM AD_Field_Trl WHERE AD_Field_ID IN (SELECT AD_Field_ID FROM AD_Field WHERE AD_Column_ID IN (1120225,1120226,1120227))
;
DELETE FROM AD_Field WHERE AD_Column_ID IN (1120225,1120226,1120227)
;
DELETE FROM AD_Column_Trl WHERE AD_Column_ID IN (1120225,1120226,1120227)
;
DELETE FROM AD_Column WHERE AD_Column_ID IN (1120225,1120226,1120227)
;
DELETE FROM AD_Val_Rule WHERE AD_Val_Rule_ID IN (1120007,1120008)
;
ALTER TABLE A_Asset DROP COLUMN LBR_NotaFiscal_ID
;
ALTER TABLE A_Asset DROP COLUMN LBR_NotaFiscalLine_ID
;


--  Revert do script 044
DELETE FROM AD_Field_Trl WHERE AD_Field_ID IN (SELECT AD_Field_ID FROM AD_Field WHERE AD_Tab_ID IN (SELECT AD_Tab_ID FROM AD_Tab WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_NCMIVA')))
;
DELETE FROM AD_Field WHERE AD_Field_ID IN (SELECT AD_Field_ID FROM AD_Field WHERE AD_Tab_ID IN (SELECT AD_Tab_ID FROM AD_Tab WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_NCMIVA')))
;
DELETE FROM AD_Tab WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_NCMIVA')
;
DELETE FROM AD_Ref_Table WHERE AD_Key IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_NCMIVA'))
;
DELETE FROM AD_Column_Trl WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_NCMIVA'))
;
DELETE FROM AD_Column WHERE AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE TableName='LBR_NCMIVA')
;
DROP TABLE LBR_NCMIVA
;
