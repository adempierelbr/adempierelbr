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
package org.adempierelbr.sped.efd.bean;

import java.sql.Timestamp;

import org.adempierelbr.annotation.XMLFieldProperties;
import org.adempierelbr.sped.RegSped;

/**
 * REGISTRO K100: PERíODO DE APURAÇÃO DO ICMS/IPI
 * 
 * @author Rogério Feitosa (Kenos, www.kenos.com.br)
 * @version $Id: RK100.java, v1.0 2019/01/09 10:56:21, kenos_rfeitosa Exp $
 */
public class RK100 extends RegSped
{
	@XMLFieldProperties(id = "DT_INI")
	private Timestamp DT_INI;
	@XMLFieldProperties(id = "DT_FIN")
	private Timestamp DT_FIN;

	/**
	 * Constructor
	 * 
	 * @param IND_MOV
	 */
	public RK100() {
		super();
	} // RK100	
		
	/**
	 * 
	 * @return
	 */
	public Timestamp getDT_INI()
	{
		return DT_INI;
	}

	/**
	 * 
	 * @param dT_INI
	 */
	public void setDT_INI(Timestamp dT_INI)
	{
		DT_INI = dT_INI;
	}

	/**
	 * 
	 * @return
	 */
	public Timestamp getDT_FIN()
	{
		return DT_FIN;
	}

	/**
	 * 
	 * @param dT_FIN
	 */
	public void setDT_FIN(Timestamp dT_FIN)
	{
		DT_FIN = dT_FIN;
	}

	/**
	 * 
	 */
	public int compareTo(Object arg0)
	{
		return 0;
	}

} // RK100