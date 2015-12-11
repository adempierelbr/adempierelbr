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
import java.util.Properties;

import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRADILine;
import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.adempierelbr.wrapper.I_W_C_Order;
import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MBPartner;
import org.compiere.model.MOrder;
import org.compiere.util.Env;

/**
 * CalloutOrder
 * 
 * Callout for Table C_Order
 * 
 * @author Mario Grigioni (Kenos, www.kenos.com.br)
 * @author Ricardo Santana (Kenos, www.kenos.com.br)
 * @version $Id: CalloutOrder.java, 10/01/2008 10:44:00 mgrigioni
 */
public class CalloutOrder extends CalloutEngine
{
	
	/**	Debug Steps			*/
	//private boolean steps = false;

	/**
	 *  NFDescription
	 *
	 *  @param ctx      Context
	 *  @param WindowNo current Window No
	 *  @param mTab     Model Tab
	 *  @param mField   Model Field
	 *  @param value    The new value
	 *  @return Error message or ""
	 *  
	 *  Table - C_Order / Column C_BPartner
	 *  FR [ 1862321 ] Observações Nota Fiscal
	 * 
	 */
	public String NFDescription (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		Integer C_BPartner_ID = (Integer)mTab.getValue("C_BPartner_ID");
		
		if (C_BPartner_ID == null || C_BPartner_ID.intValue() == 0)
			return "";
		
		boolean isSOTrx = (Env.getContext(ctx, WindowNo, "IsSOTrx")).equalsIgnoreCase("Y");
		
		if (!isSOTrx) return "";
		
		MBPartner bpartner = new MBPartner(ctx,C_BPartner_ID,null);
		
		String nfDescription = bpartner.get_ValueAsString("lbr_NFDescription");
		
		mTab.setValue("lbr_NFDescription", nfDescription);
		
		return "";
	}	//	NFDescription
	
	/**
	 *  PaymentRule
	 *
	 *  @param ctx      Context
	 *  @param WindowNo current Window No
	 *  @param mTab     Model Tab
	 *  @param mField   Model Field
	 *  @param value    The new value
	 *  @return Error message or ""
	 *  
	 *  Table - C_Order / Column C_BPartner
	 *  FR [ 1916758 ] Forma de Pagamento - Carteira
	 * 
	 */
	public String PaymentRule (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		Integer C_BPartner_ID = (Integer)mTab.getValue("C_BPartner_ID");
		
		if (C_BPartner_ID == null || C_BPartner_ID.intValue() == 0)
			return "";
		
		boolean isSOTrx = (Env.getContext(ctx, WindowNo, "IsSOTrx")).equalsIgnoreCase("Y");
		
		if (!isSOTrx) 
			return "";
		
		//	Valores padrão do LBR
		I_W_C_BPartner bpartner = POWrapper.create (new MBPartner(ctx, C_BPartner_ID, null), I_W_C_BPartner.class);
		
		String  paymentRule  = bpartner.getlbr_PaymentRule();
		Integer C_BankAccount_ID = bpartner.getC_BankAccount_ID();
		Integer M_Shipper_ID = bpartner.getM_Shipper_ID();
		
		if (paymentRule != null)
			mTab.setValue(I_W_C_Order.COLUMNNAME_lbr_PaymentRule, paymentRule);
		
		if (C_BankAccount_ID != null && C_BankAccount_ID > 0)
			mTab.setValue(I_W_C_Order.COLUMNNAME_C_BankAccount_ID, C_BankAccount_ID);
		
		if (M_Shipper_ID != null && M_Shipper_ID > 0)
			mTab.setValue(I_W_C_Order.COLUMNNAME_M_Shipper_ID, M_Shipper_ID);

		mTab.setValue(I_W_C_Order.COLUMNNAME_PaymentRule, MOrder.PAYMENTRULE_OnCredit);
		mTab.setValue(I_W_C_Order.COLUMNNAME_LBR_HasWithhold, bpartner.isLBR_HasWithhold());
		
		return "";
	}	//	PaymentRule

	/**
	 *  	Marca o flag para recalcular os impostos
	 *
	 *  @param ctx      Context
	 *  @param WindowNo current Window No
	 *  @param mTab     Model Tab
	 *  @param mField   Model Field
	 *  @param value    The new value
	 *  @return Error message or ""
	 */
	public String recalculateTaxes (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		mTab.setValue("lbr_RecalculateTax", true);
		return "";
	}	//	recalculateTaxes
	
	/**
	 *  	Pega o valor do SISCOMEX
	 *
	 *  @param ctx      Context
	 *  @param WindowNo current Window No
	 *  @param mTab     Model Tab
	 *  @param mField   Model Field
	 *  @param value    The new value
	 *  @return Error message or ""
	 */
	public String getSISCOMEX (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		BigDecimal siscomex = (BigDecimal) mTab.getValue("lbr_SISCOMEXAmt");
		//
		if (mField.getColumnName().equals("LBR_ADILine_ID")
				&& value != null)
		{
			MLBRADILine adi = new MLBRADILine (ctx, (Integer) value, null);
			//
			siscomex = adi.getSISCOMEX();
			//
			if (siscomex != null)
				mTab.setValue("lbr_SISCOMEXAmt", siscomex);
		}
		return "";
	}	//	getSISCOMEX
}	//	CalloutOrder
