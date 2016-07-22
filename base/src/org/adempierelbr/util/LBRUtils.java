package org.adempierelbr.util;

import java.util.Properties;

import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerProduct;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MLocator;
import org.compiere.model.MProduct;
import org.compiere.model.MProductPO;
import org.compiere.model.Query;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.joda.time.Period;

/**
 * 		Adempiere LBR Utils 
 * 		<li> Based on org.adempierelbr.util.AdempiereLBR
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: LBRUtils.java, v1.0 2016/03/23 18:21:16 PM, ralexsander Exp $
 */
public abstract class LBRUtils
{
	public static final String AD_LANGUAGE = "pt_BR";
	public static final int    BRASIL      = 139;
	
	/**
	 * 	Returns the locator ID created automatically for
	 * 	the given business partner
	 *  @return C_Locator_ID
	 *  @contributor mgrigioni - Alterada a verificação do locator para o C_BPartner_ID,
	 *  	                     se o usuário alterar o value do parceiro o mesmo é replicado para o locator
	 */
	public static int getM_Locator_ID (int M_Warehouse_ID, MBPartner bpartner, String trxName)
	{
		Properties ctx = Env.getCtx();
		Integer C_BPartner_ID = bpartner.getC_BPartner_ID();

		String sql = "SELECT M_Locator_ID "
				+ "FROM M_Locator "
				+ "WHERE C_BPartner_ID=? "
			    + "AND M_Warehouse_ID=?";

		int M_Locator_ID = DB.getSQLValue (trxName, sql, new Object[]{C_BPartner_ID, M_Warehouse_ID});

		if (M_Locator_ID > 0)
			return M_Locator_ID;

		MLocator locator = new MLocator(ctx, 0, trxName);
		locator.setM_Warehouse_ID(M_Warehouse_ID);
		locator.setValue(bpartner.getValue() + "|" + bpartner.getName());
		locator.setX(C_BPartner_ID.toString());
		locator.setY(C_BPartner_ID.toString());
		locator.setZ(C_BPartner_ID.toString());
		locator.set_ValueOfColumn("C_BPartner_ID", C_BPartner_ID);

		if (locator.save ())
			return locator.getM_Locator_ID();

		return -1;
	} 	//	getM_Locator_ID
	
	/**
	 * 	Obtém a Conta Contábil customizada no Tipo de Documento
	 * 	@param C_DocType_ID
	 * 	@return ID da Conta Contábil
	 */
	public static int getDocTypeAcct (int C_DocType_ID)
	{
		String sql = "SELECT LBR_DocType_Acct_ID "
				+ "FROM LBR_DocType_Acct "
				+ "WHERE C_DocType_ID=? ";

		int LBR_DocType_Acct_ID = DB.getSQLValue (null, sql, C_DocType_ID);

		return LBR_DocType_Acct_ID > 0 ? LBR_DocType_Acct_ID : 0;
	} 	//	getDocTypeAcct
	
	/**
	 * 	Obtém o ID do Banco Brasileiro pelo código de rastreamento
	 * 	@param RoutingNo
	 * 	@param trxName
	 * 	@return LBR_Bank_ID
	 */
	public static int getLBR_Bank_ID (String RoutingNo, String trxName)
	{
		String sql = "SELECT LBR_Bank_ID "
				+ "FROM LBR_Bank "
				+ "WHERE RoutingNo=?";

		int LBR_Bank_ID = DB.getSQLValue (trxName, sql, RoutingNo);

		return LBR_Bank_ID;
	} 	//	getLBR_Bank_ID
	
	/**
	 * 	Obtém o ID da Fatura pelo núemro do documento
	 * 	@param AD_Org_ID
	 * 	@param docNo
	 * 	@param trxName
	 * 	@return C_Invoce_ID
	 */
	public static int getInvoiceByDocNo (int AD_Org_ID, String docNo, String trxName)
	{
		int index = docNo.indexOf('/');
		if (index != -1)
			docNo = docNo.substring (0, index);

		String sql = "SELECT C_Invoice_ID "
				+ "FROM C_Invoice "
				+ "WHERE DocumentNo=? AND ";
		
		//	Organization
		if (AD_Org_ID > 0)
			sql += "AD_Org_ID=?";
		else
			sql += "AD_Client_ID=?";
		
		Object[] params = new Object[]{docNo, (AD_Org_ID > 0 ? AD_Org_ID : Env.getAD_Client_ID(Env.getCtx()))};
		int C_Invoice_ID = DB.getSQLValue(trxName, sql,	params);

		return C_Invoice_ID;
	}	//	getInvoiceByDocNo
	
	/**
	 * 	Obtém o Tipo de Documento do Pagamento para Recebimentos
	 * 	@return C_DocType_ID
	 */
	public static int getARReceiptDocType ()
	{
		String sql = "SELECT C_DocType_ID "
				+ "FROM C_DocType " 
				+ "WHERE DocBaseType='ARR' "
				+ "AND AD_Client_ID=?";

		int C_DocType_ID = DB.getSQLValue (null, sql, Env.getAD_Client_ID (Env.getCtx ()));

		return C_DocType_ID;
	}	//	getARReceiptDocType
	
	/**
	 * 	Calcula a diferença de tempo
	 * 	@param start
	 * 	@param end
	 * 	@return tempo
	 */
	public static String elapsedTime (long start, long end)
	{
		Period period = new Period(start,end);
		String tempo  = TextUtil.lPad(period.getHours(),2)   + ":" +
						TextUtil.lPad(period.getMinutes(),2) + ":" +
						TextUtil.lPad(period.getSeconds(),2);
		//
		return tempo;
	}	//	elapsedTime
	
	/**
	 * 	Obtém o Código do Produto no Fornecedor
	 * 	@param product
	 * 	@param C_BPartner_ID
	 * 	@return Código do produto no fornecedor
	 */
	public static String getVendorProductNo (MProduct product, int C_BPartner_ID)
	{
		String productNo = null;
		
		MBPartnerProduct partnerProd = new Query (product.getCtx(), MBPartnerProduct.Table_Name, "M_Product_ID=? AND C_BPartner_ID=?", null)
				.setParameters(new Object[]{product.getM_Product_ID(), C_BPartner_ID})
				.setOnlyActiveRecords(true)
				.setClient_ID()
				.first();
		if (partnerProd != null && partnerProd.getVendorProductNo() != null)
			return partnerProd.getVendorProductNo();
		
		for (MProductPO ppo : MProductPO.getOfProduct (product.getCtx(), product.getM_Product_ID(), null))
		{
			if (ppo.getC_BPartner_ID() == C_BPartner_ID)
			{
				productNo = ppo.getVendorProductNo();
				break;
			}
		}
		
		return productNo;
	}	//	getVendorProductNo
	
	/**
	 * 	Obtém o recebimento/remessa associado a uma fatura. Observe
	 * 		uma fatura pode ter mais de uma remessa associada, portanto
	 * 		esta consulta irá retornar o primeiro valor válido.
	 * @param invoice
	 * @return
	 */
	public static int getInOutFromInvoice (MInvoice invoice)
	{
		int M_InOut_ID = 0;
		
		for (MInvoiceLine il : invoice.getLines())
		{
			if (il.getM_InOutLine_ID() > 0)
			{
				M_InOut_ID = il.getM_InOutLine().getM_InOut_ID();
				break;
			}
		}
		
		return M_InOut_ID;
	}	//	getInOutFromInvoice
}	//	LBRUtils
