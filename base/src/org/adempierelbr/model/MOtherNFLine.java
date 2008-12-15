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

import java.util.Properties;

import org.compiere.model.X_LBR_OtherNFLine;
import org.compiere.util.CLogger;

/**
 *	MOtherNFLine
 *
 *	Model for X_LBR_OtherNFLine
 *	
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: MOtherNFLine.java, 11/12/2008 13:27:00 mgrigioni
 */
public class MOtherNFLine extends X_LBR_OtherNFLine {
    
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/**	Logger			*/
	public static CLogger log = CLogger.getCLogger(MOtherNFLine.class);

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MOtherNFLine(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);	
	}
		
} //MOtherNFLine