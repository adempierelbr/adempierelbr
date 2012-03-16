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
package org.adempierelbr.nfe.beans;

public class PISBean {

	// PIS - Definir Grupo do PIS
	
	private PISGrupoBean PIS;
	private PISNTGrupoBean PISNT;
	private PISOutrGrupoBean PISOutr;

	public PISGrupoBean getPIS() {
		return PIS;
	}

	public void setPIS(PISGrupoBean pis) {
		PIS = pis;
	}
	
	public PISNTGrupoBean getPISNT() {
		return PISNT;
	}

	public void setPISNT(PISNTGrupoBean pis) {
		PISNT = pis;
	}
	
	public PISOutrGrupoBean getPISOutr() {
		return PISOutr;
	}

	public void setPISOutr(PISOutrGrupoBean pis) {
		PISOutr = pis;
	}


	
}
