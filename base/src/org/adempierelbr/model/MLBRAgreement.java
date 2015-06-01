package org.adempierelbr.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * 	Agreement
 * 
 * 	@author Ricardo Santana (www.kenos.com.br)
 *	@version $Id: MAgreement.java, v1.0 2010/06/10 11:40:32 PM, ralexsander Exp $
 */
public class MLBRAgreement extends X_LBR_Agreement
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MLBRAgreement.class);
	
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
	public MLBRAgreement (Properties ctx, int ID, String trx)
	{
		super(ctx,ID,trx);	
	}	//	MAgreement
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRAgreement (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//	MAgreement
	
	/**
	 * 	Get Lines
	 * @return Agreement Lines
	 */
	public MLBRAgreementLine[] getLines ()
	{
		return getLines (null);
	}
	
	/**
	 * 	Get Lines
	 * @return Agreement Lines
	 */
	public MLBRAgreementLine[] getLines (Timestamp from)
	{
		ArrayList<MLBRAgreementLine> list = new ArrayList<MLBRAgreementLine> ();
		StringBuffer sql = new StringBuffer("SELECT * FROM LBR_AgreementLine WHERE LBR_Agreement_ID=?");
		if (from != null)
			sql.append(" AND ValidFrom <= " + DB.TO_DATE(from));
		//
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), get_TrxName());
			pstmt.setInt(1, getLBR_Agreement_ID());
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				MLBRAgreementLine al = new MLBRAgreementLine(getCtx(), rs, get_TrxName());
				list.add(al);
			}
 		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally
		{
			DB.close(rs, pstmt);
			rs = null; pstmt = null;
		}
		//
		MLBRAgreementLine[] lines = new MLBRAgreementLine[list.size ()];
		list.toArray (lines);
		return lines;
	}	//	getLines
	
	/**
	 * 	Seleciona a exceção de acordo com o estado
	 * 
	 * @param regionName
	 * @return
	 */
	public static MLBRAgreement get (int C_Region_ID, int To_Region_ID)
	{
		Integer LBR_Agreement_ID = DB.getSQLValue(null, "SELECT a.LBR_Agreement_ID " +
				"FROM LBR_Agreement a " +
				"WHERE a.AD_Client_ID=? AND a.C_Region_ID=? AND a.To_Region_ID=?", 
				new Object[]{Env.getAD_Client_ID(Env.getCtx()), C_Region_ID, To_Region_ID});
		
		if (LBR_Agreement_ID != null && LBR_Agreement_ID > 0)
			return new MLBRAgreement (Env.getCtx(), LBR_Agreement_ID, null);
		//
		return null;
	}	//	get
}	//	MAgreement
