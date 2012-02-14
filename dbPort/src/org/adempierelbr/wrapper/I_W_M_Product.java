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

import java.math.BigDecimal;
import org.compiere.model.*;

/** Generated Interface for M_Product
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_W_M_Product extends I_M_Product 
{


    /** Column name LBR_FiscalGroup_Product_ID */
    public static final String COLUMNNAME_LBR_FiscalGroup_Product_ID = "LBR_FiscalGroup_Product_ID";

	/** Set Fiscal Group - Product.
	  * Primary key table LBR_FiscalGroup_Product
	  */
	public void setLBR_FiscalGroup_Product_ID (int LBR_FiscalGroup_Product_ID);

	/** Get Fiscal Group - Product.
	  * Primary key table LBR_FiscalGroup_Product
	  */
	public int getLBR_FiscalGroup_Product_ID();

    /** Column name LBR_NCM_ID */
    public static final String COLUMNNAME_LBR_NCM_ID = "LBR_NCM_ID";

	/** Set NCM.
	  * Primary key table LBR_NCM
	  */
	public void setLBR_NCM_ID (int LBR_NCM_ID);

	/** Get NCM.
	  * Primary key table LBR_NCM
	  */
	public int getLBR_NCM_ID();

    /** Column name LBR_ProductCategory_ID */
    public static final String COLUMNNAME_LBR_ProductCategory_ID = "LBR_ProductCategory_ID";

	/** Set Product Category.
	  * Primary key table LBR_ProductCategory
	  */
	public void setLBR_ProductCategory_ID (int LBR_ProductCategory_ID);

	/** Get Product Category.
	  * Primary key table LBR_ProductCategory
	  */
	public int getLBR_ProductCategory_ID();

    /** Column name lbr_HasSubstitution */
    public static final String COLUMNNAME_lbr_HasSubstitution = "lbr_HasSubstitution";

	/** Set Has Substitution.
	  * Defines if the record has Substituion
	  */
	public void setlbr_HasSubstitution (boolean lbr_HasSubstitution);

	/** Get Has Substitution.
	  * Defines if the record has Substituion
	  */
	public boolean islbr_HasSubstitution();

    /** Column name lbr_IsManufactured */
    public static final String COLUMNNAME_lbr_IsManufactured = "lbr_IsManufactured";

	/** Set Is Manufactured.
	  * Defines if the Product is Manufactured
	  */
	public void setlbr_IsManufactured (boolean lbr_IsManufactured);

	/** Get Is Manufactured.
	  * Defines if the Product is Manufactured
	  */
	public boolean islbr_IsManufactured();

    /** Column name lbr_ProductSource */
    public static final String COLUMNNAME_lbr_ProductSource = "lbr_ProductSource";

	/** Set Product Source.
	  * Defines the Product Source
	  */
	public void setlbr_ProductSource (String lbr_ProductSource);

	/** Get Product Source.
	  * Defines the Product Source
	  */
	public String getlbr_ProductSource();

    /** Column name lbr_ProfitPercentage */
    public static final String COLUMNNAME_lbr_ProfitPercentage = "lbr_ProfitPercentage";

	/** Set Profit Percentage.
	  * Defines the Profit Percentage
	  */
	public void setlbr_ProfitPercentage (BigDecimal lbr_ProfitPercentage);

	/** Get Profit Percentage.
	  * Defines the Profit Percentage
	  */
	public BigDecimal getlbr_ProfitPercentage();

    /** Column name lbr_ServiceCode */
    public static final String COLUMNNAME_lbr_ServiceCode = "lbr_ServiceCode";

	/** Set Service Code.
	  * Service Code used for Nota Fiscal de Servicos Eletronica
	  */
	public void setlbr_ServiceCode (String lbr_ServiceCode);

	/** Get Service Code.
	  * Service Code used for Nota Fiscal de Servicos Eletronica
	  */
	public String getlbr_ServiceCode();
}
