/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2011 Ricardo Santana                                         *
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
import java.util.List;
import java.util.Properties;

import javax.swing.text.MaskFormatter;

import org.adempierelbr.util.TextUtil;
import org.compiere.model.Query;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * 		Model for DI
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRDI.java, v1.0 2011/08/12 3:59:08 PM, ralexsander Exp $
 */
public class MLBRDI extends X_LBR_DI
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = 1L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRDI (Properties ctx, int ID, String trx)
	{
		super(ctx, ID, trx);	
	}	//	MLBRDI
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRDI (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//	MLBRDI
	
	public static MLBRDI get (Properties ctx, String noDI, String trxName)
	{
		return new Query (ctx, Table_Name, "DocumentNo=?", trxName).setParameters(noDI).setClient_ID().first();
	}	//	get
	
	/**
	 * 	Count
	 * 	@return count
	 */
	public int getCount ()
	{
		String sql = "SELECT COUNT(*) FROM LBR_ADILine " +
				"WHERE LBR_ADILine.LBR_ADI_ID IN " +
				"(SELECT LBR_ADI_ID FROM LBR_ADI WHERE LBR_DI_ID=?)";
		return DB.getSQLValue(null, sql, getLBR_DI_ID());
	}	//	getCount
	
	/**
	 * 	Delete
	 */
	public boolean delete (boolean force)
	{
		//	Apaga as linhas
		for (MLBRADI line : getLines())
			line.delete(true);
		//
		return super.delete(force);
	}	//	delete
	
	/**
	 * 	Get Lines
	 * 	@return
	 */
	public MLBRADI[] getLines ()
	{
		return getLines (null);
	}	//	getLines
	
	/**
	 * 	Get Lines
	 * 	@return
	 */
	public MLBRADI[] getLines (String whereClause)
	{
		if (whereClause == null)
			whereClause = " TRUE ";
		
		whereClause += " AND " + COLUMNNAME_LBR_DI_ID+"=?"; 
		List<MLBRADI> list = new Query(Env.getCtx(), MLBRADI.Table_Name, whereClause, get_TrxName())
			.setParameters(new Object[]{getLBR_DI_ID()})
			.list();
		//
		return list.toArray(new MLBRADI[list.size()]);
	}	//	getLines
	
	/**
	 * 	Get DI Addition line
	 * 
	 * @param noAdi
	 * @param M_Product_ID
	 * @return
	 */
	public int getLBR_ADILine_ID (String noAdi, int M_Product_ID)
	{
		MLBRADI adi = null;
		MLBRADILine adl = null;
		
		for (MLBRADI current : getLines("SeqNo='" + noAdi + "'"))
		{
			adi = current;
			break;
		}
		
		if (adi == null)
		{
			adi = new MLBRADI (this);
			adi.setSeqNo(Integer.parseInt(noAdi));
			adi.save();
		}
		
		for (MLBRADILine current : adi.getLines("M_Product_ID=" + M_Product_ID))
		{
			adl = current;
			break;
		}
		
		if (adl == null)
		{
			adl = new MLBRADILine (adi);
			adl.setM_Product_ID(M_Product_ID);
			adl.save();
		}

		return adl.getLBR_ADILine_ID();
	}
	
	@Override
	protected boolean beforeSave (boolean newRecord)
	{
		if (newRecord)
		{
			//		** Máscara da DI **
			String doc = TextUtil.toNumeric(getDocumentNo());
			if (doc != null && doc.length() == 10)
			{
				try
				{
					MaskFormatter mf = new MaskFormatter("##/#######-#");
					mf.setValueContainsLiteralCharacters(false);
					setDocumentNo (mf.valueToString (doc));
				}
				catch (Exception e) {}
			}
		}
		return true;
	}	//	beforeSave
}	//	MLBRDI
