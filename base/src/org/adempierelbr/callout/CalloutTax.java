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
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRICMSMatrix;
import org.adempierelbr.model.MLBRISSMatrix;
import org.adempierelbr.model.MLBRNCM;
import org.adempierelbr.model.MLBRTax;
import org.adempierelbr.model.X_LBR_CFOP;
import org.adempierelbr.model.X_LBR_CFOPLine;
import org.adempierelbr.model.X_LBR_TaxConfig_BPGroup;
import org.adempierelbr.model.X_LBR_TaxConfig_BPartner;
import org.adempierelbr.model.X_LBR_TaxConfig_Product;
import org.adempierelbr.model.X_LBR_TaxConfig_ProductGroup;
import org.adempierelbr.model.X_LBR_TaxConfig_Region;
import org.adempierelbr.model.X_LBR_TaxLine;
import org.adempierelbr.model.X_LBR_TaxName;
import org.adempierelbr.util.BPartnerUtil;
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
import org.compiere.model.MUOMConversion;
import org.compiere.model.PO;
import org.compiere.model.X_C_City;
import org.compiere.model.X_M_Product;
import org.compiere.util.DB;
import org.compiere.util.Env;

import bsh.EvalError;

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
 * @contributor Fernando O. Moraes (Faire, www.faire.com.br)
 * @contributor	Ricardo Santana (Kenos, www.kenos.com.br)
 * @version $Id: CalloutTax.java, 11/12/2007 16:23:00 mgrigioni
 */
public class CalloutTax extends CalloutEngine
{
	private MLBRTax tax = null;
	//
	private Map<Integer, Integer> lines = new HashMap<Integer, Integer>();
	//
	private String  lbr_TaxType         = TaxBR.taxType_Product;
	private String  lbr_TaxStatus       = "00";
	private Integer LBR_LegalMessage_ID = null;
	private boolean hasSubstitution     = true;

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
		if (isCalloutActive() || value == null) //
			return "";

		//ID's
		Integer ID      = null; // C_Order_ID ou C_Invoice_ID
		Integer Line_ID = null;
		//OBJETOS
		PO document      = null;
		MProduct product = null;
		MCharge  charge  = null;
		//
		//	Pega no Contexto, qual tabela
		int table = Env.getContextAsInt(ctx, WindowNo, 0, "_TabInfo_AD_Table_ID");
		//
		if (table == MOrder.Table_ID)
		{
			ID = (Integer)mTab.getValue("C_Order_ID");
			if (ID  == null || ID.intValue() == 0)
				return "";
			//
			Line_ID = (Integer)mTab.getValue("C_OrderLine_ID");
			document = new MOrder(ctx,ID,null);
		}
		else if (table == MInvoice.Table_ID)
		{
			ID = (Integer)mTab.getValue("C_Invoice_ID");
			if (ID  == null || ID.intValue() == 0)
				return "";
			//
			Line_ID = (Integer)mTab.getValue("C_InvoiceLine_ID");
			document = new MInvoice(ctx,ID,null);
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
		Integer C_Charge_ID = (Integer)mTab.getValue("C_Charge_ID");
		//
		if (C_Charge_ID  != null && C_Charge_ID.intValue() != 0)
			charge = new MCharge(ctx,C_Charge_ID,null);
		//
		TaxesException tE = getException(ctx,document,product,charge,LBR_Tax_ID);
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
	public TaxesException getException(Properties ctx, PO document,
			MProduct product, Integer LBR_Tax_ID)
	{
		return getException(ctx,document,product,null,LBR_Tax_ID);
	}

	public TaxesException getException(Properties ctx, PO document,
			MCharge charge, Integer LBR_Tax_ID)
	{
		return getException(ctx,document,null,charge,LBR_Tax_ID);
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
	private TaxesException getException(Properties ctx, PO document,
			MProduct product, MCharge charge, Integer LBR_Tax_ID)
	{
		if (document == null || !(document instanceof MOrder || document instanceof MInvoice))
		{
			log.log(Level.WARNING, "Order and Invoice == null");
			return null;
		}

		//
		//	ID's
		int LBR_NCM_ID                  = -1;
		int LBR_FiscalGroup_BPartner_ID = -1;
		int LBR_FiscalGroup_Product_ID  = -1;
		int LBR_TaxConfiguration_ID     = -1;
		//
		int AD_Org_ID              = document.getAD_Org_ID();
		int C_BPartner_ID          = document.get_ValueAsInt("C_BPartner_ID");
		int C_BPartnerLocation_ID  = document.get_ValueAsInt("C_BPartner_Location_ID");
		boolean  isSOTrx 		   = document.get_ValueAsBoolean("IsSOTrx");
		String transactionType     = document.get_ValueAsString("lbr_TransactionType");
		//
		
		//FR - Para exportação não existe incidência de impostos
		if (transactionType.equals("EXP")){
			return null;
		}

		//	Product
		if (product == null && charge == null)
			return null;

		if (product == null)
			product = new MProduct(ctx,0,null); //just to avoid nullPointerException
		//
		MOrgInfo orgInfo       = MOrgInfo.get(ctx, AD_Org_ID,null);
		MLocation orgLocation  = new MLocation(ctx,orgInfo.getC_Location_ID(),null);
		//
		//	LBR_Tax_ID
		if (LBR_Tax_ID == null)
			LBR_Tax_ID = 0;
		//
		tax = new MLBRTax(ctx, LBR_Tax_ID, null);
		tax.deleteLines();
		//
		MBPartner bpartner           = new MBPartner(ctx, C_BPartner_ID,null);
		MBPartnerLocation bpLocation = new MBPartnerLocation(ctx, C_BPartnerLocation_ID,null);
		MLocation location           = new MLocation(ctx, bpLocation.getC_Location_ID(), null);
		//
		LBR_NCM_ID = product.get_ValueAsInt("LBR_NCM_ID");
		MLBRNCM ncm = new MLBRNCM(ctx,LBR_NCM_ID,null);
		//
		//	Grupos de Tributação
		if (isSOTrx){
			LBR_FiscalGroup_BPartner_ID = bpartner.get_ValueAsInt("LBR_FiscalGroup_Customer_ID");
		}
		else{
			LBR_FiscalGroup_BPartner_ID = bpartner.get_ValueAsInt("LBR_FiscalGroup_Vendor_ID");
		}

		LBR_FiscalGroup_Product_ID = product.get_ValueAsInt("LBR_FiscalGroup_Product_ID");

		//Define se é Produto ou Serviço
		if (charge == null && product.getProductType().equalsIgnoreCase(X_M_Product.PRODUCTTYPE_Item)){
			lbr_TaxType = TaxBR.taxType_Product;
		}
		else{
			lbr_TaxType = TaxBR.taxType_Service;
		}

		//Define se possui Substituição Tributária
		hasSubstitution = ncm.hasST(location.getC_Region_ID(),isSOTrx);

		/**
		 * setLines
		 * Verifica os Padrões e Exceções para definir as Alíquotas dos Impostos
		 *
		 */

		//Taxes defined on the Org
		setLines(ctx, (Integer)orgInfo.get_Value("LBR_Tax_ID"));

		//Taxes defined from Region
		boolean isIEExempt = bpartner.get_ValueAsBoolean("lbr_IsIEExempt");
		int FromRegion_ID  = isSOTrx ? orgLocation.getC_Region_ID() : location.getC_Region_ID();
		int ToRegion_ID    = isSOTrx ? location.getC_Region_ID() : orgLocation.getC_Region_ID();

		if (transactionType.equals("END") && isIEExempt)
			//Operação (Consumidor Final) e Isento de IE (Alíquota Interna)
			setLines(ctx, MLBRICMSMatrix.getLBR_Tax_ID(ctx,FromRegion_ID,FromRegion_ID,null));
		else
			setLines(ctx, MLBRICMSMatrix.getLBR_Tax_ID(ctx,FromRegion_ID,ToRegion_ID,null));

		//ISS (City)
		if (lbr_TaxType.equals(TaxBR.taxType_Service)){
			X_C_City city = BPartnerUtil.getX_C_City(ctx, location, null);
			if (city != null)
				setLines(ctx, MLBRISSMatrix.getLBR_Tax_ID(ctx,product.get_ID(),city.getC_City_ID(),null));
		}

		//NCM
		if (LBR_NCM_ID > 0){
			setLines(ctx, (Integer)ncm.get_Value("LBR_Tax_ID"));
		}

		//Exceções (Configurador de Impostos) sem exceções Produto ou Grupo
		LBR_TaxConfiguration_ID = MLBRTax.getLBR_TaxConfiguration_ID(ctx,isSOTrx, null, null);
		if (LBR_TaxConfiguration_ID > 0){
			//Grupo do Parceiro
			X_LBR_TaxConfig_BPGroup taxBPGroup = MLBRTax.getX_LBR_TaxConfig_BPGroup(LBR_TaxConfiguration_ID, LBR_FiscalGroup_BPartner_ID);
			if (taxBPGroup != null){
				setLines(ctx, taxBPGroup.getLBR_Tax_ID());
				LBR_LegalMessage_ID = taxBPGroup.getLBR_LegalMessage_ID();
				lbr_TaxStatus       = taxBPGroup.getlbr_TaxStatus();
			}

			//Parceiro de Negócios
			X_LBR_TaxConfig_BPartner taxBPartner = MLBRTax.getX_LBR_TaxConfig_BPartner(LBR_TaxConfiguration_ID, C_BPartner_ID);
			if (taxBPartner != null){
				setLines(ctx,taxBPartner.getLBR_Tax_ID());
				LBR_LegalMessage_ID = taxBPartner.getLBR_LegalMessage_ID();
				lbr_TaxStatus       = taxBPartner.getlbr_TaxStatus();
			}

		}

		//Exceção Grupo de Tributação (Produto)
		LBR_TaxConfiguration_ID = MLBRTax.getLBR_TaxConfiguration_ID(ctx,isSOTrx, MLBRTax.EXCEPTION_GROUP, LBR_FiscalGroup_Product_ID);
		if (LBR_TaxConfiguration_ID > 0){
			//Grupo do Produto
			X_LBR_TaxConfig_ProductGroup taxProductGroup = MLBRTax.getX_LBR_TaxConfig_ProductGroup(LBR_TaxConfiguration_ID);
			if (taxProductGroup != null){
				setLines(ctx,taxProductGroup.getLBR_Tax_ID());
				LBR_LegalMessage_ID = taxProductGroup.getLBR_LegalMessage_ID();
				lbr_TaxStatus       = taxProductGroup.getlbr_TaxStatus();
			}

			//Estado
			X_LBR_TaxConfig_Region taxRegion = MLBRTax.getX_LBR_TaxConfig_Region(LBR_TaxConfiguration_ID, FromRegion_ID,ToRegion_ID);
			if (taxRegion != null){
				setLines(ctx,taxRegion.getLBR_Tax_ID());
				LBR_LegalMessage_ID = taxRegion.getLBR_LegalMessage_ID();
				lbr_TaxStatus       = taxRegion.getlbr_TaxStatus();
			}

			//Grupo do Parceiro
			X_LBR_TaxConfig_BPGroup taxBPGroup = MLBRTax.getX_LBR_TaxConfig_BPGroup(LBR_TaxConfiguration_ID, LBR_FiscalGroup_BPartner_ID);
			if (taxBPGroup != null){
				setLines(ctx,taxBPGroup.getLBR_Tax_ID());
				LBR_LegalMessage_ID = taxBPGroup.getLBR_LegalMessage_ID();
				lbr_TaxStatus       = taxBPGroup.getlbr_TaxStatus();
			}

			//Parceiro de Negócios
			X_LBR_TaxConfig_BPartner taxBPartner = MLBRTax.getX_LBR_TaxConfig_BPartner(LBR_TaxConfiguration_ID, C_BPartner_ID);
			if (taxBPartner != null){
				setLines(ctx,taxBPartner.getLBR_Tax_ID());
				LBR_LegalMessage_ID = taxBPartner.getLBR_LegalMessage_ID();
				lbr_TaxStatus       = taxBPartner.getlbr_TaxStatus();
			}

		}

		//Exceção Produto
		LBR_TaxConfiguration_ID = MLBRTax.getLBR_TaxConfiguration_ID(ctx,isSOTrx, MLBRTax.EXCEPTION_PRODUCT, product.get_ID());
		if (LBR_TaxConfiguration_ID > 0){
			//Produto
			X_LBR_TaxConfig_Product taxProduct = MLBRTax.getX_LBR_TaxConfig_Product(LBR_TaxConfiguration_ID);
			if (taxProduct != null){
				setLines(ctx,taxProduct.getLBR_Tax_ID());
				LBR_LegalMessage_ID = taxProduct.getLBR_LegalMessage_ID();
				lbr_TaxStatus       = taxProduct.getlbr_TaxStatus();
			}

			//Estado
			X_LBR_TaxConfig_Region taxRegion = MLBRTax.getX_LBR_TaxConfig_Region(LBR_TaxConfiguration_ID, FromRegion_ID,ToRegion_ID);
			if (taxRegion != null){
				setLines(ctx,taxRegion.getLBR_Tax_ID());
				LBR_LegalMessage_ID = taxRegion.getLBR_LegalMessage_ID();
				lbr_TaxStatus       = taxRegion.getlbr_TaxStatus();
			}

			//Grupo do Parceiro
			X_LBR_TaxConfig_BPGroup taxBPGroup = MLBRTax.getX_LBR_TaxConfig_BPGroup(LBR_TaxConfiguration_ID, LBR_FiscalGroup_BPartner_ID);
			if (taxBPGroup != null){
				setLines(ctx,taxBPGroup.getLBR_Tax_ID());
				LBR_LegalMessage_ID = taxBPGroup.getLBR_LegalMessage_ID();
				lbr_TaxStatus       = taxBPGroup.getlbr_TaxStatus();
			}

			//Parceiro de Negócios
			X_LBR_TaxConfig_BPartner taxBPartner = MLBRTax.getX_LBR_TaxConfig_BPartner(LBR_TaxConfiguration_ID, C_BPartner_ID);
			if (taxBPartner != null){
				setLines(ctx,taxBPartner.getLBR_Tax_ID());
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
			log.info(document.get_ValueAsString("DocumentNo") + ": " + //Order or Invoice No
					 tax.getDescription()); //Taxes
		}
		else
			LBR_Tax_ID = null;

		return new TaxesException(LBR_Tax_ID,LBR_LegalMessage_ID,
				lbr_TaxStatus, isSOTrx);
	}	//	getException

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
		String  lbr_NFModel        = (String)bpartner.get_Value("lbr_NFModel");
		//
		if (lbr_TransactionType != null && !lbr_TransactionType.equals(""))
			mTab.setValue("lbr_TransactionType", lbr_TransactionType);
		//
		mTab.setValue("lbr_NFModel", lbr_NFModel);

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
		if (LBR_Tax_ID == null || LBR_Tax_ID.intValue() <= 0)
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
	
	/**
	 * 
	 * 	@author Ricardo Santana
	 * 
	 *	Order Line - TaxBR.
	 *		- basis: PriceEntered, PriceEnteredBR (Brazilian Taxes)
	 *		- sets PriceEnteredBR, PriceEntered (With or Without Taxes)
	 *  
	 *  @param ctx context
	 *  @param WindowNo current Window No
	 *  @param mTab Grid Tab
	 *  @param mField Grid Field
	 *  @param value New Value
	 *  @return null or error message
	 * 	@throws EvalError 
	 */
	public String taxBR (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value) throws EvalError
	{
		int C_UOM_To_ID = Env.getContextAsInt(ctx, WindowNo, "C_UOM_ID");
		int M_Product_ID = Env.getContextAsInt(ctx, WindowNo, "M_Product_ID");
		//int M_PriceList_ID = Env.getContextAsInt(ctx, WindowNo, "M_PriceList_ID");
		//int StdPrecision = MPriceList.getStandardPrecision(ctx, M_PriceList_ID);
		
		BigDecimal result = Env.ZERO;
		Integer C_Order_ID = (Integer) mTab.getValue("C_Order_ID");
		String trxType = null;
		
		if(C_Order_ID == null || C_Order_ID.intValue() <= 0	|| value == null)
			return "";
		
		if(M_Product_ID == 0)
			return "";
		
		MOrder o = new MOrder(ctx, C_Order_ID, null);
		trxType = (String) o.get_Value("lbr_TransactionType");
		
		boolean isTaxIncluded = mTab.getValueAsBoolean("lbr_IsPriceBR");
		
		if(mField.getColumnName().equals("lbr_PriceEnteredBR"))
			mTab.setValue("lbr_IsPriceBR", true);
		else if(mField.getColumnName().equals("PriceEntered"))
			mTab.setValue("lbr_IsPriceBR", false);
		
		if(isTaxIncluded)
		{
			result = TaxBR.getTaxAmt(mTab, trxType, isTaxIncluded);
			if(result != null && !isCalloutActive())
			{
				BigDecimal PriceEntered = ((BigDecimal) mTab.getValue("lbr_PriceEnteredBR")).subtract(result);
				BigDecimal PriceActual = MUOMConversion.convertProductTo (ctx, M_Product_ID, 
						C_UOM_To_ID, PriceEntered);
				
				if (PriceActual == null)
					PriceActual = PriceEntered;
				//
				log.fine("PriceEntered=" + PriceEntered 
					+ " -> PriceActual=" + PriceActual);
				
				mTab.setValue("PriceEntered", PriceEntered);
				mTab.setValue("PriceActual", PriceActual);
			}
		}
		else
		{
			result = TaxBR.getTaxAmt(mTab, trxType, isTaxIncluded);
			if(result != null && !isCalloutActive())
			{
				BigDecimal PriceEnteredBR = result.add((BigDecimal) mTab.getValue("PriceEntered"));
				BigDecimal PriceEntered = (BigDecimal) mTab.getValue("PriceEntered");
				
				BigDecimal PriceActual = MUOMConversion.convertProductTo (ctx, M_Product_ID, 
						C_UOM_To_ID, PriceEntered);
				
				if (PriceActual == null)
					PriceActual = PriceEntered;
				//
				log.fine("PriceEntered=" + PriceEntered 
					+ " -> PriceActual=" + PriceActual);
				
				mTab.setValue("lbr_PriceEnteredBR", PriceEnteredBR);
				mTab.setValue("PriceActual", PriceActual);
			}
		}
		
		return "";
	}	//	taxBR
	
	
}	//	CalloutTax