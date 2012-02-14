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

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.adempierelbr.util.TextUtil;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * 		Model for LBR_ADI
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRADI.java, v1.0 2011/08/15 6:42:25 PM, ralexsander Exp $
 */
public class MLBRADI extends X_LBR_ADI
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MLBRADI.class);
	
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
	public MLBRADI (Properties ctx, int ID, String trx)
	{
		super(ctx, ID, trx);	
	}	//	MLBRADI
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRADI (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//	MLBRADI
	
	/**
	 * 	Get Parent
	 *	@return parent
	 */
	public MLBRDI getParent()
	{
		return new MLBRDI (Env.getCtx(), getLBR_DI_ID(), get_TrxName());
	}	//	getParent
	
	/**
	 * 	Count
	 * 	@return count
	 */
	public int getCount ()
	{
		String sql = "SELECT COUNT(*) FROM LBR_ADILine " +
				"WHERE LBR_ADILine.LBR_ADI_ID=?";
		return DB.getSQLValue(null, sql, getLBR_ADI_ID());
	}	//	getCount
	
	/**
	 * 	Before Save
	 */
	protected boolean beforeSave (boolean newRecord)
	{
		//	Ajusta o Número do Documento
		if (newRecord || is_ValueChanged("SeqNo"))
			setDocumentNo(getParent().getDocumentNo() + "/" + TextUtil.lPad (getSeqNo(), 3));
		
		//	Ajusta o valor do SISCOMEX
		if (getlbr_SISCOMEXAmt() == null
				|| Env.ZERO.compareTo(getlbr_SISCOMEXAmt()) == 0)
		{
			BigDecimal siscomex = new BigDecimal (2.95);
			//
			int seq = getSeqNo();
			//
			if (seq <= 2)
				siscomex = new BigDecimal (29.5);
			else if (seq <= 5)
				siscomex = new BigDecimal (23.6);
			else if (seq <= 10)
				siscomex = new BigDecimal (17.7);
			else if (seq <= 20)
				siscomex = new BigDecimal (11.8);
			else if (seq <= 50)
				siscomex = new BigDecimal (5.9);
			//
			setlbr_SISCOMEXAmt(siscomex);
		}
		
		return super.beforeSave(newRecord);
	}	//	beforeSave
	
	/**
	 * 	Get Lines
	 * 	@return
	 */
	public MLBRADILine[] getLines ()
	{
		String whereClause = COLUMNNAME_LBR_ADI_ID+"=?"; 
		List<MLBRADILine> list = new Query(Env.getCtx(), MLBRADILine.Table_Name, whereClause, null)
			.setParameters(new Object[]{getLBR_ADI_ID()})
			.list();
		//
		return list.toArray(new MLBRADILine[list.size()]);
	}	//	getLines
	
	/**
	 * 	Before Delete
	 */
	protected boolean beforeDelete()
	{
		if (getLBR_DI().isProcessed())
		{
			log.saveError("Error", Msg.getMsg(getCtx(), "CannotDelete"));
			return false;
		}
		//
		return true;
	}	//	beforeDelete
	
	/**
	 * 	Delete
	 */
	public boolean delete (boolean force)
	{
		//	Apaga as linhas
		for (MLBRADILine line : getLines())
			line.delete(true);
		//
		return super.delete(force);
	}	//	delete
}	//	MLBRADI
