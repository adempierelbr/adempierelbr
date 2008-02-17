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

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRICMSMatrix;
import org.adempierelbr.model.MTax;
import org.adempierelbr.util.POLBR;
import org.adempierelbr.util.TaxBR;
import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.I_C_Order;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MInvoice;
import org.compiere.model.MLocation;
import org.compiere.model.MOrder;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.model.X_LBR_CFOP;
import org.compiere.model.X_LBR_NCM;
import org.compiere.model.X_LBR_TaxConfig_BPGroup;
import org.compiere.model.X_LBR_TaxConfig_BPartner;
import org.compiere.model.X_LBR_TaxConfig_Product;
import org.compiere.model.X_LBR_TaxConfig_ProductGroup;
import org.compiere.model.X_LBR_TaxConfig_Region;
import org.compiere.model.X_LBR_TaxLine;
import org.compiere.model.X_LBR_TaxName;
import org.compiere.model.X_LBR_CFOPLine;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * CalloutTax
 * 
 * Callout for Table C_OrderLine and C_InvoiceLine
 * 
 * @author Mario Grigioni (Kenos, www.kenos.com.br)
 * @version $Id: CalloutTax.java, 11/12/2007 16:23:00 mgrigioni
 */
public class CalloutTax extends CalloutEngine
{
	/**	Debug Steps			*/
	//private boolean steps = false;
	
	private MTax tax = null;
	
	private Map<Integer, Integer> lines = new HashMap<Integer, Integer>();
		
	private String  lbr_TaxType         = TaxBR.taxType_Product;
	private String  lbr_TaxStatus       = "00";
	private Integer LBR_LegalMessage_ID = null;
	private boolean hasSubstitution     = false;

	/**
	 *  getTaxes
	 *
	 *  @param ctx      Context
	 *  @param WindowNo current Window No
	 *  @param mTab     Model Tab
	 *  @param mField   Model Field
	 *  @param value    The new value
	 *  @return Error message or ""
	 *  
	 *  Table C_OrderLine - column M_Product_ID
	 *  Table C_InvoiceLine - column M_Product_ID
	 *  
	 */
		
	public String getTaxes(Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		//ID's
		Integer ID                          = null; // C_Order_ID ou C_Invoice_ID
		Integer M_Product_ID                = null;
		Integer LBR_NCM_ID                  = null;
		Integer C_BPartner_ID               = null;
		Integer C_BPartnerLocation_ID       = null;
		Integer LBR_FiscalGroup_BPartner_ID = null;
		Integer LBR_FiscalGroup_Product_ID  = null;
		Integer AD_Org_ID                   = null;
		Integer LBR_Tax_ID                  = null;
		Integer LBR_TaxConfiguration_ID     = null;
		//OBJETOS
		MOrder   order   = null;
		MInvoice invoice = null;
		//
		boolean  isSOTrx = true;
		//
		
		//Pega no Contexto, qual tipo de documento
		int table = Env.getContextAsInt(ctx, WindowNo, 0, "AD_Table_ID");
		if (table == I_C_Order.Table_ID){
			ID = (Integer)mTab.getValue("C_Order_ID");
			if (ID == null || ID.intValue() == 0) return "";
			
			//Cria o objeto e verifica Parceiro e Org da Ordem de Venda
			order = new MOrder(ctx,ID,null);
			//
			C_BPartner_ID         = order.getC_BPartner_ID();
			C_BPartnerLocation_ID = order.getC_BPartner_Location_ID();
			AD_Org_ID             = order.getAD_Org_ID();
			isSOTrx               = order.isSOTrx();
		}
		else{
			ID = (Integer)mTab.getValue("C_Invoice_ID");
			if (ID == null || ID.intValue() == 0) return "";
			
			//Cria o objeto e verifica Parceiro e Org da Fatura
			invoice = new MInvoice(ctx,ID,null);
			//
			C_BPartner_ID         = invoice.getC_BPartner_ID();
			C_BPartnerLocation_ID = invoice.getC_BPartner_Location_ID();
			AD_Org_ID             = invoice.getAD_Org_ID();
			isSOTrx               = invoice.isSOTrx();
		}
		
		//Product_ID
		M_Product_ID = (Integer)mTab.getValue("M_Product_ID");
		if (M_Product_ID == null || M_Product_ID.intValue() == 0)
			return "";
		
		//
		MOrgInfo orgInfo       = MOrgInfo.get(ctx, AD_Org_ID);
		MLocation orgLocation  = new MLocation(ctx,orgInfo.getC_Location_ID(),null);
		
		//LBR_Tax_ID
		LBR_Tax_ID = (Integer)mTab.getValue("LBR_Tax_ID");
		if (LBR_Tax_ID == null) LBR_Tax_ID = 0;
		tax = new MTax(ctx,LBR_Tax_ID,null);
		tax.save();
		tax.deleteLines();
		
		//
		MProduct product             = new MProduct(ctx, M_Product_ID,null);
		MBPartner bpartner           = new MBPartner(ctx, C_BPartner_ID,null);
		MBPartnerLocation bpLocation = new MBPartnerLocation(ctx, C_BPartnerLocation_ID,null);
		MLocation location           = new MLocation(ctx, bpLocation.getC_Location_ID(), null);
		//
		LBR_NCM_ID = (Integer)product.get_Value("LBR_NCM_ID");
		if (LBR_NCM_ID == null) LBR_NCM_ID = 0;
		X_LBR_NCM ncm = new X_LBR_NCM(ctx,LBR_NCM_ID,null);

		//Grupos de Tributação
		if (order != null){
			LBR_FiscalGroup_BPartner_ID = (Integer)bpartner.get_Value("LBR_FiscalGroup_Customer_ID");
		}
		else{
			LBR_FiscalGroup_BPartner_ID = (Integer)bpartner.get_Value("LBR_FiscalGroup_Vendor_ID");
		}
		
		LBR_FiscalGroup_Product_ID = (Integer)product.get_Value("LBR_FiscalGroup_Product_ID");
		
		//Define se é Produto ou Serviço
		if (product.getProductType().equalsIgnoreCase("I")){
			lbr_TaxType = TaxBR.taxType_Product;
		}
		else{
			lbr_TaxType = TaxBR.taxType_Service;
		}
		
		//Define se possui Substituição Tributária
		boolean bp_hasSubstitution   = POLBR.get_ValueAsBoolean(bpartner.get_Value("lbr_HasSubstitution"));
		boolean prod_hasSubstitution = POLBR.get_ValueAsBoolean(product.get_Value("lbr_HasSubstitution"));
		
		if (bp_hasSubstitution && prod_hasSubstitution){
			hasSubstitution = true;
		}

		/**
		 * setLines
		 * Verifica os Padrões e Exceções para definir as Alíquotas dos Impostos
		 * 
		 */
		
		//Org
		setLines(ctx, (Integer)orgInfo.get_Value("LBR_Tax_ID"));
		
		//Region
		String transactionType = order.get_ValueAsString("lbr_TransactionType");
		boolean isIEExempt     = POLBR.get_ValueAsBoolean(bpartner.get_Value("lbr_IsIEExempt"));
		if (transactionType.equals("END") && isIEExempt)
			//Operação (Consumidor Final) e Isento de IE (Alíquota Interna)
			setLines(ctx, MLBRICMSMatrix.getLBR_Tax_ID(ctx,location.getC_Region_ID(),location.getC_Region_ID(),null));
		else
			setLines(ctx, MLBRICMSMatrix.getLBR_Tax_ID(ctx,orgLocation.getC_Region_ID(),location.getC_Region_ID(),null));
		
		//NCM
		if (LBR_NCM_ID != null && LBR_NCM_ID.intValue() != 0){
			setLines(ctx, (Integer)ncm.get_Value("LBR_Tax_ID"));
		}
		
		//Exceções (Configurador de Impostos)
		//Sem exceções Produto ou Grupo
		LBR_TaxConfiguration_ID = MTax.getLBR_TaxConfiguration_ID(null, null);
		if (LBR_TaxConfiguration_ID != null && LBR_TaxConfiguration_ID.intValue() != 0){
			//Grupo do Parceiro
			setLines(ctx,MTax.getLBR_TaxConfig_BPGroup(LBR_TaxConfiguration_ID, LBR_FiscalGroup_BPartner_ID));
			X_LBR_TaxConfig_BPGroup taxBPGroup = MTax.getX_LBR_TaxConfig_BPGroup(LBR_TaxConfiguration_ID, LBR_FiscalGroup_BPartner_ID);
			if (taxBPGroup != null){
				LBR_LegalMessage_ID = taxBPGroup.getLBR_LegalMessage_ID();
				lbr_TaxStatus       = taxBPGroup.getlbr_TaxStatus();
			}
			
			//Parceiro de Negócios
			setLines(ctx,MTax.getLBR_TaxConfig_BPartner(LBR_TaxConfiguration_ID, C_BPartner_ID));
			X_LBR_TaxConfig_BPartner taxBPartner = MTax.getX_LBR_TaxConfig_BPartner(LBR_TaxConfiguration_ID, C_BPartner_ID);
			if (taxBPartner != null){
				LBR_LegalMessage_ID = taxBPartner.getLBR_LegalMessage_ID();
				lbr_TaxStatus       = taxBPartner.getlbr_TaxStatus();
			}
			
		}
		//Exceção Grupo de Tributação (Produto)
		LBR_TaxConfiguration_ID = MTax.getLBR_TaxConfiguration_ID("G", LBR_FiscalGroup_Product_ID);
		if (LBR_TaxConfiguration_ID != null && LBR_TaxConfiguration_ID.intValue() != 0){
			//Grupo do Produto
			setLines(ctx,MTax.getLBR_TaxConfig_ProductGroup(LBR_TaxConfiguration_ID));
			X_LBR_TaxConfig_ProductGroup taxProductGroup = MTax.getX_LBR_TaxConfig_ProductGroup(LBR_TaxConfiguration_ID);
			if (taxProductGroup != null){
				LBR_LegalMessage_ID = taxProductGroup.getLBR_LegalMessage_ID();
				lbr_TaxStatus       = taxProductGroup.getlbr_TaxStatus();
			}
			
			//Estado
			setLines(ctx,MTax.getLBR_TaxConfig_Region(LBR_TaxConfiguration_ID, orgLocation.getC_Region_ID(),location.getC_Region_ID()));
			X_LBR_TaxConfig_Region taxRegion = MTax.getX_LBR_TaxConfig_Region(LBR_TaxConfiguration_ID, orgLocation.getC_Region_ID(),location.getC_Region_ID());
			if (taxRegion != null){
				LBR_LegalMessage_ID = taxRegion.getLBR_LegalMessage_ID();
				lbr_TaxStatus       = taxRegion.getlbr_TaxStatus();
			}
			
			//Grupo do Parceiro
			setLines(ctx,MTax.getLBR_TaxConfig_BPGroup(LBR_TaxConfiguration_ID, LBR_FiscalGroup_BPartner_ID));
			X_LBR_TaxConfig_BPGroup taxBPGroup = MTax.getX_LBR_TaxConfig_BPGroup(LBR_TaxConfiguration_ID, LBR_FiscalGroup_BPartner_ID);
			if (taxBPGroup != null){
				LBR_LegalMessage_ID = taxBPGroup.getLBR_LegalMessage_ID();
				lbr_TaxStatus       = taxBPGroup.getlbr_TaxStatus();
			}
			
			//Parceiro de Negócios
			setLines(ctx,MTax.getLBR_TaxConfig_BPartner(LBR_TaxConfiguration_ID, C_BPartner_ID));
			X_LBR_TaxConfig_BPartner taxBPartner = MTax.getX_LBR_TaxConfig_BPartner(LBR_TaxConfiguration_ID, C_BPartner_ID);
			if (taxBPartner != null){
				LBR_LegalMessage_ID = taxBPartner.getLBR_LegalMessage_ID();
				lbr_TaxStatus       = taxBPartner.getlbr_TaxStatus();
			}
			
		}
		//Exceção Produto
		LBR_TaxConfiguration_ID = MTax.getLBR_TaxConfiguration_ID("P", M_Product_ID);
		if (LBR_TaxConfiguration_ID != null && LBR_TaxConfiguration_ID.intValue() != 0){
			//Produto
			setLines(ctx,MTax.getLBR_TaxConfig_Product(LBR_TaxConfiguration_ID));
			X_LBR_TaxConfig_Product taxProduct = MTax.getX_LBR_TaxConfig_Product(LBR_TaxConfiguration_ID);
			if (taxProduct != null){
				LBR_LegalMessage_ID = taxProduct.getLBR_LegalMessage_ID();
				lbr_TaxStatus       = taxProduct.getlbr_TaxStatus();
			}
			
			//Estado
			setLines(ctx,MTax.getLBR_TaxConfig_Region(LBR_TaxConfiguration_ID, orgLocation.getC_Region_ID(),location.getC_Region_ID()));
			X_LBR_TaxConfig_Region taxRegion = MTax.getX_LBR_TaxConfig_Region(LBR_TaxConfiguration_ID, orgLocation.getC_Region_ID(),location.getC_Region_ID());
			if (taxRegion != null){
				LBR_LegalMessage_ID = taxRegion.getLBR_LegalMessage_ID();
				lbr_TaxStatus       = taxRegion.getlbr_TaxStatus();
			}
			
			//Grupo do Parceiro
			setLines(ctx,MTax.getLBR_TaxConfig_BPGroup(LBR_TaxConfiguration_ID, LBR_FiscalGroup_BPartner_ID));
			X_LBR_TaxConfig_BPGroup taxBPGroup = MTax.getX_LBR_TaxConfig_BPGroup(LBR_TaxConfiguration_ID, LBR_FiscalGroup_BPartner_ID);
			if (taxBPGroup != null){
				LBR_LegalMessage_ID = taxBPGroup.getLBR_LegalMessage_ID();
				lbr_TaxStatus       = taxBPGroup.getlbr_TaxStatus();
			}
			
			//Parceiro de Negócios
			setLines(ctx,MTax.getLBR_TaxConfig_BPartner(LBR_TaxConfiguration_ID, C_BPartner_ID));
			X_LBR_TaxConfig_BPartner taxBPartner = MTax.getX_LBR_TaxConfig_BPartner(LBR_TaxConfiguration_ID, C_BPartner_ID);
			if (taxBPartner != null){
				LBR_LegalMessage_ID = taxBPartner.getLBR_LegalMessage_ID();
				lbr_TaxStatus       = taxBPartner.getlbr_TaxStatus();
			}
			
		}
		
		String productSource = product.get_ValueAsString("LBR_ProductSource");
		if (productSource == null || productSource.equals(""))
			productSource = "0";
		
		if (lbr_TaxStatus == null || lbr_TaxStatus.equals(""))
			lbr_TaxStatus = "00";
		
		lbr_TaxStatus = productSource + lbr_TaxStatus;
		
		if (LBR_LegalMessage_ID != null && LBR_LegalMessage_ID.intValue() == 0)
			LBR_LegalMessage_ID = null;
		
		tax.setDescription();
		tax.save(); //FIXME Adempiere não altera na GUI a descrição
		mTab.setValue("LBR_Tax_ID", tax.getLBR_Tax_ID());
		
		if (isSOTrx){
			mTab.setValue("LBR_LegalMessage_ID", LBR_LegalMessage_ID);
			mTab.setValue("lbr_TaxStatus", lbr_TaxStatus);
		}
		
		return "";
	} //getTaxes
	
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
		
		X_LBR_CFOP cfop = new X_LBR_CFOP(ctx,LBR_CFOP_ID,null);
		
		if (cfop.getValue().startsWith("1") || cfop.getValue().startsWith("5"))
			mTab.setValue("lbr_DestionationType",X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_EstadosIdênticos);
		else if (cfop.getValue().startsWith("2") || cfop.getValue().startsWith("6"))
			mTab.setValue("lbr_DestionationType", X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_EstadosDiferentes);
		else if (cfop.getValue().startsWith("3") || cfop.getValue().startsWith("7"))
			mTab.setValue("lbr_DestionationType", X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_Estrangeiro);
			
		return "";
	}	//	getDestinationType
	
	/**
	 *  getTransactionType
	 *
	 *  @param ctx      Context
	 *  @param WindowNo current Window No
	 *  @param mTab     Model Tab
	 *  @param mField   Model Field
	 *  @param value    The new value
	 *  @return Error message or ""
	 *  
	 *  Table C_Order - column C_BPartner_ID
	 *  Table C_Invoice - column C_BPartner_ID
	 *  
	 */
		
	public String getTransactionType(Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		
		Integer C_BPartner_ID = (Integer)mTab.getValue("C_BPartner_ID");
		if (C_BPartner_ID == null || C_BPartner_ID.intValue() == 0)
			return "";
		
		MBPartner bpartner = new MBPartner(ctx,C_BPartner_ID,null);
		String lbr_TransactionType = bpartner.get_ValueAsString("lbr_TransactionType");
		
		if (!(lbr_TransactionType == null && lbr_TransactionType.equals("")))
			mTab.setValue("lbr_TransactionType", lbr_TransactionType);
		
		return "";
	} // getTransactionType
	
	private void setLines(Properties ctx,Integer LBR_Tax_ID)
	{
		
		if (LBR_Tax_ID == null || LBR_Tax_ID.intValue() == 0){
			return;
		}
		
		setLines();
		
		String sql = "SELECT LBR_TaxName_ID, lbr_TaxRate, lbr_TaxBase, lbr_PostTax " +
				     "FROM LBR_TaxLine " +
				     "WHERE LBR_Tax_ID = ?";
		
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt (1, LBR_Tax_ID);
			ResultSet rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				Integer LBR_TaxName_ID   = rs.getInt(1);
				
				X_LBR_TaxName taxName = new X_LBR_TaxName(ctx,LBR_TaxName_ID,null);
				//Verifica o Tipo do Item, para definir os Impostos
				if (taxName.getlbr_TaxType().equalsIgnoreCase(lbr_TaxType) ||
				   (hasSubstitution && taxName.getlbr_TaxType().equalsIgnoreCase(TaxBR.taxType_Substitution))){
					
					X_LBR_TaxLine line = null;
					if (lines.containsKey(LBR_TaxName_ID)){
						line = new X_LBR_TaxLine(ctx,lines.get(LBR_TaxName_ID),null);
					}
					else{
						line = new X_LBR_TaxLine(ctx,0,null);
					}
					line.setLBR_Tax_ID(tax.getLBR_Tax_ID());
					line.setLBR_TaxName_ID(LBR_TaxName_ID);
					line.setlbr_TaxRate(rs.getBigDecimal(2));
					line.setlbr_TaxBase(rs.getBigDecimal(3));
					line.setlbr_PostTax("Y".equals(rs.getString(4)));
					line.save();
				}
				
			}
			
			rs.close ();
			pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		try
		{
			if (pstmt != null)
				pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			pstmt = null;
		}		

	} //setLines
	
	private void setLines()
	{
		
		String sql = "SELECT LBR_TaxLine_ID, LBR_TaxName_ID " +
				     "FROM LBR_TaxLine " +
				     "WHERE LBR_Tax_ID = ?";
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt (1, tax.getLBR_Tax_ID());
			ResultSet rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				lines.put(rs.getInt(2), rs.getInt(1));
			}
			rs.close ();
			pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		try
		{
			if (pstmt != null)
				pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			pstmt = null;
		}		

	} //setLines
	
}