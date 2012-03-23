/******************************************************************************
 * Copyright (C) 2011 Ricardo Santana                                         *
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
--
--	Script para ser usado apenas quando a empresa possui o imposto incluso
--		na lista de preços. Com isso irá alterar todo o passado para
--		deixar a base homogenêa.
--

UPDATE C_OrderLine SET PriceEntered=PriceEnteredBR, PriceActual=PriceEnteredBR, LineNetAmt=PriceEnteredBR*QtyEntered 
WHERE PriceEntered<>PriceEnteredBR AND PriceEnteredBR<>0
AND AD_Client_ID=2000000
;

UPDATE C_Order SET TotalLines = (SELECT  (NVL (SUM(ol.LineNetAmt), 0)) FROM C_OrderLine ol WHERE ol.C_Order_ID=C_Order.C_Order_ID), IsTaxIncluded='Y' 
WHERE AD_Client_ID=2000000
;

UPDATE C_OrderTax SET IsTaxIncluded = NVL ((SELECT tbr.IsTaxIncluded FROM C_Tax t, LBR_TaxFormula tbr, C_Order o WHERE t.C_Tax_ID=C_OrderTax.C_Tax_ID AND o.C_Order_ID=C_OrderTax.C_Order_ID AND o.lbr_TransactionType=tbr.lbr_TransactionType AND t.LBR_TaxName_ID=tbr.LBR_TaxName_ID), 'Y')
WHERE AD_Client_ID=2000000
;