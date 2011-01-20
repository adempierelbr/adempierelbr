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
package org.adempierelbr.sped.efd.piscofins;

import java.util.Properties;

import org.adempierelbr.sped.CounterSped;

/**
 *	Utilitarios para o EFD (Pis/Cofins)
 *
 * @author Mario Grigioni, mgrigioni
 * @version $Id: EFDUtil.java, 20/01/2011, 09:50:00, mgrigioni
 */
public class EFDUtil
{
	/**	Logger			*/
	//private static CLogger log = CLogger.getCLogger(EFDUtilpis.class);
	
	//private static Properties ctx = null; //Context
	//private static String     trx = null; //Transaction
	
	public static final String COD_VER = "002"; //Versão 1.01 ADE Cofis nº 34/2010	01/01/2011
		
	public static void setEnv(Properties ctx, String trx){
		
		//EFDUtilpis.ctx = ctx;
		//EFDUtilpis.trx = trx;
		
		CounterSped.clear();
	} //setEnvironment
		
} //EFDUtil