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

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.logging.Level;

import org.compiere.util.CLogger;
import org.compiere.util.DB;


/**
 *	MDocPrintForm
 *
 *	DocPrint Form
 *	
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: MDocPrintForm.java, 12/11/2007 14:55:00 mgrigioni
 */
public class MDocPrintForm{
    
	/**	Logger			  */
	private static CLogger log = CLogger.getCLogger(MDocPrintForm.class);
	/** PreparedStatement */
    private PreparedStatement pstmt = null;
    /** ResultSet         */
 	private ResultSet rs = null;
 	/** Form Fields       */
 	public ArrayList<MDocPrintFormField> fFields = new ArrayList<MDocPrintFormField>();
	
	/**************************************************************************
	 *  Default Constructor
	 */
	public MDocPrintForm(){}	
	
	/**************************************************************************
	 *  Get Fields - Sort by LocationY, LocationX
	 */
	public MDocPrintFormField[] getFields(){
		
		MDocPrintFormField[] lines = new MDocPrintFormField[fFields.size()];
		fFields.toArray(lines);
		Arrays.sort(lines);
		
		return lines;
		
	}	
	
	/**************************************************************************
	 *  Set Fields - Default
	 */
	public void setFields(MDocPrint DocPrint, String sql, boolean IsSubDoc){
		
		int SubDocRow = 0;
		
		if (IsSubDoc){
			SubDocRow = DocPrint.getlbr_SubDocRow();
		}
		
		boolean otherRow = false;
		int     newRow   = 1;
		
		try
    	{
    		pstmt = DB.prepareStatement (sql, null);
    		rs = pstmt.executeQuery ();
    		while (rs.next ())
    		{
    			MDocPrintField[] fields = MDocPrintField.getFields(DocPrint.getCtx(), DocPrint.getLBR_DocPrint_ID());
	            
	            for (int i=0;i<fields.length;i++){
	            	
	            	String columnName = fields[i].getName();
	            	String format = fields[i].getlbr_PrintFormat();
	            	
	            	//String
	            	if (format.equals("S")){
	            		String value = rs.getString(columnName);
      			  		if (value == null){
      			  			value = "";
      			  		}
      			  		otherRow = fields[i].setValue(value,fields[i].getlbr_FieldLength(),IsSubDoc);
	            	}
	            	//Value
	            	else if (format.equals("V")){
	            		BigDecimal value = rs.getBigDecimal(columnName);
      			  		if (value == null){
      			  			String Svalue = "";
      			  			fields[i].setValue(Svalue);
      			  		}
      			  		else{
      			  			fields[i].setValue(value.doubleValue());
      			  		}
	            	}
	            	//Date
	            	else if (format.equals("D")){
		            		Date value = rs.getDate(columnName);
	      			  		if (value == null){
	      			  			String Svalue = "";
	      			  			fields[i].setValue(Svalue);
	      			  		}
	      			  		else{
	      			  			fields[i].setValue(value);
	      			  		}
		            }
	            	
	            	//Alignment
	            	int x = fields[i].getAlignment();
	            	int y = 0;
	            	
	            	if (IsSubDoc)
	            		y = SubDocRow;
	            	else
	            		y = fields[i].getlbr_RowNo();
	            	
	            	MDocPrintFormField aux = new MDocPrintFormField(fields[i].getValue(),x,y);
	            	fFields.add(aux);
	            	
	            	
	            	if (otherRow){
	            		
	            		int fieldLength = fields[i].getlbr_FieldLength();
	            		String value = rs.getString(columnName);
	            		
	            		while (otherRow){
	            			
	            			String newValue = value.substring(fieldLength*newRow);
	            			otherRow = fields[i].setValue(newValue, fieldLength, IsSubDoc);
	            			
	            			y++;
	            			
			            	MDocPrintFormField aux2 = new MDocPrintFormField(fields[i].getValue(),x,y);
			            	fFields.add(aux2);
			            	
			            	SubDocRow++;
			            	newRow++;
			            	
	            		}
	            		
	            	}
	            	
	            }
	            
	            SubDocRow++;
	            
    		}
    		rs.close ();
    		pstmt.close ();
    		pstmt = null;
    	}
    	catch (Exception e)
    	{
    		log.log(Level.SEVERE, "", e);
    	}
    	try
    	{
    		if (pstmt != null)
    			pstmt.close ();
    		pstmt = null;
    	}
    	catch (Exception e)
    	{
    		pstmt = null;
    	}
    	
	}
	
} //MDocPrintForm