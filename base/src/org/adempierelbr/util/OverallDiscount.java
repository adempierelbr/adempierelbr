/**********************************************************************
 * This file is part of Adempiere ERP Bazaar                           *
 * http://www.adempiere.org                                            *
 *                                                                     *
 * Copyright (C) Contributors                                          *
 *                                                                     *
 * This program is free software; you can redistribute it and/or       *
 * modify it under the terms of the GNU General Public License         *
 * as published by the Free Software Foundation; either version 2      *
 * of the License, or (at your option) any later version.              *
 *                                                                     *
 * This program is distributed in the hope that it will be useful,     *
 * but WITHOUT ANY WARRANTY; without even the implied warranty of      *
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the        *
 * GNU General Public License for more details.                        *
 *                                                                     *
 * You should have received a copy of the GNU General Public License   *
 * along with this program; if not, write to the Free Software         *
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,          *
 * MA 02110-1301, USA.                                                 *
 *                                                                     *
 * Developers:                                                         *
 * - Fernando Lucktemberg - fer_luck                                   *
 * - Mario Grigioni       - mgrigioni                                  *
 *                                                                     *
 * Sponsors:                                                           *
 * - Faire (http://www.faire.com.br)                                   *
 * - Kenos (http://www.kenos.com.br)                                   *
 ***********************************************************************/
package org.adempierelbr.util;

import java.math.BigDecimal;
import java.math.MathContext;
import java.math.RoundingMode;
import java.util.HashMap;
import java.util.Vector;

import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MRole;
import org.compiere.model.MUOMConversion;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

public class OverallDiscount {

	protected static CLogger log = CLogger.getCLogger(OverallDiscount.class);

	//private String message = "";
	private MathContext mc = new MathContext(6,RoundingMode.HALF_UP);

	public BigDecimal getTotalDiscount(MOrder order, boolean isPercent){
		//Grab order lines
		MOrderLine[] lines = order.getLines();
		if(lines.length == 0)
			return Env.ZERO;
		//Get Order Grand Total
		BigDecimal totalLines = Env.ZERO;
		for (int i = 0; i < lines.length; i++){
			totalLines = totalLines.add(lines[i].getPriceActual().multiply(lines[i].getQtyOrdered(), mc));
		}
		totalLines = totalLines.setScale(2, RoundingMode.HALF_UP);
		BigDecimal totalDiscounts = Env.ZERO;
		//Calculates the total without discounts applied to the Order
		for (int i = 0; i < lines.length; i++){
			totalDiscounts = totalDiscounts.add(lines[i].getPriceList().multiply(lines[i].getQtyOrdered(), mc));
		}
		totalDiscounts = totalDiscounts.setScale(2, RoundingMode.HALF_UP);
		//Rounds the total without discounts
		BigDecimal total = Env.ZERO;
		if(isPercent){
			//Calculates the Total discount amount in %
			BigDecimal discount;
			if(totalDiscounts.compareTo(Env.ZERO) != 0)
				total =	totalLines.divide(totalDiscounts, mc);
			else
				total = Env.ZERO;
			discount = total;
			discount = discount.multiply(new BigDecimal(100));
			discount = new BigDecimal(100).subtract(discount, mc);
			total = discount.setScale(2, RoundingMode.HALF_UP);
		}
		else{
			total = totalDiscounts;
		}
		return total;
	}

	public BigDecimal getAvailableDiscount(MOrder order, HashMap <Integer, BigDecimal> map){
		BigDecimal availableDiscount = Env.ZERO;
		MOrderLine [] lines = order.getLines();
		//Calculates the total without discounts applied to the Order
		for (int i = 0; i < lines.length; i++){
			BigDecimal priceActual = lines[i].getPriceActual();
			BigDecimal priceLimit = lines[i].getPriceLimit();
			BigDecimal qtyOrdered = lines[i].getQtyOrdered();
			//BigDecimal lineInterest = Env.ZERO;
			//if(lines[i].get_Value("FinanceChargeLine") != null)
			//	lineInterest = (BigDecimal)lines[i].get_Value("FinanceChargeLine");
			//BigDecimal previousQtyInterest = Env.ZERO;
			//if(lineInterest.compareTo(Env.ZERO) != 0 && lines[i].getQtyInvoiced().compareTo(Env.ZERO) != 0)
			//	previousQtyInterest = lineInterest.divide(lines[i].getQtyInvoiced(), mc);
			BigDecimal availableDiscountPrdt = Env.ZERO;
			availableDiscountPrdt =
				availableDiscountPrdt.add((priceActual.subtract(priceLimit, mc)).multiply(qtyOrdered));
			availableDiscountPrdt = availableDiscountPrdt.setScale(4, RoundingMode.HALF_UP);
			availableDiscount = availableDiscount.add(availableDiscountPrdt, mc);
			if(availableDiscount.compareTo(Env.ZERO) > 0)
				map.put(lines[i].getLine(), availableDiscountPrdt);
		}
		return availableDiscount;
	}

	public boolean doDiscount(MOrder order, boolean isInterest) {
		//Environment Variables
		String trx = order.get_TrxName();
		//Properties ctx = order.getCtx();
		//If discount was allowed, result is set to true, else, false
		boolean result = true;
		//Lists the products that couldn't have the discount applied to them
		Vector<String> products = new Vector<String>();
		//Temporary string to get the value of the discount
		if(order.get_Value("lbr_OverallDiscount") == null)
			return true;
		String tmp = (String) order.get_Value("lbr_OverallDiscount");
		BigDecimal oDiscount = Env.ZERO;
		//If the value is entered in %, isPercent is set to True.
		boolean isPercent = tmp.endsWith("%");
		//Order cost without discounts (to calculate the amount of discount given)
		BigDecimal totalWODiscounts = Env.ZERO;
		//Order Lines
		MOrderLine[] lines = order.getLines();
		//Total Lines Amount value
		BigDecimal totalLinesAmt = Env.ZERO;

		//Get the value of the order without discounts
		for (int i = 0; i < lines.length; i++) {
			totalWODiscounts = totalWODiscounts.add(lines[i].getPriceList().multiply(lines[i].getQtyOrdered()));
		}

		if (isPercent) {
			tmp = tmp.subSequence(0, tmp.length() - 1).toString();
		}
		try {
			//If it's not percent, get the currency value that should be discounted in the order
			if (!isPercent){
				String tmp2 = tmp.length() > 3 ? tmp.substring(tmp.length()-3) : tmp;
				if(tmp2.contains(",")){
					tmp = tmp.replace(".", "");
					tmp = tmp.replace(",", ".");
				}
				oDiscount = new BigDecimal(tmp);
				//Check if the discount is the same as actual.
				BigDecimal lbr_OverallDiscountPercent = (BigDecimal) order.get_Value("lbr_OverallDiscountPercent");
				if(lbr_OverallDiscountPercent == null)
					lbr_OverallDiscountPercent = Env.ZERO;
				if(oDiscount.compareTo(lbr_OverallDiscountPercent) == 0)
					return true;
			}
			else{
				//If it's percent, get the value that should be discounted in the order
				oDiscount = new BigDecimal(tmp);
				//Check if the discount is the same as actual.
				BigDecimal lbr_OverallDiscountPercent = (BigDecimal) order.get_Value("lbr_OverallDiscountPercent");
				if(lbr_OverallDiscountPercent == null)
					lbr_OverallDiscountPercent = Env.ZERO;
				if(oDiscount.compareTo(lbr_OverallDiscountPercent) == 0)
					return true;
				oDiscount = oDiscount.divide(Env.ONEHUNDRED, mc);
				if(oDiscount.compareTo(Env.ZERO) != 0)
					oDiscount = oDiscount.subtract(lbr_OverallDiscountPercent.divide(Env.ONEHUNDRED, mc));
					//oDiscount = oDiscount - (totalDiscountOriginal / 100);
				oDiscount = oDiscount.multiply(totalWODiscounts, mc);
			}
		} catch (Exception e) {
			log.severe(e.getMessage());
			return false;
		}

		HashMap <Integer, BigDecimal> prdtDiscountMap = new HashMap<Integer, BigDecimal>();

		//Check if discount is not set to 0%, if it's, just clear the discounts applied in the else
		if (oDiscount.compareTo(Env.ZERO) != 0) {
			int AD_Role_ID = Env.getAD_Role_ID(Env.getCtx());
			MRole role = new MRole(Env.getCtx(), AD_Role_ID, null);

			BigDecimal totalDiscountAvailable = getAvailableDiscount(order, prdtDiscountMap);
			if(!(totalDiscountAvailable.compareTo(Env.ZERO) > 0) && !(oDiscount.compareTo(Env.ZERO) < 0)){
				if(!(totalDiscountAvailable.compareTo(Env.ZERO) > 0) && !role.isOverwritePriceLimit())
					return false;
			}
			//Checks if the discount to be applied is greater than the order value
			//If it is, return a false, signaling that the discount could not be applied
			if (oDiscount.compareTo(totalWODiscounts) >= 0) {
				if(!role.isOverwritePriceLimit())
					return false;
			}


			//For each line, calculates the discounts
			for (int i = 0; i < lines.length; i++) {
				BigDecimal prdtDiscount = Env.ZERO;
				if(prdtDiscountMap.get(lines[i].getLine()) != null)
					prdtDiscount = prdtDiscountMap.get(lines[i].getLine());
				if(prdtDiscount.compareTo(Env.ZERO) < 0){
					totalLinesAmt = totalLinesAmt.add(lines[i].getLineNetAmt());
					continue;
				}
				//Get the loan information
				//BigDecimal lineInterest = Env.ZERO;
				//BigDecimal previousQtyInterest = Env.ZERO;
				//if(lines[i].get_Value("FinanceChargeLine") != null)
				//	lineInterest = (BigDecimal)lines[i].get_Value("FinanceChargeLine");
				//if(lineInterest.compareTo(Env.ZERO) != 0 && lines[i].getQtyInvoiced().compareTo(Env.ZERO) != 0)
				//	previousQtyInterest = lineInterest.divide(lines[i].getQtyInvoiced(), mc);

				//Get the line amount so far without interest
				BigDecimal lineAmt = lines[i].getLineNetAmt();
				//Get the percentual value that the line amounts to the order
				BigDecimal percent = prdtDiscount.divide(totalDiscountAvailable, mc);
				//Calculate the new line amount.
				BigDecimal newLineAmt = lineAmt.subtract((percent.multiply(oDiscount, mc)));
				newLineAmt = newLineAmt.setScale(2, RoundingMode.HALF_UP);

				//New item price without interest
				BigDecimal newItemPriceWOInterest = newLineAmt.divide(lines[i].getQtyOrdered(), mc);
				newItemPriceWOInterest = newItemPriceWOInterest.setScale(3, RoundingMode.HALF_UP);
				//New item price with interest
				BigDecimal newItemPriceWInterest = newLineAmt.divide(lines[i].getQtyOrdered(), mc);
				newItemPriceWInterest = newItemPriceWInterest.setScale(3, RoundingMode.HALF_UP);
				// Check if price is under price limit.
				if (newItemPriceWOInterest.compareTo(lines[i].getPriceLimit()) < 0) {
					if(!role.isOverwritePriceLimit()){
						result = false;
					}
					//Adds the product that couldn't accept the discount applied
					products.add(lines[i].getProduct().getName());
				}
				//Sets the new net amount for the line
				lines[i].setLineNetAmt(newLineAmt);
				lines[i].setPriceActual(newItemPriceWInterest);
				BigDecimal PriceEntered = MUOMConversion.convertProductFrom (Env.getCtx(), lines[i].getM_Product_ID(),
							lines[i].getC_UOM_ID(), lines[i].getPriceActual());
				if (PriceEntered == null)
					PriceEntered = lines[i].getPriceActual();
				lines[i].setPriceEntered(PriceEntered);
				//Add the line amount to the final amount
				totalLinesAmt = totalLinesAmt.add(lines[i].getLineNetAmt());
				totalLinesAmt = totalLinesAmt.setScale(2, RoundingMode.HALF_UP);
			}
			//check if the discount could be applied
			if (result) {
				//Save the lines

				//Set the Overall Discount field on the order header
				order.set_ValueOfColumn("lbr_OverallDiscount", null);
				order.save();


				for (int i = 0; i < lines.length; i++){
					if(lines[i].is_Changed())
						lines[i].save(trx);
				}
			}
		}
		else{
			if(isPercent){
				//Set the Overall Discount field on the order header
				order.set_ValueOfColumn("lbr_OverallDiscount", null);
				order.save();

				for (int i = 0; i < lines.length; i++) {
					//Get the loan information
					//BigDecimal lineInterest = Env.ZERO;
					//BigDecimal previousQtyInterest = Env.ZERO;
					//if(lines[i].get_Value("FinanceChargeLine") != null)
					//	lineInterest = (BigDecimal)lines[i].get_Value("FinanceChargeLine");
					//if(lineInterest.compareTo(Env.ZERO) != 0 && lines[i].getQtyInvoiced().compareTo(Env.ZERO) != 0)
					//	previousQtyInterest = lineInterest.divide(lines[i].getQtyInvoiced(), mc);

					//Calculate the new line amount.
					BigDecimal newLineAmt = (lines[i].getPriceList().multiply(lines[i].getQtyOrdered()));
					newLineAmt = newLineAmt.setScale(2, RoundingMode.HALF_UP);
					//New item price with interest
					BigDecimal newItemPriceWInterest = newLineAmt.divide(lines[i].getQtyOrdered(), mc);
					newItemPriceWInterest = newItemPriceWInterest.setScale(3, RoundingMode.HALF_UP);

					lines[i].setLineNetAmt(newLineAmt);
					lines[i].setPriceActual(newItemPriceWInterest);
					BigDecimal PriceEntered = MUOMConversion.convertProductFrom (Env.getCtx(), lines[i].getM_Product_ID(),
								lines[i].getC_UOM_ID(), lines[i].getPriceActual());
					if (PriceEntered == null)
						PriceEntered = lines[i].getPriceActual();
					lines[i].setPriceEntered(PriceEntered);
					lines[i].save();
				}
			}
		}
		return result;
	}

}
