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
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.model.MColumn;
import org.compiere.model.MTable;
import org.compiere.model.M_Element;
import org.compiere.process.ColumnSync;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;


/**
 *	ProcCreateDefaultColumns
 *
 *  Process to Generate Default Columns
 *  
 *	 
 *	@author Alvaro Montenegro
 *	@version $Id: ProcCreateDefaultColumns.java, 01/09/2008 10:38:00 amontenegro
 */
public class ProcCreateDefaultColumns extends SvrProcess
{
	String p_EntityType;
	
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
	}//prepare
	
	/**
	 *  Perform process.
	 *  @return Message
	 *  @throws Exception if not successful
	 */
	protected String doIt() throws Exception
	{
		StringBuffer returnMsg = new StringBuffer();
		
		Properties ctx = getCtx();
		String trx = get_TrxName();
		int AD_Table_ID = getRecord_ID();
		
		MTable table = new MTable(ctx,AD_Table_ID,trx);
		p_EntityType = table.getEntityType();
		if(CleanTable(AD_Table_ID))
			CreateDefaultColumns(AD_Table_ID);
		else
			returnMsg.append("Tabela já possui colunas");
		
		return returnMsg.toString();
	}//doIt
	
	private void CreateDefaultColumns(int AD_Table_ID)
	{
		//Properties ctx = getCtx();
		//String trx = get_TrxName();
		
		CreateID(AD_Table_ID);
		CreateAD_Client_ID(AD_Table_ID);
		CreateAD_Org_ID(AD_Table_ID);
		CreateIsActive(AD_Table_ID);
		CreateCreated(AD_Table_ID);
		CreateCreatedBy(AD_Table_ID);
		CreateUpdated(AD_Table_ID);
		CreateUpdatedBy(AD_Table_ID);
	}
	
	private void CreateID(int AD_Table_ID)
	{
		Properties ctx = getCtx();
		String trx = null;
		
		MTable table = new MTable(ctx,AD_Table_ID,trx);
		String name = table.getTableName() + "_ID";

		M_Element element = new M_Element(ctx,0,trx);
		element.setColumnName(name);
		element.setName(name);
		element.setPrintName(name);
		element.setDescription("Primary Key : " + table.getName());
		element.setHelp("Primary Key : " + table.getName());
		element.save();
		
		MColumn clm = new MColumn(ctx,0,trx);
		clm.setAD_Table_ID(AD_Table_ID);
		clm.setColumnName(name);
		clm.setAD_Element_ID(element.get_ID());
		clm.setName("a");
		clm.setFieldLength(22);
		clm.setAD_Reference_ID(13); //ID
		clm.setIsIdentifier(true);
		clm.setIsMandatory(true);
		clm.setIsKey(true);
		clm.setIsUpdateable(false);
		clm.setEntityType(p_EntityType);
		clm.save();
		process(clm.get_ID(),AD_Table_ID);
	}
	
	private void CreateAD_Client_ID(int AD_Table_ID)
	{
		Properties ctx = getCtx();
		String trx = null;
		
		MColumn clm = new MColumn(ctx,0,trx);
		clm.setAD_Table_ID(AD_Table_ID);
		clm.setColumnName("AD_Client_ID");
		clm.setAD_Element_ID(102);
		clm.setName("a");
		clm.setFieldLength(22);
		clm.setAD_Reference_ID(19); //Tabela Direta
		clm.setDefaultValue("#@AD_Client_ID#");
		clm.setIsMandatory(true);	
		clm.setIsUpdateable(false);
		clm.setEntityType(p_EntityType);
		clm.save();
		process(clm.get_ID(),AD_Table_ID);
	}
	
	private void CreateAD_Org_ID(int AD_Table_ID)
	{
		Properties ctx = getCtx();
		String trx = null;
		
		MColumn clm = new MColumn(ctx,0,trx);
		clm.setAD_Table_ID(AD_Table_ID);
		clm.setColumnName("AD_Org_ID");
		clm.setAD_Element_ID(113);
		clm.setName("a");
		clm.setFieldLength(22);
		clm.setAD_Reference_ID(19); //Tabela Direta
		clm.setDefaultValue("#@AD_Org_ID#");
		clm.setIsMandatory(true);	
		clm.setIsUpdateable(false);
		clm.setEntityType(p_EntityType);
		clm.save();
		process(clm.get_ID(),AD_Table_ID);
	}
	
	private void CreateIsActive(int AD_Table_ID)
	{
		Properties ctx = getCtx();
		String trx = null;
		
		MColumn clm = new MColumn(ctx,0,trx);
		clm.setAD_Table_ID(AD_Table_ID);
		clm.setColumnName("IsActive");
		clm.setAD_Element_ID(348);
		clm.setName("a");
		clm.setFieldLength(1);
		clm.setAD_Reference_ID(20); //Sim-Não
		clm.setDefaultValue("Y");
		clm.setIsMandatory(true);
		clm.setEntityType(p_EntityType);
		clm.save();
		process(clm.get_ID(),AD_Table_ID);
	}
	
	private void CreateCreated(int AD_Table_ID)
	{
		Properties ctx = getCtx();
		String trx = null;
		
		MColumn clm = new MColumn(ctx,0,trx);
		clm.setAD_Table_ID(AD_Table_ID);
		clm.setColumnName("Created");
		clm.setAD_Element_ID(245);
		clm.setName("a");
		clm.setFieldLength(7);
		clm.setAD_Reference_ID(16); //Data+Hora
		clm.setIsMandatory(true);
		clm.setIsUpdateable(false);
		clm.setEntityType(p_EntityType);
		clm.save();
		process(clm.get_ID(),AD_Table_ID);
	}
	
	private void CreateCreatedBy(int AD_Table_ID)
	{
		Properties ctx = getCtx();
		String trx = null;
		
		MColumn clm = new MColumn(ctx,0,trx);
		clm.setAD_Table_ID(AD_Table_ID);
		clm.setColumnName("CreatedBy");
		clm.setAD_Element_ID(246);
		clm.setName("a");
		clm.setFieldLength(22);
		clm.setAD_Reference_ID(18); //Tabela
		clm.setAD_Reference_Value_ID(110); //AD_User
		clm.setIsMandatory(true);
		clm.setIsUpdateable(false);
		clm.setEntityType(p_EntityType);
		clm.save();
		process(clm.get_ID(),AD_Table_ID);
	}
	
	private void CreateUpdated(int AD_Table_ID)
	{
		Properties ctx = getCtx();
		String trx = null;
		
		MColumn clm = new MColumn(ctx,0,trx);
		clm.setAD_Table_ID(AD_Table_ID);
		clm.setColumnName("Updated");
		clm.setAD_Element_ID(607);
		clm.setName("a");
		clm.setFieldLength(7);
		clm.setAD_Reference_ID(16); //Data+Hora
		clm.setIsMandatory(true);
		clm.setIsUpdateable(false);
		clm.setEntityType(p_EntityType);
		clm.save();
		process(clm.get_ID(),AD_Table_ID);
		

	}
	
	private void CreateUpdatedBy(int AD_Table_ID)
	{
		Properties ctx = getCtx();
		String trx = null;
		
		MColumn clm = new MColumn(ctx,0,trx);
		clm.setAD_Table_ID(AD_Table_ID);
		clm.setColumnName("UpdatedBy");
		clm.setAD_Element_ID(608);
		clm.setName("a");
		clm.setFieldLength(22);
		clm.setAD_Reference_ID(18); //Tabela
		clm.setAD_Reference_Value_ID(110); //AD_User
		clm.setIsMandatory(true);
		clm.setIsUpdateable(false);
		clm.setEntityType(p_EntityType);
		clm.save();
		process(clm.get_ID(),AD_Table_ID);
	}
	
	private void process(int clmID, int AD_Table_ID)
	{
		Properties ctx = getCtx();
		ProcessInfo pi = new ProcessInfo("Synchronize Column",181,AD_Table_ID,clmID);
		ColumnSync sync = new ColumnSync();
		sync.startProcess(ctx, pi, null);
	}
	
	/**
	 *  Clean Table
	 *  Checks to see if the table does not have any columns
	 *  @return True if table is clean
	 */
	private Boolean CleanTable(int AD_Table_ID)
	{
		Boolean returnValue = true;
		PreparedStatement pstmt = null;
		
		StringBuffer sql = new StringBuffer();
		sql.append("select count(ad_column_id) from ad_column where ad_table_id = ? "); 
		
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), null);
			pstmt.setInt(1, AD_Table_ID);
			rs = pstmt.executeQuery();
			if (rs.next())
			{
				if(rs.getInt(1) > 0)
					returnValue = false;
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally
		{
			DB.close(rs, pstmt);
		}
		
		return returnValue;
	}
}