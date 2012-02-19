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

/** Generated Interface for C_BPartner_Location
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_W_C_BPartner_Location extends I_C_BPartner_Location 
{


    /** Column name lbr_BPTypeBRIsValid */
    public static final String COLUMNNAME_lbr_BPTypeBRIsValid = "lbr_BPTypeBRIsValid";

	/** Set Brazilian BP Valid.
	  * Brazilian BP is Valid
	  */
	public void setlbr_BPTypeBRIsValid (boolean lbr_BPTypeBRIsValid);

	/** Get Brazilian BP Valid.
	  * Brazilian BP is Valid
	  */
	public boolean islbr_BPTypeBRIsValid();

    /** Column name lbr_CCM */
    public static final String COLUMNNAME_lbr_CCM = "lbr_CCM";

	/** Set CCM.
	  * City Identification Code used in Brazil (City Tax ID)
	  */
	public void setlbr_CCM (String lbr_CCM);

	/** Get CCM.
	  * City Identification Code used in Brazil (City Tax ID)
	  */
	public String getlbr_CCM();

    /** Column name lbr_CNPJ */
    public static final String COLUMNNAME_lbr_CNPJ = "lbr_CNPJ";

	/** Set CNPJ.
	  * Used to identify Legal Entities in Brazil
	  */
	public void setlbr_CNPJ (String lbr_CNPJ);

	/** Get CNPJ.
	  * Used to identify Legal Entities in Brazil
	  */
	public String getlbr_CNPJ();

    /** Column name lbr_IE */
    public static final String COLUMNNAME_lbr_IE = "lbr_IE";

	/** Set IE.
	  * Used to Identify the IE (State Tax ID)
	  */
	public void setlbr_IE (String lbr_IE);

	/** Get IE.
	  * Used to Identify the IE (State Tax ID)
	  */
	public String getlbr_IE();

    /** Column name lbr_IsIEExempt */
    public static final String COLUMNNAME_lbr_IsIEExempt = "lbr_IsIEExempt";

	/** Set IE Exempt.
	  * Business Partner is IE Exempt
	  */
	public void setlbr_IsIEExempt (boolean lbr_IsIEExempt);

	/** Get IE Exempt.
	  * Business Partner is IE Exempt
	  */
	public boolean islbr_IsIEExempt();
}
