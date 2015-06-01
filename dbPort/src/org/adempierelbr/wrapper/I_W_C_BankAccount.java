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

/** Generated Interface for C_BankAccount
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_W_C_BankAccount extends I_C_BankAccount 
{


    /** Column name AD_Sequence_ID */
    public static final String COLUMNNAME_AD_Sequence_ID = "AD_Sequence_ID";

	/** Set Sequence.
	  * Document Sequence
	  */
	public void setAD_Sequence_ID (int AD_Sequence_ID);

	/** Get Sequence.
	  * Document Sequence
	  */
	public int getAD_Sequence_ID();

	public I_AD_Sequence getAD_Sequence() throws RuntimeException;

    /** Column name IsRegistered */
    public static final String COLUMNNAME_IsRegistered = "IsRegistered";

	/** Set Registered.
	  * The application is registered.
	  */
	public void setIsRegistered (boolean IsRegistered);

	/** Get Registered.
	  * The application is registered.
	  */
	public boolean isRegistered();

    /** Column name LBR_DocSequence_ID */
    public static final String COLUMNNAME_LBR_DocSequence_ID = "LBR_DocSequence_ID";

	/** Set File Sequence.
	  * Defines the File Sequence
	  */
	public void setLBR_DocSequence_ID (int LBR_DocSequence_ID);

	/** Get File Sequence.
	  * Defines the File Sequence
	  */
	public int getLBR_DocSequence_ID();

	public I_AD_Sequence getLBR_DocSequence() throws RuntimeException;

    /** Column name lbr_AgencyNo */
    public static final String COLUMNNAME_lbr_AgencyNo = "lbr_AgencyNo";

	/** Set Agency Number.
	  * Agency Number
	  */
	public void setlbr_AgencyNo (String lbr_AgencyNo);

	/** Get Agency Number.
	  * Agency Number
	  */
	public String getlbr_AgencyNo();

    /** Column name lbr_BillFold */
    public static final String COLUMNNAME_lbr_BillFold = "lbr_BillFold";

	/** Set Bill Fold.
	  * Type of Bill Fold - For Bank Usage
	  */
	public void setlbr_BillFold (String lbr_BillFold);

	/** Get Bill Fold.
	  * Type of Bill Fold - For Bank Usage
	  */
	public String getlbr_BillFold();

    /** Column name lbr_BillKind */
    public static final String COLUMNNAME_lbr_BillKind = "lbr_BillKind";

	/** Set Bill Kind.
	  * Defines the kind of Bill
	  */
	public void setlbr_BillKind (String lbr_BillKind);

	/** Get Bill Kind.
	  * Defines the kind of Bill
	  */
	public String getlbr_BillKind();

    /** Column name lbr_ClientCode */
    public static final String COLUMNNAME_lbr_ClientCode = "lbr_ClientCode";

	/** Set Client Code.
	  * Client Code - needed for some Banks
	  */
	public void setlbr_ClientCode (String lbr_ClientCode);

	/** Get Client Code.
	  * Client Code - needed for some Banks
	  */
	public String getlbr_ClientCode();

    /** Column name lbr_IsBillPrinted */
    public static final String COLUMNNAME_lbr_IsBillPrinted = "lbr_IsBillPrinted";

	/** Set Print Bill.
	  * Indicates if this Account is used to Print Bills
	  */
	public void setlbr_IsBillPrinted (boolean lbr_IsBillPrinted);

	/** Get Print Bill.
	  * Indicates if this Account is used to Print Bills
	  */
	public boolean islbr_IsBillPrinted();
}
