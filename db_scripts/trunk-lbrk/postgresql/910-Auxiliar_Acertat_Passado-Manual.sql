--
--	Script para ser usado apenas quando a empresa possui o imposto incluso
--		na lista de preços. Com isso irá alterar todo o passado para
--		deixar a base homogenêa.
--

UPDATE C_OrderLine SET PriceEntered=PriceEnteredBR, PriceActual=PriceEnteredBR, LineNetAmt=PriceEnteredBR*QtyEntered 
WHERE PriceEntered<>PriceEnteredBR AND PriceEnteredBR<>0
AND AD_Client_ID=2000000
;

UPDATE C_Order SET TotalLines = (SELECT  (COALESCE (SUM(ol.LineNetAmt), 0)) FROM C_OrderLine ol WHERE ol.C_Order_ID=C_Order.C_Order_ID), IsTaxIncluded='Y' 
WHERE AD_Client_ID=2000000
;

UPDATE C_OrderTax SET IsTaxIncluded = COALESCE ((SELECT tbr.IsTaxIncluded FROM C_Tax t, LBR_TaxFormula tbr, C_Order o WHERE t.C_Tax_ID=C_OrderTax.C_Tax_ID AND o.C_Order_ID=C_OrderTax.C_Order_ID AND o.lbr_TransactionType=tbr.lbr_TransactionType AND t.LBR_TaxName_ID=tbr.LBR_TaxName_ID), 'Y')
WHERE AD_Client_ID=2000000
;

UPDATE LBR_TaxLine SET IsTaxIncluded = COALESCE ((SELECT tbr.IsTaxIncluded FROM C_Tax t, LBR_TaxFormula tbr, C_Order o, C_OrderLine ol WHERE ol.LBR_Tax_ID=LBR_TaxLine.LBR_Tax_ID AND t.C_Tax_ID=ol.C_Tax_ID AND o.C_Order_ID=ol.C_Order_ID AND o.lbr_TransactionType=tbr.lbr_TransactionType AND t.LBR_TaxName_ID=tbr.LBR_TaxName_ID), 'Y')
WHERE AD_Client_ID=2000000 AND LBR_Tax_ID IN (SELECT LBR_Tax_ID FROM C_OrderLine)
;