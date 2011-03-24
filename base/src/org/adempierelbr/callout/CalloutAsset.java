/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
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
package org.adempierelbr.callout;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Properties;

import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.util.TaxBR;
import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.util.Env;

/**
 * CalloutAsset
 * 
 * Callout for Table A_Asset
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: CalloutAsset.java, 03/03/2011 09:25:00 mgrigioni
 */
public class CalloutAsset extends CalloutEngine
{
	
	/**	Debug Steps			*/
	//private boolean steps = false;

	/**
	 *  BPartner
	 *
	 *  @param ctx      Context
	 *  @param WindowNo current Window No
	 *  @param mTab     Model Tab
	 *  @param mField   Model Field
	 *  @param value    The new value
	 *  @return Error message or ""
	 *  
	 *  Table - A_Asset / Column LBR_NotaFiscal_ID
	 * 
	 */
	public String BPartner (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		Integer LBR_NotaFiscal_ID = (Integer)mField.getValue();
		if (LBR_NotaFiscal_ID == null || LBR_NotaFiscal_ID.intValue() == 0)
			return "";
		
		MLBRNotaFiscal nf = new MLBRNotaFiscal(ctx,LBR_NotaFiscal_ID,null);
		if (nf.getC_BPartner_ID() != 0){
			mTab.setValue("C_BPartner_ID", nf.getC_BPartner_ID());
		}
		else{
			mTab.setValue("C_BPartner_ID", null);
		}
		
		if (nf.getC_BPartner_Location_ID() != 0){
			mTab.setValue("C_BPartner_Location_ID", nf.getC_BPartner_Location_ID());
		}
		else{
			mTab.setValue("C_BPartner_Location_ID", null);
		}
		
		Timestamp createDate = nf.getlbr_DateInOut();
		if (createDate == null)
			createDate = nf.getDateDoc();
		
		mTab.setValue("A_Asset_CreateDate", createDate);
		
		mTab.setValue("AD_User_ID", null);
		
		return "";
	}	// BPartner
	
	/**
	 *  Product
	 *
	 *  @param ctx      Context
	 *  @param WindowNo current Window No
	 *  @param mTab     Model Tab
	 *  @param mField   Model Field
	 *  @param value    The new value
	 *  @return Error message or ""
	 *  
	 *  Table - A_Asset / Column LBR_NotaFiscalLine_ID
	 * 
	 */
	public String Product (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		Integer LBR_NotaFiscalLine_ID = (Integer)mField.getValue();
		if (LBR_NotaFiscalLine_ID == null || LBR_NotaFiscalLine_ID.intValue() == 0)
			return "";
		
		MLBRNotaFiscalLine nfLine = new MLBRNotaFiscalLine(ctx,LBR_NotaFiscalLine_ID,null);
		if (nfLine.getM_Product_ID() != 0)
			mTab.setValue("M_Product_ID", nfLine.getM_Product_ID());
		
		mTab.setValue("Help", nfLine.getDescription());
		
		//Valor do Ativo
		BigDecimal A_QTY_Original = nfLine.getTotalOperationAmt();
		if (A_QTY_Original.signum() == 1){
			BigDecimal qtd = nfLine.getQty();
			if (qtd.signum() != 1){
				qtd = Env.ONE;
			}
			A_QTY_Original = A_QTY_Original.divide(qtd, TaxBR.MCROUND);
			mTab.setValue("A_QTY_Original", A_QTY_Original);
		}
		
		return "";
	}	// Product
	
	
} //CalloutAsset