package org.adempierelbr.model;

/**
 *	MDocPrintFormField
 *
 *	DocPrint Form
 *	
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: MDocPrintFormField.java, 12/11/2007 14:55:00 mgrigioni
 */
public class MDocPrintFormField implements Comparable<Object> {
	
	private String value = "";
	private int    x     = 0;
	private int    y     = 0;
	
	/**************************************************************************
	 *  Default Constructor
	 */
	public MDocPrintFormField(String value, int x, int y){
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
		if (!(anotherfield instanceof MDocPrintFormField))
			throw new ClassCastException("A MDoctypePrintFormField object expected.");
		int anotherfieldX = ((MDocPrintFormField) anotherfield).getLocationX();
		int anotherfieldY = ((MDocPrintFormField) anotherfield).getLocationY();
		if (anotherfieldX != this.x){
			return this.y - anotherfieldY;
		}
		else
			return this.x - anotherfieldX;
	}
} //MDocPrintFormField