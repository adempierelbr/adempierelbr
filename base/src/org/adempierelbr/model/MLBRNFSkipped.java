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

import java.sql.ResultSet;
import java.util.Properties;

import org.adempierelbr.util.TextUtil;
import org.compiere.util.Env;

import br.inf.portalfiscal.nfe.v310.TRetInutNFe.InfInut;

/**
 *		Model for Invalidated NF (Skipped)
 *
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRNFSkipped.java, v1.0 2015/03/31 13:42:19 PM, ralexsander Exp $
 */
public class MLBRNFSkipped extends X_LBR_NFSkipped
{
	/**
	 *	Serial Version
	 */
	private static final long serialVersionUID = 1L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNFSkipped (Properties ctx, int ID, String trx)
	{
		super (ctx, ID, trx);
	}	//	MLBRNFSkipped

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNFSkipped (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//	MLBRNFSkipped
	
	/**
	 * 	Register InfInut
	 * 	@param infInut
	 */
	public static void register (InfInut infInut)
	{
		MLBRNFSkipped skipped = new MLBRNFSkipped (Env.getCtx(), 0, null);
		//
		skipped.setDateTrx(TextUtil.stringToTime(infInut.getDhRecbto(), "yyyy-MM-dd'T'HH:mm:ss"));
		skipped.setlbr_CNPJ(infInut.getCNPJ());
		skipped.setlbr_NFeProt(infInut.getNProt());
		skipped.setLBR_NFeSkippedNFIni(infInut.getNNFIni());
		skipped.setLBR_NFeSkippedNFFin(infInut.getNNFFin());
		skipped.setLBR_NFeSkippedYear(infInut.getAno());
		skipped.setlbr_NFModel(infInut.xgetMod().getStringValue());
		skipped.setlbr_NFSerie(infInut.getSerie());
		skipped.save();
	}	//	register
} 	//	MLBRNFSkipped