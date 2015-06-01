/******************************************************************************
 * Product: AdempiereLBR ERP & CRM Smart Business Solution                    *
 * Copyright (C) 1999-2007 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY, without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program, if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.adempierelbr.wrapper;

import org.compiere.model.*;

/** Generated Interface for M_Warehouse
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_W_M_Warehouse extends I_M_Warehouse 
{


    /** Column name lbr_IsThirdParty */
    public static final String COLUMNNAME_lbr_IsThirdParty = "lbr_IsThirdParty";

	/** Set Is Third Party .
	  * Indicates if this warehouse holds third party locators
	  */
	public void setlbr_IsThirdParty (boolean lbr_IsThirdParty);

	/** Get Is Third Party .
	  * Indicates if this warehouse holds third party locators
	  */
	public boolean islbr_IsThirdParty();

    /** Column name lbr_WarehouseType */
    public static final String COLUMNNAME_lbr_WarehouseType = "lbr_WarehouseType";

	/** Set Warehouse Type.
	  * Defines the Warehouse Type
	  */
	public void setlbr_WarehouseType (String lbr_WarehouseType);

	/** Get Warehouse Type.
	  * Defines the Warehouse Type
	  */
	public String getlbr_WarehouseType();
}
