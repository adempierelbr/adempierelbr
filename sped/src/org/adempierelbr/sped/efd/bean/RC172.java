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

import org.adempierelbr.sped.RegSped;

/**
 * REGISTRO C172: OPERAÇÕES COM ISSQN (CÓDIGO 01)
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC172.java, 11/02/2011, 14:45:00, mgrigioni
 * 
 * @contributor Pablo Boff Pigozzo
 * @version $Id: R0005.java, 07/08/2012, 14:00, pablobp4
 */
public class RC172 extends RegSped {

	private String VL_SERV_NT;
	private String VL_BC_ISSQN;
	private String ALIQ_ISSQN;
	private String VL_ISSQN;
	private String VL_BC_IRRF;
	private String VL_IRRF;
	private String VL_BC_PREV;
	private String VL_PREV;

	/**
	 * Constructor
	 * @param rc170
	 * @param VL_SERV_NT
	 * @param VL_BC_ISSQN
	 * @param ALIQ_ISSQN
	 * @param VL_ISSQN
	 * @param VL_BC_IRRF
	 * @param VL_IRRF
	 * @param VL_BC_PREV
	 * @param VL_PREV
	 */
	public RC172() {
		super();
	} //RC172
	
	
	
	public String getVL_SERV_NT() {
		return VL_SERV_NT;
	}



	public void setVL_SERV_NT(String vL_SERV_NT) {
		VL_SERV_NT = vL_SERV_NT;
	}



	public String getVL_BC_ISSQN() {
		return VL_BC_ISSQN;
	}



	public void setVL_BC_ISSQN(String vL_BC_ISSQN) {
		VL_BC_ISSQN = vL_BC_ISSQN;
	}



	public String getALIQ_ISSQN() {
		return ALIQ_ISSQN;
	}



	public void setALIQ_ISSQN(String aLIQ_ISSQN) {
		ALIQ_ISSQN = aLIQ_ISSQN;
	}



	public String getVL_ISSQN() {
		return VL_ISSQN;
	}



	public void setVL_ISSQN(String vL_ISSQN) {
		VL_ISSQN = vL_ISSQN;
	}



	public String getVL_BC_IRRF() {
		return VL_BC_IRRF;
	}



	public void setVL_BC_IRRF(String vL_BC_IRRF) {
		VL_BC_IRRF = vL_BC_IRRF;
	}



	public String getVL_IRRF() {
		return VL_IRRF;
	}



	public void setVL_IRRF(String vL_IRRF) {
		VL_IRRF = vL_IRRF;
	}



	public String getVL_BC_PREV() {
		return VL_BC_PREV;
	}



	public void setVL_BC_PREV(String vL_BC_PREV) {
		VL_BC_PREV = vL_BC_PREV;
	}



	public String getVL_PREV() {
		return VL_PREV;
	}



	public void setVL_PREV(String vL_PREV) {
		VL_PREV = vL_PREV;
	}



	/**
	 * Formata o Bloco C Registro 172
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(VL_BC_ISSQN)
            .append(PIPE).append(ALIQ_ISSQN)
            .append(PIPE).append(VL_ISSQN)
            .append(PIPE);

		return format.append(EOL).toString();
	} // toString
	
} //RC172