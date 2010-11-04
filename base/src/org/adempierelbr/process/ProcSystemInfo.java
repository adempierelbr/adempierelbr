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

import java.util.logging.Level;

import org.adempierelbr.util.AdempiereLBR;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;

/**
 *	ProcSystemInfo
 *
 *	Process to show System Info
 *	
 *	@author Mario Grigioni
 *	@version $Id: ProcSystemInfo.java, 08/06/2010 12:39:00 mgrigioni
 */
public class ProcSystemInfo extends SvrProcess
{
	
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
		log.info("About AdempiereLBR");
		
		StringBuffer msg = new StringBuffer();
		
		msg.append("<br><font color=\"#000000\">");
		msg.append("<b>Sistema Operacional: </b>");
		msg.append(AdempiereLBR.getOsName() + "<br>");
		msg.append("<b>Default Path: </b>");
		msg.append(AdempiereLBR.getPath() + "<br><br>");
		msg.append("</font>");

		return msg.toString();
	}	//	doIt
	

}	//	ProcLBRVersion