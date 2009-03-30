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
package org.adempierelbr.util;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MInvoicePaySchedule;
import org.compiere.model.MLocator;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MSysConfig;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *	POLBR
 *
 *	PO AdempiereLBR
 *
 *	[ 2719395 ] BF - As contas de DR e CR colocadas no Tipo de Documento não funcionam
 *	
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: MPOLBR.java, 01/11/2007 10:13:00 mgrigioni
 */
public class POLBR{
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(POLBR.class);
	
	public static int getC_Invoice_ID(String DocumentNo,String trx)
	{
		int C_Invoice_ID = -1;
		
		int index = DocumentNo.indexOf('/'); 
		if (index != -1)
			DocumentNo = DocumentNo.substring(0, index);
		
		String sql = "SELECT C_Invoice_ID " +
				     "FROM C_Invoice " +
				     "WHERE DocumentNo = ? " +
				     "AND AD_Client_ID = ?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, trx);
			pstmt.setString(1, DocumentNo);
			pstmt.setInt(2, Env.getAD_Client_ID(Env.getCtx()));
			rs = pstmt.executeQuery();
			if (rs.next())
			{
				 C_Invoice_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		return C_Invoice_ID;
		
	}	//	getC_Invoice_ID
	
	public static int getM_InOut_ID(int C_Invoice_ID, String trx){
		
		Integer M_InOut_ID = null;
				
		String sql = "SELECT MAX(M_InOut_ID) " +
				     "FROM M_InOutLine " +
				     "WHERE M_InOutLine_ID IN " +
				        "(SELECT M_InOutLine_ID " +
				        "FROM C_InvoiceLine " +
				        "WHERE C_Invoice_ID = ?)";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, trx);
			pstmt.setInt(1, C_Invoice_ID);
			rs = pstmt.executeQuery();
			if (rs.next())
			{
				 M_InOut_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		if (M_InOut_ID == null) M_InOut_ID = 0;
		
		return M_InOut_ID;	
	} //getM_InOut_ID
	
	/**
	 * 	Returns the total for the ICMS Tax 
	 * 	There must be a TaxGroup with the name ICMS
	 *  @return ICMSTotal
	 */
	public static BigDecimal getICMSTotal(int LBR_NotaFiscal_ID, String trx){
		
		BigDecimal ICMSTotal = new BigDecimal(0);
				
		String sql = "select lbr_taxamt from lbr_nftax where lbr_notafiscal_id = ? and lbr_taxgroup_id = (select lbr_taxgroup_id from lbr_taxgroup where name = 'ICMS')";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, trx);
			pstmt.setInt(1, LBR_NotaFiscal_ID);
			rs = pstmt.executeQuery();
			if (rs.next())
			{
				 ICMSTotal = rs.getBigDecimal(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		return ICMSTotal;	
	} //getICMSTotal
	
	public static MInvoicePaySchedule[] getInvoicePaySchedule(Properties ctx, int C_Invoice_ID, String trx)
	{
		
		String whereClause = "C_Invoice_ID=?";
		
		MTable table = MTable.get(ctx, MInvoicePaySchedule.Table_Name);		
		Query query =  new Query(table, whereClause, trx);
	 		  query.setParameters(new Object[]{C_Invoice_ID});
	 		
		List<MInvoicePaySchedule> list = query.list();
		
		return list.toArray(new MInvoicePaySchedule[list.size()]);
	}	//	getInvoicePaySchedule
	
	public static int getLBR_NotaFiscal_ID(String DocumentNo,boolean IsSOTrx, String trx)
	{
		int LBR_NotaFiscal_ID = -1;
				
		String sql = "SELECT LBR_NotaFiscal_ID " +
				     "FROM LBR_NotaFiscal " +
				     "WHERE DocumentNo = ? " +
				     "AND AD_Client_ID = ? " +
				     "AND IsSOTrx = ? " +
				     "ORDER BY LBR_NotaFiscal_ID desc";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, trx);
			pstmt.setString(1, DocumentNo);
			pstmt.setInt(2, Env.getAD_Client_ID(Env.getCtx()));
			pstmt.setString(3, IsSOTrx ? "Y" : "N");
			rs = pstmt.executeQuery();
			if (rs.next())
			{
				 LBR_NotaFiscal_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		return LBR_NotaFiscal_ID;
		
	}	//	getLBR_NotaFiscal_ID
	
	public static int getLBR_DocPrint_ID(Properties ctx){
		
		MOrgInfo orgInfo = MOrgInfo.get(ctx, Env.getAD_Org_ID(ctx));
		Integer LBR_DocPrint_ID = (Integer)orgInfo.get_Value("LBR_DocPrint_ID");
		if (LBR_DocPrint_ID == null){
			LBR_DocPrint_ID = 0;
		}
		
		return LBR_DocPrint_ID.intValue();
		
	} // getLBR_DocPrint_ID
	
	public static int getLBR_Boleto_ID(String DocumentNo, int C_Invoice_ID, String trx)
	{
		int LBR_Boleto_ID = -1;
		int index = 1;
		
		String sql = "SELECT LBR_Boleto_ID " +
				     "FROM LBR_Boleto " +
				     "WHERE DocumentNo = ? " +
				     "AND AD_Client_ID = ? ";
				     
		if (C_Invoice_ID > 0){
			sql += "AND C_Invoice_ID = ? ";
			index++;
		}
		
		sql += " ORDER BY LBR_Boleto_ID DESC";
				     
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, trx);
			pstmt.setString(1, DocumentNo);
			pstmt.setInt(2, Env.getAD_Client_ID(Env.getCtx()));
			if (index > 1){
				pstmt.setInt(3, C_Invoice_ID);
			}
			rs = pstmt.executeQuery();
			if (rs.next())
			{
				 LBR_Boleto_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		return LBR_Boleto_ID;
		
	}	//	getLBR_Boleto_ID
	
	public static int getLBR_Boleto_ID(Integer C_Invoice_ID, Integer C_InvoicePaySchedule_ID, String trx)
	{
		int LBR_Boleto_ID = -1;
		int index = 1;
		int aux = 0;
		
		if (C_Invoice_ID == null)
			C_Invoice_ID = -1;
		
		if (C_InvoicePaySchedule_ID == null)
			C_InvoicePaySchedule_ID = -1;
		
		String sql = "SELECT LBR_Boleto_ID " +
				     "FROM LBR_Boleto " +
				     "WHERE C_Invoice_ID = ? ";
				     
		if (C_InvoicePaySchedule_ID > 0){
			sql += "AND C_InvoicePaySchedule_ID = ? ";
			index++;
		}
						     
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, trx);
			pstmt.setInt(1, C_Invoice_ID);
			if (index > 1){
				pstmt.setInt(2, C_InvoicePaySchedule_ID);
			}
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				 LBR_Boleto_ID = rs.getInt(1);
				 aux++;
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		if (aux > 1)
			LBR_Boleto_ID = -1;
		
		return LBR_Boleto_ID;
	}	//	getLBR_Boleto_ID
	
	/**
	 * Utilizar o método que incluí o parametro do C_BPartner_Location
	 * @param bpartner 
	 * @return
	 */
	@Deprecated
	public static String getCNPJ(Properties ctx, int C_BPartner_ID){
		MBPartner bpartner = new MBPartner(ctx,C_BPartner_ID,null);
		return getCNPJ(bpartner);
	} //getCNPJ
	
	public static String getCNPJ(Properties ctx, int C_BPartner_ID, int C_BPartner_Location_ID){
		MBPartner bpartner = new MBPartner(ctx,C_BPartner_ID,null);
		MBPartnerLocation bpLocation = new MBPartnerLocation(ctx,C_BPartner_Location_ID,null);
		return getCNPJ(bpartner,bpLocation);
	} //getCNPJ
	
	/**
	 * Utilizar o método que incluí o parametro do MBPLocation
	 * @param bpartner 
	 * @return
	 */
	@Deprecated
	public static String getCNPJ(MBPartner bpartner){
		
		String  CNPJ = null;
				
		String BPTypeBR = bpartner.get_ValueAsString("lbr_BPTypeBR");
		
		if (!(BPTypeBR == null || BPTypeBR.equals("")))
		{
			if (BPTypeBR.equalsIgnoreCase("PJ"))
			{
				CNPJ = bpartner.get_ValueAsString("lbr_CNPJ");   //CNPJ
			}
			else if (BPTypeBR.equalsIgnoreCase("PF"))
			{
				CNPJ = bpartner.get_ValueAsString("lbr_CPF");   //CNPJ = CPF
			}
		}
		
		return CNPJ;
	}//getCNPJ
	
	public static String getCNPJ(MBPartner bpartner, MBPartnerLocation bpLocation)
	{	
		String  CNPJ = null;
		String BPTypeBR = bpartner.get_ValueAsString("lbr_BPTypeBR");
		
		if (BPTypeBR != null && !BPTypeBR.equals(""))
		{
			if(!MSysConfig.getBooleanValue("LBR_USE_UNIFIED_BP",false) || BPTypeBR.equalsIgnoreCase("PF"))	
			{
				CNPJ = getCNPJ(bpartner);
			}
			else
			{	
				CNPJ = getCNPJ(bpLocation);
			}
		}
		
		return CNPJ;
	}//getCNPJ
	
	public static String getCNPJ(MBPartnerLocation bpLocation)
	{
		String  CNPJ = null;
		
		MBPartner bp = new MBPartner(Env.getCtx(), bpLocation.getC_BPartner_ID(), null);
		
		String BPTypeBR = bp.get_ValueAsString("lbr_BPTypeBR");
		
		if (BPTypeBR != null && !BPTypeBR.equals(""))
		{
			if (BPTypeBR.equalsIgnoreCase("PJ"))
			{
				CNPJ = bpLocation.get_ValueAsString("lbr_CNPJ");   //CNPJ
			}
			else if (BPTypeBR.equalsIgnoreCase("PF"))
			{
				CNPJ = bp.get_ValueAsString("lbr_CPF");   //CNPJ = CPF
			}
		}
		
		return CNPJ;
	}//getCNPJ
	
	/**
	 * Utilizar o método que possuí o parametro C_BPartner_Location_ID
	 * @param ctx
	 * @param C_BPartner_ID
	 * @return 
	 */
	@Deprecated
	public static String getIE(Properties ctx, int C_BPartner_ID){
		MBPartner bpartner = new MBPartner(ctx,C_BPartner_ID,null);
		return getIE(bpartner);
	} //getCNPJ
	
	/**
	 * 
	 * @param ctx
	 * @param C_BPartner_ID
	 * @param C_BPartner_Location_ID
	 * @return Inscrição estadual
	 */
	public static String getIE(Properties ctx, int C_BPartner_ID, int C_BPartner_Location_ID){
		MBPartner bpartner = new MBPartner(ctx,C_BPartner_ID,null);
		MBPartnerLocation bpLocation = new MBPartnerLocation(ctx,C_BPartner_Location_ID,null);
		return getIE(bpartner,bpLocation);
	} //getCNPJ
	
	
	/**
	 * Utilizar o método que possuí o parâmetro MBPartnerLocation
	 * @param bpartner
	 * @return Inscrição estadual
	 */
	@Deprecated
	public static String getIE(MBPartner bpartner){
		
		String  IE   = null;
				
		String BPTypeBR = bpartner.get_ValueAsString("lbr_BPTypeBR");
		
		if (!(BPTypeBR == null || BPTypeBR.equals(""))){
		
				boolean isIEExempt = POLBR.get_ValueAsBoolean(bpartner.get_Value("lbr_IsIEExempt"));
							
				if (isIEExempt){
					IE = "ISENTO";
				}
				else{
					IE = bpartner.get_ValueAsString("lbr_IE");
				}
				
		}
		
		if (IE == null || IE.equals(""))
			IE = "ISENTO";
		
		return IE;
	}//getIE
	
	public static String getIE(MBPartner bpartner, MBPartnerLocation bpLocation)
	{
		String  IE   = null;
		MBPartner bp = new MBPartner(Env.getCtx(), bpLocation.getC_BPartner_ID(), null);
		
		String BPTypeBR = bp.get_ValueAsString("lbr_BPTypeBR");
		
		if (BPTypeBR != null && !BPTypeBR.equals(""))
		{
			if(!MSysConfig.getBooleanValue("LBR_USE_UNIFIED_BP",false) || BPTypeBR.equalsIgnoreCase("PF"))	
			{
				IE = getIE(bpartner); 
			}
			else
			{
				IE = getIE(bpLocation);
			}
		}
						
		return IE;
	}//getIE
	
	public static String getIE(MBPartnerLocation bpLocation){
		
		String  IE   = null;
		MBPartner bp = new MBPartner(Env.getCtx(), bpLocation.getC_BPartner_ID(), null);

		String BPTypeBR = bp.get_ValueAsString("lbr_BPTypeBR");
		
		if (BPTypeBR != null && !BPTypeBR.equals(""))
		{
			boolean isIEExempt = POLBR.get_ValueAsBoolean(bpLocation.get_Value("lbr_IsIEExempt"));
						
			if (isIEExempt){
				IE = "ISENTO";
			}
			else{
				IE = bpLocation.get_ValueAsString("lbr_IE");
			}
				
		}
		
		if (IE == null || IE.equals(""))
			IE = "ISENTO";
		
		return IE;
	}//getIE
	
	/**
	 * 	Returns the locator ID created automatically for 
	 * 	the given business partner
	 *  @return C_Locator_ID
	 *  @contributor mgrigioni - Alterada a verificação do locator para o C_BPartner_ID,
	 *  	                     se o usuário alterar o value do parceiro o mesmo é replicado para o locator
	 */
	public static int getM_Locator_ID(int M_Warehouse_ID, MBPartner bpartner, String trx)
	{
		int M_Locator_ID = 0;
		Integer C_BPartner_ID = bpartner.get_ID();
		
		Properties ctx = Env.getCtx();
		
		M_Locator_ID = POLBR.checkLocatorExists(M_Warehouse_ID, C_BPartner_ID, trx);
		
		if(M_Locator_ID == -1) 
			M_Locator_ID = 0; 
		
		MLocator locator = new MLocator(ctx,M_Locator_ID,trx);
		locator.setM_Warehouse_ID(M_Warehouse_ID);
		locator.setValue(bpartner.getValue());
		locator.setX(C_BPartner_ID.toString());
		locator.setY(C_BPartner_ID.toString());
		locator.setZ(C_BPartner_ID.toString());
		locator.set_ValueOfColumn("C_BPartner_ID", C_BPartner_ID);
		
		if(locator.save(trx))
			return locator.getM_Locator_ID();
		
		return -1;
	} //getM_Locator_ID
	
	
	public static Integer getlbr_Ref_C_InvoiceLine_ID(Integer C_OrderLine_ID, String trx)
	{
		Integer lbr_Ref_C_InvoiceLine_ID = 0;
		
		StringBuilder sql = new StringBuilder(); 
		sql.append("SELECT lbr_Ref_C_InvoiceLine_ID FROM C_OrderLine ");
		sql.append("WHERE c_orderline_id = ? ");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), trx);
			pstmt.setInt(1, C_OrderLine_ID);
			rs = pstmt.executeQuery();
			if (rs.next())
			{
				lbr_Ref_C_InvoiceLine_ID = rs.getInt(1);	 
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		return lbr_Ref_C_InvoiceLine_ID;
	} //getlbr_Ref_C_InvoiceLine_ID
	
	public static int checkLocatorExists(int M_Warehouse_ID, int C_BPartner_ID, String trx)
	{
		int M_Locator_ID = -1;
		
		String sql = "SELECT M_Locator_ID " +
				     "FROM M_Locator " +
				     "WHERE C_BPartner_ID = ? " +
				     "AND M_Warehouse_ID = ?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, trx);
			pstmt.setInt(1, C_BPartner_ID);
			pstmt.setInt(2, M_Warehouse_ID);
			rs = pstmt.executeQuery();
			if (rs.next())
			{
				M_Locator_ID = rs.getInt(1);
			}
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
			DB.close(rs, pstmt);
		}
		
		return M_Locator_ID;
	} //checkLocatorExists
	
	public static int getC_City_ID(String Name, int C_Region_ID, String trx)
	{
		int C_City_ID = -1;
		String sql = "SELECT C_City_ID " +
				     "FROM C_City " +
				     "WHERE Name LIKE ? " +
				     "AND C_Region_ID = ?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, trx);
			pstmt.setString(1, Name);
			pstmt.setInt(2, C_Region_ID);
			rs = pstmt.executeQuery();
			if (rs.next())
			{
				 C_City_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		return C_City_ID;
		
	}	//	getC_City_ID
	
	public static int getLBR_Bank_ID(String RoutingNo){
		
		int LBR_Bank_ID = -1; 
		String sql = "SELECT LBR_Bank_ID " +
				     "FROM LBR_Bank " +
				     "WHERE RoutingNo = ?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setString(1, RoutingNo);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				LBR_Bank_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		return LBR_Bank_ID;
		
	} //getLBR_Bank_ID
	
	public static String getVendorProductNo(int M_Product_ID, int C_BPartner_ID){
		
		String VendorProductNo = null;
		
		String sql = "SELECT VendorProductNo " +
				     "FROM C_BPartner_Product " +
				     "WHERE M_Product_ID = ? " + //1
				     "AND C_BPartner_ID = ? " + //2
				     "AND AD_Client_ID = ?"; //3
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, M_Product_ID);
			pstmt.setInt(2, C_BPartner_ID);
			pstmt.setInt(3, Env.getAD_Client_ID(Env.getCtx()));
			rs = pstmt.executeQuery();
			if (rs.next())
			{
				VendorProductNo = rs.getString(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		return VendorProductNo;
	
	}//getVendorProductNo
	
	public static int getARReceipt()
	{
		int C_DocType_ID = -1;
		String sql = "SELECT C_DocType_ID " +
				     "FROM C_DocType " +
				     "WHERE DocBaseType = 'ARR' " +
				     "AND AD_Client_ID = ?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, Env.getAD_Client_ID(Env.getCtx()));
			rs = pstmt.executeQuery();
			if (rs.next())
			{
				 C_DocType_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		return C_DocType_ID;
		
	}	//	getARReceipt
	
	public static int getNFB(int AD_Org_ID)
	{
		return POLBR.getNFB(AD_Org_ID,true);
	}
	
	public static int getNFB(int AD_Org_ID, boolean isSOTrx)
	{
		int C_DocType_ID = -1;
		String sql = "SELECT C_DocType_ID " +
				     "FROM C_DocType " +
				     "WHERE DocBaseType = 'NFB' " +
				     "AND AD_Client_ID = ? " +
				     "AND AD_Org_ID IN (0,?) " +
				     "AND IsSOTrx = ? " +
				     "order by C_DocType_ID, AD_Org_ID desc";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, Env.getAD_Client_ID(Env.getCtx()));
			pstmt.setInt(2, AD_Org_ID);
			pstmt.setString(3, isSOTrx ? "Y" : "N");
			rs = pstmt.executeQuery();
			if (rs.next())
			{
				 C_DocType_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		return C_DocType_ID;
		
	}	//	getARReceipt
	
	public static int getDocTypeAcct(int C_DocType_ID){
		
		Integer LBR_DocType_Acct_ID = null;
		
		String sql = "SELECT LBR_DocType_Acct_ID " +
					 "FROM LBR_DocType_Acct " +
					 "WHERE C_DocType_ID = ? "; //1

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt (1, C_DocType_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				LBR_DocType_Acct_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		if (LBR_DocType_Acct_ID == null) LBR_DocType_Acct_ID = 0;
		
		return LBR_DocType_Acct_ID.intValue();
		
	} //getDocTypeAcct
	
	public static boolean get_ValueAsBoolean(Object oo){
		return get_ValueAsBoolean(oo,false);
	}
	
	public static boolean get_ValueAsBoolean(Object oo, boolean defaultValue){
		
		boolean value = false;
		
		if (oo != null) 
		{
		 if (oo instanceof Boolean){
			 value = ((Boolean)oo).booleanValue();
		 }
		 else value = "Y".equals(oo);
		}
		else return defaultValue;
		
		return value;
	}
	
	public static String get_BooleanAsString(boolean oo){
		return oo ? "Y" : "N";
	}
	
	public static String checkOrderBy(String orderBy){
		
		if (orderBy == null || orderBy.equals(""))
			return null;
		
		if ((orderBy.toUpperCase()).startsWith("ORDER BY")){
			orderBy = orderBy.substring(8);
		}
		
		return orderBy.trim();
	} //checkOrderBy
	
	public static String checkWhereClause(String whereClause){
		
		if (whereClause == null || whereClause.equals(""))
			return null;
		
		if ((whereClause.toUpperCase()).startsWith("WHERE")){
			whereClause = whereClause.substring(5);
		}
		
		return whereClause.trim();
	} //checkWhereClause
	
	public static String getOsName(){
		
		String osname = System.getProperty("os.name");
		
		return osname.toLowerCase();
	}
	
	public static String getFileSeparator(){
		
		String FileSeparator = System.getProperty("file.separator");
		
		return FileSeparator;
	}
	
	public static String getLineSeparator(){
		
		String LineSeparator = System.getProperty("line.separator");
		
		return LineSeparator;
	}
	
	public static String getPath(){
		
		String Path = System.getProperty("user.dir");
		
		return Path + getFileSeparator();
	}
	
	/**************************************************************************
	 * 	StringToDate
	 *  Convert String to Timestamp
	 *  @param String dataFormatada
	 *  @param String dateFormat
	 * 	@return Timestamp
	 */
	public static Timestamp stringTodate(String data,String dateFormat) {
		
		SimpleDateFormat formatter = new SimpleDateFormat(dateFormat);
		ParsePosition pos = new ParsePosition(0);
		java.util.Date date = null;
		Timestamp timestamp = null;
	
		date = formatter.parse(data,pos);
		timestamp = new Timestamp(date.getTime()); 
		return timestamp; 
	}
	
	/**************************************************************************
	 * 	DateToString
	 *  Convert Timestamp to String
	 *  @param Timestamp dt
	 *  @param String dateFormat
	 * 	@return String dataFormatada
	 */
	public static String dateTostring(Timestamp dt, String dateFormat)
	{
		SimpleDateFormat formatter = new SimpleDateFormat(dateFormat);
		String dataFormatada = formatter.format(dt); 
		return dataFormatada;
	}
	
	/**
	 * Date Utils
	 */
	public static Timestamp addDays (Timestamp day, int offset)
	{
		if (day == null)
			day = new Timestamp(System.currentTimeMillis());
		//
		GregorianCalendar cal = new GregorianCalendar();
		cal.setTime(day);
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE, 0);
		cal.set(Calendar.SECOND, 0);
		cal.set(Calendar.MILLISECOND, 0);
		if (offset != 0)
			cal.add(Calendar.DAY_OF_YEAR, offset);	//	may have a problem with negative (before 1/1)
		//
		return new Timestamp (cal.getTimeInMillis());
	}	//	addDays
	
	public static Timestamp addWeeks (Timestamp day, int offset)
	{
		if (day == null)
			day = new Timestamp(System.currentTimeMillis());
		//
		GregorianCalendar cal = new GregorianCalendar();
		cal.setTime(day);
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE, 0);
		cal.set(Calendar.SECOND, 0);
		cal.set(Calendar.MILLISECOND, 0);
		if (offset != 0)
			cal.add(Calendar.WEEK_OF_YEAR, offset);	//	may have a problem with negative (before 1/1)
		//
		return new Timestamp (cal.getTimeInMillis());
	}	//	addWeeks
	
	public static Timestamp addMonths (Timestamp day, int offset)
	{
		if (day == null)
			day = new Timestamp(System.currentTimeMillis());
		//
		GregorianCalendar cal = new GregorianCalendar();
		cal.setTime(day);
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE, 0);
		cal.set(Calendar.SECOND, 0);
		cal.set(Calendar.MILLISECOND, 0);
		if (offset != 0)
			cal.add(Calendar.MONTH, offset);	//	may have a problem with negative (before 1/1)
		//
		return new Timestamp (cal.getTimeInMillis());
	}	//	addMonths
	
	public static Timestamp addYears (Timestamp day, int offset)
	{
		if (day == null)
			day = new Timestamp(System.currentTimeMillis());
		//
		GregorianCalendar cal = new GregorianCalendar();
		cal.setTime(day);
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE, 0);
		cal.set(Calendar.SECOND, 0);
		cal.set(Calendar.MILLISECOND, 0);
		if (offset != 0)
			cal.add(Calendar.YEAR, offset);	//	may have a problem with negative (before 1/1)
		//
		return new Timestamp (cal.getTimeInMillis());
	}	//	addYears
	
	/*
	public static void main (String[] args){
		System.out.println(checkOrderBy("ORDER BY Teste_ID"));
	}
	*/
	
} //MPOLBR