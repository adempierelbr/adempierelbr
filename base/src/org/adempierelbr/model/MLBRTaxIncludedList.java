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
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.DB;

/**
 *	MTaxIncludedList
 *
 *	Model for X_LBR_TaxIncludedList
 *
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: MTaxIncludedList.java, 01/12/2008 15:20:00 mgrigioni
 */
public class MLBRTaxIncludedList extends X_LBR_TaxIncludedList {

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	private static CLogger log = CLogger.getCLogger(MLBRTaxIncludedList.class);

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRTaxIncludedList(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRTaxIncludedList (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}

	/**************************************************************************
	 *  getTaxes
	 *  @return ArrayList<Integer> C_Tax_ID
	 */
	public static ArrayList<Integer> getTaxes(Properties ctx, int M_PriceList_ID, String trx){

		String sql = "SELECT C_Tax_ID " +
				     "FROM LBR_TaxIncludedList " +
				     "WHERE IsActive = 'Y' " +
				     "AND M_PriceList_ID = ?";

		ArrayList<Integer> list = new ArrayList<Integer>();

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt(1, M_PriceList_ID);
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				int C_Tax_ID = rs.getInt(1);
				if (!list.contains(C_Tax_ID))
					list.add(C_Tax_ID);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}

		return list;
	} //getTaxes

	/**************************************************************************
	 *  getLBRTaxes
	 *  @return ArrayList<String> TaxName
	 */
	public static ArrayList<String> getLBRTaxes(Properties ctx, int M_PriceList_ID, String trx){

		ArrayList<String>  names = new ArrayList<String>();
		ArrayList<Integer> taxes = getTaxes(ctx,M_PriceList_ID,trx);
		Integer[] list = new Integer[taxes.size()];
		taxes.toArray(list);

		for(Integer C_Tax_ID : list){
			org.compiere.model.MTax tax = new org.compiere.model.MTax(ctx,C_Tax_ID,trx);
			Integer LBR_TaxName_ID = (Integer)tax.get_Value("LBR_TaxName_ID");
			if (LBR_TaxName_ID != null && LBR_TaxName_ID.intValue() != 0){
				X_LBR_TaxName taxName = new X_LBR_TaxName(ctx,LBR_TaxName_ID,trx);
				String name = taxName.getName().trim();
				if (!names.contains(name))
					names.add(name);
			}

		} // list

		return names;
	} //getLBRTaxes

	/**************************************************************************
	 *  getList
	 *  @return List<MTaxIncludedList> list
	 */
	public static List<MLBRTaxIncludedList> getList(Properties ctx, int M_PriceList_ID, String trx){

		String whereClause = "M_PriceList_ID = ? AND IsActive = 'Y' ";

		MTable table = MTable.get(ctx, MLBRTaxIncludedList.Table_Name);
		Query query =  new Query(ctx, table, whereClause, trx);
	 		  query.setParameters(new Object[]{M_PriceList_ID});

		List<MLBRTaxIncludedList> list = query.list();

		return list;
	} //getList

	public static MLBRTaxIncludedList[] getArray(Properties ctx, int M_PriceList_ID, String trx){

		List<MLBRTaxIncludedList> list = MLBRTaxIncludedList.getList(ctx, M_PriceList_ID, trx);
		return list.toArray(new MLBRTaxIncludedList[list.size()]);
	} //getArray

} //MTaxIncludedList