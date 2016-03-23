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
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Locale;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.jfree.util.Log;

/**
 * TextUtil
 *
 * Text Utils
 *
 * @author Mario Grigioni (Kenos, www.kenos.com.br)
 * @version $Id: TextUtil.java, 20/11/2007 10:45:02 mgrigioni
 */
public abstract class TextUtil
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(TextUtil.class);

	/** EOL             */
	public static final String EOL_WIN32 = "\r\n";
	public static final String EOL_LINUX = "\n";
	public static final String EOL_MAC   = "\n\r";

	/** ENCODING        */
	public static final String UTF8     = "UTF-8";
	public static final String ISO88591 = "ISO-8859-1";

	/** Formatação de Números    */
	private static String nFormat = "#,##0.00";
    private static DecimalFormat decimalFormat = new DecimalFormat(nFormat,
    		new DecimalFormatSymbols(Locale.US));

	/** PIPE			*/
	public static final String PIPE = "|";

	/**	Round 			*/
	public static final String ZERO_STRING = Env.ZERO.setScale(2, BigDecimal.ROUND_HALF_UP).toPlainString();

	/** Alfabeto        */
	public static final String[] ALFAB = {"A","B","C","D","E",
						                  "F","G","H","I","J",
						                  "K","L","M","N","O",
						                  "P","Q","R","S","T",
						                  "U","V","X","W","Y","Z",
						                  "AA","AB","AC","AD","AE",
						                  "AF","AG","AH","AI","AJ",
						                  "AK","AL","AM","AN","AO"};

	/**
	 * 		Read File, default encoding is UTF-8
	 * 
	 * 	@param file
	 * 	@return
	 */
	public static String readFile (File file) throws Exception
	{
		return readFile (file, UTF8);
	}	//	readFile
	
	/**
	 * 		Read File
	 * 
	 * 	@param file
	 * 	@param encoding
	 * 	@return
	 */
	public static String readFile (File file, String encoding) throws Exception
	{
		StringBuffer result = new StringBuffer("");
		//
		String line;
		FileInputStream stream = new FileInputStream (file);
		InputStreamReader streamReader = new InputStreamReader(stream, encoding);
		@SuppressWarnings("resource")
		BufferedReader reader = new BufferedReader(streamReader);
		
		while ((line=reader.readLine()) != null)
		{
			result.append(line);
		}
		//
		return result.toString();
	}	//	readFile
	
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
		finally{
			reader = null; streamReader = null; stream = null;
		}

		String[] lines = new String[list.size ()];
		list.toArray (lines);
		return lines;
	} //readFile

	/**
	 * generateFile (DEFAULT ENCODING UTF-8)
	 * Create and write String to File
	 * 
	 * @param data
	 * @param filePath
	 * @return filePath
	 */
	public static String generateFile(String data, String filePath){
		return generateFile(data,filePath,UTF8);
	}
	
	/**
	 * 	Gera um arquivo
	 * 
	 * @param dados a serem gravados no arquivo
	 * @param nome do arquivo
	 * @param codificação (ex. UTF-8, ISO-8859-1, etc)
	 */
	public static String generateFile (String data, String filePath, String encoding)
	{
		try
		{
			Writer out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(filePath), encoding));
			out.write(data);
			out.close();
		}
		catch (UnsupportedEncodingException e)
		{
			log.log(Level.SEVERE, "Formato não suportado="+encoding+", arquivo: " + filePath, e);
		}
		catch (IOException e)
		{
			log.log(Level.SEVERE, "Erro ao gerar Arquivo: " + filePath, e);
		}
		
		return filePath;
	}	//	generateFile

	/**
	 * generateTmpFile
	 * Create and write String to File at java.io.tmpdir
	 * @param data
	 * @param fileName
	 * @return filePath
	 */
	public static String generateTmpFile(String data, String fileName){

		int index = fileName.indexOf (File.separator);
		if (index != -1){ //Already have a directory set
			fileName = fileName.substring(index); //remove directory
		}

		String tmp = System.getProperty("java.io.tmpdir") +
		             System.getProperty("file.separator");

		return generateFile(data, tmp + fileName);
	} //generateTmpFile

	/**
	 *  createFile (DEFAULT ENCODING UTF-8)
	 *  Create a text file
	 *  @param  String FileName (FilePath)
	 *  @param  boolean append
	 *  @return FileWriter fw
	 */
	@Deprecated
	public static FileWriter createFile(String fileName, boolean append) throws IOException{
		return createFile(fileName,append,UTF8);
	}

	/**
	 *  createFile
	 *  Create a text file
	 *  
	 *  The encoding is not working in newer versions of Windows. Use {@link #OutputStreamWriter}
	 *  OutputStreamWriter osw = new OutputStreamWriter (new FileOutputStream(lotXML), TextUtil.UTF8);
	 *  
	 *  @param  String FileName (FilePath)
	 *  @param  boolean append
	 *  @param  String encoding
	 *  @return FileWriter fw
	 */
	@Deprecated
	public static FileWriter createFile(String fileName, boolean append, String encoding) throws IOException {

		System.setProperty("file.encoding", encoding);

		FileWriter fw = new FileWriter(fileName, append);

		return fw;
	} //createFile

	/**
	 *  addLine
	 *  Add line
	 *  @param  FileWriter fw
	 *  @param  String line
	 */
	public static void addText(FileWriter fw, String text) throws IOException {
		fw.write(text);
	} //addText

	/**
	 *  addLine
	 *  Add line
	 *  @param  FileWriter fw
	 *  @param  String line
	 *  @param  boolean quoteValue ? surround the line with double quotes : do not surround the values with double quotes
	 */
	public static void addText(FileWriter fw, String text, boolean quoteValue) throws IOException {

		if (quoteValue)
			addText(fw, "\"" + text + "\"");
		else
			addText(fw,text);

	} //addText

	/**
	 *  closeFile
	 *  Close a text file
	 *  @param  String FileName (FilePath)
	 */
	public static void closeFile(FileWriter fw) throws IOException {
		fw.flush();
		fw.close();
	} //closeFile

	/**
	 *  deleteFile
	 *  Delete File
	 *  @param  String FileName (FilePath)
	 */
	public static void deleteFile(String fileName){
	    File fp = new File(fileName);
	    deleteFile(fp);
	} //deleteFile

	/**
	 * deleteFile
	 * @param File fp
	 */
	public static void deleteFile(File fp){
		boolean success = fp.delete();
	    if (!success)
	        throw new IllegalArgumentException("Delete: deletion failed");
	} //deleteFile

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
	} //addEOL

	/**
	 * removeEOL
	 * @param String text
	 * @param boolean trim
	 * @return String without EOL
	 */
	public static String removeEOL(String text){
		return removeEOL(text," ");
	} //removeEOL
	
	public static String removeEOL(String text, String replaceStr){
		
		if (text == null)
			return "";
		
		text = text.replaceAll("[\r\n\t]", replaceStr);

		return itrim(text.trim(),replaceStr);
	}

	/**
	 * formatStringCodes
	 * @param code
	 * @return String with onlynumbers
	 * @deprecated Use {@link #toNumeric(String)}
	 */
	public static String formatStringCodes (String text)
	{
		if (text == null)
			return "";
		text = text.replaceAll("[^0-9]*", "");
		return text;
	}	//	formatStringCodes

	/**
	 * Formata e Valida String HH:MM para HH:MM:SS
	 * @param time
	 * @return string formata ou null
	 */
	public static String formatTimeString(String time){

		if (time != null && time.length() == 5){
			int hora = Integer.parseInt(time.substring(0, 2));
			int min  = Integer.parseInt(time.substring(3, 5));
			if (hora > 24)
				time = null;
			else if (min > 60)
				time = null;
			else
				time += ":00"; //SEGUNDOS
		}
		else{
			time = null;
		}
		return time;
	} //formatTimeString

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

		StringBuffer fill = new StringBuffer("");
		             fill.append(filler);

		if (value == null) value = "";

		while (fill.length() <= length)
			fill.append(fill); //pad tuning :)

		if (removeMask)
			value = value.replaceAll("[.,-/]","");

		value = value.trim();

		if (removeSpecial)
			value = RemoverAcentos.remover(value);

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

	public static String lPad(Integer value, int length){
		if (value == null)
			value = 0;

		String temp = ((Integer)value).toString();
		return lPad(temp,length);
	}

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

		String value = toNumeric(valueBD.setScale(scale, RoundingMode.HALF_UP).toString());
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
		return checkSize (toNumeric(value), min, max, '0');
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

	public static String checkSize(String value, int min, int max){
		return checkSize(value,min,max,' ');
	}
	
	public static String checkSize(String value, int max){
		return checkSize(value,0,max,' ');
	}

	/**
	 * 	Verifica se a string está entre os valores minímos e máximo
	 *
	 * @param 	value
	 * @param 	min
	 * @param 	max
	 * @return
	 */
	public static String checkSize (String value, int min, int max, char filler)
	{
		if (value == null)
			value = "";
		if (min > max)
			min=max;
		//
		if (value.length() < min)
			return rPad(value, filler, min);
		//
		if (value.length() > max)
			return rPad(value, filler, max);
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
		return value.setScale(scale, RoundingMode.HALF_UP).toString().replace('.', ',');
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
		value = RemoverAcentos.remover(value);

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

	/**
	 * Retorna a data formatada
	 *
	 * @param	Date Data
	 * @param   String format Ex. ("dd/MM/yyyy")
	 * @return	String Data Formatada
	 * */
	public static String timeToString(Date value, String format) {
		Timestamp ts = new Timestamp(value.getTime());
		return timeToString(ts,format);
	}

	/**************************************************************************
	 * 	StringToDate
	 *  Convert String to Timestamp
	 *  @param String dataFormatada
	 *  @param String dateFormat
	 * 	@return Timestamp
	 */
	public static Timestamp stringToTime(String data,String dateFormat) {

		if (data == null || data.length() == 0)
			return null;
		
		SimpleDateFormat formatter = new SimpleDateFormat(dateFormat);
		ParsePosition pos = new ParsePosition(0);
		java.util.Date date = null;
		Timestamp timestamp = null;

		date = formatter.parse(data,pos);
		timestamp = new Timestamp(date.getTime());
		return timestamp;
	} //stringToTime

	/**
	 * Transforma BigDecimal em String seguindo o padrão #.##0,00
	 * @param value
	 * @return  String formatada
	 */
	public static String bigdecimalFormat(BigDecimal value){

		if (value == null)
			return ZERO_STRING;

		return decimalFormat.format(value);
	}

	/**
	 * 	Convet a BD to String with scale removing trailing zeros
	 * 	@param BigDecimal value
	 * 	@param int Scale
	 * 	@return rounded string representation
	 */
	public static String bdToStringNoTrail (BigDecimal value, int scale)
	{
		if (value == null)
			return ZERO_STRING;
		//
		return value
				.setScale (scale, BigDecimal.ROUND_HALF_UP)	//	Set scale
				.stripTrailingZeros()						//	Remove trailing zeros
				.toPlainString();							//	Convert to String
	}	//	bigdecimalToString

	/**
	 * 	Convet a BD to String with scale
	 * 	@param BigDecimal value
	 * 	@param int Scale
	 * 	@return rounded string representation
	 */
	public static String bigdecimalToString (BigDecimal value, int scale)
	{
		if (value == null)
			return ZERO_STRING;
		//
		return value.setScale(scale, BigDecimal.ROUND_HALF_UP).toPlainString();
	}	//	bigdecimalToString

	/**
	 * 	Convet a BD to String with scale 2, if you want 
	 * 		a different scale use {@link #bigdecimalToString(BigDecimal, int)}
	 * 	@param value
	 * 	@return rounded string representation
	 */
	public static String bigdecimalToString (BigDecimal value)
	{
		return bigdecimalToString (value,2);
	}	//	bigdecimalToString

    /**
     *  iTrim
     *	@param String
     *  @return replace multiple whitespaces between words with single blank
     */
    public static String itrim(String source) {
    	return itrim(source," ");
    }
    
    public static String itrim(String source, String replaceStr){	
    	if (source != null)
    		return source.replaceAll("\\b\\s{2,}\\b", replaceStr);
    	
    	return "";
    }
    
	/**
	 * Verifica se uma String contém exclusivamente dígitos
	 *
	 * @param documentNo
	 * @return
	 */
	public static boolean isNumber(String documentNo)
	{
		if (documentNo == null)
			return false;
		else
		{
			for (int i=0; i<documentNo.length(); i++)
			{
				if (!Character.isDigit(documentNo.charAt(i)))
					return false;
			}
		}
		return true;
	}

	public static String checkOrderBy(String orderBy){

		if (orderBy == null || orderBy.equals(""))
			return null;

		if ((orderBy.toUpperCase()).startsWith("ORDER BY")){
			orderBy = orderBy.substring(8);
		}

		return orderBy.trim();
	} //checkOrderBy

	public static String checkWhereClause(String whereClause){

		if (whereClause == null || whereClause.equals(""))
			return null;

		if ((whereClause.toUpperCase()).startsWith("WHERE")){
			whereClause = whereClause.substring(5);
		}

		return whereClause.trim();
	} //checkWhereClause
	
	/**
	 * 	Verifica se lista contém uma determinada string.
	 * 
	 * 	@param stra
	 * 	@param strings
	 * 	@return TRUE se a lista contém a string, senão FALSO
	 */
	public static boolean match (Object obj, Object... objects)
	{
		if (obj == null || objects == null || objects.length == 0)
			return false;
		//
		return Arrays.asList (objects).contains (obj);
	}	//	match

	/**
	 * 	Check if an object is blank (string only) or null
	 * 	@param obj
	 * 	@return
	 */
	public static boolean isBlankOrNull (Object obj)
	{
		if (obj == null)
			return true;
		
		else if (obj instanceof String && ((String) obj).trim().isEmpty())
			return true;
		
		return false;
	}	//	isBlankOrNull
	
	/**
	 * TODO: Apagar quando migrar para Java8
	 * 
     * Returns a new {@code String} composed of copies of the
     * {@code CharSequence elements} joined together with a copy of the
     * specified {@code delimiter}.
     *
     * <blockquote>For example,
     * <pre>{@code
     *     List<String> strings = new LinkedList<>();
     *     strings.add("Java");strings.add("is");
     *     strings.add("cool");
     *     String message = String.join(" ", strings);
     *     //message returned is: "Java is cool"
     *
     *     Set<String> strings = new LinkedHashSet<>();
     *     strings.add("Java"); strings.add("is");
     *     strings.add("very"); strings.add("cool");
     *     String message = String.join("-", strings);
     *     //message returned is: "Java-is-very-cool"
     * }</pre></blockquote>
     *
     * Note that if an individual element is {@code null}, then {@code "null"} is added.
     *
     * @param  delimiter a sequence of characters that is used to separate each
     *         of the {@code elements} in the resulting {@code String}
     * @param  elements an {@code Iterable} that will have its {@code elements}
     *         joined together.
     *
     * @return a new {@code String} that is composed from the {@code elements}
     *         argument
     *
     * @throws NullPointerException If {@code delimiter} or {@code elements}
     *         is {@code null}
     *
     * @see    #join(CharSequence,CharSequence...)
     * @see    java.util.StringJoiner
     * @since 1.8
     */
    public static String join(CharSequence delimiter,
            Iterable<? extends CharSequence> elements) {
    	if (delimiter == null){
    		log.warning("The delimiter must not be null");
    		return "";
    	}
    	if (elements == null){
    		log.warning("The elements must not be null");
    		return "";
    	}
        StringJoiner joiner = new StringJoiner(delimiter);
        for (CharSequence cs: elements) {
            joiner.add(cs);
        }
        return joiner.toString();
    }
	
}	//	TextUtil


/*
 * Copyright (c) 2013, Oracle and/or its affiliates. All rights reserved.
 * ORACLE PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 *
 */


/**
 * {@code StringJoiner} is used to construct a sequence of characters separated
 * by a delimiter and optionally starting with a supplied prefix
 * and ending with a supplied suffix.
 * <p>
 * Prior to adding something to the {@code StringJoiner}, its
 * {@code sj.toString()} method will, by default, return {@code prefix + suffix}.
 * However, if the {@code setEmptyValue} method is called, the {@code emptyValue}
 * supplied will be returned instead. This can be used, for example, when
 * creating a string using set notation to indicate an empty set, i.e.
 * <code>"{}"</code>, where the {@code prefix} is <code>"{"</code>, the
 * {@code suffix} is <code>"}"</code> and nothing has been added to the
 * {@code StringJoiner}.
 *
 * @apiNote
 * <p>The String {@code "[George:Sally:Fred]"} may be constructed as follows:
 *
 * <pre> {@code
 * StringJoiner sj = new StringJoiner(":", "[", "]");
 * sj.add("George").add("Sally").add("Fred");
 * String desiredString = sj.toString();
 * }</pre>
 * <p>
 * A {@code StringJoiner} may be employed to create formatted output from a
 * {@link java.util.stream.Stream} using
 * {@link java.util.stream.Collectors#joining(CharSequence)}. For example:
 *
 * <pre> {@code
 * List<Integer> numbers = Arrays.asList(1, 2, 3, 4);
 * String commaSeparatedNumbers = numbers.stream()
 *     .map(i -> i.toString())
 *     .collect(Collectors.joining(", "));
 * }</pre>
 *
 * @see java.util.stream.Collectors#joining(CharSequence)
 * @see java.util.stream.Collectors#joining(CharSequence, CharSequence, CharSequence)
 * @since  1.8
*/
class StringJoiner {
    private final String prefix;
    private final String delimiter;
    private final String suffix;

    /*
     * StringBuilder value -- at any time, the characters constructed from the
     * prefix, the added element separated by the delimiter, but without the
     * suffix, so that we can more easily add elements without having to jigger
     * the suffix each time.
     */
    private StringBuilder value;

    /*
     * By default, the string consisting of prefix+suffix, returned by
     * toString(), or properties of value, when no elements have yet been added,
     * i.e. when it is empty.  This may be overridden by the user to be some
     * other value including the empty String.
     */
    private String emptyValue;

    /**
     * Constructs a {@code StringJoiner} with no characters in it, with no
     * {@code prefix} or {@code suffix}, and a copy of the supplied
     * {@code delimiter}.
     * If no characters are added to the {@code StringJoiner} and methods
     * accessing the value of it are invoked, it will not return a
     * {@code prefix} or {@code suffix} (or properties thereof) in the result,
     * unless {@code setEmptyValue} has first been called.
     *
     * @param  delimiter the sequence of characters to be used between each
     *         element added to the {@code StringJoiner} value
     * @throws NullPointerException if {@code delimiter} is {@code null}
     */
    public StringJoiner(CharSequence delimiter) {
        this(delimiter, "", "");
    }

    /**
     * Constructs a {@code StringJoiner} with no characters in it using copies
     * of the supplied {@code prefix}, {@code delimiter} and {@code suffix}.
     * If no characters are added to the {@code StringJoiner} and methods
     * accessing the string value of it are invoked, it will return the
     * {@code prefix + suffix} (or properties thereof) in the result, unless
     * {@code setEmptyValue} has first been called.
     *
     * @param  delimiter the sequence of characters to be used between each
     *         element added to the {@code StringJoiner}
     * @param  prefix the sequence of characters to be used at the beginning
     * @param  suffix the sequence of characters to be used at the end
     * @throws NullPointerException if {@code prefix}, {@code delimiter}, or
     *         {@code suffix} is {@code null}
     */
    public StringJoiner(CharSequence delimiter,
                        CharSequence prefix,
                        CharSequence suffix) {
    	
		if (prefix == null)
			throw new AdempiereException ("The prefix must not be null");    		
		if (delimiter == null)
			throw new AdempiereException ("The delimiter must not be null");        			
		if (suffix == null)
			throw new AdempiereException ("The suffix must not be null"); 
    	
    	 // make defensive copies of arguments
        this.prefix = prefix.toString();
        this.delimiter = delimiter.toString();
        this.suffix = suffix.toString();
        this.emptyValue = this.prefix + this.suffix;
    }

    /**
     * Sets the sequence of characters to be used when determining the string
     * representation of this {@code StringJoiner} and no elements have been
     * added yet, that is, when it is empty.  A copy of the {@code emptyValue}
     * parameter is made for this purpose. Note that once an add method has been
     * called, the {@code StringJoiner} is no longer considered empty, even if
     * the element(s) added correspond to the empty {@code String}.
     *
     * @param  emptyValue the characters to return as the value of an empty
     *         {@code StringJoiner}
     * @return this {@code StringJoiner} itself so the calls may be chained
     * @throws NullPointerException when the {@code emptyValue} parameter is
     *         {@code null}
     */
    public StringJoiner setEmptyValue(CharSequence emptyValue) {
    	try
    	{
	    	if (emptyValue == null)
	    		throw new AdempiereException ("The empty value must not be null");
    		
	    	this.emptyValue = emptyValue.toString();
        	return this;
    	}
    	catch (AdempiereException e)
    	{
    		Log.warn(e.toString());
    		return null;
    	}		
    }

    /**
     * Returns the current value, consisting of the {@code prefix}, the values
     * added so far separated by the {@code delimiter}, and the {@code suffix},
     * unless no elements have been added in which case, the
     * {@code prefix + suffix} or the {@code emptyValue} characters are returned
     *
     * @return the string representation of this {@code StringJoiner}
     */
    @Override
    public String toString() {
        if (value == null) {
            return emptyValue;
        } else {
            if (suffix.equals("")) {
                return value.toString();
            } else {
                int initialLength = value.length();
                String result = value.append(suffix).toString();
                // reset value to pre-append initialLength
                value.setLength(initialLength);
                return result;
            }
        }
    }

    /**
     * Adds a copy of the given {@code CharSequence} value as the next
     * element of the {@code StringJoiner} value. If {@code newElement} is
     * {@code null}, then {@code "null"} is added.
     *
     * @param  newElement The element to add
     * @return a reference to this {@code StringJoiner}
     */
    public StringJoiner add(CharSequence newElement) {
        prepareBuilder().append(newElement);
        return this;
    }

    /**
     * Adds the contents of the given {@code StringJoiner} without prefix and
     * suffix as the next element if it is non-empty. If the given {@code
     * StringJoiner} is empty, the call has no effect.
     *
     * <p>A {@code StringJoiner} is empty if {@link #add(CharSequence) add()}
     * has never been called, and if {@code merge()} has never been called
     * with a non-empty {@code StringJoiner} argument.
     *
     * <p>If the other {@code StringJoiner} is using a different delimiter,
     * then elements from the other {@code StringJoiner} are concatenated with
     * that delimiter and the result is appended to this {@code StringJoiner}
     * as a single element.
     *
     * @param other The {@code StringJoiner} whose contents should be merged
     *              into this one
     * @throws NullPointerException if the other {@code StringJoiner} is null
     * @return This {@code StringJoiner}
     */
    public StringJoiner merge(StringJoiner other) {    	
        if (other != null && other.value != null) {
            final int length = other.value.length();
            // lock the length so that we can seize the data to be appended
            // before initiate copying to avoid interference, especially when
            // merge 'this'
            StringBuilder builder = prepareBuilder();
            builder.append(other.value, other.prefix.length(), length);
        }
        return this;
    }

    private StringBuilder prepareBuilder() {
        if (value != null) {
            value.append(delimiter);
        } else {
            value = new StringBuilder().append(prefix);
        }
        return value;
    }

    /**
     * Returns the length of the {@code String} representation
     * of this {@code StringJoiner}. Note that if
     * no add methods have been called, then the length of the {@code String}
     * representation (either {@code prefix + suffix} or {@code emptyValue})
     * will be returned. The value should be equivalent to
     * {@code toString().length()}.
     *
     * @return the length of the current value of {@code StringJoiner}
     */
    public int length() {
        // Remember that we never actually append the suffix unless we return
        // the full (present) value or some sub-string or length of it, so that
        // we can add on more if we need to.
        return (value != null ? value.length() + suffix.length() :
                emptyValue.length());
    }
}
