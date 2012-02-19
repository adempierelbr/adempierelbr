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

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRCFOP;
import org.adempierelbr.model.MLBRCFOPLine;
import org.adempierelbr.model.MLBRICMSMatrix;
import org.adempierelbr.model.MLBRISSMatrix;
import org.adempierelbr.model.MLBRNCM;
import org.adempierelbr.model.MLBRNCMTax;
import org.adempierelbr.model.MLBRTax;
import org.adempierelbr.model.MLBRTaxConfigBPGroup;
import org.adempierelbr.model.MLBRTaxConfigBPartner;
import org.adempierelbr.model.MLBRTaxConfigProduct;
import org.adempierelbr.model.MLBRTaxConfigProductGroup;
import org.adempierelbr.model.MLBRTaxConfigRegion;
import org.adempierelbr.model.MLBRTaxConfiguration;
import org.adempierelbr.model.MLBRTaxDefinition;
import org.adempierelbr.model.MLBRTaxLine;
import org.adempierelbr.model.X_LBR_CFOP;
import org.adempierelbr.model.X_LBR_CFOPLine;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.adempierelbr.wrapper.I_W_C_Order;
import org.adempierelbr.wrapper.I_W_C_OrderLine;
import org.adempierelbr.wrapper.I_W_M_Product;
import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MBPartner;
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
	private boolean hasSubstitution     = false;

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
	@SuppressWarnings("deprecation")
	public String getTaxes (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		if (mField == null)
			return "";

		Integer M_Product_ID = (Integer) mTab.getValue(MOrderLine.COLUMNNAME_M_Product_ID);
		
		if (M_Product_ID == null || M_Product_ID == 0)
			return "";
		
		Integer C_Order_ID = (Integer) mTab.getValue(MOrderLine.COLUMNNAME_C_Order_ID);
		Integer C_OrderLine_ID = (Integer) mTab.getValue(MOrderLine.COLUMNNAME_C_OrderLine_ID);
		Integer AD_Org_ID = (Integer) mTab.getValue(MOrderLine.COLUMNNAME_AD_Org_ID);
		Integer C_BPartner_ID = (Integer) mTab.getValue(MOrderLine.COLUMNNAME_C_BPartner_ID);
		
		if (C_Order_ID == null)
			C_Order_ID = 0;
		
		if (C_OrderLine_ID == null)
			C_OrderLine_ID = 0;
		
		if (AD_Org_ID == null)
			AD_Org_ID = 0;
		
		if (C_BPartner_ID == null)
			C_BPartner_ID = 0;
		
		I_W_C_Order o = POWrapper.create(new MOrder (Env.getCtx(), C_Order_ID, null), I_W_C_Order.class);
		I_W_C_OrderLine ol = POWrapper.create(new MOrderLine (Env.getCtx(), C_OrderLine_ID, null), I_W_C_OrderLine.class);
		I_W_M_Product p = POWrapper.create(new MProduct (Env.getCtx(), M_Product_ID, null), I_W_M_Product.class);
		I_W_AD_OrgInfo oi = POWrapper.create(MOrgInfo.get(Env.getCtx(), AD_Org_ID, null), I_W_AD_OrgInfo.class);
		I_W_C_BPartner bp = POWrapper.create(new MBPartner (Env.getCtx(), C_BPartner_ID, null), I_W_C_BPartner.class);
		//
		Map<Integer, MLBRTaxLine> taxes = new HashMap<Integer, MLBRTaxLine>();
		//
		int LBR_LegalMessage_ID = 0;
		String lbr_TaxStatus = "";
		//
		Timestamp dateAcct = o.getDateAcct();

		/**
		 * 	Organization
		 */
		processTaxes(taxes, oi.getLBR_Tax_ID());
		
		/**
		 * 	NCM
		 *	FIXME: Criar o campo de NCM na OV
		 */
		if (p.getM_Product_ID() > 0 && p.getLBR_NCM_ID() > 0)
		{
			MLBRNCM ncm = new MLBRNCM (Env.getCtx(), p.getLBR_NCM_ID(), null);
			MLBRNCMTax ncmTax = ncm.getLBR_Tax_ID(oi.getAD_Org_ID(), o.getBill_Location().getC_Location().getC_Region_ID(), dateAcct);
			//
			if (ncmTax != null)
			{
				hasSubstitution = ncmTax.islbr_HasSubstitution();
				processTaxes(taxes, ncmTax.getLBR_Tax_ID());
			}
			else
			{
				hasSubstitution = ncm.islbr_HasSubstitution();
				processTaxes(taxes, ncm.getLBR_Tax_ID());	//	Legacy
			}
		}
		
		/**
		 * 	Matriz de ICMS
		 */
		MLBRICMSMatrix mICMS = MLBRICMSMatrix.get (ctx, oi.getAD_Org_ID(), oi.getC_Location().getC_Region_ID(), o.getBill_Location().getC_Location().getC_Region_ID(), dateAcct, null);
		//
		if (mICMS != null && mICMS.getLBR_Tax_ID() > 0)
		{
			processTaxes(taxes, mICMS.getLBR_Tax_ID());
			//
			if (hasSubstitution && mICMS.getLBR_STTax_ID() > 0)
				processTaxes(taxes, mICMS.getLBR_STTax_ID());
		}
		
		/**
		 * 	Matriz de ISS
		 */
		MLBRISSMatrix mISS = MLBRISSMatrix.get (ctx, oi.getAD_Org_ID(), o.getBill_Location().getC_Location().getC_Region_ID(), 
				o.getBill_Location().getC_Location().getC_City_ID(), p.getM_Product_ID(), dateAcct, null);
		//
		if (MProduct.PRODUCTTYPE_Service.equals(p.getProductType()) && mISS != null && mISS.getLBR_Tax_ID() > 0)
		{
			processTaxes(taxes, mISS.getLBR_Tax_ID());
		}
		
		/**
		 * 	Janela de Configuração de Impostos
		 */
		MLBRTaxConfiguration tc = MLBRTaxConfiguration.get (ctx, oi.getAD_Org_ID(), ol.getM_Product_ID(), 
				p.getLBR_FiscalGroup_Product_ID(), o.isSOTrx(), null);
		//
		if (tc != null)
		{
			/**
			 * 	Product Group
			 */
			if (MLBRTaxConfiguration.LBR_EXCEPTIONTYPE_FiscalGroup.equals(tc.getlbr_ExceptionType()))
			{
				MLBRTaxConfigProductGroup tcpg = tc.getTC_ProductGroup (oi.getAD_Org_ID(), dateAcct);
				
				if (tcpg != null)
				{
					processTaxes(taxes, tcpg.getLBR_Tax_ID());
					//
					if (tcpg.getLBR_LegalMessage_ID() > 0)
						LBR_LegalMessage_ID =  tcpg.getLBR_LegalMessage_ID();
					//
					if (tcpg.getlbr_TaxStatus() != null && tcpg.getlbr_TaxStatus().length() > 0)
						lbr_TaxStatus = tcpg.getlbr_TaxStatus() ;
				}
			}

			/**
			 * 	Product
			 */
			else if (MLBRTaxConfiguration.LBR_EXCEPTIONTYPE_Product.equals(tc.getlbr_ExceptionType()))
			{
				MLBRTaxConfigProduct tcp = tc.getTC_Product (oi.getAD_Org_ID(), dateAcct);
				
				if (tcp != null)
				{
					processTaxes(taxes, tcp.getLBR_Tax_ID());
					//
					if (tcp.getLBR_LegalMessage_ID() > 0)
						LBR_LegalMessage_ID =  tcp.getLBR_LegalMessage_ID();
					//
					if (tcp.getlbr_TaxStatus() != null && tcp.getlbr_TaxStatus().length() > 0)
						lbr_TaxStatus = tcp.getlbr_TaxStatus() ;
				}
			}
			
			/**
			 * 	Region
			 */
			MLBRTaxConfigRegion tcr = tc.getTC_Region (oi.getAD_Org_ID(), oi.getC_Location().getC_Region_ID(), o.getBill_Location().getC_Location().getC_Region_ID(), dateAcct);
			
			if (tcr != null)
			{
				processTaxes(taxes, tcr.getLBR_Tax_ID());
				//
				if (tcr.getLBR_LegalMessage_ID() > 0)
					LBR_LegalMessage_ID =  tcr.getLBR_LegalMessage_ID();
				//
				if (tcr.getlbr_TaxStatus() != null && tcr.getlbr_TaxStatus().length() > 0)
					lbr_TaxStatus = tcr.getlbr_TaxStatus() ;
			}
				
			/**
			 * 	Business Partner Group
			 */
			MLBRTaxConfigBPGroup tcbpg = tc.getTC_BPGroup (oi.getAD_Org_ID(), (o.isSOTrx() ? bp.getLBR_FiscalGroup_Customer_ID() : bp.getLBR_FiscalGroup_Customer_ID()), dateAcct);
			
			if (tcbpg != null)
			{
				processTaxes(taxes, tcbpg.getLBR_Tax_ID());
				//
				if (tcbpg.getLBR_LegalMessage_ID() > 0)
					LBR_LegalMessage_ID =  tcbpg.getLBR_LegalMessage_ID();
				//
				if (tcbpg.getlbr_TaxStatus() != null && tcbpg.getlbr_TaxStatus().length() > 0)
					lbr_TaxStatus = tcbpg.getlbr_TaxStatus() ;
			}

			/**
			 * 	Business Partner
			 */
			MLBRTaxConfigBPartner tcbp = tc.getTC_BPartner (oi.getAD_Org_ID(), bp.getC_BPartner_ID(), dateAcct);
			
			if (tcbp != null)
			{
				processTaxes (taxes, tcbp.getLBR_Tax_ID());
				//
				if (tcbp.getLBR_LegalMessage_ID() > 0)
					LBR_LegalMessage_ID =  tcbp.getLBR_LegalMessage_ID();
				//
				if (tcbp.getlbr_TaxStatus() != null && tcbp.getlbr_TaxStatus().length() > 0)
					lbr_TaxStatus = tcbp.getlbr_TaxStatus();
			}
		}
		
		/**
		 * 	CFOP
		 */
		String lbr_DestionationType = null;
		
		/**
		 * 	No caso de SUFRAMA, definir como Zona Franca - FIXME
		 */
		if (bp.getlbr_Suframa() != null && bp.getlbr_Suframa().length() > 0)
			lbr_DestionationType = X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_ZonaFranca;
		
		/**
		 * 	Importação ou Exportação
		 */
		else if (o.getBill_Location().getC_Location().getC_Country_ID() != oi.getC_Location().getC_Country_ID())
			lbr_DestionationType = X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_Estrangeiro;
		
		/**
		 * 	Dentro do Estado
		 */
		else if (o.getBill_Location().getC_Location().getC_Region_ID() == oi.getC_Location().getC_Region_ID())
			lbr_DestionationType = X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_EstadosIdenticos;
		
		/**
		 * 	Fora do Estado
		 */
		else 
			lbr_DestionationType = X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_EstadosDiferentes;
		
		MLBRCFOPLine cFOPLine = MLBRCFOP.chooseCFOP (oi.getAD_Org_ID(), o.getC_DocTypeTarget_ID(), p.getLBR_ProductCategory_ID(), 
				(o.isSOTrx() ? bp.getLBR_CustomerCategory_ID() : bp.getLBR_VendorCategory_ID()), 
				o.getlbr_TransactionType(), lbr_DestionationType, hasSubstitution, p.islbr_IsManufactured(), null);
		//
		if (cFOPLine != null)
		{
			processTaxes (taxes, cFOPLine.getLBR_Tax_ID());
			//
			if (cFOPLine.getLBR_LegalMessage_ID() > 0)
				LBR_LegalMessage_ID =  cFOPLine.getLBR_LegalMessage_ID();
			//
			if (cFOPLine.getlbr_TaxStatus() != null && cFOPLine.getlbr_TaxStatus().length() > 0)
				lbr_TaxStatus = cFOPLine.getlbr_TaxStatus();
			//
			mTab.setValue("LBR_CFOP_ID", cFOPLine.getLBR_CFOP_ID());
		}
		
		//	Tax Definition
		MLBRTaxDefinition[] taxesDef = MLBRTaxDefinition.get (oi.getAD_Org_ID(), o.getC_BPartner_ID(), o.getC_DocTypeTarget_ID(), 
				oi.getC_Location().getC_Region_ID(), o.getBill_Location().getC_Location().getC_Region_ID(), 
				(o.isSOTrx() ? bp.getLBR_CustomerCategory_ID() : bp.getLBR_VendorCategory_ID()), 
				(o.isSOTrx() ? bp.getLBR_FiscalGroup_Customer_ID() : bp.getLBR_FiscalGroup_Vendor_ID()), p.getLBR_FiscalGroup_Product_ID(), 
				p.getLBR_NCM_ID(),  p.getLBR_ProductCategory_ID(), hasSubstitution, o.getlbr_TransactionType(), dateAcct);
		//
		for (MLBRTaxDefinition td : taxesDef)
		{
			processTaxes (taxes, td.getLBR_Tax_ID());
			//
			if (td.getLBR_LegalMessage_ID() > 0)
				LBR_LegalMessage_ID =  td.getLBR_LegalMessage_ID();
			//
			if (td.getlbr_TaxStatus() != null && td.getlbr_TaxStatus().length() > 0)
				lbr_TaxStatus = td.getlbr_TaxStatus();
		}
		//
		if (LBR_LegalMessage_ID > 0)
			mTab.setValue("LBR_LegalMessage_ID", LBR_LegalMessage_ID);
		if (lbr_TaxStatus != null && lbr_TaxStatus.length() > 0)
			mTab.setValue("lbr_TaxStatus", p.getlbr_ProductSource() + lbr_TaxStatus);
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
	 * 	Ajusta os impostos
	 * 	@param taxes
	 * 	@param tcpg
	 */
	private void processTaxes (Map<Integer, MLBRTaxLine> taxes, int LBR_Tax_ID)
	{
		if (LBR_Tax_ID < 1 || taxes == null)
			return;
		//
		MLBRTax tax = new MLBRTax (Env.getCtx(), LBR_Tax_ID, null);
		//
		for (MLBRTaxLine tl : tax.getLines())
		{
			if (taxes.containsKey(tl.getLBR_TaxName_ID()))
				taxes.remove(tl.getLBR_TaxName_ID());
			//
			taxes.put (tl.getLBR_TaxName_ID(), tl.copy());
		}
	}	//	processTaxes
}	//	CalloutTax
