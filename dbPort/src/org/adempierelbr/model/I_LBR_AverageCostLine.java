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
package org.adempierelbr.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for LBR_AverageCostLine
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_LBR_AverageCostLine 
{

    /** TableName=LBR_AverageCostLine */
    public static final String Table_Name = "LBR_AverageCostLine";

    /** AD_Table_ID=1120020 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 3 - Client - Org 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(3);

    /** Load Meta Data */

    /** Column name AD_Client_ID */
    public static final String COLUMNNAME_AD_Client_ID = "AD_Client_ID";

	/** Get Client.
	  * Client/Tenant for this installation.
	  */
	public int getAD_Client_ID();

    /** Column name AD_Org_ID */
    public static final String COLUMNNAME_AD_Org_ID = "AD_Org_ID";

	/** Set Organization.
	  * Organizational entity within client
	  */
	public void setAD_Org_ID (int AD_Org_ID);

	/** Get Organization.
	  * Organizational entity within client
	  */
	public int getAD_Org_ID();

    /** Column name Created */
    public static final String COLUMNNAME_Created = "Created";

	/** Get Created.
	  * Date this record was created
	  */
	public Timestamp getCreated();

    /** Column name CreatedBy */
    public static final String COLUMNNAME_CreatedBy = "CreatedBy";

	/** Get Created By.
	  * User who created this records
	  */
	public int getCreatedBy();

    /** Column name CumulatedAmt */
    public static final String COLUMNNAME_CumulatedAmt = "CumulatedAmt";

	/** Set Accumulated Amt.
	  * Total Amount
	  */
	public void setCumulatedAmt (BigDecimal CumulatedAmt);

	/** Get Accumulated Amt.
	  * Total Amount
	  */
	public BigDecimal getCumulatedAmt();

    /** Column name CumulatedQty */
    public static final String COLUMNNAME_CumulatedQty = "CumulatedQty";

	/** Set Accumulated Qty.
	  * Total Quantity
	  */
	public void setCumulatedQty (BigDecimal CumulatedQty);

	/** Get Accumulated Qty.
	  * Total Quantity
	  */
	public BigDecimal getCumulatedQty();

    /** Column name CurrentCostPrice */
    public static final String COLUMNNAME_CurrentCostPrice = "CurrentCostPrice";

	/** Set Current Cost Price.
	  * The currently used cost price
	  */
	public void setCurrentCostPrice (BigDecimal CurrentCostPrice);

	/** Get Current Cost Price.
	  * The currently used cost price
	  */
	public BigDecimal getCurrentCostPrice();

    /** Column name CurrentQty */
    public static final String COLUMNNAME_CurrentQty = "CurrentQty";

	/** Set Current Quantity.
	  * Current Quantity
	  */
	public void setCurrentQty (BigDecimal CurrentQty);

	/** Get Current Quantity.
	  * Current Quantity
	  */
	public BigDecimal getCurrentQty();

    /** Column name Description */
    public static final String COLUMNNAME_Description = "Description";

	/** Set Description.
	  * Optional short description of the record
	  */
	public void setDescription (String Description);

	/** Get Description.
	  * Optional short description of the record
	  */
	public String getDescription();

    /** Column name FutureCostPrice */
    public static final String COLUMNNAME_FutureCostPrice = "FutureCostPrice";

	/** Set Future Cost Price	  */
	public void setFutureCostPrice (BigDecimal FutureCostPrice);

	/** Get Future Cost Price	  */
	public BigDecimal getFutureCostPrice();

    /** Column name IsActive */
    public static final String COLUMNNAME_IsActive = "IsActive";

	/** Set Active.
	  * The record is active in the system
	  */
	public void setIsActive (boolean IsActive);

	/** Get Active.
	  * The record is active in the system
	  */
	public boolean isActive();

    /** Column name LBR_AverageCost_ID */
    public static final String COLUMNNAME_LBR_AverageCost_ID = "LBR_AverageCost_ID";

	/** Set Average Cost.
	  * Defines the Average Cost
	  */
	public void setLBR_AverageCost_ID (int LBR_AverageCost_ID);

	/** Get Average Cost.
	  * Defines the Average Cost
	  */
	public int getLBR_AverageCost_ID();

	public org.adempierelbr.model.I_LBR_AverageCost getLBR_AverageCost() throws RuntimeException;

    /** Column name LBR_AverageCostLine_ID */
    public static final String COLUMNNAME_LBR_AverageCostLine_ID = "LBR_AverageCostLine_ID";

	/** Set AvgCost - Line	  */
	public void setLBR_AverageCostLine_ID (int LBR_AverageCostLine_ID);

	/** Get AvgCost - Line	  */
	public int getLBR_AverageCostLine_ID();

    /** Column name lbr_AvgCostType */
    public static final String COLUMNNAME_lbr_AvgCostType = "lbr_AvgCostType";

	/** Set AvgCost Type	  */
	public void setlbr_AvgCostType (String lbr_AvgCostType);

	/** Get AvgCost Type	  */
	public String getlbr_AvgCostType();

    /** Column name lbr_AvgCostZoom */
    public static final String COLUMNNAME_lbr_AvgCostZoom = "lbr_AvgCostZoom";

	/** Set AvgCost - Zoom	  */
	public void setlbr_AvgCostZoom (String lbr_AvgCostZoom);

	/** Get AvgCost - Zoom	  */
	public String getlbr_AvgCostZoom();

    /** Column name M_Product_ID */
    public static final String COLUMNNAME_M_Product_ID = "M_Product_ID";

	/** Set Product.
	  * Product, Service, Item
	  */
	public void setM_Product_ID (int M_Product_ID);

	/** Get Product.
	  * Product, Service, Item
	  */
	public int getM_Product_ID();

	public I_M_Product getM_Product() throws RuntimeException;

    /** Column name Updated */
    public static final String COLUMNNAME_Updated = "Updated";

	/** Get Updated.
	  * Date this record was updated
	  */
	public Timestamp getUpdated();

    /** Column name UpdatedBy */
    public static final String COLUMNNAME_UpdatedBy = "UpdatedBy";

	/** Get Updated By.
	  * User who updated this records
	  */
	public int getUpdatedBy();
}
