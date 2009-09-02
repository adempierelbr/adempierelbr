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

import org.adempierelbr.model.MICMSMatrix;
import org.adempierelbr.model.MISSMatrix;
import org.adempierelbr.model.MTax;
import org.adempierelbr.util.POLBR;
import org.adempierelbr.util.TaxBR;
import org.adempierelbr.util.TaxesException;
import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MCharge;
import org.compiere.model.MInvoice;
import org.compiere.model.MLocation;
import org.compiere.model.MOrder;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.model.X_LBR_CFOP;
import org.compiere.model.X_LBR_CFOPLine;
import org.compiere.model.X_LBR_NCM;
import org.compiere.model.X_LBR_TaxConfig_BPGroup;
import org.compiere.model.X_LBR_TaxConfig_BPartner;
import org.compiere.model.X_LBR_TaxConfig_Product;
import org.compiere.model.X_LBR_TaxConfig_ProductGroup;
import org.compiere.model.X_LBR_TaxConfig_Region;
import org.compiere.model.X_LBR_TaxLine;
import org.compiere.model.X_LBR_TaxName;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
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
	private MTax tax = null;
	//
	private Map<Integer, Integer> lines = new HashMap<Integer, Integer>();
	//
	private String  lbr_TaxType         = TaxBR.taxType_Product;
	private String  lbr_TaxStatus       = "00";
	private Integer LBR_LegalMessage_ID = null;
	private boolean hasSubstitution     = false;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(CalloutTax.class);

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
		Integer ID      = null; // C_Order_ID ou C_Invoice_ID
		Integer Line_ID = null;
		//OBJETOS
		MOrder   order   = null;
		MInvoice invoice = null;
		MProduct product = null;
		//
		//	Pega no Contexto, qual tabela
		int table = Env.getContextAsInt(ctx, WindowNo, 0, "AD_Table_ID");
		//
		if (table == MOrder.Table_ID)
		{
			ID = (Integer)mTab.getValue("C_Order_ID");
			if (ID  == null || ID.intValue() == 0)
				return "";
			//
			Line_ID = (Integer)mTab.getValue("C_OrderLine_ID");
			order = new MOrder(ctx,ID,null);
		}
		else if (table == MInvoice.Table_ID)
		{
			ID = (Integer)mTab.getValue("C_Invoice_ID");
			if (ID  == null || ID.intValue() == 0)
				return "";
			//
			Line_ID = (Integer)mTab.getValue("C_InvoiceLine_ID");
			invoice = new MInvoice(ctx,ID,null);
		}
		else
		{
			log.log (Level.WARNING, "Resource not implemented for this Table= #" + table);
			return "";
		}
		//	LBR_Tax_ID
		Integer LBR_Tax_ID = (Integer)mTab.getValue("LBR_Tax_ID");
		if (LBR_Tax_ID != null){
			if (Line_ID == null || Line_ID.intValue() == 0){ //Cópia de Linha
				mTab.setValue("LBR_Tax_ID", null);
				return "";
			}
		}
		//
		Integer M_Product_ID = (Integer)mTab.getValue("M_Product_ID");
		//
		if (M_Product_ID  != null && M_Product_ID.intValue() != 0)
			product = new MProduct(ctx,M_Product_ID,null);
		//
		TaxesException tE = getException(ctx,order,invoice,product,null,LBR_Tax_ID);
		//
		if (tE != null)
		{
			GridField LBR_Tax = mTab.getField("LBR_Tax_ID");
			mTab.setValue("LBR_Tax_ID", tE.getLBR_Tax_ID());
			LBR_Tax.setValue(tE.getLBR_Tax_ID(), true);
			//
			mTab.setValue("lbr_TaxStatus", tE.getlbr_TaxStatus());
			//
			if (tE.isSOTrx())
				mTab.setValue("LBR_LegalMessage_ID", tE.getLBR_LegalMessage_ID());
		}
		else
		{
			GridField LBR_Tax = mTab.getField("LBR_Tax_ID");
			mTab.setValue("LBR_Tax_ID", null);
			LBR_Tax.setValue(null, true);
			//
			mTab.setValue("LBR_LegalMessage_ID", null);
			mTab.setValue("lbr_TaxStatus", null);
		}
		//
		return "";
	}	//	getTaxes
	
	/**
	 * 	Retorna a exceção do imposto
	 * 
	 * @param ctx
	 * @param order
	 * @param product
	 * @param LBR_Tax_ID
	 * @return
	 */
	public TaxesException getException(Properties ctx, MOrder order, 
			MProduct product, Integer LBR_Tax_ID)
	{
		return getException(ctx,order,null,product,null,LBR_Tax_ID);
	}
	
	/**
	 * 	Retorna a exceção do imposto
	 * 
	 * @param ctx
	 * @param invoice
	 * @param product
	 * @param LBR_Tax_ID
	 * @return
	 */
	public TaxesException getException(Properties ctx, MInvoice invoice,
			MProduct product, Integer LBR_Tax_ID)
	{
		return getException(ctx, null,invoice,product,null,LBR_Tax_ID);
	}
	
	/**
	 * Retorna a exceção do imposto
	 * 
	 * @param ctx
	 * @param order
	 * @param invoice
	 * @param product
	 * @param charge
	 * @param LBR_Tax_ID
	 * @return TaxesException
	 */
	private TaxesException getException(Properties ctx, MOrder order,
			MInvoice invoice, MProduct product, MCharge charge, Integer LBR_Tax_ID)
	{
		cleanStaticAttributes();
		//
		//	ID's
		Integer LBR_NCM_ID                  = null;
		Integer C_BPartner_ID               = null;
		Integer C_BPartnerLocation_ID       = null;
		Integer LBR_FiscalGroup_BPartner_ID = null;
		Integer LBR_FiscalGroup_Product_ID  = null;
		Integer AD_Org_ID                   = null;
		Integer LBR_TaxConfiguration_ID     = null;
		//
		boolean  isSOTrx = true;
		//
		String transactionType = null;
		//
		if (order != null)
		{			
			C_BPartner_ID         = order.getC_BPartner_ID();
			C_BPartnerLocation_ID = order.getC_BPartner_Location_ID();
			AD_Org_ID             = order.getAD_Org_ID();
			isSOTrx               = order.isSOTrx();
			transactionType       = (String)order.get_Value("lbr_TransactionType");
		}
		else if (invoice != null)
		{
			C_BPartner_ID         = invoice.getC_BPartner_ID();
			C_BPartnerLocation_ID = invoice.getC_BPartner_Location_ID();
			AD_Org_ID             = invoice.getAD_Org_ID();
			isSOTrx               = invoice.isSOTrx();
			transactionType       = (String)invoice.get_Value("lbr_TransactionType");
		}
		else
		{
			log.log(Level.WARNING, "Order and Invoice == null");
			return null;
		}
		//	Product
		if (product == null)
			return null;
		//
		MOrgInfo orgInfo       = MOrgInfo.get(ctx, AD_Org_ID);
		MLocation orgLocation  = new MLocation(ctx,orgInfo.getC_Location_ID(),null);
		//
		//	LBR_Tax_ID
		if (LBR_Tax_ID == null)
			LBR_Tax_ID = 0;
		//
		tax = new MTax(ctx, LBR_Tax_ID, null);
		tax.deleteLines();
		//
		MBPartner bpartner           = new MBPartner(ctx, C_BPartner_ID,null);
		MBPartnerLocation bpLocation = new MBPartnerLocation(ctx, C_BPartnerLocation_ID,null);
		MLocation location           = new MLocation(ctx, bpLocation.getC_Location_ID(), null);
		//
		LBR_NCM_ID = (Integer)product.get_Value("LBR_NCM_ID");
		if (LBR_NCM_ID == null) LBR_NCM_ID = 0;
			X_LBR_NCM ncm = new X_LBR_NCM(ctx,LBR_NCM_ID,null);
		//
		//	Grupos de Tributação
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
		//BEGIN - fer_luck @ faire
		/**
		 * Na venda, para verificarmos se existe ou não substituição, devemos checar 
		 * se o produto é produzido e se tem substituição, caso ambas as afirmações
		 * sejam verdadeiras, calcula-se o icms normal da venda, e é feita a tomada
		 * de crédito deste valor, e após isso, calcula-se o icms de substituição
		 * 
		 * Na Revenda não cobra substituição, pois já foi cobrada pela indústria e
		 * não destaca nada.
		 * 
		 * Na compra, para verificarmos se existe ou não substituição, primeiro
		 * verificamos se o parceiro é indústria e se tem o flag substituto marcado,
		 * caso seja verdadeiro verifcamos se o produto tem substituição, se for verdadeiro
		 * calcula o icms de substituição subtraindo do imposto que já foi recolhido pela
		 * indústria.
		 * 
		 */
		boolean bp_hasSubstitution   = POLBR.get_ValueAsBoolean(bpartner.get_Value("lbr_HasSubstitution"));
		boolean prod_hasSubstitution = POLBR.get_ValueAsBoolean(product.get_Value("lbr_HasSubstitution"));
		//boolean prod_isManufactured  = POLBR.get_ValueAsBoolean(product.get_Value("lbr_IsManufactured"));
		
		if(bp_hasSubstitution && prod_hasSubstitution && !isSOTrx) {
			hasSubstitution = true;
		}
		if (/*prod_isManufactured &&*/ prod_hasSubstitution && isSOTrx){
			hasSubstitution = true;
		}
		//END - fer_luck @ faire

		/**
		 * setLines
		 * Verifica os Padrões e Exceções para definir as Alíquotas dos Impostos
		 * 
		 */
		
		//Taxes defined on the Org
		setLines(ctx, (Integer)orgInfo.get_Value("LBR_Tax_ID"));
		
		//Taxes defined from Region
		if (transactionType == null) transactionType = "";
		boolean isIEExempt     = POLBR.get_ValueAsBoolean(bpartner.get_Value("lbr_IsIEExempt"));
		int FromRegion_ID = isSOTrx ? orgLocation.getC_Region_ID() : location.getC_Region_ID();
		int ToRegion_ID   = isSOTrx ? location.getC_Region_ID() : orgLocation.getC_Region_ID();
		
		if (transactionType.equals("END") && isIEExempt)
			//Operação (Consumidor Final) e Isento de IE (Alíquota Interna)
			setLines(ctx, MICMSMatrix.getLBR_Tax_ID(ctx,FromRegion_ID,FromRegion_ID,null));
		else
			setLines(ctx, MICMSMatrix.getLBR_Tax_ID(ctx,FromRegion_ID,ToRegion_ID,null));
		
		//ISS (City)
		if (lbr_TaxType.equals(TaxBR.taxType_Service)){
			setLines(ctx, MISSMatrix.getLBR_Tax_ID(ctx,product.get_ID(),
					POLBR.getC_City_ID(location.getCity(), location.getC_Region_ID(), null),null));	
		}
		
		//NCM
		if (LBR_NCM_ID != null && LBR_NCM_ID.intValue() != 0){
			setLines(ctx, (Integer)ncm.get_Value("LBR_Tax_ID"));
		}
		
		//Exceções (Configurador de Impostos)
		//Sem exceções Produto ou Grupo
		LBR_TaxConfiguration_ID = MTax.getLBR_TaxConfiguration_ID(ctx,isSOTrx, null, null);
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
		LBR_TaxConfiguration_ID = MTax.getLBR_TaxConfiguration_ID(ctx,isSOTrx, "G", LBR_FiscalGroup_Product_ID);
		if (LBR_TaxConfiguration_ID != null && LBR_TaxConfiguration_ID.intValue() != 0){
			//Grupo do Produto
			setLines(ctx,MTax.getLBR_TaxConfig_ProductGroup(LBR_TaxConfiguration_ID));
			X_LBR_TaxConfig_ProductGroup taxProductGroup = MTax.getX_LBR_TaxConfig_ProductGroup(LBR_TaxConfiguration_ID);
			if (taxProductGroup != null){
				LBR_LegalMessage_ID = taxProductGroup.getLBR_LegalMessage_ID();
				lbr_TaxStatus       = taxProductGroup.getlbr_TaxStatus();
			}
			
			//Estado
			setLines(ctx,MTax.getLBR_TaxConfig_Region(LBR_TaxConfiguration_ID, FromRegion_ID,ToRegion_ID));
			X_LBR_TaxConfig_Region taxRegion = MTax.getX_LBR_TaxConfig_Region(LBR_TaxConfiguration_ID, FromRegion_ID,ToRegion_ID);
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
		LBR_TaxConfiguration_ID = MTax.getLBR_TaxConfiguration_ID(ctx,isSOTrx, "P", product.get_ID());
		if (LBR_TaxConfiguration_ID != null && LBR_TaxConfiguration_ID.intValue() != 0){
			//Produto
			setLines(ctx,MTax.getLBR_TaxConfig_Product(LBR_TaxConfiguration_ID));
			X_LBR_TaxConfig_Product taxProduct = MTax.getX_LBR_TaxConfig_Product(LBR_TaxConfiguration_ID);
			if (taxProduct != null){
				LBR_LegalMessage_ID = taxProduct.getLBR_LegalMessage_ID();
				lbr_TaxStatus       = taxProduct.getlbr_TaxStatus();
			}
			
			//Estado
			setLines(ctx,MTax.getLBR_TaxConfig_Region(LBR_TaxConfiguration_ID, FromRegion_ID,ToRegion_ID));
			X_LBR_TaxConfig_Region taxRegion = MTax.getX_LBR_TaxConfig_Region(LBR_TaxConfiguration_ID, FromRegion_ID,ToRegion_ID);
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
		
		LBR_Tax_ID = tax.getLBR_Tax_ID();
		
		if (LBR_Tax_ID != 0){
			tax.setDescription();
			tax.save();
		}
		else
			LBR_Tax_ID = null;
		
		return new TaxesException(LBR_Tax_ID,LBR_LegalMessage_ID,
				lbr_TaxStatus, isSOTrx);		
	}	//	getException
	
	/**
	 * cleanStaticAttributes
	 */
	private void cleanStaticAttributes()
	{
		tax = null;
		//
		lines = new HashMap<Integer, Integer>();
		//
		lbr_TaxType         = TaxBR.taxType_Product;
		lbr_TaxStatus       = "00";
		LBR_LegalMessage_ID = null;
		hasSubstitution     = false;
	}	//	cleanStaticAttributes
	
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
	public String getTransactionType(Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		Integer C_BPartner_ID = (Integer)mTab.getValue("C_BPartner_ID");
		//
		if (C_BPartner_ID == null || C_BPartner_ID.intValue() == 0)
			return "";
		//
		MBPartner bpartner = new MBPartner(ctx,C_BPartner_ID,null);
		String lbr_TransactionType = bpartner.get_ValueAsString("lbr_TransactionType");
		//
		if (lbr_TransactionType != null && !lbr_TransactionType.equals(""))
			mTab.setValue("lbr_TransactionType", lbr_TransactionType);
		//
		return "";
	}	//	getTransactionType
	
	/**
	 * 	Adiciona o imposto ou altera um imposto existente.
	 * 
	 * @param ctx
	 * @param LBR_Tax_ID
	 */
	private void setLines(Properties ctx, Integer LBR_Tax_ID)
	{
		if (LBR_Tax_ID == null || LBR_Tax_ID.intValue() == 0)
			return;
		/**	
		 * TODO: Verificar a chamada do setLines para ocorrer apenas uma vez
		 */
		setLines();
		//
		String sql = "SELECT 	tl.LBR_TaxName_ID, tl.lbr_TaxRate, tl.lbr_TaxBase, tl.lbr_PostTax " +
				     "FROM 		LBR_TaxLine tl " +
				     "WHERE 	tl.LBR_Tax_ID = ? AND EXISTS " +
					     "(SELECT 	'1' " +
					     "FROM 		LBR_TaxName tn " +
					     "WHERE 	tn.LBR_TaxName_ID=tl.LBR_TaxName_ID)";
		//
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt (1, LBR_Tax_ID);
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				if (tax.getLBR_Tax_ID() == 0){
					tax.save();
				}
				//
				Integer LBR_TaxName_ID = rs.getInt(1);
				//
				X_LBR_TaxName taxName = new X_LBR_TaxName(ctx, LBR_TaxName_ID, null);
				//
				//	Verifica o Tipo do Item, para definir os Impostos
				if (taxName.getlbr_TaxType().equalsIgnoreCase(lbr_TaxType) ||
				   (hasSubstitution && taxName.getlbr_TaxType().equalsIgnoreCase(TaxBR.taxType_Substitution)))
				{
					X_LBR_TaxLine line = null;
					if (lines.containsKey(LBR_TaxName_ID))
					{
						line = new X_LBR_TaxLine(ctx,lines.get(LBR_TaxName_ID),null);
					}
					else
					{
						line = new X_LBR_TaxLine(ctx, 0, null);
					}
					line.setLBR_Tax_ID(tax.getLBR_Tax_ID());
					line.setLBR_TaxName_ID(LBR_TaxName_ID);
					line.setlbr_TaxRate(rs.getBigDecimal(2));
					line.setlbr_TaxBase(rs.getBigDecimal(3));
					line.setlbr_PostTax("Y".equals(rs.getString(4)));
					line.save();
				}
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally
		{
		       DB.close(rs, pstmt);
		}
	}	//	setLines
	
	/**
	 * 	Grava os impostos que já estão salvos num ArrayList
	 */
	private void setLines()
	{
		String sql = "SELECT LBR_TaxLine_ID, LBR_TaxName_ID " +
				     "FROM LBR_TaxLine " +
				     "WHERE LBR_Tax_ID = ?";
		//
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt (1, tax.getLBR_Tax_ID());
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				lines.put(rs.getInt(2), rs.getInt(1));
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally
		{
		       DB.close(rs, pstmt);
		}
	}	//	setLines
}	//	CalloutTax