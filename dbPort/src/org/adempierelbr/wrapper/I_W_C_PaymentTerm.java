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

/** Generated Interface for C_PaymentTerm
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_W_C_PaymentTerm extends I_C_PaymentTerm 
{


    /** Column name lbr_HasInterest */
    public static final String COLUMNNAME_lbr_HasInterest = "lbr_HasInterest";

	/** Set Has Interest.
	  * Define if this document has Interest
	  */
	public void setlbr_HasInterest (boolean lbr_HasInterest);

	/** Get Has Interest.
	  * Define if this document has Interest
	  */
	public boolean islbr_HasInterest();

    /** Column name lbr_HasSue */
    public static final String COLUMNNAME_lbr_HasSue = "lbr_HasSue";

	/** Set Has Sue.
	  * Define if this Document must be Sue
	  */
	public void setlbr_HasSue (boolean lbr_HasSue);

	/** Get Has Sue.
	  * Define if this Document must be Sue
	  */
	public boolean islbr_HasSue();

    /** Column name lbr_SueDays */
    public static final String COLUMNNAME_lbr_SueDays = "lbr_SueDays";

	/** Set Sue Days.
	  * Define the Sue Days
	  */
	public void setlbr_SueDays (int lbr_SueDays);

	/** Get Sue Days.
	  * Define the Sue Days
	  */
	public int getlbr_SueDays();
}
