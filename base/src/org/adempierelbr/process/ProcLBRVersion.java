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

import org.compiere.model.MSysConfig;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;

/**
 *	ProcLBRVersion
 *
 *	Process to show AdempiereLBR About
 *
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: ProcLBRVersion.java, 26/11/2008 10:07:00 mgrigioni
 */
public class ProcLBRVersion extends SvrProcess
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
		log.info("About ADempiereLBR");

		StringBuffer msg = new StringBuffer();

		msg.append("<br><font color=\"#000000\">");
		msg.append("<b>Versão ADempiereLBR: </b>");
		msg.append(MSysConfig.getValue("LBR_VERSION_NO") + "<br>");
		msg.append("<b>Último Script Executado: </b>");
		msg.append(MSysConfig.getValue("LBR_LAST_SCRIPT_EXECUTED") + "<br><br>");
		msg.append("</font>");

		return msg.toString();
	}	//	doIt


}	//	ProcLBRVersion