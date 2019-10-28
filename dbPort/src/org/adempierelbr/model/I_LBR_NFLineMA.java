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

/** Generated Interface for LBR_NFLineMA
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_LBR_NFLineMA 
{

    /** TableName=LBR_NFLineMA */
    public static final String Table_Name = "LBR_NFLineMA";

    /** AD_Table_ID=1120598 */
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

    /** Column name DueDate */
    public static final String COLUMNNAME_DueDate = "DueDate";

	/** Set Due Date.
	  * Date when the payment is due
	  */
	public void setDueDate (Timestamp DueDate);

	/** Get Due Date.
	  * Date when the payment is due
	  */
	public Timestamp getDueDate();

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

    /** Column name IsValid */
    public static final String COLUMNNAME_IsValid = "IsValid";

	/** Set Valid.
	  * Element is valid
	  */
	public void setIsValid (boolean IsValid);

	/** Get Valid.
	  * Element is valid
	  */
	public boolean isValid();

    /** Column name LBR_ANPCode */
    public static final String COLUMNNAME_LBR_ANPCode = "LBR_ANPCode";

	/** Set ANP Code	  */
	public void setLBR_ANPCode (String LBR_ANPCode);

	/** Get ANP Code	  */
	public String getLBR_ANPCode();

    /** Column name LBR_ANPDesc */
    public static final String COLUMNNAME_LBR_ANPDesc = "LBR_ANPDesc";

	/** Set ANP Description	  */
	public void setLBR_ANPDesc (String LBR_ANPDesc);

	/** Get ANP Description	  */
	public String getLBR_ANPDesc();

    /** Column name LBR_ANVISACode */
    public static final String COLUMNNAME_LBR_ANVISACode = "LBR_ANVISACode";

	/** Set ANVISA Code	  */
	public void setLBR_ANVISACode (String LBR_ANVISACode);

	/** Get ANVISA Code	  */
	public String getLBR_ANVISACode();

    /** Column name LBR_AttributeType */
    public static final String COLUMNNAME_LBR_AttributeType = "LBR_AttributeType";

	/** Set Attribute Type	  */
	public void setLBR_AttributeType (String LBR_AttributeType);

	/** Get Attribute Type	  */
	public String getLBR_AttributeType();

    /** Column name LBR_CODIF */
    public static final String COLUMNNAME_LBR_CODIF = "LBR_CODIF";

	/** Set CODIF.
	  * Authorization Code from CODIF
	  */
	public void setLBR_CODIF (String LBR_CODIF);

	/** Get CODIF.
	  * Authorization Code from CODIF
	  */
	public String getLBR_CODIF();

    /** Column name LBR_GunBarrel */
    public static final String COLUMNNAME_LBR_GunBarrel = "LBR_GunBarrel";

	/** Set Gun Barrel	  */
	public void setLBR_GunBarrel (String LBR_GunBarrel);

	/** Get Gun Barrel	  */
	public String getLBR_GunBarrel();

    /** Column name LBR_GunSerial */
    public static final String COLUMNNAME_LBR_GunSerial = "LBR_GunSerial";

	/** Set Gun Serial	  */
	public void setLBR_GunSerial (String LBR_GunSerial);

	/** Get Gun Serial	  */
	public String getLBR_GunSerial();

    /** Column name LBR_GunType */
    public static final String COLUMNNAME_LBR_GunType = "LBR_GunType";

	/** Set Gun Type	  */
	public void setLBR_GunType (String LBR_GunType);

	/** Get Gun Type	  */
	public String getLBR_GunType();

    /** Column name LBR_MaxPrice */
    public static final String COLUMNNAME_LBR_MaxPrice = "LBR_MaxPrice";

	/** Set Max Price	  */
	public void setLBR_MaxPrice (BigDecimal LBR_MaxPrice);

	/** Get Max Price	  */
	public BigDecimal getLBR_MaxPrice();

    /** Column name LBR_NFLineMA_ID */
    public static final String COLUMNNAME_LBR_NFLineMA_ID = "LBR_NFLineMA_ID";

	/** Set NF Line Material Attributes	  */
	public void setLBR_NFLineMA_ID (int LBR_NFLineMA_ID);

	/** Get NF Line Material Attributes	  */
	public int getLBR_NFLineMA_ID();

    /** Column name LBR_NotaFiscalLine_ID */
    public static final String COLUMNNAME_LBR_NotaFiscalLine_ID = "LBR_NotaFiscalLine_ID";

	/** Set Nota Fiscal Line.
	  * Primary key table LBR_NotaFiscalLine
	  */
	public void setLBR_NotaFiscalLine_ID (int LBR_NotaFiscalLine_ID);

	/** Get Nota Fiscal Line.
	  * Primary key table LBR_NotaFiscalLine
	  */
	public int getLBR_NotaFiscalLine_ID();

	public org.adempierelbr.model.I_LBR_NotaFiscalLine getLBR_NotaFiscalLine() throws RuntimeException;

    /** Column name LBR_PercGLP */
    public static final String COLUMNNAME_LBR_PercGLP = "LBR_PercGLP";

	/** Set % GLP Derivative	  */
	public void setLBR_PercGLP (BigDecimal LBR_PercGLP);

	/** Get % GLP Derivative	  */
	public BigDecimal getLBR_PercGLP();

    /** Column name LBR_PercGasI */
    public static final String COLUMNNAME_LBR_PercGasI = "LBR_PercGasI";

	/** Set % Gas Imported	  */
	public void setLBR_PercGasI (BigDecimal LBR_PercGasI);

	/** Get % Gas Imported	  */
	public BigDecimal getLBR_PercGasI();

    /** Column name LBR_PercGasN */
    public static final String COLUMNNAME_LBR_PercGasN = "LBR_PercGasN";

	/** Set % Gas Interior	  */
	public void setLBR_PercGasN (BigDecimal LBR_PercGasN);

	/** Get % Gas Interior	  */
	public BigDecimal getLBR_PercGasN();

    /** Column name LBR_ProductionDate */
    public static final String COLUMNNAME_LBR_ProductionDate = "LBR_ProductionDate";

	/** Set Production Date	  */
	public void setLBR_ProductionDate (Timestamp LBR_ProductionDate);

	/** Get Production Date	  */
	public Timestamp getLBR_ProductionDate();

    /** Column name LBR_RECOPI */
    public static final String COLUMNNAME_LBR_RECOPI = "LBR_RECOPI";

	/** Set RECOPI	  */
	public void setLBR_RECOPI (String LBR_RECOPI);

	/** Get RECOPI	  */
	public String getLBR_RECOPI();

    /** Column name LBR_StartAmt */
    public static final String COLUMNNAME_LBR_StartAmt = "LBR_StartAmt";

	/** Set Start Amount	  */
	public void setLBR_StartAmt (BigDecimal LBR_StartAmt);

	/** Get Start Amount	  */
	public BigDecimal getLBR_StartAmt();

    /** Column name LBR_UFCons */
    public static final String COLUMNNAME_LBR_UFCons = "LBR_UFCons";

	/** Set Consumption Region.
	  * Indicate the Consumption Region
	  */
	public void setLBR_UFCons (int LBR_UFCons);

	/** Get Consumption Region.
	  * Indicate the Consumption Region
	  */
	public int getLBR_UFCons();

	public I_C_Region getLBR_UFC() throws RuntimeException;

    /** Column name LBR_VeBrandCode */
    public static final String COLUMNNAME_LBR_VeBrandCode = "LBR_VeBrandCode";

	/** Set Brand Code	  */
	public void setLBR_VeBrandCode (String LBR_VeBrandCode);

	/** Get Brand Code	  */
	public String getLBR_VeBrandCode();

    /** Column name LBR_VeChassis */
    public static final String COLUMNNAME_LBR_VeChassis = "LBR_VeChassis";

	/** Set Chassis	  */
	public void setLBR_VeChassis (String LBR_VeChassis);

	/** Get Chassis	  */
	public String getLBR_VeChassis();

    /** Column name LBR_VeColorCode */
    public static final String COLUMNNAME_LBR_VeColorCode = "LBR_VeColorCode";

	/** Set Color Code	  */
	public void setLBR_VeColorCode (String LBR_VeColorCode);

	/** Get Color Code	  */
	public String getLBR_VeColorCode();

    /** Column name LBR_VeColorDENAT */
    public static final String COLUMNNAME_LBR_VeColorDENAT = "LBR_VeColorDENAT";

	/** Set Color (DENAT)	  */
	public void setLBR_VeColorDENAT (String LBR_VeColorDENAT);

	/** Get Color (DENAT)	  */
	public String getLBR_VeColorDENAT();

    /** Column name LBR_VeColorDesc */
    public static final String COLUMNNAME_LBR_VeColorDesc = "LBR_VeColorDesc";

	/** Set Color Description	  */
	public void setLBR_VeColorDesc (String LBR_VeColorDesc);

	/** Get Color Description	  */
	public String getLBR_VeColorDesc();

    /** Column name LBR_VeCondition */
    public static final String COLUMNNAME_LBR_VeCondition = "LBR_VeCondition";

	/** Set Vehicle Condition	  */
	public void setLBR_VeCondition (String LBR_VeCondition);

	/** Get Vehicle Condition	  */
	public String getLBR_VeCondition();

    /** Column name LBR_VeCylinder */
    public static final String COLUMNNAME_LBR_VeCylinder = "LBR_VeCylinder";

	/** Set Cylinder	  */
	public void setLBR_VeCylinder (BigDecimal LBR_VeCylinder);

	/** Get Cylinder	  */
	public BigDecimal getLBR_VeCylinder();

    /** Column name LBR_VeEngineNo */
    public static final String COLUMNNAME_LBR_VeEngineNo = "LBR_VeEngineNo";

	/** Set Engine Number	  */
	public void setLBR_VeEngineNo (String LBR_VeEngineNo);

	/** Get Engine Number	  */
	public String getLBR_VeEngineNo();

    /** Column name LBR_VeKind */
    public static final String COLUMNNAME_LBR_VeKind = "LBR_VeKind";

	/** Set Vehicle Kind	  */
	public void setLBR_VeKind (String LBR_VeKind);

	/** Get Vehicle Kind	  */
	public String getLBR_VeKind();

    /** Column name LBR_VeMaxCapacity */
    public static final String COLUMNNAME_LBR_VeMaxCapacity = "LBR_VeMaxCapacity";

	/** Set Max. Capacity	  */
	public void setLBR_VeMaxCapacity (int LBR_VeMaxCapacity);

	/** Get Max. Capacity	  */
	public int getLBR_VeMaxCapacity();

    /** Column name LBR_VeOperType */
    public static final String COLUMNNAME_LBR_VeOperType = "LBR_VeOperType";

	/** Set Operation Type	  */
	public void setLBR_VeOperType (String LBR_VeOperType);

	/** Get Operation Type	  */
	public String getLBR_VeOperType();

    /** Column name LBR_VePower */
    public static final String COLUMNNAME_LBR_VePower = "LBR_VePower";

	/** Set Engine Power (CV)	  */
	public void setLBR_VePower (BigDecimal LBR_VePower);

	/** Get Engine Power (CV)	  */
	public BigDecimal getLBR_VePower();

    /** Column name LBR_VeRestriction */
    public static final String COLUMNNAME_LBR_VeRestriction = "LBR_VeRestriction";

	/** Set Restriction	  */
	public void setLBR_VeRestriction (String LBR_VeRestriction);

	/** Get Restriction	  */
	public String getLBR_VeRestriction();

    /** Column name LBR_VeSerial */
    public static final String COLUMNNAME_LBR_VeSerial = "LBR_VeSerial";

	/** Set Vehicle Serial	  */
	public void setLBR_VeSerial (String LBR_VeSerial);

	/** Get Vehicle Serial	  */
	public String getLBR_VeSerial();

    /** Column name LBR_VeTpFuel */
    public static final String COLUMNNAME_LBR_VeTpFuel = "LBR_VeTpFuel";

	/** Set Fuel Type	  */
	public void setLBR_VeTpFuel (String LBR_VeTpFuel);

	/** Get Fuel Type	  */
	public String getLBR_VeTpFuel();

    /** Column name LBR_VeTpPaint */
    public static final String COLUMNNAME_LBR_VeTpPaint = "LBR_VeTpPaint";

	/** Set Paint Type	  */
	public void setLBR_VeTpPaint (String LBR_VeTpPaint);

	/** Get Paint Type	  */
	public String getLBR_VeTpPaint();

    /** Column name LBR_VeTractionCap */
    public static final String COLUMNNAME_LBR_VeTractionCap = "LBR_VeTractionCap";

	/** Set Traction Capacity	  */
	public void setLBR_VeTractionCap (BigDecimal LBR_VeTractionCap);

	/** Get Traction Capacity	  */
	public BigDecimal getLBR_VeTractionCap();

    /** Column name LBR_VeType */
    public static final String COLUMNNAME_LBR_VeType = "LBR_VeType";

	/** Set Vehicle Type	  */
	public void setLBR_VeType (String LBR_VeType);

	/** Get Vehicle Type	  */
	public String getLBR_VeType();

    /** Column name LBR_VeVIN */
    public static final String COLUMNNAME_LBR_VeVIN = "LBR_VeVIN";

	/** Set VIN	  */
	public void setLBR_VeVIN (String LBR_VeVIN);

	/** Get VIN	  */
	public String getLBR_VeVIN();

    /** Column name LBR_VeWheelBase */
    public static final String COLUMNNAME_LBR_VeWheelBase = "LBR_VeWheelBase";

	/** Set Wheel Base	  */
	public void setLBR_VeWheelBase (BigDecimal LBR_VeWheelBase);

	/** Get Wheel Base	  */
	public BigDecimal getLBR_VeWheelBase();

    /** Column name LBR_VeYearModel */
    public static final String COLUMNNAME_LBR_VeYearModel = "LBR_VeYearModel";

	/** Set Year Model	  */
	public void setLBR_VeYearModel (String LBR_VeYearModel);

	/** Get Year Model	  */
	public String getLBR_VeYearModel();

    /** Column name LBR_VeYearProduction */
    public static final String COLUMNNAME_LBR_VeYearProduction = "LBR_VeYearProduction";

	/** Set Year Production	  */
	public void setLBR_VeYearProduction (String LBR_VeYearProduction);

	/** Get Year Production	  */
	public String getLBR_VeYearProduction();

    /** Column name Lot */
    public static final String COLUMNNAME_Lot = "Lot";

	/** Set Lot No.
	  * Lot number (alphanumeric)
	  */
	public void setLot (String Lot);

	/** Get Lot No.
	  * Lot number (alphanumeric)
	  */
	public String getLot();

    /** Column name M_AttributeSetInstance_ID */
    public static final String COLUMNNAME_M_AttributeSetInstance_ID = "M_AttributeSetInstance_ID";

	/** Set Attribute Set Instance.
	  * Product Attribute Set Instance
	  */
	public void setM_AttributeSetInstance_ID (int M_AttributeSetInstance_ID);

	/** Get Attribute Set Instance.
	  * Product Attribute Set Instance
	  */
	public int getM_AttributeSetInstance_ID();

	public I_M_AttributeSetInstance getM_AttributeSetInstance() throws RuntimeException;

    /** Column name Qty */
    public static final String COLUMNNAME_Qty = "Qty";

	/** Set Quantity.
	  * Quantity
	  */
	public void setQty (BigDecimal Qty);

	/** Get Quantity.
	  * Quantity
	  */
	public BigDecimal getQty();

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
