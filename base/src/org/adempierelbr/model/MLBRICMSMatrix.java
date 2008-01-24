package org.adempierelbr.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.model.X_LBR_ICMSMatrix;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *	MLBRICMSMatrix
 *
 *	Model for X_LBR_ICMSMatrix
 *	
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRICMSMatrix.java, 15/12/2007 14:50:00 mgrigioni
 */
public class MLBRICMSMatrix extends X_LBR_ICMSMatrix {
    
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
	public MLBRICMSMatrix(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);	
	}
	
	/**************************************************************************
	 *  get Matrix_ID
	 *  @return X_LBR_TaxLine[] lines
	 */
	public static int getLBR_Tax_ID(Properties ctx, int C_Region_ID, int To_Region_ID, String trx){
		
		CLogger log = CLogger.getCLogger(MLBRICMSMatrix.class);
		
		String sql = "SELECT LBR_Tax_ID " +
				     "FROM LBR_ICMSMatrix " +
				     "WHERE C_Region_ID = ? " +
				     "AND To_Region_ID = ? " +
				     "AND AD_Client_ID = ?";

		Integer Matrix_ID = null;
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt(1, C_Region_ID);
			pstmt.setInt(2, To_Region_ID);
			pstmt.setInt(3, Env.getAD_Client_ID(ctx));
			ResultSet rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				Matrix_ID = rs.getInt(1);
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

		if (Matrix_ID == null) Matrix_ID = 0;
		
		return Matrix_ID.intValue();
	}
		
} //MLBRICMSMatrix