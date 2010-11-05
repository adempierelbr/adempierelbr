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
package org.adempierelbr.process;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRDocPrintField;
import org.adempierelbr.model.X_LBR_DocPrint;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;


/**
 *	ProcCreateFields
 *
 *	Process to Create Document Fields (LBR_DocPrintField)
 *	
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: ProcCreateFields.java, 12/11/2007 13:38:00 mgrigioni
 */
public class ProcCreateFields extends SvrProcess
{
	/** Tipo de Documento         */
	private int p_LBR_DocPrint_ID = 0;
	
	/**	Tabela	                  */
	private String p_TableName = null;

	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message
	 *  @throws Exception if not successful
	 */
	protected String doIt() throws Exception
	{
		log.info("CreateFields Process " + "Table: " + p_TableName);
				
		p_LBR_DocPrint_ID = getRecord_ID();
		
		X_LBR_DocPrint docPrint = new X_LBR_DocPrint(getCtx(),p_LBR_DocPrint_ID,get_TrxName());
		p_TableName = docPrint.getlbr_TableName();
		
		String sql = "";
		String tabela = p_TableName;
		
		if (DB.isOracle() == false){
			//PostgreSQL
			sql = "SELECT column_name FROM information_schema.columns WHERE table_name = ?";
			tabela = tabela.toLowerCase();
		}
		else{
			//Oracle
			sql = "SELECT column_name FROM user_tab_cols WHERE table_name = ?";
			tabela = tabela.toUpperCase();
		}
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setString(1, tabela);
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				String columnName = rs.getString(1);
				if (!isCreated(columnName))
					if (!(columnName.endsWith("_ID") || columnName.endsWith("_id"))){
						setField(columnName);
					}
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		return "CreateFields Process Completed " + "Table: " + p_TableName;
		
	}	//	doIt
	
	private void setField(String columnName){
		
		MLBRDocPrintField Field = new MLBRDocPrintField(getCtx(),0,null);
		if (!(columnName.endsWith("_ID"))){
			Field.setName(columnName);
			Field.setLBR_DocPrint_ID(p_LBR_DocPrint_ID);
			Field.setlbr_RowNo(0);
			Field.setlbr_ColumnNo(0);
			Field.setlbr_FieldLength(0);
			Field.save();
		}
	}
	
	private boolean isCreated(String columnName){
		
		String sql = "SELECT LBR_DocPrintField_ID " +
				     "FROM LBR_DocPrintField " +
				     "WHERE Name = ? " +
				     "AND LBR_DocPrint_ID = ?";
		
		boolean isCreated = false;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setString(1, columnName);
			pstmt.setInt(2, p_LBR_DocPrint_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				isCreated = true;
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		return isCreated;
	}
	
}	//	ProcCreateFields