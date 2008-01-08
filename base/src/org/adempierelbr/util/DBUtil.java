package org.adempierelbr.util;

import java.lang.reflect.InvocationTargetException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * DBUtil
 * 
 * Database Utils
 * 
 * @author Jone Luis (Ruston, www.fantastico.com.br)
 * @contributor Mario Grigioni (Kenos, www.kenos.com.br)
 * @contributor Pedro Quina (Bria, www.bria.com.br)
 * @version $Id: DBUtil.java, 20/11/2007 10:29:00 mgrigioni
 */
public class DBUtil {
    
    /**
     * Cria um objeto da classe Map com os campos do registro corrente de um ResultSet
     * @param ResultSet - reistro que será adicionado ao objeto Map
     * @return Map - objeto com o registro corrente
     * @author Pedro Quina
     */
    public static Map<String, Object> loadMap(final ResultSet rs) throws SQLException, IllegalAccessException, InvocationTargetException {
        
        int columnCount = rs.getMetaData().getColumnCount();
        String columnName = null;
        Object columnValue = null;
        Map<String, Object> fieldValue = new HashMap<String, Object>();
        
        for(int column=1; column <= columnCount ; column++){
            columnName = rs.getMetaData().getColumnName(column) ;
            columnValue = rs.getObject(column);
            fieldValue.put( columnName, columnValue);
        }
        
        return fieldValue;
    }
    
    /**
     * Cria um objeto da classe List com objetos da classe Map
     * dos campos do registro corrente de um ResultSet
     * @param ResultSet - registro corrente que será adicionado ao objeto Map
     * @return List - lista de objetos Map put(campo,valor)
     * @author Pedro Quina
     */
    @SuppressWarnings("unchecked")
	public static List loadListMap(final ResultSet rs) throws SQLException, IllegalAccessException, InvocationTargetException {
        
        List list=new ArrayList();
        
        while(rs.next()){
            list.add( loadMap(rs) )  ;
        }
        
        return list;
    }
    
} //DBUtil