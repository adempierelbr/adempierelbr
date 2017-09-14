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
package org.kenos.process;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.model.MRecurring;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * 		Varre os registros recorrentes e executa a operação automáticamente
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 * 	@contributor mosca (Inova)
 * 	@version $Id: RecurringRun.java, v1.0 2012/03/14 5:59:31 PM, ralexsander Exp $
 */
public class RecurringRun extends SvrProcess 
{
	private Timestamp dateTrx;
	
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
			else if ("DateTrx".equals(name))
			{
				dateTrx = (Timestamp) para[i].getParameter();
			}
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message (clear text)
	 *  @throws Exception if not successful
	 */
	protected String doIt() throws IOException 
	{
		//	Cria um novo contexto, para separar os novos pedidos por empresa
		Properties ctx = (Properties) getCtx().clone();
		StringBuffer where = new StringBuffer (MRecurring.COLUMNNAME_IsActive + "='Y' AND DateNextRun<=");
		
		//	Restrição por data, normalmente usa a data do BD
		//		porém é possível rodar para uma data futura, usando o parâmetro
		if (dateTrx != null)
			where.append(DB.TO_DATE(dateTrx, false));
		else
			where.append("SYSDATE");
		
		//	Restrição por empresa, caso esteja rodando em apenas uma empresa, não tem problema
		if (getAD_Client_ID() > 0)
			where.append(" AND AD_Client_ID=" + getAD_Client_ID());
		//
		List<MRecurring> list = new Query (ctx, MTable.get(ctx, MRecurring.Table_ID), where.toString(), get_TrxName()).list();
		
		int countOK = 0;
		int countNOK = 0;
		
		//	Para cada recorrencia
		for (MRecurring rec : list)
		{
			//	Necessário para preservar os AD_Client_IDs, quando o processo é executado no servidor
			Env.setContext(ctx, "#AD_Client_ID", rec.getAD_Client_ID());
			
			try
			{
				addLog(rec.executeRun());
				countOK++;
			}
			catch (Exception e)
			{
				addLog("Error: " +e.getMessage() + " on document MRecurring[ID=" + rec.getC_Recurring_ID() + ", Name='" + rec.getName() + "]");
				countNOK++;
			}
		}
		//
		return "@Success@ [OK=" + countOK + ", Not OK=" + countNOK + "]";
	}	//	doIt
}	//	RecurringRun