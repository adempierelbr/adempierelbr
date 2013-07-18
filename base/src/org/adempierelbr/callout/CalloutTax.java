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

import java.util.Map;
import java.util.Properties;

import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRTax;
import org.adempierelbr.model.MLBRTaxLine;
import org.adempierelbr.model.X_LBR_CFOP;
import org.adempierelbr.model.X_LBR_CFOPLine;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.adempierelbr.wrapper.I_W_C_Invoice;
import org.adempierelbr.wrapper.I_W_C_Order;
import org.adempierelbr.wrapper.I_W_C_OrderLine;
import org.adempierelbr.wrapper.I_W_M_Product;
import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.util.Env;

/**
 * CalloutTax
 *
 * Callout for Table C_OrderLine and C_InvoiceLine
 * This callout defines the taxes that will be applied to the Document.
 * This is done using the getTaxes method. As soon as the taxes that
 * need to be applied are found, they're saved in the following way:
 * 	- LBR_Tax (Header for the taxes that are applied to the Document)
 * 		- LBR_TaxLine (Contain the applied taxes + their needed info)
 *
 * The actual taxes get calculated after the save button is pressed
 * in the document line tab. It gets calculated by the ValidatorOrder/ValidatorInvoice
 *
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *			<li> Sponsored by Soliton, www.soliton.com.br
 *	@version $Id: CalloutTax.java, v1.0 2011/10/14 12:54:53 AM, ralexsander Exp $
 *
 *	Former Version:
 *
 * [ 1967059 ] Atualizar a description do LBR_Tax_ID na GUI
 * [ 1967062 ] LBR_Tax criado sem necessidade
 * [ 2034912 ] CalloutTax - ICMS Compra x Venda
 *
 * @author Mario Grigioni (Kenos, www.kenos.com.br)
 * @contributor Fernando Lucktemberg (Faire, www.faire.com.br)
 * @contributor	Ricardo Santana (Kenos, www.kenos.com.br)
 * @version $Id: CalloutTax.java, 11/12/2007 16:23:00 mgrigioni
 */
public class CalloutTax extends CalloutEngine
{
	/**
	 *  getDestinationType
	 *
	 *  @param ctx      Context
	 *  @param WindowNo current Window No
	 *  @param mTab     Model Tab
	 *  @param mField   Model Field
	 *  @param value    The new value
	 *  @return Error message or ""
	 *
	 *  Table - LBR_CFOPLine / Column LBR_CFOP_ID
	 *
	 */
	public String getDestinationType (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		Integer LBR_CFOP_ID = (Integer)mTab.getValue("LBR_CFOP_ID");
		if (LBR_CFOP_ID == null || LBR_CFOP_ID.intValue() == 0)
			return "";
		//
		X_LBR_CFOP cfop = new X_LBR_CFOP(ctx, LBR_CFOP_ID, null);
		//
		if (cfop.getValue().startsWith("1") || cfop.getValue().startsWith("5"))
			mTab.setValue("lbr_DestionationType",X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_EstadosIdenticos);
		else if (cfop.getValue().startsWith("2") || cfop.getValue().startsWith("6"))
			mTab.setValue("lbr_DestionationType", X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_EstadosDiferentes);
		else if (cfop.getValue().startsWith("3") || cfop.getValue().startsWith("7"))
			mTab.setValue("lbr_DestionationType", X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_Estrangeiro);
		//
		return "";
	}	//	getDestinationType

	/**
	 *  Atualiza o tipo de transação.
	 *
	 *	Table C_Order 	- column C_BPartner_ID
	 *  Table C_Invoice - column C_BPartner_ID
	 *
	 *  @param ctx      Context
	 *  @param WindowNo current Window No
	 *  @param mTab     Model Tab
	 *  @param mField   Model Field
	 *  @param value    The new value
	 *  @return Error message or ""
	 */
	public String getTransactionType (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		Integer C_BPartner_ID = (Integer) mTab.getValue("C_BPartner_ID");
		String trxType = (String) mTab.getValue("lbr_TransactionType");
		//
		if (C_BPartner_ID == null || C_BPartner_ID.intValue() == 0
				|| (trxType != null && trxType.length() > 0))	//	Não substituir a transação caso já preenchida
			return "";
		//
		I_W_C_BPartner bp = POWrapper.create (new MBPartner(ctx,C_BPartner_ID,null), I_W_C_BPartner.class);
		//
		mTab.setValue("lbr_TransactionType", bp.getlbr_TransactionType());
//		mTab.setValue("lbr_NFType", bp.getlbr_NFType());	//	TODO: Verificar campo lbr_NFType
		//
		return "";
	}	//	getTransactionType
	
	/**
	 *		Processos para pegar o Impostos
	 *
	 *  @param ctx      Context
	 *  @param WindowNo current Window No
	 *  @param mTab     Model Tab
	 *  @param mField   Model Field
	 *  @param value    The new value
	 *  @return Error message or ""
	 */
	@SuppressWarnings("unchecked")
	public String getTaxes (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		if (mField == null)
			return "";

		Integer M_Product_ID = (Integer) mTab.getValue(MOrderLine.COLUMNNAME_M_Product_ID);
		
		if (M_Product_ID == null || M_Product_ID == 0)
			return "";

		Integer C_Order_ID = null;
		Integer C_Invoice_ID = null;
		
		Integer AD_Org_ID = (Integer) mTab.getValue(MOrderLine.COLUMNNAME_AD_Org_ID);

		if (AD_Org_ID == null)
			AD_Org_ID = 0;
		
		I_W_AD_OrgInfo oi = POWrapper.create(MOrgInfo.get(Env.getCtx(), AD_Org_ID, null), I_W_AD_OrgInfo.class);

		Object[] taxation = null;
		MBPartnerLocation bpLoc = null;

		if (mTab.getTableName().equals(MOrderLine.Table_Name)) {
			C_Order_ID = (Integer) mTab.getValue(MOrderLine.COLUMNNAME_C_Order_ID);

			if (C_Order_ID == null)
				C_Order_ID = 0;

			I_W_C_Order o = POWrapper.create(new MOrder (Env.getCtx(), C_Order_ID, null), I_W_C_Order.class);
			I_W_M_Product p = POWrapper.create(new MProduct (Env.getCtx(), M_Product_ID, null), I_W_M_Product.class);
			I_W_C_BPartner bp = POWrapper.create(new MBPartner (Env.getCtx(), o.getC_BPartner_ID(), null), I_W_C_BPartner.class);
			bpLoc = (MBPartnerLocation) o.getBill_Location(); 
			taxation = MLBRTax.getTaxes (o.getC_DocTypeTarget_ID(), o.isSOTrx(), o.getlbr_TransactionType(), p, oi, bp, bpLoc, o.getDateAcct());

		} else if (mTab.getTableName().equals(MInvoiceLine.Table_Name)) {
			C_Invoice_ID = (Integer) mTab.getValue(MInvoiceLine.COLUMNNAME_C_Invoice_ID);

			if (C_Invoice_ID == null)
				C_Invoice_ID = 0;

			I_W_C_Invoice i = POWrapper.create(new MInvoice (Env.getCtx(), C_Invoice_ID, null), I_W_C_Invoice.class);
			I_W_M_Product p = POWrapper.create(new MProduct (Env.getCtx(), M_Product_ID, null), I_W_M_Product.class);
			I_W_C_BPartner bp = POWrapper.create(new MBPartner (Env.getCtx(), i.getC_BPartner_ID(), null), I_W_C_BPartner.class);
			bpLoc = (MBPartnerLocation) i.getC_BPartner_Location(); 
			taxation = MLBRTax.getTaxes (i.getC_DocTypeTarget_ID(), i.isSOTrx(), i.getlbr_TransactionType(), p, oi, bp, bpLoc, i.getDateAcct());

		}


		/**
		 * 	0 = Taxes
		 * 	1 = Legal Message
		 * 	2 = CFOP
		 * 	3 = CST
		 */
		//
		if (taxation == null)
			return "";
		//
		Map<Integer, MLBRTaxLine> taxes = (Map<Integer, MLBRTaxLine>) taxation[0];
		
		if (((Integer) taxation[1]) > 0)
			mTab.setValue("LBR_LegalMessage_ID", ((Integer) taxation[1]));
		
		if (((Integer) taxation[2]) > 0)
			mTab.setValue("LBR_CFOP_ID", ((Integer) taxation[2]));
		
//		if (((String) taxation[3]) != null && ((String) taxation[3]).length() > 0)
//			mTab.setValue("lbr_TaxStatus", p.getlbr_ProductSource() + ((String) taxation[3]));
		//
		if (taxes.size() > 0)
		{
			MLBRTax tax = new MLBRTax (Env.getCtx(), 0, null);
			tax.save();
			//
			for (Integer key : taxes.keySet())
			{
				MLBRTaxLine tl = taxes.get(key);
				tl.setLBR_Tax_ID(tax.getLBR_Tax_ID());
				tl.save();
			}
			//
			tax.setDescription();
			tax.save();
			//
			mTab.setValue("LBR_Tax_ID", tax.getLBR_Tax_ID());
		}
		//
		return "";
	}	//	taxes
	
	/**
	 *		Processos para habilitar a Flag lbr_RecalculateTaxes que habilitará o ModelChange da tabela
	 *
	 *  @param ctx      Context
	 *  @param WindowNo current Window No
	 *  @param mTab     Model Tab
	 *  @param mField   Model Field
	 *  @param value    The new value
	 *  @return ""
	 *  @author Priscila Pinheiro (contato@kenos.com.br)
     *	        <li> Sponsored by Kenos, www.kenos.com.br
	 */
	public String recalculateTaxes (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		mTab.setValue(I_W_C_OrderLine.COLUMNNAME_lbr_RecalculateTax, true);
		return "";
	}	//	recalculateTaxes
	
}	//	CalloutTax
