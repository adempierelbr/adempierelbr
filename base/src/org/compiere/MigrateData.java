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
 *****************************************************************************/
package org.compiere;

import org.compiere.print.PrintFormatUtil;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * 		Migrate Data
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 * 				<li>LBR Sequence, until we improve SequenceCheck in upstream project
 * 
 *  @author Jorg Janke
 *  @version $Id: MigrateData.java,v 1.3 2006/07/30 00:51:06 jjanke Exp $
 */
public class MigrateData
{
	/**
	 * 	Migrate Data.
	 * 	Called from DB.afterMigration
	 */
	public MigrateData ()
	{
		sequenceLBR();
		
		//	Update existing Print Format
		PrintFormatUtil pfu = new PrintFormatUtil (Env.getCtx());
		pfu.addMissingColumns((String)null);
	}	//	MigrateData
	
	/**	Logger	*/
	private static CLogger	log	= CLogger.getCLogger (MigrateData.class);
	
	/**
	 * 	Sequence LBR
	 */
	private void sequenceLBR ()
	{
		//	LBR IDs
		//	Propor melhoria para o Admepiere upstream
		String sql = "UPDATE AD_Sequence SET CurrentNext=2000000 WHERE CurrentNext<2000000 AND IsTableID='Y'";
		DB.executeUpdate(sql, null);
			
		log.info("fini");
	}	//	sequenceLBR
	
	/**
	 * 	Migrate Data
	 *	@param args ignored
	 */
	public static void main (String[] args)
	{
		Adempiere.startup(true);
		new MigrateData();
	}	//	main
	
}	//	MigrateData
