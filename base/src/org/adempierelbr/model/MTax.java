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
package org.adempierelbr.model;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.util.POLBR;
import org.adempierelbr.util.TaxBR;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MInvoiceTax;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrderTax;
import org.compiere.model.MPriceList;
import org.compiere.model.PO;
import org.compiere.model.X_LBR_Tax;
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

import bsh.EvalError;

/**
 *	MTax
 *
 *	Model for X_LBR_Tax
 *
 *  [ 1954195 ] AD_Client no Configurador de Impostos, mgrigioni
 *  [ 1967062 ] LBR_Tax criado sem necessidade, mgrigioni
 *  [ 2200626 ] Lista de Preço Brasil, mgrigioni
 *	
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: MTax.java, 12/11/2007 13:38:00 mgrigioni
 */
public class MTax extends X_LBR_Tax {
    
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MTax.class);
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MTax(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);	
	}
	
	public static MTaxAmounts modelChange(Properties ctx, MOrderLine oLine, String trx) throws EvalError{
		return modelChange(ctx,oLine,null,trx);
	}
	
	public static MTaxAmounts modelChange(Properties ctx, MInvoiceLine iLine, String trx) throws EvalError{
		return modelChange(ctx,null,iLine,trx);
	}

	private static MTaxAmounts modelChange(Properties ctx, MOrderLine oLine, 
			MInvoiceLine iLine, String trx) throws EvalError{
		
		BigDecimal totalLines = Env.ZERO; //TotalLines
		BigDecimal taxAmt     = Env.ZERO; //TaxAmt (all taxes)
		BigDecimal etaxAmt    = Env.ZERO; //Excluded TaxAmt
		BigDecimal substAmt   = Env.ZERO; //Substitution TaxAmt
		
		boolean isOrder = true;
				
		PO   document = null;
		PO   line     = null;
		PO   doctax   = null;
		PO[] lines    = null;
		if (oLine != null){
			document = new MOrder(ctx,oLine.getC_Order_ID(),trx);
			line     = oLine;
			lines    = ((MOrder)document).getLines(true,null);
			doctax   = TaxBR.getMOrderTax(ctx, document.get_ID(), (Integer)line.get_Value("C_Tax_ID"), trx);
		}
		else{
			document = new MInvoice(ctx,iLine.getC_Invoice_ID(),trx);
			line     = iLine;
			lines    = ((MInvoice)document).getLines(true);
			doctax   = TaxBR.getMInvoiceTax(ctx, document.get_ID(), (Integer)line.get_Value("C_Tax_ID"), trx);
			isOrder  = false;
		}

		MPriceList pList = new MPriceList(ctx,(Integer)document.get_Value("M_PriceList_ID"),trx);
		
		boolean brazilianlist = POLBR.get_ValueAsBoolean(pList.get_Value("lbr_BrazilianPriceList"));
		ArrayList<Integer> tIncluded = MTaxIncludedList.getTaxes(ctx, pList.getM_PriceList_ID(), trx);
		
		org.compiere.model.MTax tax = new org.compiere.model.MTax(ctx,(Integer)line.get_Value("C_Tax_ID"),trx);
			
		if (tax.isSummary()){
		
			for (int i=0; i<lines.length; i++){
			
				int ID = lines[i].get_ID();
			
				TaxBR.calculateTaxes(ID, isOrder, trx);
				
				Integer LBR_Tax_ID = (Integer)lines[i].get_Value("LBR_Tax_ID");
				if (LBR_Tax_ID != null && LBR_Tax_ID.intValue() != 0){	
				
					org.compiere.model.MTax cTaxes[] = tax.getChildTaxes(false);
					for(org.compiere.model.MTax cTax : cTaxes){
						int LBR_TaxLine_ID = MTax.getLine(LBR_Tax_ID, (Integer)cTax.get_Value("LBR_TaxName_ID"), trx);
						if (LBR_TaxLine_ID != 0){
							X_LBR_TaxLine taxLine = new X_LBR_TaxLine(ctx,LBR_TaxLine_ID,trx);
							if (!tIncluded.contains(cTax.getC_Tax_ID()) && brazilianlist){
								etaxAmt = etaxAmt.add(taxLine.getlbr_TaxAmt());
							}
							
							X_LBR_TaxName taxName = new X_LBR_TaxName(ctx,taxLine.getLBR_TaxName_ID(),trx);
							if (taxName.getlbr_TaxType().equals(TaxBR.taxType_Substitution)){
								substAmt = substAmt.add(taxLine.getlbr_TaxAmt());
							}
							
							taxAmt = taxAmt.add(taxLine.getlbr_TaxAmt());
						}
					} //end for child taxes
				} //LBR_Tax_ID not null
			
			} //end for order lines
		
			//Precisão
			taxAmt   = taxAmt.setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP);
			etaxAmt  = etaxAmt.setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP);
			substAmt = substAmt.setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP);
			
			boolean isTaxIncluded = POLBR.get_ValueAsBoolean(document.get_Value("IsTaxIncluded"));
			totalLines = (BigDecimal)document.get_Value("TotalLines");
			if (totalLines == null) totalLines = Env.ZERO;
			
			if (isTaxIncluded){
				if (isOrder) //GrandTotal = Column not updatable
					((MOrder)document).setGrandTotal(totalLines.add(etaxAmt));
				else
					((MInvoice)document).setGrandTotal(totalLines.add(etaxAmt));
				
				saveDocTax(doctax, isOrder, document.getAD_Org_ID(), taxAmt,
						(BigDecimal)document.get_Value("GrandTotal"), isTaxIncluded, trx);
			}
			else{
				if (isOrder) //GrandTotal = Column not updatable
					((MOrder)document).setGrandTotal(totalLines.add(taxAmt));
				else
					((MInvoice)document).setGrandTotal(totalLines.add(taxAmt));
				
				saveDocTax(doctax, isOrder, document.getAD_Org_ID(), taxAmt,
						totalLines, isTaxIncluded, trx);
			}
			
			if(isOrder)
				((MOrder)document).save(trx);
			else
				((MInvoice)document).save(trx);
		} //isSummary
		
		return new MTaxAmounts(totalLines,taxAmt,etaxAmt,substAmt);
	} //modelChange
		
	public static MTaxAmounts docValidate(Properties ctx, MOrder order, String trx) throws EvalError{
		return docValidate(ctx,order,null,trx);
	}
	
	public static MTaxAmounts docValidate(Properties ctx, MInvoice invoice, String trx) throws EvalError{
		return docValidate(ctx,null,invoice,trx);
	}
	
	private static MTaxAmounts docValidate(Properties ctx, MOrder order, 
			MInvoice invoice, String trx) throws EvalError{
		
		BigDecimal totalLines = Env.ZERO; //TotalLines
		BigDecimal taxAmt     = Env.ZERO; //TaxAmt (all taxes)
		BigDecimal etaxAmt    = Env.ZERO; //Excluded TaxAmt
		BigDecimal substAmt   = Env.ZERO; //Substitution TaxAmt
		
		boolean isOrder       = true;
		boolean isTaxIncluded = false;
				
		PO   document = null;
		PO   doctax   = null;
		PO[] lines    = null;
		if (order != null){
			document = order;
			lines    = ((MOrder)document).getLines(true,null);
			isTaxIncluded = order.isTaxIncluded();
		}
		else{
			document = invoice;
			lines    = ((MInvoice)document).getLines(true);
			isOrder  = false;
			isTaxIncluded = invoice.isTaxIncluded();
		}
		
		TaxBR.deleteSummaryTax(document.get_ID(), isOrder, trx);
		
		MPriceList pList = new MPriceList(ctx,(Integer)document.get_Value("M_PriceList_ID"),trx);
		
		boolean brazilianlist = POLBR.get_ValueAsBoolean(pList.get_Value("lbr_BrazilianPriceList"));
		ArrayList<Integer> tIncluded = MTaxIncludedList.getTaxes(ctx, pList.getM_PriceList_ID(), trx);
		
		totalLines = (BigDecimal)document.get_Value("TotalLines");
		if (totalLines == null) totalLines = Env.ZERO;
		
		for (PO line : lines){
			
			org.compiere.model.MTax tax = new org.compiere.model.MTax(ctx,(Integer)line.get_Value("C_Tax_ID"),trx);
			
			if (tax.isSummary()){
				
				//Cálculo dos Impostos (Linha)
				TaxBR.calculateTaxes(line.get_ID(), isOrder, trx);
				
				Integer LBR_Tax_ID = (Integer)line.get_Value("LBR_Tax_ID");
				
				if (LBR_Tax_ID != null && LBR_Tax_ID.intValue() != 0){
					
					org.compiere.model.MTax[] cTaxes = tax.getChildTaxes(false);
					
					for (org.compiere.model.MTax cTax : cTaxes){
						
						int LBR_TaxLine_ID = MTax.getLine(LBR_Tax_ID, (Integer)cTax.get_Value("LBR_TaxName_ID"), trx);
						if (LBR_TaxLine_ID != 0){
							
							X_LBR_TaxLine taxLine = new X_LBR_TaxLine(ctx,LBR_TaxLine_ID,trx);
							
							//Verifica se o Imposto deve ser Contabilizado
							if (taxLine.islbr_PostTax()){
								
								if (isOrder)
									doctax = TaxBR.getMOrderTax(ctx, document.get_ID(), cTax.getC_Tax_ID(), trx);
								else
									doctax = TaxBR.getMInvoiceTax(ctx, document.get_ID(), cTax.getC_Tax_ID(), trx);
								
								BigDecimal TaxAmt     = (BigDecimal)doctax.get_Value("TaxAmt");
								if (TaxAmt == null) TaxAmt = Env.ZERO;
								
								BigDecimal TaxBaseAmt = (BigDecimal)doctax.get_Value("TaxBaseAmt");
								if (TaxBaseAmt == null) TaxBaseAmt = Env.ZERO;
								
								BigDecimal lineTaxAmt = taxLine.getlbr_TaxAmt().setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP);
								
								saveDocTax(doctax, isOrder, document.getAD_Org_ID(), TaxAmt.add(lineTaxAmt),
										TaxBaseAmt.add(taxLine.getlbr_TaxBaseAmt()), isTaxIncluded, trx);
								
							} // postTax
							
							if (!tIncluded.contains(cTax.getC_Tax_ID()) && brazilianlist){
								etaxAmt = etaxAmt.add(taxLine.getlbr_TaxAmt());
							}
							
							X_LBR_TaxName taxName = new X_LBR_TaxName(ctx,taxLine.getLBR_TaxName_ID(),trx);
							if (taxName.getlbr_TaxType().equals(TaxBR.taxType_Substitution)){
								substAmt = substAmt.add(taxLine.getlbr_TaxAmt());
							}
							
							taxAmt = taxAmt.add(taxLine.getlbr_TaxAmt());
							
						} //LBR_TaxLine_ID != 0
						
					} //child taxes
					
				} //LBR_Tax_ID != null
				
			} //summary tax
			
		} //document lines
		
		//Precisão
		taxAmt   = taxAmt.setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP);
		etaxAmt  = etaxAmt.setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP);
		substAmt = substAmt.setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP);
		
		if (isTaxIncluded){
			if (isOrder) //GrandTotal = Column not updatable
				((MOrder)document).setGrandTotal(totalLines.add(etaxAmt));
			else
				((MInvoice)document).setGrandTotal(totalLines.add(etaxAmt));
		}
		else{
			if (isOrder) //GrandTotal = Column not updatable
				((MOrder)document).setGrandTotal(totalLines.add(taxAmt));
			else
				((MInvoice)document).setGrandTotal(totalLines.add(taxAmt));
		}
		
		if(isOrder)
			((MOrder)document).save(trx);
		else
			((MInvoice)document).save(trx);
		
		return new MTaxAmounts(totalLines,taxAmt,etaxAmt,substAmt);
	} //docValidate
	
	private static boolean saveDocTax(PO doctax, boolean isOrder, int AD_Org_ID, BigDecimal TaxAmt, 
			BigDecimal TaxBaseAmt, boolean isTaxIncluded, String trx){
		
		if (isOrder){
			((MOrderTax)doctax).setAD_Org_ID(AD_Org_ID);
			((MOrderTax)doctax).setTaxAmt(TaxAmt);
			((MOrderTax)doctax).setTaxBaseAmt(TaxBaseAmt);
			((MOrderTax)doctax).setIsTaxIncluded(isTaxIncluded);
			return ((MOrderTax)doctax).save(trx);
		}
		else{
			((MInvoiceTax)doctax).setAD_Org_ID(AD_Org_ID);
			((MInvoiceTax)doctax).setTaxAmt(TaxAmt);
			((MInvoiceTax)doctax).setTaxBaseAmt(TaxBaseAmt);
			((MInvoiceTax)doctax).setIsTaxIncluded(isTaxIncluded);
			return ((MInvoiceTax)doctax).save(trx);
		}
	} //saveDocTax
	
	/**************************************************************************
	 * 	setDescription
	 */
	public void setDescription ()
	{	
		String Description = "";
		X_LBR_TaxLine[] lines = getLines();
		for (int i=0;i<lines.length;i++){
		
			X_LBR_TaxName tax = new X_LBR_TaxName(getCtx(),lines[i].getLBR_TaxName_ID(),null);
			String name = tax.getName().trim();
			String rate = String.format("%,.2f", lines[i].getlbr_TaxRate());
			Description += ", " + name + "-" + rate;
		}
		
		if (Description.startsWith(", ")) Description = Description.substring(2);
		if (Description.equals("")) Description = null;
		
		setDescription(Description);
	}
	
	/**************************************************************************
	 *  copyFrom
	 *  @return MTax newTax
	 */
	public MTax copyFrom(){
		
		MTax newTax = new MTax(getCtx(),0,get_TrxName());
		newTax.setDescription(getDescription());
		newTax.save(get_TrxName());
		
		X_LBR_TaxLine[] lines = getLines();
		for (int i=0; i<lines.length; i++){
			X_LBR_TaxLine newLine = new X_LBR_TaxLine(getCtx(),0,get_TrxName());
			newLine.setLBR_Tax_ID(newTax.getLBR_Tax_ID());
			newLine.setLBR_TaxName_ID(lines[i].getLBR_TaxName_ID());
			newLine.setlbr_TaxRate(lines[i].getlbr_TaxRate());
			newLine.setlbr_TaxBase(lines[i].getlbr_TaxBase());
			newLine.setlbr_PostTax(lines[i].islbr_PostTax());
			newLine.save(get_TrxName());
		}
		
		return newTax;
	} //copyFrom
	
	/**************************************************************************
	 *  getTaxAmt
	 *  @return BigDecimal TaxAmt
	 */
	public static BigDecimal getTaxAmt(int LBR_Tax_ID,String trx){
		
		String sql = "SELECT lbr_TaxAmt " +
				     "FROM LBR_TaxLine " +
				     "WHERE LBR_Tax_ID = ?";
		
		BigDecimal taxAmt = Env.ZERO;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt(1, LBR_Tax_ID);
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				BigDecimal amt = rs.getBigDecimal(1);
				if (amt != null){
					amt = amt.setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP);
					taxAmt = taxAmt.add(amt);
				}
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}

		return taxAmt.setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP);
	} //getTaxAmt
	
	/**************************************************************************
	 *  getLines
	 *  @return X_LBR_TaxLine[] lines
	 */
	public X_LBR_TaxLine[] getLines(){
		
		String sql = "SELECT LBR_TaxLine_ID " +
				     "FROM LBR_TaxLine " +
				     "WHERE LBR_Tax_ID = ?";

		ArrayList<X_LBR_TaxLine> list = new ArrayList<X_LBR_TaxLine>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, get_TrxName());
			pstmt.setInt(1, getLBR_Tax_ID());
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				X_LBR_TaxLine line = new X_LBR_TaxLine(getCtx(),rs.getInt(1),get_TrxName());
				list.add (line);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}

		X_LBR_TaxLine[] retValue = new X_LBR_TaxLine[list.size()];
		list.toArray(retValue);
		return retValue;
	} //getLines
	
	/**************************************************************************
	 *  getLine
	 *  @return Integer LBR_TaxLine_ID
	 */
	public static int getLine(Integer LBR_Tax_ID, int LBR_TaxName_ID, String trx){
		
		if (LBR_Tax_ID == null)
			LBR_Tax_ID = -1;
		
		String sql = "SELECT LBR_TaxLine_ID " +
				     "FROM LBR_TaxLine " +
				     "WHERE LBR_Tax_ID = ? " +
				     "AND LBR_TaxName_ID = ?";

		Integer LBR_TaxLine_ID = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt(1, LBR_Tax_ID);
			pstmt.setInt(2, LBR_TaxName_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				LBR_TaxLine_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}

		if (LBR_TaxLine_ID == null) LBR_TaxLine_ID = 0;
			
		return LBR_TaxLine_ID.intValue();
	} //getLine
	
	/**************************************************************************
	 *  getC_Tax_ID
	 *  @return Integer C_Tax_ID
	 */
	public static int getC_Tax_ID(int Parent_Tax_ID, int LBR_TaxName_ID, String trx){

		Integer C_Tax_ID = null;
		
		String sql = "SELECT C_Tax_ID " +
				     "FROM C_Tax " +
				     "WHERE Parent_Tax_ID = ? " +
				     "AND LBR_TaxName_ID = ?";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt(1, Parent_Tax_ID);
			pstmt.setInt(2, LBR_TaxName_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				C_Tax_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}

		if (C_Tax_ID == null) C_Tax_ID = 0;
			
		return C_Tax_ID.intValue();
	} //getC_Tax_ID
	
	public void deleteLines(){
	
		String sql = "DELETE FROM LBR_TaxLine " +
        	         "WHERE LBR_Tax_ID=" + getLBR_Tax_ID();
		DB.executeUpdate(sql, get_TrxName());
		
	}
	
	public boolean delete(boolean force, String trxName){
		
		deleteLines();
		return super.delete(force, trxName);
		
	}
	
	public String toString(){
		
		String Description = getDescription();
		
		if (Description == null || Description.trim().equals("")){
			//return super.toString();
			return "";
		}
		
		return Description;
	}
	
	public static int getLBR_TaxConfiguration_ID(Properties ctx, boolean isSOTrx, String ExceptionType, Integer ID){
		
		Integer LBR_TaxConfiguration_ID = null;
		
		if (ExceptionType == null) ExceptionType = "";
		if (ID == null) ID = -1;
		
		StringBuffer sql = new StringBuffer();
		
		sql.append("SELECT LBR_TaxConfiguration_ID ");
		sql.append("FROM LBR_TaxConfiguration ");
		sql.append("WHERE AD_Client_ID = ? AND ");
		
		if (isSOTrx)
			sql.append("IsSOTrx = 'Y'");
		else
			sql.append("lbr_IsPOTrx = 'Y'");
		
		if (ExceptionType.equals("P"))
			sql.append(" AND M_Product_ID = ").append(ID);
		else if (ExceptionType.equals("G"))
			sql.append(" AND LBR_FiscalGroup_Product_ID = ").append(ID); 
		else
			sql.append(" AND M_Product_ID is null AND LBR_FiscalGroup_Product_ID is null");
			
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql.toString(), null);
			pstmt.setInt(1, Env.getAD_Client_ID(ctx));
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				LBR_TaxConfiguration_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = 0;
		
		return LBR_TaxConfiguration_ID.intValue();
		
	} //getLBR_TaxConfiguration_ID
	
	public static int getLBR_TaxConfig_BPartner(Integer LBR_TaxConfiguration_ID, Integer C_BPartner_ID){
		
		Integer LBR_Tax_ID = null;
		
		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;
		if (C_BPartner_ID == null) C_BPartner_ID = -1;
		
		String sql = "SELECT LBR_Tax_ID " +
				     "FROM LBR_TaxConfig_BPartner " +
				     "WHERE LBR_TaxConfiguration_ID = ? " +
				     "AND C_BPartner_ID = ?"; 
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, LBR_TaxConfiguration_ID);
			pstmt.setInt(2, C_BPartner_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				LBR_Tax_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		if (LBR_Tax_ID == null) LBR_Tax_ID = 0;
		
		return LBR_Tax_ID.intValue();
		
	} //getLBR_TaxConfig_BPartner
	
	public static X_LBR_TaxConfig_BPartner getX_LBR_TaxConfig_BPartner(Integer LBR_TaxConfiguration_ID, Integer C_BPartner_ID){

		Integer LBR_Tax_ID = null;
		
		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;
		if (C_BPartner_ID == null) C_BPartner_ID = -1;
		
		String sql = "SELECT LBR_TaxConfig_BPartner_ID " +
				     "FROM LBR_TaxConfig_BPartner " +
				     "WHERE LBR_TaxConfiguration_ID = ? " +
				     "AND C_BPartner_ID = ?"; 
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, LBR_TaxConfiguration_ID);
			pstmt.setInt(2, C_BPartner_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				LBR_Tax_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		if (LBR_Tax_ID == null) return null;
		
		return new X_LBR_TaxConfig_BPartner(Env.getCtx(),LBR_Tax_ID,null);
		
	} //getX_LBR_TaxConfig_BPartner
	
	public static int getLBR_TaxConfig_BPGroup(Integer LBR_TaxConfiguration_ID, Integer LBR_FiscalGroup_BPartner_ID){
		
		Integer LBR_Tax_ID = null;
		
		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;
		if (LBR_FiscalGroup_BPartner_ID == null) LBR_FiscalGroup_BPartner_ID = -1;
		
		String sql = "SELECT LBR_Tax_ID " +
				     "FROM LBR_TaxConfig_BPGroup " +
				     "WHERE LBR_TaxConfiguration_ID = ? " +
				     "AND LBR_FiscalGroup_BPartner_ID = ?"; 
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, LBR_TaxConfiguration_ID);
			pstmt.setInt(2, LBR_FiscalGroup_BPartner_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				LBR_Tax_ID = rs.getInt(1);
			}
			rs.close ();
			pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		if (LBR_Tax_ID == null) LBR_Tax_ID = 0;
		
		return LBR_Tax_ID.intValue();
		
	} //getLBR_TaxConfig_BPGroup
	
	public static X_LBR_TaxConfig_BPGroup getX_LBR_TaxConfig_BPGroup(Integer LBR_TaxConfiguration_ID, Integer LBR_FiscalGroup_BPartner_ID){
		
		Integer LBR_Tax_ID = null;
		
		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;
		if (LBR_FiscalGroup_BPartner_ID == null) LBR_FiscalGroup_BPartner_ID = -1;
		
		String sql = "SELECT LBR_TaxConfig_BPGroup_ID " +
				     "FROM LBR_TaxConfig_BPGroup " +
				     "WHERE LBR_TaxConfiguration_ID = ? " +
				     "AND LBR_FiscalGroup_BPartner_ID = ?"; 
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, LBR_TaxConfiguration_ID);
			pstmt.setInt(2, LBR_FiscalGroup_BPartner_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				LBR_Tax_ID = rs.getInt(1);
			}
			rs.close ();
			pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		if (LBR_Tax_ID == null) return null;
		
		return new X_LBR_TaxConfig_BPGroup(Env.getCtx(),LBR_Tax_ID,null);
		
	} //getX_LBR_TaxConfig_BPGroup
	
	public static int getLBR_TaxConfig_Product(Integer LBR_TaxConfiguration_ID){
		
		Integer LBR_Tax_ID = null;
		
		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;
		
		String sql = "SELECT LBR_Tax_ID " +
				     "FROM LBR_TaxConfig_Product " +
				     "WHERE LBR_TaxConfiguration_ID = ?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, LBR_TaxConfiguration_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				LBR_Tax_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		if (LBR_Tax_ID == null) LBR_Tax_ID = 0;
		
		return LBR_Tax_ID.intValue();
		
	} //getLBR_TaxConfig_Product
	
	public static X_LBR_TaxConfig_Product getX_LBR_TaxConfig_Product(Integer LBR_TaxConfiguration_ID){
		
		Integer LBR_Tax_ID = null;
		
		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;
		
		String sql = "SELECT LBR_TaxConfig_Product_ID " +
				     "FROM LBR_TaxConfig_Product " +
				     "WHERE LBR_TaxConfiguration_ID = ?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, LBR_TaxConfiguration_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				LBR_Tax_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		if (LBR_Tax_ID == null) return null;
		
		return new X_LBR_TaxConfig_Product(Env.getCtx(),LBR_Tax_ID,null);
		
	} //getX_LBR_TaxConfig_Product
	
	public static int getLBR_TaxConfig_ProductGroup(Integer LBR_TaxConfiguration_ID){
		
		Integer LBR_Tax_ID = null;
		
		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;
		
		String sql = "SELECT LBR_Tax_ID " +
				     "FROM LBR_TaxConfig_ProductGroup " +
				     "WHERE LBR_TaxConfiguration_ID = ?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, LBR_TaxConfiguration_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				LBR_Tax_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		if (LBR_Tax_ID == null) LBR_Tax_ID = 0;
		
		return LBR_Tax_ID.intValue();
		
	} //getLBR_TaxConfig_ProductGroup
	
	public static X_LBR_TaxConfig_ProductGroup getX_LBR_TaxConfig_ProductGroup(Integer LBR_TaxConfiguration_ID){
		
		Integer LBR_Tax_ID = null;
		
		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;
		
		String sql = "SELECT LBR_TaxConfig_ProductGroup_ID " +
				     "FROM LBR_TaxConfig_ProductGroup " +
				     "WHERE LBR_TaxConfiguration_ID = ?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, LBR_TaxConfiguration_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				LBR_Tax_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		if (LBR_Tax_ID == null) return null;
		
		return new X_LBR_TaxConfig_ProductGroup(Env.getCtx(),LBR_Tax_ID,null);
		
	} //getX_LBR_TaxConfig_ProductGroup
	
	public static int getLBR_TaxConfig_Region(Integer LBR_TaxConfiguration_ID, Integer C_Region_ID, Integer To_Region_ID){
		
		Integer LBR_Tax_ID = null;
		
		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;
		if (C_Region_ID == null) C_Region_ID = -1;
		if (To_Region_ID == null) To_Region_ID = -1;
		
		String sql = "SELECT LBR_Tax_ID " +
				     "FROM LBR_TaxConfig_Region " +
				     "WHERE LBR_TaxConfiguration_ID = ? " +
				     "AND C_Region_ID = ? " +
				     "AND To_Region_ID = ?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, LBR_TaxConfiguration_ID);
			pstmt.setInt(2, C_Region_ID);
			pstmt.setInt(3, To_Region_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				LBR_Tax_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		if (LBR_Tax_ID == null) LBR_Tax_ID = 0;
		
		return LBR_Tax_ID.intValue();
		
	} //getLBR_TaxConfig_Region
	
	public static X_LBR_TaxConfig_Region getX_LBR_TaxConfig_Region(Integer LBR_TaxConfiguration_ID, Integer C_Region_ID, Integer To_Region_ID){
		
		Integer LBR_Tax_ID = null;
		
		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;
		if (C_Region_ID == null) C_Region_ID = -1;
		if (To_Region_ID == null) To_Region_ID = -1;
		
		String sql = "SELECT LBR_TaxConfig_Region_ID " +
				     "FROM LBR_TaxConfig_Region " +
				     "WHERE LBR_TaxConfiguration_ID = ? " +
				     "AND C_Region_ID = ? " +
				     "AND To_Region_ID = ?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, LBR_TaxConfiguration_ID);
			pstmt.setInt(2, C_Region_ID);
			pstmt.setInt(3, To_Region_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				LBR_Tax_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		if (LBR_Tax_ID == null) return null;
		
		return new X_LBR_TaxConfig_Region(Env.getCtx(),LBR_Tax_ID,null);
		
	} //getX_LBR_TaxConfig_Region
		
} //MTax

class MTaxAmounts{
	
	private BigDecimal Amt;
	private BigDecimal taxAmt;
	private BigDecimal taxExcludedAmt;
	private BigDecimal taxSubstAmt;
	
	//Default Constructor
	MTaxAmounts(){}
	
	MTaxAmounts(BigDecimal Amt, BigDecimal taxAmt, 
			BigDecimal taxExcludedAmt, BigDecimal taxSubstAmt){
		
		setAmt(Amt);
		setTaxAmt(taxAmt);
		setTaxExcludedAmt(taxExcludedAmt);
		setTaxSubstAmt(taxSubstAmt);
	}
	
	public BigDecimal getAmt() {
		return Amt;
	}
	public void setAmt(BigDecimal Amt) {
		this.Amt = Amt;
	}
	public BigDecimal getTaxAmt() {
		return taxAmt;
	}
	public void setTaxAmt(BigDecimal taxAmt) {
		this.taxAmt = taxAmt;
	}
	public BigDecimal getTaxExcludedAmt() {
		return taxExcludedAmt;
	}
	public void setTaxExcludedAmt(BigDecimal taxExcludedAmt) {
		this.taxExcludedAmt = taxExcludedAmt;
	}
	public BigDecimal getTaxSubstAmt() {
		return taxSubstAmt;
	}
	public void setTaxSubstAmt(BigDecimal taxSubstAmt) {
		this.taxSubstAmt = taxSubstAmt;
	}
	
} //MTaxAmounts