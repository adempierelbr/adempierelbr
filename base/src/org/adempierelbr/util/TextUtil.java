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
import java.util.ArrayList;

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
				return value.substring(0, length);
			else
				return value.substring(rest*(-1));
			
		}
		
		if (lpad)
			value = fill.substring(0,rest) + value;
		else 
			value += fill.substring(0, rest);
		
		return value;
	} //pad
	
	
	public static String pad(String value,char filler,int lenght,boolean lpad){
		return pad(value, filler, lenght, lpad, false, false);
	}
	
	public static String pad(int value,char filler,int lenght,boolean lpad){
		return pad(((Integer)value).toString(), filler, lenght, lpad, false, false);
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
		
	}//retiraPontoFinal
		
}  //MTextProcessor