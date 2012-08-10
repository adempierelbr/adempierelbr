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
 * REGISTRO 0005: DADOS COMPLEMENTARES DA ENTIDADE
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0005.java, 03/02/2011, 16:52:00, mgrigioni
 * 
 * @contributor Pablo Boff Pigozzo
 * @version $Id: R0005.java, 07/08/2012, 14:00, pablobp4
 */

public class R0005 extends RegSped  {


	private String FANTASIA;
	private String CEP;
	private String END;
	private String NUM;
	private String COMPL;
	private String BAIRRO;
	private String FONE;
	private String FAX;
	private String EMAIL;

	
	/**
	 * Constructor
	 * 
	 * @param FANTASIA
	 * @param CEP
	 * @param END
	 * @param NUM
	 * @param COMPL
	 * @param BAIRRO
	 * @param FONE
	 * @param FAX
	 * @param EMAIL
	 */
	public R0005()
	{
		super();
	}

	
	public String getFANTASIA() {
		return FANTASIA;
	}

	public void setFANTASIA(String fANTASIA) {
		FANTASIA = fANTASIA;
	}

	public String getCEP() {
		return CEP;
	}

	public void setCEP(String cEP) {
		CEP = cEP;
	}

	public String getEND() {
		return END;
	}

	public void setEND(String eND) {
		END = eND;
	}

	public String getNUM() {
		return NUM;
	}

	public void setNUM(String nUM) {
		NUM = nUM;
	}

	public String getCOMPL() {
		return COMPL;
	}

	public void setCOMPL(String cOMPL) {
		COMPL = cOMPL;
	}

	public String getBAIRRO() {
		return BAIRRO;
	}

	public void setBAIRRO(String bAIRRO) {
		BAIRRO = bAIRRO;
	}

	public String getFONE() {
		return FONE;
	}

	public void setFONE(String fONE) {
		FONE = fONE;
	}

	public String getFAX() {
		return FAX;
	}

	public void setFAX(String fAX) {
		FAX = fAX;
	}

	public String getEMAIL() {
		return EMAIL;
	}

	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}

	/**
	 * Formata o Bloco 0 Registro 005
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
		           (PIPE).append(REG) 
		    .append(PIPE).append(FANTASIA)
		    .append(PIPE).append(CEP)
		    .append(PIPE).append(END)
		    .append(PIPE).append(NUM)
		    .append(PIPE).append(COMPL)
		    .append(PIPE).append(BAIRRO)
		    .append(PIPE).append(FONE)
		    .append(PIPE).append(FAX)
		    .append(PIPE).append(EMAIL)
		    .append(PIPE);

		return format.append(EOL).toString();
	}	// toString

}	// R0005