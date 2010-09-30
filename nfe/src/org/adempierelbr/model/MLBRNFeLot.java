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

import java.io.File;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import org.adempierelbr.util.NFeUtil;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.model.X_LBR_NFeLot;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *	Model for LBR_NFeLot
 *	
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MDigitalCertificate.java,v 1.0 2009/08/23 00:51:27 ralexsander Exp $
 */
public class MLBRNFeLot extends X_LBR_NFeLot 
{
	/**
	 * 	Default Serial
	 */
	private static final long serialVersionUID = 1L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNFeLot (Properties ctx, int ID, String trx){
		super(ctx,ID,trx);	
	}
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNFeLot (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}
	
	/**
	 * OrgInfo
	 * @return MOrgInfo
	 */
	public MOrgInfo getOrgInfo ()
	{
		return MOrgInfo.get(Env.getCtx(), getAD_Org_ID());
	}
	
	public boolean isEmpty ()
	{
		int count = DB.getSQLValue(null, 
				"SELECT COUNT(*) FROM LBR_NotaFiscal WHERE LBR_NFeLot_ID=?", getLBR_NFeLot_ID());
		//
		if (count > 0)
			return false;
		else
			return true;
	}
	
	/**
	 * XMLs
	 * @return String[] XML
	 */
	public String[] getXMLs ()
	{
		ArrayList<String> xmls = new ArrayList<String>();
		String whereClause = "LBR_NFeLot_ID=?";
		//
		MTable table = MTable.get(getCtx(), MLBRNotaFiscal.Table_Name);		
		Query query =  new Query(table, whereClause, null);
	 		  query.setParameters(new Object[]{getLBR_NFeLot_ID()});
		//
	 	List<MLBRNotaFiscal> list = query.list();
	 	//
	 	for (MLBRNotaFiscal NF : list) 
	 	{
	 		if (NF == null)
	 			continue;
	 		
	 		File xml = NFeUtil.getAttachmentEntryFile(NF.getAttachment().getEntry(0));
	 		xmls.add(xml.toString());
	 	}
	 	//
	 	String[] result = new String[xmls.size()];
	 	xmls.toArray(result);
	 	//
		return result;
	}	//	getXMLs
}	//	MLBRNFeLot