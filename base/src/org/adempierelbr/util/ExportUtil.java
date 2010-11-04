package org.adempierelbr.util;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;
import org.compiere.util.DB;

/**
 * ExportUtil
 * 
 * Class utility to export SQL Query
 * 
 * @author Henrique Santos
 * @contributor Mario Grigioni
 * @version $Id: ExportUtil.java, 16/10/2009 09:42:00 mgrigioni
 */
public class ExportUtil {


	/**
	 * Retorna um array de strings com os nomes das colunas de um ResultSet 
	 * @param ResultSet rs
	 * @return String[]
	 * @throws SQLException 
	 */
	public static String[] getColumnNames( ResultSet rs ) throws SQLException{
		
		ResultSetMetaData rsmd = rs.getMetaData();
        int numColumns = rsmd.getColumnCount();
        String[] columnNames = new String[ numColumns];
        for (int i=1; i<numColumns+1; i++)
            columnNames[i-1] = rsmd.getColumnName(i);
		return columnNames;
	} //getColumnNames
	
	/**
	 * Retorna um array com o registro atual de um ResultSet
	 * @param ResultSet
	 * @return String[] 
	 * @throws SQLException
	 * @throws UnsupportedEncodingException 
	 */
    public static String[] getFieldValues( ResultSet rs ) throws SQLException, UnsupportedEncodingException{
		ResultSetMetaData rsmd = rs.getMetaData();
        int numColumns = rsmd.getColumnCount();
        String[] columnNames = new String[ numColumns];
        for (int i=1; i<numColumns+1; i++){
        	String valor = ajustaValor(rs.getString(i));
            columnNames[i-1] = valor;
        }
		return columnNames;
    } //getFieldValues
	
	/**
	 * Retorna uma string com o registro atual de um ResultSet separado por um caracter
	 * @param ResultSet
	 * @param String separator
	 * @return String[] 
	 * @throws SQLException
	 */
    public static String getFieldValues( ResultSet rs, String separator ) throws SQLException{		
    	ResultSetMetaData rsmd = rs.getMetaData();
        int numColumns = rsmd.getColumnCount();
        StringBuffer columnNames = new StringBuffer();
        
        for (int i=0; i<numColumns; i++){
        	String valor = ajustaValor(rs.getString(i+1));
        	columnNames.append(valor);
            //System.out.println(valor);
            if ( i < numColumns-1 ) columnNames.append( separator );
        }
		return columnNames.toString();
    } //getFieldValues
	
	/**
	 * Cria um arquivo CSV a partir do resultado de um sql
	 * @param sql 
	 * @param fileName
	 * @param separator
	 * @return int numero de linhas
	 * @throws SQLException 
	 * @throws IOException 
	 */
    public static int resultSetToCSV(String sql, String fileName, String separator, boolean hasHeader ) throws SQLException, IOException{

    	System.setProperty("file.encoding", "UTF-8");
    	
    	ResultSet rs = DB.getConnectionRO().createStatement().executeQuery(sql);
        BufferedWriter out = new BufferedWriter(new FileWriter(fileName));

        if ( hasHeader ){ // imprime cabeçalho
        	String[] fieldNames = getColumnNames(rs);
        	for( int i=0; i < fieldNames.length;i++){
        		out.write(fieldNames[i]);
        	    out.write(separator);
        	}
        }
	    out.write("\n");
        int line = 0;
        while ( rs.next()){ // imprime registros
        	out.write(getFieldValues(rs, separator));
    	    out.write("\n");
    	    line++;
        }
        out.close();
        rs.close();
    	return line;
    } //resultSetToCSV
    
    private static String ajustaValor(String valor){
    	
    	if (valor == null)
    		return "";
    	
    	valor = RemoverAcentos.remover(valor);
    	valor = TextUtil.removeEOL(valor);
    	valor = valor.replaceAll(";", ",");
    
    	return valor;
    } //ajustaValor

} //ExportUtil