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

import org.adempierelbr.util.TextUtil;
import org.compiere.model.X_LBR_NFLineTax;
import org.compiere.model.X_LBR_NotaFiscalLine;
import org.compiere.model.X_LBR_TaxGroup;
import org.compiere.util.DB;

/**
 *	MNotaFiscalLine
 *
 *	Model for X_LBR_NotaFiscalLine
 *	
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: MNotaFiscalLine.java, 08/01/2008 11:01:00 mgrigioni
 */
public class MNotaFiscalLine extends X_LBR_NotaFiscalLine {
    
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
	public MNotaFiscalLine(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);	
	}
	
	/**************************************************************************
	 *  selbr_ServiceTaxes
	 *  Geração de String com Impostos da Linha (Serviço)
	 */
	public void setlbr_ServiceTaxes(){
		
		X_LBR_NFLineTax[] taxes = getTaxes();
		String serviceString = "IMPOSTOS: ";
		for(int i=0;i<taxes.length;i++){
			X_LBR_TaxGroup taxGroup = new X_LBR_TaxGroup(getCtx(),taxes[i].getLBR_TaxGroup_ID(),get_TrxName());
			serviceString += taxGroup.getName() + ":" + 
							 taxes[i].getlbr_TaxRate() + "% R$" + 
							 taxes[i].getlbr_TaxAmt() + ", ";  
		}
		
		serviceString = TextUtil.retiraPontoFinal(serviceString);
		setlbr_ServiceTaxes("\n" + serviceString);
		
	} //setlbr_ServiceTaxes
	
	/**************************************************************************
	 *  getTaxes
	 *  @return X_LBR_NFLineTax[] taxes
	 */
	private X_LBR_NFLineTax[] getTaxes(){
		
		String sql = "SELECT LBR_NFLineTax_ID " + //1
		 			 "FROM LBR_NFLineTax " +
		 			 "WHERE LBR_NotaFiscalLine_ID = ? "; //*1

		ArrayList<X_LBR_NFLineTax> list = new ArrayList<X_LBR_NFLineTax>();
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, get_TrxName());
			pstmt.setInt(1, getLBR_NotaFiscalLine_ID());
			ResultSet rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				list.add (new X_LBR_NFLineTax(getCtx(),rs.getInt(1),get_TrxName()));
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

		X_LBR_NFLineTax[] retValue = new X_LBR_NFLineTax[list.size()];
		list.toArray(retValue);
		return retValue;
		
	} //getTaxes
}