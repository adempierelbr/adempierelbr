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

import java.lang.reflect.InvocationTargetException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

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
public abstract class DBUtil {

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
	public static List<Map<?,?>> loadListMap(final ResultSet rs) throws SQLException, IllegalAccessException, InvocationTargetException {

        List<Map<?,?>> list=new ArrayList<Map<?,?>>();

        while(rs.next()){
            list.add( loadMap(rs) )  ;
        }

        return list;
    }

    public static Connection getConnection(String username, String password, String driver, String url) {
        try{
            Class.forName(driver);

            Properties prop = new Properties();
            prop.setProperty("user", username);
            prop.setProperty("password", password);
            Connection con = DriverManager.getConnection(url, prop);

            return con;

        } catch(Exception e) {
            e.printStackTrace();
        }

        return null;
    }

} //DBUtil