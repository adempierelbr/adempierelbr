UPDATE LBR_TaxFormula SET IsTaxIncluded='N' WHERE IsTaxIncluded='Y' AND LBR_TaxName_ID IN (1106006, 1106007, 1106008, 1106009);

UPDATE AD_SysConfig SET Value='360-trunk/063-AjustarImpostosFlagNaoIncluiImposto.sql' WHERE AD_SysConfig_ID=1100006
;
