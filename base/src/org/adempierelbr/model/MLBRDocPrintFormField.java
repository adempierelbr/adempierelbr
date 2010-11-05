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
package org.adempierelbr.model;

/**
 *	MDocPrintFormField
 *
 *	DocPrint Form
 *	
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: MDocPrintFormField.java, 12/11/2007 14:55:00 mgrigioni
 */
public class MLBRDocPrintFormField implements Comparable<Object> {
	
	private String value = "";
	private int    x     = 0;
	private int    y     = 0;
	
	/**************************************************************************
	 *  Default Constructor
	 */
	public MLBRDocPrintFormField(String value, int x, int y){
		this.value = value;
		this.x = x;
		this.y = y;
	}
	
	/**************************************************************************
	 *  Get Value
	 */
	public String getValue(){
		return this.value;
	}
	
	/**************************************************************************
	 *  Get LocationX
	 */
	public int getLocationX(){
		return this.x;
	}
	
	/**************************************************************************
	 *  Get LocationY
	 */
	public int getLocationY(){
		return this.y;
	}
	
	/**************************************************************************
	 *  compareTo
	 */
	public int compareTo(Object anotherfield) throws ClassCastException {
		if (!(anotherfield instanceof MLBRDocPrintFormField))
			throw new ClassCastException("A MDoctypePrintFormField object expected.");
		int anotherfieldX = ((MLBRDocPrintFormField) anotherfield).getLocationX();
		int anotherfieldY = ((MLBRDocPrintFormField) anotherfield).getLocationY();
		if (anotherfieldX != this.x){
			return this.y - anotherfieldY;
		}
		else
			return this.x - anotherfieldX;
	}
} //MDocPrintFormField