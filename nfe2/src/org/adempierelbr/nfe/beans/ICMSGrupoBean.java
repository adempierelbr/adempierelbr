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

public class ICMSGrupoBean {

	private String orig;
	private String CST;
	private String modBC;
	private String pRedBC;
	private String vBC;
	private String pICMS;
	private String vICMS;
	
	public String getOrig() {
		return orig;
	}
	public void setOrig(String orig) {
		if (orig != null)
			orig = orig.trim();
	
		this.orig = orig;
	}
	public String getCST() {
		return CST;
	}
	public void setCST(String cST) {
		if (cST != null)
			cST = cST.trim();
	
		CST = cST;
	}
	public String getModBC() {
		return modBC;
	}
	public void setModBC(String modBC) {
		if (modBC != null)
			modBC = modBC.trim();
	
		this.modBC = modBC;
	}
	public String getpRedBC() {
		return pRedBC;
	}
	public void setpRedBC(String pRedBC) {
		if (pRedBC != null)
			pRedBC = pRedBC.trim();
	
		this.pRedBC = pRedBC;
	}
	public String getpICMS() {
		return pICMS;
	}
	public String getvBC() {
		return vBC;
	}
	public void setvBC(String vBC) {
		if (vBC != null)
			vBC = vBC.trim();
	
		this.vBC = vBC;
	}
	public void setpICMS(String pICMS) {
		if (pICMS != null)
			pICMS = pICMS.trim();
	
		this.pICMS = pICMS;
	}
	public String getvICMS() {
		return vICMS;
	}
	public void setvICMS(String vICMS) {
		if (vICMS != null)
			vICMS = vICMS.trim();
	
		this.vICMS = vICMS;
	}
	
}