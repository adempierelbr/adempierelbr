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

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;

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

/**
 *	MTax
 *
 *	Model for X_LBR_Tax
 *
 *  [ 1954195 ] AD_Client no Configurador de Impostos
 *	
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: MTax.java, 12/11/2007 13:38:00 mgrigioni
 */
public class MTax extends X_LBR_Tax {
    
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
	 *  getLines
	 *  @return X_LBR_TaxLine[] lines
	 */
	public X_LBR_TaxLine[] getLines(){
		
		String sql = "SELECT LBR_TaxLine_ID " +
				     "FROM LBR_TaxLine " +
				     "WHERE LBR_Tax_ID = ?";

		ArrayList<X_LBR_TaxLine> list = new ArrayList<X_LBR_TaxLine>();
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, get_TrxName());
			pstmt.setInt(1, getLBR_Tax_ID());
			ResultSet rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				X_LBR_TaxLine line = new X_LBR_TaxLine(getCtx(),rs.getInt(1),get_TrxName());
				list.add (line);
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
		
		CLogger log = CLogger.getCLogger(MTax.class);
		
		String sql = "SELECT LBR_TaxLine_ID " +
				     "FROM LBR_TaxLine " +
				     "WHERE LBR_Tax_ID = ? " +
				     "AND LBR_TaxName_ID = ?";

		Integer LBR_TaxLine_ID = null;
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt(1, LBR_Tax_ID);
			pstmt.setInt(2, LBR_TaxName_ID);
			ResultSet rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				LBR_TaxLine_ID = rs.getInt(1);
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

		if (LBR_TaxLine_ID == null) LBR_TaxLine_ID = 0;
			
		return LBR_TaxLine_ID.intValue();
	} //getLine
	
	/**************************************************************************
	 *  getC_Tax_ID
	 *  @return Integer C_Tax_ID
	 */
	public static int getC_Tax_ID(int Parent_Tax_ID, int LBR_TaxName_ID, String trx){
		
		CLogger log = CLogger.getCLogger(MTax.class);
		
		Integer C_Tax_ID = null;
		
		String sql = "SELECT C_Tax_ID " +
				     "FROM C_Tax " +
				     "WHERE Parent_Tax_ID = ? " +
				     "AND LBR_TaxName_ID = ?";

		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt(1, Parent_Tax_ID);
			pstmt.setInt(2, LBR_TaxName_ID);
			ResultSet rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				C_Tax_ID = rs.getInt(1);
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

		if (C_Tax_ID == null) C_Tax_ID = 0;
			
		return C_Tax_ID.intValue();
	} //getC_Tax_ID
	
	public void deleteLines(){
	
		String sql = "DELETE FROM LBR_TaxLine " +
        	         "WHERE LBR_Tax_ID=" + getLBR_Tax_ID();
		DB.executeUpdate(sql, get_TrxName());
		
	}
	
	public String toString(){
		
		String Description = getDescription();
		
		if (Description == null || Description.trim().equals("")){
			return super.toString();
		}
		
		return Description;
	}
	
	public static int getLBR_TaxConfiguration_ID(Properties ctx, boolean isSOTrx, String ExceptionType, Integer ID){
		
		CLogger log = CLogger.getCLogger(MTax.class);
		
		Integer LBR_TaxConfiguration_ID = null;
		
		if (ExceptionType == null) ExceptionType = "";
		if (ID == null) ID = -1;
		
		String where = "";
		if (isSOTrx)
			where = "WHERE AD_Client_ID = ? AND IsSOTrx='Y'";
		else
			where = "WHERE AD_Client_ID = ? AND lbr_IsPOTrx='Y'";
		
		String sql = "SELECT LBR_TaxConfiguration_ID " +
				     "FROM LBR_TaxConfiguration ";
			   sql += where;
		
		if (ExceptionType.equals("P"))
			sql += " AND M_Product_ID = " + ID;
		else if (ExceptionType.equals("G"))
			sql += " AND LBR_FiscalGroup_Product_ID = " + ID; 
		else
			sql += " AND M_Product_ID is null AND LBR_FiscalGroup_Product_ID is null";
			
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, Env.getAD_Client_ID(ctx));
			ResultSet rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				LBR_TaxConfiguration_ID = rs.getInt(1);
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
		
		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = 0;
		
		return LBR_TaxConfiguration_ID.intValue();
		
	} //getLBR_TaxConfiguration_ID
	
	public static int getLBR_TaxConfig_BPartner(Integer LBR_TaxConfiguration_ID, Integer C_BPartner_ID){
		
		CLogger log = CLogger.getCLogger(MTax.class);
		
		Integer LBR_Tax_ID = null;
		
		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;
		if (C_BPartner_ID == null) C_BPartner_ID = -1;
		
		String sql = "SELECT LBR_Tax_ID " +
				     "FROM LBR_TaxConfig_BPartner " +
				     "WHERE LBR_TaxConfiguration_ID = ? " +
				     "AND C_BPartner_ID = ?"; 
		
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, LBR_TaxConfiguration_ID);
			pstmt.setInt(2, C_BPartner_ID);
			ResultSet rs = pstmt.executeQuery ();
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
		
		if (LBR_Tax_ID == null) LBR_Tax_ID = 0;
		
		return LBR_Tax_ID.intValue();
		
	} //getLBR_TaxConfig_BPartner
	
	public static X_LBR_TaxConfig_BPartner getX_LBR_TaxConfig_BPartner(Integer LBR_TaxConfiguration_ID, Integer C_BPartner_ID){
		
		CLogger log = CLogger.getCLogger(MTax.class);
		
		Integer LBR_Tax_ID = null;
		
		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;
		if (C_BPartner_ID == null) C_BPartner_ID = -1;
		
		String sql = "SELECT LBR_TaxConfig_BPartner_ID " +
				     "FROM LBR_TaxConfig_BPartner " +
				     "WHERE LBR_TaxConfiguration_ID = ? " +
				     "AND C_BPartner_ID = ?"; 
		
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, LBR_TaxConfiguration_ID);
			pstmt.setInt(2, C_BPartner_ID);
			ResultSet rs = pstmt.executeQuery ();
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
		
		if (LBR_Tax_ID == null) return null;
		
		return new X_LBR_TaxConfig_BPartner(Env.getCtx(),LBR_Tax_ID,null);
		
	} //getX_LBR_TaxConfig_BPartner
	
	public static int getLBR_TaxConfig_BPGroup(Integer LBR_TaxConfiguration_ID, Integer LBR_FiscalGroup_BPartner_ID){
		
		CLogger log = CLogger.getCLogger(MTax.class);
		
		Integer LBR_Tax_ID = null;
		
		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;
		if (LBR_FiscalGroup_BPartner_ID == null) LBR_FiscalGroup_BPartner_ID = -1;
		
		String sql = "SELECT LBR_Tax_ID " +
				     "FROM LBR_TaxConfig_BPGroup " +
				     "WHERE LBR_TaxConfiguration_ID = ? " +
				     "AND LBR_FiscalGroup_BPartner_ID = ?"; 
		
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, LBR_TaxConfiguration_ID);
			pstmt.setInt(2, LBR_FiscalGroup_BPartner_ID);
			ResultSet rs = pstmt.executeQuery ();
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
		
		if (LBR_Tax_ID == null) LBR_Tax_ID = 0;
		
		return LBR_Tax_ID.intValue();
		
	} //getLBR_TaxConfig_BPGroup
	
	public static X_LBR_TaxConfig_BPGroup getX_LBR_TaxConfig_BPGroup(Integer LBR_TaxConfiguration_ID, Integer LBR_FiscalGroup_BPartner_ID){
		
		CLogger log = CLogger.getCLogger(MTax.class);
		
		Integer LBR_Tax_ID = null;
		
		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;
		if (LBR_FiscalGroup_BPartner_ID == null) LBR_FiscalGroup_BPartner_ID = -1;
		
		String sql = "SELECT LBR_TaxConfig_BPGroup_ID " +
				     "FROM LBR_TaxConfig_BPGroup " +
				     "WHERE LBR_TaxConfiguration_ID = ? " +
				     "AND LBR_FiscalGroup_BPartner_ID = ?"; 
		
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, LBR_TaxConfiguration_ID);
			pstmt.setInt(2, LBR_FiscalGroup_BPartner_ID);
			ResultSet rs = pstmt.executeQuery ();
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
		
		if (LBR_Tax_ID == null) return null;
		
		return new X_LBR_TaxConfig_BPGroup(Env.getCtx(),LBR_Tax_ID,null);
		
	} //getX_LBR_TaxConfig_BPGroup
	
	public static int getLBR_TaxConfig_Product(Integer LBR_TaxConfiguration_ID){
		
		CLogger log = CLogger.getCLogger(MTax.class);
		
		Integer LBR_Tax_ID = null;
		
		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;
		
		String sql = "SELECT LBR_Tax_ID " +
				     "FROM LBR_TaxConfig_Product " +
				     "WHERE LBR_TaxConfiguration_ID = ?";
		
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, LBR_TaxConfiguration_ID);
			ResultSet rs = pstmt.executeQuery ();
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
		
		if (LBR_Tax_ID == null) LBR_Tax_ID = 0;
		
		return LBR_Tax_ID.intValue();
		
	} //getLBR_TaxConfig_Product
	
	public static X_LBR_TaxConfig_Product getX_LBR_TaxConfig_Product(Integer LBR_TaxConfiguration_ID){
		
		CLogger log = CLogger.getCLogger(MTax.class);
		
		Integer LBR_Tax_ID = null;
		
		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;
		
		String sql = "SELECT LBR_TaxConfig_Product_ID " +
				     "FROM LBR_TaxConfig_Product " +
				     "WHERE LBR_TaxConfiguration_ID = ?";
		
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, LBR_TaxConfiguration_ID);
			ResultSet rs = pstmt.executeQuery ();
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
		
		if (LBR_Tax_ID == null) return null;
		
		return new X_LBR_TaxConfig_Product(Env.getCtx(),LBR_Tax_ID,null);
		
	} //getX_LBR_TaxConfig_Product
	
	public static int getLBR_TaxConfig_ProductGroup(Integer LBR_TaxConfiguration_ID){
		
		CLogger log = CLogger.getCLogger(MTax.class);
		
		Integer LBR_Tax_ID = null;
		
		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;
		
		String sql = "SELECT LBR_Tax_ID " +
				     "FROM LBR_TaxConfig_ProductGroup " +
				     "WHERE LBR_TaxConfiguration_ID = ?";
		
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, LBR_TaxConfiguration_ID);
			ResultSet rs = pstmt.executeQuery ();
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
		
		if (LBR_Tax_ID == null) LBR_Tax_ID = 0;
		
		return LBR_Tax_ID.intValue();
		
	} //getLBR_TaxConfig_ProductGroup
	
	public static X_LBR_TaxConfig_ProductGroup getX_LBR_TaxConfig_ProductGroup(Integer LBR_TaxConfiguration_ID){
		
		CLogger log = CLogger.getCLogger(MTax.class);
		
		Integer LBR_Tax_ID = null;
		
		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;
		
		String sql = "SELECT LBR_TaxConfig_ProductGroup_ID " +
				     "FROM LBR_TaxConfig_ProductGroup " +
				     "WHERE LBR_TaxConfiguration_ID = ?";
		
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, LBR_TaxConfiguration_ID);
			ResultSet rs = pstmt.executeQuery ();
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
		
		if (LBR_Tax_ID == null) return null;
		
		return new X_LBR_TaxConfig_ProductGroup(Env.getCtx(),LBR_Tax_ID,null);
		
	} //getX_LBR_TaxConfig_ProductGroup
	
	public static int getLBR_TaxConfig_Region(Integer LBR_TaxConfiguration_ID, Integer C_Region_ID, Integer To_Region_ID){
		
		CLogger log = CLogger.getCLogger(MTax.class);
		
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
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, LBR_TaxConfiguration_ID);
			pstmt.setInt(2, C_Region_ID);
			pstmt.setInt(3, To_Region_ID);
			ResultSet rs = pstmt.executeQuery ();
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
		
		if (LBR_Tax_ID == null) LBR_Tax_ID = 0;
		
		return LBR_Tax_ID.intValue();
		
	} //getLBR_TaxConfig_Region
	
	public static X_LBR_TaxConfig_Region getX_LBR_TaxConfig_Region(Integer LBR_TaxConfiguration_ID, Integer C_Region_ID, Integer To_Region_ID){
		
		CLogger log = CLogger.getCLogger(MTax.class);
		
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
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, LBR_TaxConfiguration_ID);
			pstmt.setInt(2, C_Region_ID);
			pstmt.setInt(3, To_Region_ID);
			ResultSet rs = pstmt.executeQuery ();
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
		
		if (LBR_Tax_ID == null) return null;
		
		return new X_LBR_TaxConfig_Region(Env.getCtx(),LBR_Tax_ID,null);
		
	} //getX_LBR_TaxConfig_Region
		
} //MTax