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

/** Generated Interface for M_PriceList
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_W_M_PriceList extends I_M_PriceList 
{


    /** Column name lbr_BrazilianPriceList */
    public static final String COLUMNNAME_lbr_BrazilianPriceList = "lbr_BrazilianPriceList";

	/** Set Brazilian PriceList.
	  * Defines if this is a Brazilian PriceList
	  */
	public void setlbr_BrazilianPriceList (boolean lbr_BrazilianPriceList);

	/** Get Brazilian PriceList.
	  * Defines if this is a Brazilian PriceList
	  */
	public boolean islbr_BrazilianPriceList();
}
