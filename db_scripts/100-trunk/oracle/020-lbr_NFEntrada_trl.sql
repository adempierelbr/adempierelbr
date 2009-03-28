-- 28/03/2009 11h29min16s BRT
-- Default comment for updating dictionary
UPDATE AD_Element SET Description='Number of the Customer NF', Help='Number of the Customer NF', Name='Customer NF Number', PO_Description='Number of the Vendor NF', PO_Help='Number of the Vendor NF', PO_Name='Vendor NF Number', PO_PrintName='Vendor NF Number', PrintName='Customer NF Number',Updated=TO_DATE('2009-03-28 11:29:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000364
;

-- 28/03/2009 11h29min16s BRT
-- Default comment for updating dictionary
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=1000364
;

-- 28/03/2009 11h29min16s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET ColumnName='lbr_NFEntrada', Name='Customer NF Number', Description='Number of the Customer NF', Help='Number of the Customer NF' WHERE AD_Element_ID=1000364
;

-- 28/03/2009 11h29min16s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Customer NF Number', Description='Number of the Customer NF', Help='Number of the Customer NF' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1000364) AND IsCentrallyMaintained='Y'
;

-- 28/03/2009 11h29min16s BRT
-- Default comment for updating dictionary
UPDATE AD_Process_Para SET ColumnName='lbr_NFEntrada', Name='Customer NF Number', Description='Number of the Customer NF', Help='Number of the Customer NF', AD_Element_ID=1000364 WHERE UPPER(ColumnName)='LBR_NFENTRADA' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 28/03/2009 11h29min16s BRT
-- Default comment for updating dictionary
UPDATE AD_Process_Para SET ColumnName='lbr_NFEntrada', Name='Customer NF Number', Description='Number of the Customer NF', Help='Number of the Customer NF' WHERE AD_Element_ID=1000364 AND IsCentrallyMaintained='Y'
;

-- 28/03/2009 11h29min16s BRT
-- Default comment for updating dictionary
UPDATE AD_PrintFormatItem pi SET PrintName='Customer NF Number', Name='Customer NF Number' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=1000364)
;

-- 28/03/2009 11h29min16s BRT
-- Default comment for updating dictionary
UPDATE AD_PrintFormatItem pi SET PrintName='Customer NF Number', Name='Customer NF Number' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=1000364)
;

-- 28/03/2009 11h30min38s BRT
-- Default comment for updating dictionary
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Nota Fiscal Cliente',PrintName='Nota Fiscal Cliente',Description='Número da Nota Fiscal do Cliente',Help='Campo para preencher o número da nota fiscal do cliente que será copiado para a nota fiscal.',PO_Name='Nota Fiscal Fornecedor',PO_PrintName='Nota Fiscal Fornecedor',PO_Description='Número da Nota Fiscal do Fornecedor',PO_Help='Campo para preencher o número da nota fiscal do fornecedor que será copiado para a nota fiscal.',Updated=TO_DATE('2009-03-28 11:30:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000364 AND AD_Language='pt_BR'
;

exit

