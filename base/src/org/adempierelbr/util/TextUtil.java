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
package org.adempierelbr.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.logging.Level;

import org.compiere.util.CLogger;
import org.compiere.util.Env;

/**
 * TextUtil
 * 
 * Text Utils
 * 
 * @author Mario Grigioni (Kenos, www.kenos.com.br)
 * @version $Id: TextUtil.java, 20/11/2007 10:45:02 mgrigioni
 */
public class TextUtil
{   
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(TextUtil.class);
	
	public static final String EOL_WIN32 = "\r\n";
	public static final String EOL_LINUX = "\n";
	
	public static final String[] alfab = {"A","B","C","D","E",
						                  "F","G","H","I","J",
						                  "K","L","M","N","O",
						                  "P","Q","R","S","T",
						                  "U","V","X","W","Y","Z"};
	
	/**
	 *  readFile
	 *  Reads a file and return the lines into a string array
	 *  @param  String FileName (FilePath) 
	 *  @return String[] lines
	 */
	public static String[] readFile (String FileName) throws FileNotFoundException{   
       
		ArrayList<String> list = new ArrayList<String> ();
		
		FileInputStream stream = new FileInputStream(FileName);   
		InputStreamReader streamReader = new InputStreamReader(stream);   
		BufferedReader reader = new BufferedReader(streamReader);   
  
		// Neste while lemos o arquivo linha a linha   
		String line = null;   
		try {
			while( (line=reader.readLine() ) != null ) {   
				
				list.add(line);
				
			}
			
			reader.close();
			streamReader.close();   
			stream.close(); 
			
		} 
		catch (IOException e) {
			
			e.printStackTrace();
			
		}   
  
		String[] lines = new String[list.size ()];
		list.toArray (lines);
		return lines;
		
	}
	
	/**
	 *  createFile
	 *  Create a text file
	 *  @param  String FileName (FilePath)
	 *  @param  boolean append 
	 *  @return FileWriter fw
	 */
	public static FileWriter createFile(String FileName, boolean append) throws IOException {

		FileWriter fw = new FileWriter(FileName, append);
		
		return fw;
	}
	
	/**
	 * 	Gera um arquivo com codificação UTF-8
	 * 
	 * @param dados a serem gravados no arquivo
	 * @param nome do arquivo
	 */
	public static void generateFile (String data, String fileName)
	{
		generateFile (data, fileName, "UTF-8");
	}	//	generateFile
	
	/**
	 * 	Gera um arquivo
	 * 
	 * @param dados a serem gravados no arquivo
	 * @param nome do arquivo
	 * @param codificação (ex. UTF-8, ISO-8859-1, etc)
	 */
	public static void generateFile (String data, String fileName, String encoding)
	{
		try
		{
			System.setProperty("file.encoding", encoding);
			//
			FileWriter fw = TextUtil.createFile(fileName, false);
			TextUtil.addLine(fw, data);
			TextUtil.closeFile(fw);
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "Erro ao gerar Arquivo: " + fileName, e);
		}
	}	//	generateFile

	/**
	 *  addLine
	 *  Add line
	 *  @param  FileWriter fw
	 *  @param  String line
	 *  @param  boolean eol
	 */
	public static void addLine(FileWriter fw, String line) throws IOException {

		fw.write(line);
		
	}
	
	/**
	 *  addLine
	 *  Add line
	 *  @param  FileWriter fw
	 *  @param  String line
	 *  @param  boolean quoteValue ? surround the line with double quotes : do not surround the values with double quotes
	 */
	public static void addLine(FileWriter fw, String line, boolean quoteValue) throws IOException {

		if (quoteValue)
			addLine(fw, "\"" + line + "\"");
		else
			addLine(fw,line);
		
	}

	/**
	 *  addCsvLine
	 *  Add's a line with a comma at the end of the line
	 *  @param  FileWriter fw
	 *  @param  String line
	 */
	public static void addCsvLine(FileWriter fw, String line) throws IOException {
		
		addLine(fw,line + ",");
		
	}
	
	/**
	 *  addCsvLine
	 *  Add's a line with a comma at the end of the line
	 *  @param  FileWriter fw
	 *  @param  String line
	 *  @param  boolean quoteValue ? surround the line with double quotes : do not surround the values with double quotes
	 */
	public static void addCsvLine(FileWriter fw, String line, boolean quoteValue) throws IOException {
		
		if (quoteValue)
			addLine(fw, "\"" + line + "\",");
		else
			addLine(fw,line + ",");
		
	}
	
	/**
	 *  closeFile
	 *  Close a text file
	 *  @param  String FileName (FilePath) 
	 */
	public static void closeFile(FileWriter fw) throws IOException {

		fw.flush();
		fw.close();
		
	}
	
	/**
	 *  deleteFile
	 *  Delete File
	 *  @param  String FileName (FilePath) 
	 */
	public static void deleteFile(String fileName){
		
	    File fp = new File(fileName);
	    boolean success = fp.delete();
	    if (!success)
	        throw new IllegalArgumentException("Delete: deletion failed");
		
	}
	
	/**
	 *  addEOL
	 *  End of Line
	 *  @param  FileWriter fw
	 */
	public static void addEOL(FileWriter fw) throws IOException {
	
		//if (POLBR.getOsName().startsWith("win"))
		    fw.write(EOL_WIN32);
		//else
		//   fw.write(EOL_LINUX);
			
	}
		
	public static String pad(int value,char filler,int length,boolean lpad){
		return pad(((Integer)value).toString(), filler, length, lpad, false, false);
	}

	public static String pad(String value,char filler,int length,boolean lpad){
		return pad(value, filler, length, lpad, false, false);
	}

	/**
	 * 	pad
	 *  @param String value
	 *  @param char filler
	 *  @param int length
	 *  @param boolean lpad
	 *  @param boolean removeMask
	 *  @param boolean removeSpecial
	 * 	@return String value
	 */
	public static String pad(String value, char filler, int length, boolean lpad, boolean removeMask, boolean removeSpecial){
		
		String fill = "";
		
		if (value == null) value = "";
		
		while (fill.length() <= length)
			fill += filler;
		
		if (removeMask)
			value = value.replaceAll("[.,-/]","");
		
		value = value.trim();
		
		if (removeSpecial)
			value = retiraAcentos(value);
		
		int rest = length - value.length();
		
		if (rest < 0){
			
			if (lpad)
				return value.substring(rest*(-1));
			else
				return value.substring(0, length);

		}
		
		if (lpad)
			value = fill.substring(0,rest) + value;
		else 
			value += fill.substring(0, rest);
		
		return value;
	} //pad
	
	/**
	 * 	Left Pad with 0
	 * 
	 *  @param String value
	 *  @param int length
	 * 	@return String value
	 */
	public static String lPad(String value, int length)
	{
		if (value == null)
			value = "";
		else
			value = toNumeric(value);
		
		return pad(value, '0', length, true, false, false);
	}

	/**
	 * 	Left Pad
	 * 
	 *  @param String value
	 *  @param char filler
	 *  @param int length
	 * 	@return String value
	 */
	public static String lPad(String value, char filler, int length)
	{
		return pad(value, filler, length, true, false, false);
	}
	
	/**
	 * 	Left Pad with 0 (Scale 2 Default)
	 * 
	 *  @param String value
	 *  @param int length
	 * 	@return String value
	 */
	public static String lPad(BigDecimal valueBD, int length)
	{
		return lPad(valueBD, length, 2);
	}

	/**
	 * 	Left Pad with 0
	 * 
	 *  @param String value
	 *  @param int length
	 *  @param int scale
	 * 	@return String value
	 */
	public static String lPad(BigDecimal valueBD, int length, int scale)
	{
		if (valueBD == null)
			valueBD = Env.ZERO;
		
		String value = toNumeric(valueBD.setScale(scale, BigDecimal.ROUND_HALF_UP).toString());
		return pad(value, '0', length, true, false, false);
	}

	/**
	 * 	Right Pad with blank space ' '
	 * 
	 *  @param String value
	 *  @param int length
	 * 	@return String value
	 */
	public static String rPad(String value, int length)
	{
		if (value == null)
			value = "";
		return pad(retiraEspecial(value), ' ', length, false, false, false);
	}

	/**
	 * 	Right Pad
	 * 
	 *  @param String value
	 *  @param char filler
	 *  @param int length
	 * 	@return String value
	 */
	public static String rPad(String value, char filler, int length)
	{
		return pad(value, filler, length, false, false, false);
	}
	
	/**************************************************************************
	 * 	retiraAcentos
	 *  Remove Special Characters
	 *  @param String acentos
	 * 	@return String acentos
	 */
	public static String retiraAcentos(String acentos){
		
		if (acentos == null)
			return "";
		
		acentos = acentos.replaceAll("[àâáäãª]","a");
        acentos = acentos.replaceAll("[èéêë]","e");
        acentos = acentos.replaceAll("[ìîíïĩ]","i");
        acentos = acentos.replaceAll("[òôóöõº]","o");
        acentos = acentos.replaceAll("[ùûúüũ]","u");
        acentos = acentos.replaceAll("ç", "c");
        acentos = acentos.replaceAll("ñ", "n");
        
        acentos = acentos.replaceAll("[ÀÂÁÄÃ]","A");
        acentos = acentos.replaceAll("[ÈÊÉË]","E");
        acentos = acentos.replaceAll("[ÌÎÍÏĨ]","I");
        acentos = acentos.replaceAll("[ÒÔÓÖÕ]","O");
        acentos = acentos.replaceAll("[ÙÛÚÜŨ]","U");
        acentos = acentos.replaceAll("Ç", "C");
        acentos = acentos.replaceAll("Ñ", "N");
        
        acentos = acentos.replaceAll("[`~\"<>;&]"," ");
        
        return acentos;
		
	}	//	retiraAcentos
	
	/**************************************************************************
	 * 	retiraMascara
	 *  Removes Mask Characters
	 *  @param String acentos
	 * 	@return String acentos
	 *  @deprecated	Use toNumeric or retiraEspecial
	 */
	public static String retiraMascara(String mascara)
	{
		if(mascara == null || mascara.equalsIgnoreCase(""))
			return null;
		return mascara.replaceAll("[.,-/]","");
	}//retiraMascara
	
	/**************************************************************************
	 * 	retiraPontoFinal
	 *  Remove Period
	 *  @param String value
	 * 	@return String value
	 */
	public static String retiraPontoFinal(String value){
		
		if (value == null)
			return "";
		
		value = value.trim();
		
		if (value.endsWith(".") || value.endsWith(",") || value.endsWith(";") || value.endsWith("/")){
			value = value.substring(0,value.length()-1);
		}
        
        return value;
		
	}	//	retiraPontoFinal
	
	/**
	 * Retorna sempre somente os digitos<BR>
	 * de 0..9 de um String desconsiderando<BR>
	 * qualquer outro caracter.<BR><BR>
	 * 
	 * <BR>Por Exemplo:
	 * <BR>Uma <tt>{@link String} "14.568-910"</tt> 
	 * <BR>é automaticamente passada para <tt>"14568910"</tt>.
	 * <BR>Uma <tt>{@link String} "1%4#5?55%16a8&910"</tt>
	 * <BR>é automaticamente passada para <tt>"14555168"</tt>, 
	 * <BR>só levando em conta os números.
	 * 
	 * @param 	String Valor Original
	 * @return	String Somente Números
	 * */
	public static String toNumeric(String value)
	{
		if (value == null)
			return "";
		//
		return value.replaceAll( "\\D*", "" );
	}	//	toNumeric
	
	/**
	 * 	Verifica se a string está entre os valores minímos e máximo
	 * 
	 * @param 	value
	 * @param 	min
	 * @param 	max
	 * @return
	 */
	public static String checkSizeN (String value, int min, int max, boolean mandatory)
	{
		if (!mandatory && (value == null || value == ""))
			return "";
		else
			return checkSizeN (value, min, max);
	}
	
	/**
	 * 	Verifica se a string está entre os valores minímos e máximo
	 * 
	 * @param 	value
	 * @param 	min
	 * @param 	max
	 * @return
	 */
	public static String checkSizeN (String value, int min, int max)
	{
		if (value == null)
			value = "";
		return checkSize (toNumeric(value), min, max);
	}
	
	/**
	 * 	Verifica se a string está entre os valores minímos e máximo
	 * 
	 * @param 	value
	 * @param 	min
	 * @param 	max
	 * @return
	 */
	public static String checkSize (String value, int min, int max, boolean mandatory)
	{
		if (!mandatory && (value == null || value == ""))
			return "";
		else
			return checkSize (value, min, max);
	}
	
	/**
	 * 	Verifica se a string está entre os valores minímos e máximo
	 * 
	 * @param 	value
	 * @param 	min
	 * @param 	max
	 * @return
	 */
	public static String checkSize (String value, int min, int max)
	{
		if (value == null)
			value = "";
		if (min > max)
			min=max;
		//
		if (value.length() < min)
			return rPad(value, min);
		//
		if (value.length() > max)
			return rPad(value, max);
		//
		return value;
	}
	
	/**
	 * Retorna sempre somente os digitos<BR>
	 * de 0..9 de um BigDecimal com 2 casas.<BR>
	 * 
	 * <BR>Por Exemplo:
	 * <BR>Um <tt>{@link BigDecimal} "14568.910"</tt> 
	 * <BR>é automaticamente passada para <tt>"14568,910"</tt>.
	 * 
	 * @param 	BigDecimal Valor Original
	 * @param 	min
	 * @param 	max
	 * @return	String Numero formatado
	 * */
	public static String toNumeric(BigDecimal value, int min, int max, boolean mandatory)
	{
		if (!mandatory && value == null)
			return "";
		else
			return  toNumeric(value, min, max);
	}
	
	/**
	 * Retorna sempre somente os digitos<BR>
	 * de 0..9 de um BigDecimal com 2 casas.<BR>
	 * 
	 * <BR>Por Exemplo:
	 * <BR>Um <tt>{@link BigDecimal} "14568.910"</tt> 
	 * <BR>é automaticamente passada para <tt>"14568,910"</tt>.
	 * 
	 * @param 	BigDecimal Valor Original
	 * @param 	min
	 * @param 	max
	 * @return	String Numero formatado
	 * */
	public static String toNumeric(BigDecimal value, int min, int max)
	{
		return toNumeric(value, min, max, 2);
	}
	
	/**
	 * Retorna sempre somente os digitos<BR>
	 * de 0..9 de um BigDecimal com 2 casas.<BR>
	 * 
	 * <BR>Por Exemplo:
	 * <BR>Um <tt>{@link BigDecimal} "14568.910"</tt> 
	 * <BR>é automaticamente passada para <tt>"14568,910"</tt>.
	 * 
	 * @param 	BigDecimal Valor Original
	 * @param 	min
	 * @param 	max
	 * @param	scale
	 * @return	String Numero formatado
	 * */
	public static String toNumeric(BigDecimal value, int min, int max, int scale)
	{
		if (value == null)
			return pad("0,00", '0', min, true, false, false);
		if (min > max)
			min=max;
		//
		String result = toNumeric(value, scale);
		//
		if (result == null || result == "")
			return pad("0,00", '0', min, true, false, false);
		//
		if (result.length() < min)
			return pad(result, '0', min, true, false, false);
		//
		if (result.length() > max)
			return pad(result, '0', max, true, false, false);
		//
		return result;
	}
	
	/**
	 * Retorna sempre somente os digitos<BR>
	 * de 0..9 de um BigDecimal com 2 casas.<BR>
	 * 
	 * <BR>Por Exemplo:
	 * <BR>Um <tt>{@link BigDecimal} "14568.910"</tt> 
	 * <BR>é automaticamente passada para <tt>"14568,910"</tt>.
	 * 
	 * @param 	BigDecimal Valor Original
	 * @return	String Numero formatado
	 * */
	public static String toNumeric(BigDecimal value)
	{
		return toNumeric(value, 2);
	}
	
	/**
	 * Retorna sempre somente os digitos<BR>
	 * de 0..9 de um BigDecimal com 2 casas.<BR>
	 * 
	 * <BR>Por Exemplo:
	 * <BR>Um <tt>{@link BigDecimal} "14568.910"</tt> 
	 * <BR>é automaticamente passada para <tt>"14568,910"</tt>.
	 * 
	 * @param 	BigDecimal Valor Original
	 * @return	String Numero formatado
	 * */
	public static String toNumeric(BigDecimal value, int scale)
	{
		if (value == null)
			return "";
		//
		return value.setScale(scale, BigDecimal.ROUND_HALF_UP).toString().replace('.', ',');
	}	//	toNumeric
	
	/**
	 * Retorna somente os digitos de 0..9<BR>
	 * e as letras de a..z e A..Z, desconsiderando<BR>
	 * qualquer outro caracter.<BR><BR>
	 * 
	 * <BR>Por Exemplo:
	 * <BR>Uma <tt>{@link String} "123ABC##&&%%999"</tt> 
	 * <BR>é automaticamente passada para <tt>"123ABC999"</tt>.
	 * <BR>Uma <tt>{@link String} "1%4#5?55%16a8&910bbb"</tt>
	 * <BR>é automaticamente passada para <tt>"1455516a8bbb"</tt>, 
	 * <BR>só levando em conta os números.
	 * 
	 * @param 	String Valor Original
	 * @return	String Somente Letras e Números
	 * */
	public static String retiraEspecial(String value)
	{
		StringBuffer result = new StringBuffer("");
		value = retiraAcentos(value);
		
		for (int i=0; i<value.length(); i++)
			if (Character.isDigit(value.charAt(i))
					|| Character.isLetter(value.charAt(i))
					|| value.charAt(i) == ' ')
				result.append(value.charAt(i));
			
		return result.toString();
	}	//	retiraEspecial
	
	/**
	 * Retorna a data formatada de acordo com o formato
	 * <BR>Dia: dd, Mes: mm, Ano: yyyy
	 * 
	 * @param	Timestamp Data
	 * @param	String Formato da data
	 * @param	boolean Obrigatório
	 * @return	String Data Formatada
	 * */
	public static String timeToString(Timestamp ts, String format, boolean mandatory)
	{
		if (!mandatory && ts==null)
			return "";
		else
			return timeToString(ts, format);
	}
	
	/**
	 * Retorna a data formatada de acordo com o formato
	 * <BR>Dia: dd, Mes: mm, Ano: yyyy
	 * 
	 * @param	Timestamp Data
	 * @param	String Formato da data
	 * @return	String Data Formatada
	 * */
	public static String timeToString(Timestamp ts, String format)
	{
		if(format == null || format.length() == 0)
			format = "yyyyMMdd";
		
		//	Se a data for nula retorna a qtd de zeros respectivos
		//	a quantidade de digitos do formato.
		if(ts == null)
			return lPad("", '0', format.length());
		
		SimpleDateFormat f = new SimpleDateFormat(format);
		return f.format(ts);
	}	//	timeToString
	
	/**
	 * Retorna a data formatada em AnoMesDia yyyymmdd
	 * 
	 * @param	Timestamp Data
	 * @return	String Data Formatada
	 * */
	public static String timeToString(Timestamp ts)
	{
		return timeToString(ts, "yyyyMMdd");
	}	//	timeToString
	
}	//	TextUtil