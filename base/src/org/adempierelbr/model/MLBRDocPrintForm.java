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

import org.adempierelbr.util.TextUtil;
import org.compiere.util.CLogger;
import org.compiere.util.DB;


/**
 *	MDocPrintForm
 *
 *	DocPrint Form
 *
 *  BF [ 2200616 ] Problemas com Impressão de Documentos
 *	
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: MDocPrintForm.java, 12/11/2007 14:55:00 mgrigioni
 */
public class MLBRDocPrintForm{
    
	/**	Logger			  */
	private static CLogger log = CLogger.getCLogger(MLBRDocPrintForm.class);
	/** PreparedStatement */
    private PreparedStatement pstmt = null;
    /** ResultSet         */
 	private ResultSet rs = null;
 	/** Form Fields       */
 	public ArrayList<MLBRDocPrintFormField> fFields = new ArrayList<MLBRDocPrintFormField>();
	
	/**************************************************************************
	 *  Default Constructor
	 */
	public MLBRDocPrintForm(){}	
	
	/**************************************************************************
	 *  Get Fields - Sort by LocationY, LocationX
	 */
	public MLBRDocPrintFormField[] getFields(){
		
		MLBRDocPrintFormField[] lines = new MLBRDocPrintFormField[fFields.size()];
		fFields.toArray(lines);
		Arrays.sort(lines);
		
		return lines;
		
	}
	
	public void setFields(MLBRDocPrint DocPrint, String sql, boolean IsSubDoc){
		setFields(DocPrint, sql, IsSubDoc, "", true);
	}
	
	/**************************************************************************
	 *  Set Fields - Default
	 */
	public void setFields(MLBRDocPrint DocPrint, String sql, boolean IsSubDoc, String pageNo, boolean lastpage){
		
		int SubDocRow = 0;
		int RowNo     = 0;
		
		if (IsSubDoc){
			SubDocRow = DocPrint.getlbr_SubDocRow();
		}
		
		boolean otherRow = false;
		int     newRow   = 1;
		int     auxRow   = 0;
		int     lasty    = 0;
		
		try
    	{
    		pstmt = DB.prepareStatement (sql, null);
    		rs = pstmt.executeQuery ();
    		while (rs.next ())
    		{
    			MLBRDocPrintField[] fields = MLBRDocPrintField.getFields(DocPrint.getCtx(), DocPrint.getLBR_DocPrint_ID());
	            
	            for (int i=0;i<fields.length;i++){
	            	
	            	String columnName = fields[i].getName();
	            	String format = fields[i].getlbr_PrintFormat();
	            	
	            	//String
	            	if (format.equals("S")){
	            		String value = rs.getString(columnName);
      			  		if (value == null){
      			  			value = "";
      			  		}
      			  		
      			  		//PageNo
      			  		if (columnName.equalsIgnoreCase("PageNo")){
      			  			value = pageNo;
      			  		}
      			  		
      			  		otherRow = fields[i].setValue(value,fields[i].getlbr_FieldLength(),fields[i].islbr_OtherRow());
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
	            	
	            	//Check Header Columns
	            	if (!fields[i].islbr_IsHeader() && !lastpage){
	            		fields[i].setValue("");
	            		otherRow = false;
	            	}
	            	
	            	if (IsSubDoc){
	            		y = SubDocRow + fields[i].getlbr_RowNo();
	            		if (fields[i].getValue() != null && !fields[i].getValue().equals("")){
	            			if (fields[i].getlbr_RowNo() > RowNo)
	            				RowNo = fields[i].getlbr_RowNo();
	            		}
	            	}
	            	else{
	            		y = fields[i].getlbr_RowNo();
	            		if ((lasty + auxRow) > y){
	            			y += auxRow;
	            		}
	            		else{
	            			auxRow = 0;
	            		}
	            	}
	            		
	            	
	            	MLBRDocPrintFormField aux = new MLBRDocPrintFormField(fields[i].getValue(),x,y);
	            	fFields.add(aux);
	            	
	            	
	            	if (otherRow){
	            		
	            		int fieldLength = fields[i].getlbr_FieldLength();
	            		String value = rs.getString(columnName);
	            		
	            		value = removeEOL(value, fieldLength);
	            		
	            		while (otherRow){
	            			
		            		String newValue = value.substring(fieldLength*newRow);
		            		otherRow = fields[i].setValue(newValue, fieldLength, fields[i].islbr_OtherRow());

	            			y++;
	            			
			            	MLBRDocPrintFormField aux2 = new MLBRDocPrintFormField(fields[i].getValue(),x,y);
			            	fFields.add(aux2);
			            	
			            	SubDocRow++;
			            	newRow++;
			            	auxRow++;
			            	
	            		}
	            		
	            		newRow = 1;
	            		
	            	}
	            
		            lasty = y; //Salva último y
	            	
	            }
	            
	            SubDocRow += RowNo; //SubDocumento
	            SubDocRow++;
	            
	            RowNo = 0; //Zera RowNo para próxima passagem
	            	            
    		}
    	}
    	catch (Exception e)
    	{
    		log.log(Level.SEVERE, "", e);
    	}
    	finally{
    	       DB.close(rs, pstmt);
    	}
    	
	}
	
	public static String removeEOL(String value, int fieldLength){
		
		int indexOf = -1;
		
		indexOf = value.indexOf("\n");
		if (indexOf != -1){
			String newValue = "";
			String[] values = value.split("[\r\n]");
			for (int i=0;i<values.length;i++){
				int newLength = fieldLength - values[i].length();
				if (newLength < 0){
					int fator = values[i].length()/fieldLength;
					if ((values[i].length()%fieldLength) > 0){
						fator += 1;
					}
					newLength = fieldLength*fator;
				}
				else{
					newLength = fieldLength;
				}
				newValue += TextUtil.pad(values[i], ' ', newLength, false);
			}
			value = newValue;
		}
		
		return value;
	}
	
} //MDocPrintForm