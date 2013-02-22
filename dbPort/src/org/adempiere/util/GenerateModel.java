/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2006 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 * Contributor(s): Carlos Ruiz - globalqss                                    *
 *                 Teo Sarca                                                  *
 *                 Trifon Trifonov                                            *
 *****************************************************************************/
package org.adempiere.util;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;

import org.compiere.Adempiere;
import org.compiere.model.MEntityType;
import org.compiere.util.CLogMgt;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *  Generate Model Classes extending PO.
 *  Base class for CMP interface - will be extended to create byte code directly
 *
 *  @author Jorg Janke
 *  @version $Id: GenerateModel.java,v 1.42 2005/05/08 15:16:56 jjanke Exp $
 */
public class GenerateModel
{

	/**	Logger			*/
	private static CLogger	log	= CLogger.getCLogger (GenerateModel.class);

	/**
	 * 	String representation
	 * 	@return string representation
	 */
	public String toString()
	{
		StringBuffer sb = new StringBuffer ("GenerateModel[").append("]");
		return sb.toString();
	}


	/**************************************************************************
	 * 	Generate PO Model Class.
	 * 	<pre>
	 * 	Example: java GenerateModel.class mydirectory myPackage 'U','A'
	 * 	would generate entity type User and Application classes into mydirectory.
	 * 	Without parameters, the default is used:
	 * 	C:\Compiere\compiere-all\extend\src\compiere\model\ compiere.model 'U','A'
	 * 	</pre>
	 * 	@param args directory package entityType
	 * 	- directory where to save the generated file
	 * 	- package of the classes to be generated
	 * 	- entityType to be generated
	 */
	public static void main (String[] args)
	{
		Adempiere.startupEnvironment((args.length > 4 && args[4].equals("Client")));
		CLogMgt.setLevel(Level.FINE);
		log.info("Generate Model   $Revision: 1.42 $");
		log.info("----------------------------------");
		//	first parameter
		// mgrigioni 13/07/2010
		String directory = "dbPort/src/";
		//String directory = "C:\\Compiere\\compiere-all\\extend\\src\\compiere\\model\\";
		if (args.length > 0)
			directory = args[0];
		if (directory == null || directory.length() == 0)
		{
			System.err.println("No Directory");
			System.exit(1);
		}
		log.info("Directory: " + directory);

		//	second parameter
		String packageName = "org.compiere.model"; //ORIGINAL WAS compiere.model
		if (args.length > 1)
			packageName = args[1];
		if (packageName == null || packageName.length() == 0)
		{
			System.err.println("No package");
			System.exit(1);
		}
		log.info("Package:   " + packageName);

		//	third parameter
		//String entityType = "'U','A'";	//	User, Application
		String entityType = "'LBRA', 'U'";
		if (args.length > 2)
			entityType = args[2];
		if (entityType == null || entityType.length() == 0)
		{
			System.err.println("No EntityType");
			System.exit(1);
		}
		StringBuffer sql = new StringBuffer("EntityType IN (")
			.append(entityType).append(")");
		log.info(sql.toString());
		log.info("----------------------------------");

		String tableLike = null;
		tableLike = "'LBR_TaxAssessmentLine'";	//	All tables
		// tableLike = "'AD_OrgInfo', 'AD_Role', 'C_CashLine', 'C_Currency', 'C_Invoice', 'C_Order', 'C_Payment', 'M_InventoryLine', 'M_PriceList', 'M_Product', 'U_POSTerminal'";	//	Only specific tables
		if (args.length > 3)
			tableLike = args[3];
		log.info("Table Like: " + tableLike);

		//	complete sql
		sql.insert(0, "SELECT AD_Table_ID, EntityType "
			+ "FROM AD_Table "
			+ "WHERE (TableName IN ('RV_WarehousePrice','RV_BPartner')"	//	special views
			+ " OR IsView='N')"
			+ " AND IsActive = 'Y' AND TableName NOT LIKE '%_Trl' AND ");
		sql.append(" AND TableName LIKE ").append(tableLike);
		//sql.append(" AND TableName IN (").append(tableLike).append(")"); // only specific tables

		sql.append(" ORDER BY TableName");

		//
		int count = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), null);
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				MEntityType et = MEntityType.get(Env.getCtx(), rs.getString(2));
				String etmodelpackage = et.getModelPackage();
				String classDirectory = directory;
				if (etmodelpackage != null)
				{		
					packageName       = etmodelpackage;
					String packages[] = packageName.split("\\.");
					for (String pack : packages){
						classDirectory += pack + "/";
					}
				}
				else{
					classDirectory += "org/compiere/model/";
				}
				
				new ModelInterfaceGenerator(rs.getInt(1), classDirectory, packageName, entityType);
				new ModelClassGenerator(rs.getInt(1), classDirectory, packageName, entityType);
				count++;
			}
 		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally
		{
			DB.close(rs, pstmt);
			rs = null; pstmt = null;
		}
		log.info("Generated = " + count);
	}

}
