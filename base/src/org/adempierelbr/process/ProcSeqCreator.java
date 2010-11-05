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

import org.adempierelbr.util.TextUtil;
import org.compiere.Adempiere;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogMgt;
import org.compiere.util.DB;

/**
 *	ProcSeqCreator
 *
 *	Process to create sequence files
 *	
 *	@author Mario Grigioni
 *	@version $Id: ProcSeqCreator.java, 13/09/2010 14:17:00 mgrigioni
 */
public class ProcSeqCreator extends SvrProcess
{

	private String p_FilePath = "";
	
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
			else if(name.equals("File_Directory"))
				p_FilePath = para[i].getParameter().toString();
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
		log.info("Process Sequencie Files Creator");
		generateFile(p_FilePath);
		return "Process Completed";
	}	//	doIt
	
	private static void generateFile(String filePath){
		
		String sql = "SELECT Name, CurrentNext FROM AD_Sequence WHERE Name LIKE 'AD%'";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				TextUtil.generateFile("" + rs.getLong(2), filePath + rs.getString(1) + ".seq");
			}
		}
		catch (Exception e)
		{
			//log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
	}
	
	public static void main (String[] args)
	{
		Adempiere.startupEnvironment(false);
		CLogMgt.setLevel(Level.FINE);
		String filePath = "C:\\Users\\mario.grigioni\\Desktop\\data\\AdempiereLBR\\";
		generateFile(filePath);
	}

}	//	ProcSeqCreator