package org.adempierelbr.process;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;

import org.adempierelbr.model.MDocPrintField;
import org.compiere.process.*;
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
			else if (name.equals("LBR_DocPrint_ID"))
				p_LBR_DocPrint_ID = para[i].getParameterAsInt();
			else if (name.equals("lbr_TableName"))
				p_TableName = para[i].getParameter().toString();
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
				
		if (p_TableName == null || p_TableName.equals(""))
			throw new IllegalArgumentException("Table Unknown");
		
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
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setString(1, tabela);
			ResultSet rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				String columnName = rs.getString(1);
				if (!isCreated(columnName))
					setField(columnName);
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
		
		return "CreateFields Process Completed " + "Table: " + p_TableName;
		
	}	//	doIt
	
	private void setField(String columnName){
		
		MDocPrintField Field = new MDocPrintField(getCtx(),0,null);
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
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setString(1, columnName);
			pstmt.setInt(2, p_LBR_DocPrint_ID);
			ResultSet rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				isCreated = true;
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
		
		return isCreated;
	}
	
}	//	ProcCreateFields