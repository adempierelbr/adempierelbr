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
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.model.MNote;
import org.compiere.util.CLogger;
import org.compiere.util.DB;

/**
 *	MLBRNFTax
 *
 *	Model for X_LBR_NFTax
 *
 *	@author Mario Grigioni
 *	@version $Id: MLBRNFTax.java, 18/02/2010 10:06:00 mgrigioni
 */
public class MLBRNFTax extends X_LBR_NFTax {

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MLBRNFTax.class);
	
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
	public MLBRNFTax(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNFTax (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}
	
	/**
	 * Cria registros na tabela LBR_NFTax
	 * @param ctx
	 * @param LBR_NotaFiscal_ID
	 * @param trx
	 */
	public static boolean createLBR_NFTax(Properties ctx, int LBR_NotaFiscal_ID, int AD_Org_ID, String trx){

		MLBRNotaFiscal.deleteLBR_NFTax(LBR_NotaFiscal_ID, trx); //Imposto Cabeçalho

		String sql = "SELECT t.LBR_TaxGroup_ID, SUM(t.lbr_TaxBaseAmt), SUM(t.lbr_TaxAmt) " + //1..3
			         "FROM LBR_NFLineTax t " +
		             "INNER JOIN LBR_NotaFiscalLine nfl ON (t.LBR_NotaFiscalLine_ID = nfl.LBR_NotaFiscalLine_ID) " +
		             "WHERE nfl.LBR_NotaFiscal_ID = ? " + //#1
		             "GROUP BY t.LBR_TaxGroup_ID";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt (1, LBR_NotaFiscal_ID);
			rs = pstmt.executeQuery ();
			while (rs.next ()){

				Integer LBR_TaxGroup_ID = rs.getInt(1);
				if (LBR_TaxGroup_ID != null && LBR_TaxGroup_ID.intValue() != 0){
					MLBRNFTax nfTax = new MLBRNFTax(ctx, 0, trx);
					nfTax.setAD_Org_ID(AD_Org_ID);
					nfTax.setLBR_TaxGroup_ID(LBR_TaxGroup_ID);
					nfTax.setLBR_NotaFiscal_ID(LBR_NotaFiscal_ID);
					nfTax.setlbr_TaxBaseAmt(rs.getBigDecimal(2));
					nfTax.setlbr_TaxAmt(rs.getBigDecimal(3));
					if (!nfTax.save(trx)){
						log.severe("Erro ao salvar LBR_NFTax." +
								   " LBR_NotaFiscal_ID = " + LBR_NotaFiscal_ID +
								   " LBR_TaxGroup_ID = " + LBR_TaxGroup_ID);
						return false;
					}
				}

			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql, e);
			return false;
		}
		finally{
		       DB.close(rs, pstmt);
		}

		return true;
	} //createLBR_NFTax

} //MLBRNFTax