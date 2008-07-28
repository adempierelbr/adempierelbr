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

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.model.X_LBR_DocPrintField;
import org.compiere.util.CLogger;
import org.compiere.util.DB;

/**
 *	MDocPrintField
 *
 *	Model for X_LBR_DocPrintField
 *	
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: MDocPrintField.java, 12/11/2007 13:43:00 mgrigioni
 */
public class MDocPrintField extends X_LBR_DocPrintField{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MDocPrintField.class);
	
	/** Value           */
	private String value = "";
	
	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MDocPrintField(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);	
	}
	
	/**************************************************************************
	 *  Set Value
	 *  @param String value
	 */
	public void setValue(String value){
		
		if (value == null) value = "";
		
		this.value = retiraAcentos(value);
		
	}
	
	/**************************************************************************
	 *  Set Value
	 *  @param String value
	 */
	public boolean setValue(String value, int fieldLength, boolean IsOtherRow){
		
		if (value == null) value = "";
		
		value = MDocPrintForm.removeEOL(value, fieldLength);
				
		int lenght = value.length();
		
		if (fieldLength > 0 && lenght > fieldLength){
			
			value = value.substring(0, fieldLength);
			this.value = retiraAcentos(value);
			if (IsOtherRow)
				return true;
				
		}
		else{
				
			this.value = retiraAcentos(value);
		
		}
		
		
		return false;	
	}
	
	/**************************************************************************
	 *  Set Value
	 *  @param double value
	 */
	public void setValue(double value){
		
		this.value = String.format("%,.2f", value);
		
	}
	
	/**************************************************************************
	 *  Set Value
	 *  @param double value
	 */
	public void setValue(Date value){
		
		this.value = DateToString(value);
			
	}
	
	/**************************************************************************
	 *  Get Value
	 */
	public String getValue(){
		
		if (value == null) return "";
		
		return value.toUpperCase();
	}
	
	/**************************************************************************
	 * 	Get Alignment
	 * 	@return int x
	 */
	public int getAlignment(){
		
		if (getValue() == null || getValue().equals("")){
			return getlbr_ColumnNo();
		}
		
		int Fieldlenght = getlbr_FieldLength();
		int Valuelenght = getValue().length();
		int x           = getlbr_ColumnNo(); //Default - Left
		
		int aux = Fieldlenght - Valuelenght;
		
		//Right
		if (getlbr_FieldAlignment().equals("R")){
			
			x = x + aux;
			
		}
		//Center
		else if (getlbr_FieldAlignment().equals("C")){
			
			x = x + (aux/2);
			
		}
		
		return x;
	}
	
	/**************************************************************************
	 * 	Date to String
	 * 	@param String date
	 * 	@return dataFormatada
	 */
    private String DateToString(Date date){
    	
		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
		String dataFormatada = formatter.format(date); 
		return dataFormatada;
		
    }
    
	/**************************************************************************
	 * 	Get Fields of DoctypePrint
	 *  @param Properties ctx
	 * 	@param int C_Doctype_Print_ID
	 * 	@return fields
	 */
	public static MDocPrintField[] getFields(Properties ctx, int LBR_DocPrint_ID)
	{
		ArrayList<MDocPrintField> list = new ArrayList<MDocPrintField> ();
		String sql = "SELECT LBR_DocPrintField_ID " +
				     "FROM LBR_DocPrintField " +
				     "WHERE LBR_DocPrint_ID = ? " + //1
				     "AND IsActive='Y' ORDER By lbr_RowNo asc, lbr_ColumnNo asc";
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, LBR_DocPrint_ID);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				MDocPrintField Field = new MDocPrintField(ctx, rs.getInt(1), null);
				list.add(Field);
			}
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally
		{
			try
			{
				if (pstmt != null)
					pstmt.close ();
			}
			catch (Exception e)
			{}
			pstmt = null;
		}
		//
		MDocPrintField[] lines = new MDocPrintField[list.size ()];
		list.toArray (lines);
		return lines;
	}	//	getFields
	
	
	/**************************************************************************
	 * 	Retira Acentos
	 *  @param String acentos
	 * 	@return String acentos
	 */
	private String retiraAcentos(String acentos){
		
		if (acentos == null) return null;
		
		acentos = acentos.replaceAll("[àâáäã]","a");
        acentos = acentos.replaceAll("[èéêë]","e");
        acentos = acentos.replaceAll("[ìîíïĩ]","i");
        acentos = acentos.replaceAll("[òôóöõ]","o");
        acentos = acentos.replaceAll("[ùûúüũ]","u");
        acentos = acentos.replaceAll("ç", "c");
        
        acentos = acentos.replaceAll("[ÀÂÁÄÃ]","A");
        acentos = acentos.replaceAll("[ÈÊÉË]","E");
        acentos = acentos.replaceAll("[ÌÎÍÏĨ]","I");
        acentos = acentos.replaceAll("[ÒÔÓÖÕ]","O");
        acentos = acentos.replaceAll("[ÙÛÚÜŨ]","U");
        acentos = acentos.replaceAll("Ç", "C");
        
        return acentos;
		
	}//retiraAcentos
	
} //MDocPrintField