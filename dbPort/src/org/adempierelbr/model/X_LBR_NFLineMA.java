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
/** Generated Model - DO NOT CHANGE */
package org.adempierelbr.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for LBR_NFLineMA
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_NFLineMA extends PO implements I_LBR_NFLineMA, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20180606L;

    /** Standard Constructor */
    public X_LBR_NFLineMA (Properties ctx, int LBR_NFLineMA_ID, String trxName)
    {
      super (ctx, LBR_NFLineMA_ID, trxName);
      /** if (LBR_NFLineMA_ID == 0)
        {
			setIsValid (false);
// N
			setLBR_AttributeType (null);
			setLBR_NFLineMA_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_NFLineMA (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 3 - Client - Org 
      */
    protected int get_AccessLevel()
    {
      return accessLevel.intValue();
    }

    /** Load Meta Data */
    protected POInfo initPO (Properties ctx)
    {
      POInfo poi = POInfo.getPOInfo (ctx, Table_ID, get_TrxName());
      return poi;
    }

    public String toString()
    {
      StringBuffer sb = new StringBuffer ("X_LBR_NFLineMA[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Due Date.
		@param DueDate 
		Date when the payment is due
	  */
	public void setDueDate (Timestamp DueDate)
	{
		set_Value (COLUMNNAME_DueDate, DueDate);
	}

	/** Get Due Date.
		@return Date when the payment is due
	  */
	public Timestamp getDueDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DueDate);
	}

	/** Set Valid.
		@param IsValid 
		Element is valid
	  */
	public void setIsValid (boolean IsValid)
	{
		set_Value (COLUMNNAME_IsValid, Boolean.valueOf(IsValid));
	}

	/** Get Valid.
		@return Element is valid
	  */
	public boolean isValid () 
	{
		Object oo = get_Value(COLUMNNAME_IsValid);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set ANP Code.
		@param LBR_ANPCode ANP Code	  */
	public void setLBR_ANPCode (String LBR_ANPCode)
	{
		set_Value (COLUMNNAME_LBR_ANPCode, LBR_ANPCode);
	}

	/** Get ANP Code.
		@return ANP Code	  */
	public String getLBR_ANPCode () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ANPCode);
	}

	/** Set ANP Description.
		@param LBR_ANPDesc ANP Description	  */
	public void setLBR_ANPDesc (String LBR_ANPDesc)
	{
		set_Value (COLUMNNAME_LBR_ANPDesc, LBR_ANPDesc);
	}

	/** Get ANP Description.
		@return ANP Description	  */
	public String getLBR_ANPDesc () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ANPDesc);
	}

	/** Set ANVISA Code.
		@param LBR_ANVISACode ANVISA Code	  */
	public void setLBR_ANVISACode (String LBR_ANVISACode)
	{
		set_Value (COLUMNNAME_LBR_ANVISACode, LBR_ANVISACode);
	}

	/** Get ANVISA Code.
		@return ANVISA Code	  */
	public String getLBR_ANVISACode () 
	{
		return (String)get_Value(COLUMNNAME_LBR_ANVISACode);
	}

	/** LBR_AttributeType AD_Reference_ID=1120278 */
	public static final int LBR_ATTRIBUTETYPE_AD_Reference_ID=1120278;
	/** Tracking = R00 */
	public static final String LBR_ATTRIBUTETYPE_Tracking = "R00";
	/** Medicine = X01 */
	public static final String LBR_ATTRIBUTETYPE_Medicine = "X01";
	/** Fuel = X02 */
	public static final String LBR_ATTRIBUTETYPE_Fuel = "X02";
	/** Vehicle = X03 */
	public static final String LBR_ATTRIBUTETYPE_Vehicle = "X03";
	/** Gun = X04 */
	public static final String LBR_ATTRIBUTETYPE_Gun = "X04";
	/** Medicine and Tracking = R01 */
	public static final String LBR_ATTRIBUTETYPE_MedicineAndTracking = "R01";
	/** Fuel and Tracking = R02 */
	public static final String LBR_ATTRIBUTETYPE_FuelAndTracking = "R02";
	/** Vehicle and Tracking = R03 */
	public static final String LBR_ATTRIBUTETYPE_VehicleAndTracking = "R03";
	/** Gun and Tracking = R04 */
	public static final String LBR_ATTRIBUTETYPE_GunAndTracking = "R04";
	/** Exempt Paper = X05 */
	public static final String LBR_ATTRIBUTETYPE_ExemptPaper = "X05";
	/** Exempt Paper and Tracking = R05 */
	public static final String LBR_ATTRIBUTETYPE_ExemptPaperAndTracking = "R05";
	/** Set Attribute Type.
		@param LBR_AttributeType Attribute Type	  */
	public void setLBR_AttributeType (String LBR_AttributeType)
	{

		set_Value (COLUMNNAME_LBR_AttributeType, LBR_AttributeType);
	}

	/** Get Attribute Type.
		@return Attribute Type	  */
	public String getLBR_AttributeType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_AttributeType);
	}

	/** Set CODIF.
		@param LBR_CODIF 
		Authorization Code from CODIF
	  */
	public void setLBR_CODIF (String LBR_CODIF)
	{
		set_Value (COLUMNNAME_LBR_CODIF, LBR_CODIF);
	}

	/** Get CODIF.
		@return Authorization Code from CODIF
	  */
	public String getLBR_CODIF () 
	{
		return (String)get_Value(COLUMNNAME_LBR_CODIF);
	}

	/** Set Gun Barrel.
		@param LBR_GunBarrel Gun Barrel	  */
	public void setLBR_GunBarrel (String LBR_GunBarrel)
	{
		set_Value (COLUMNNAME_LBR_GunBarrel, LBR_GunBarrel);
	}

	/** Get Gun Barrel.
		@return Gun Barrel	  */
	public String getLBR_GunBarrel () 
	{
		return (String)get_Value(COLUMNNAME_LBR_GunBarrel);
	}

	/** Set Gun Serial.
		@param LBR_GunSerial Gun Serial	  */
	public void setLBR_GunSerial (String LBR_GunSerial)
	{
		set_Value (COLUMNNAME_LBR_GunSerial, LBR_GunSerial);
	}

	/** Get Gun Serial.
		@return Gun Serial	  */
	public String getLBR_GunSerial () 
	{
		return (String)get_Value(COLUMNNAME_LBR_GunSerial);
	}

	/** LBR_GunType AD_Reference_ID=1120277 */
	public static final int LBR_GUNTYPE_AD_Reference_ID=1120277;
	/** Allowed Usage = 0 */
	public static final String LBR_GUNTYPE_AllowedUsage = "0";
	/** Restricted Use = 1 */
	public static final String LBR_GUNTYPE_RestrictedUse = "1";
	/** Set Gun Type.
		@param LBR_GunType Gun Type	  */
	public void setLBR_GunType (String LBR_GunType)
	{

		set_Value (COLUMNNAME_LBR_GunType, LBR_GunType);
	}

	/** Get Gun Type.
		@return Gun Type	  */
	public String getLBR_GunType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_GunType);
	}

	/** Set Max Price.
		@param LBR_MaxPrice Max Price	  */
	public void setLBR_MaxPrice (BigDecimal LBR_MaxPrice)
	{
		set_Value (COLUMNNAME_LBR_MaxPrice, LBR_MaxPrice);
	}

	/** Get Max Price.
		@return Max Price	  */
	public BigDecimal getLBR_MaxPrice () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_MaxPrice);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set NF Line Material Attributes.
		@param LBR_NFLineMA_ID NF Line Material Attributes	  */
	public void setLBR_NFLineMA_ID (int LBR_NFLineMA_ID)
	{
		if (LBR_NFLineMA_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NFLineMA_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NFLineMA_ID, Integer.valueOf(LBR_NFLineMA_ID));
	}

	/** Get NF Line Material Attributes.
		@return NF Line Material Attributes	  */
	public int getLBR_NFLineMA_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NFLineMA_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_NotaFiscalLine getLBR_NotaFiscalLine() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_NotaFiscalLine)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_NotaFiscalLine.Table_Name)
			.getPO(getLBR_NotaFiscalLine_ID(), get_TrxName());	}

	/** Set Nota Fiscal Line.
		@param LBR_NotaFiscalLine_ID 
		Primary key table LBR_NotaFiscalLine
	  */
	public void setLBR_NotaFiscalLine_ID (int LBR_NotaFiscalLine_ID)
	{
		if (LBR_NotaFiscalLine_ID < 1) 
			set_Value (COLUMNNAME_LBR_NotaFiscalLine_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_NotaFiscalLine_ID, Integer.valueOf(LBR_NotaFiscalLine_ID));
	}

	/** Get Nota Fiscal Line.
		@return Primary key table LBR_NotaFiscalLine
	  */
	public int getLBR_NotaFiscalLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscalLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set % GLP Derivative.
		@param LBR_PercGLP % GLP Derivative	  */
	public void setLBR_PercGLP (BigDecimal LBR_PercGLP)
	{
		set_Value (COLUMNNAME_LBR_PercGLP, LBR_PercGLP);
	}

	/** Get % GLP Derivative.
		@return % GLP Derivative	  */
	public BigDecimal getLBR_PercGLP () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_PercGLP);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set % Gas Imported.
		@param LBR_PercGasI % Gas Imported	  */
	public void setLBR_PercGasI (BigDecimal LBR_PercGasI)
	{
		set_Value (COLUMNNAME_LBR_PercGasI, LBR_PercGasI);
	}

	/** Get % Gas Imported.
		@return % Gas Imported	  */
	public BigDecimal getLBR_PercGasI () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_PercGasI);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set % Gas Interior.
		@param LBR_PercGasN % Gas Interior	  */
	public void setLBR_PercGasN (BigDecimal LBR_PercGasN)
	{
		set_Value (COLUMNNAME_LBR_PercGasN, LBR_PercGasN);
	}

	/** Get % Gas Interior.
		@return % Gas Interior	  */
	public BigDecimal getLBR_PercGasN () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_PercGasN);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Production Date.
		@param LBR_ProductionDate Production Date	  */
	public void setLBR_ProductionDate (Timestamp LBR_ProductionDate)
	{
		set_Value (COLUMNNAME_LBR_ProductionDate, LBR_ProductionDate);
	}

	/** Get Production Date.
		@return Production Date	  */
	public Timestamp getLBR_ProductionDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_LBR_ProductionDate);
	}

	/** Set RECOPI.
		@param LBR_RECOPI RECOPI	  */
	public void setLBR_RECOPI (String LBR_RECOPI)
	{
		set_Value (COLUMNNAME_LBR_RECOPI, LBR_RECOPI);
	}

	/** Get RECOPI.
		@return RECOPI	  */
	public String getLBR_RECOPI () 
	{
		return (String)get_Value(COLUMNNAME_LBR_RECOPI);
	}

	/** Set Start Amount.
		@param LBR_StartAmt Start Amount	  */
	public void setLBR_StartAmt (BigDecimal LBR_StartAmt)
	{
		set_Value (COLUMNNAME_LBR_StartAmt, LBR_StartAmt);
	}

	/** Get Start Amount.
		@return Start Amount	  */
	public BigDecimal getLBR_StartAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_StartAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Brand Code.
		@param LBR_VeBrandCode Brand Code	  */
	public void setLBR_VeBrandCode (String LBR_VeBrandCode)
	{
		set_Value (COLUMNNAME_LBR_VeBrandCode, LBR_VeBrandCode);
	}

	/** Get Brand Code.
		@return Brand Code	  */
	public String getLBR_VeBrandCode () 
	{
		return (String)get_Value(COLUMNNAME_LBR_VeBrandCode);
	}

	/** Set Chassis.
		@param LBR_VeChassis Chassis	  */
	public void setLBR_VeChassis (String LBR_VeChassis)
	{
		set_Value (COLUMNNAME_LBR_VeChassis, LBR_VeChassis);
	}

	/** Get Chassis.
		@return Chassis	  */
	public String getLBR_VeChassis () 
	{
		return (String)get_Value(COLUMNNAME_LBR_VeChassis);
	}

	/** Set Color Code.
		@param LBR_VeColorCode Color Code	  */
	public void setLBR_VeColorCode (String LBR_VeColorCode)
	{
		set_Value (COLUMNNAME_LBR_VeColorCode, LBR_VeColorCode);
	}

	/** Get Color Code.
		@return Color Code	  */
	public String getLBR_VeColorCode () 
	{
		return (String)get_Value(COLUMNNAME_LBR_VeColorCode);
	}

	/** LBR_VeColorDENAT AD_Reference_ID=1120275 */
	public static final int LBR_VECOLORDENAT_AD_Reference_ID=1120275;
	/** Yellow = 01 */
	public static final String LBR_VECOLORDENAT_Yellow = "01";
	/** Blue = 02 */
	public static final String LBR_VECOLORDENAT_Blue = "02";
	/** Beige = 03 */
	public static final String LBR_VECOLORDENAT_Beige = "03";
	/** Branca = 04 */
	public static final String LBR_VECOLORDENAT_Branca = "04";
	/** Grey = 05 */
	public static final String LBR_VECOLORDENAT_Grey = "05";
	/** Golden = 06 */
	public static final String LBR_VECOLORDENAT_Golden = "06";
	/** Garnet = 07 */
	public static final String LBR_VECOLORDENAT_Garnet = "07";
	/** Orange = 08 */
	public static final String LBR_VECOLORDENAT_Orange = "08";
	/** Brown = 09 */
	public static final String LBR_VECOLORDENAT_Brown = "09";
	/** Silver = 10 */
	public static final String LBR_VECOLORDENAT_Silver = "10";
	/** Black = 11 */
	public static final String LBR_VECOLORDENAT_Black = "11";
	/** Pink = 12 */
	public static final String LBR_VECOLORDENAT_Pink = "12";
	/** Purple = 13 */
	public static final String LBR_VECOLORDENAT_Purple = "13";
	/** Green = 14 */
	public static final String LBR_VECOLORDENAT_Green = "14";
	/** Red = 15 */
	public static final String LBR_VECOLORDENAT_Red = "15";
	/** Fantasy = 16 */
	public static final String LBR_VECOLORDENAT_Fantasy = "16";
	/** Set Color (DENAT).
		@param LBR_VeColorDENAT Color (DENAT)	  */
	public void setLBR_VeColorDENAT (String LBR_VeColorDENAT)
	{

		set_Value (COLUMNNAME_LBR_VeColorDENAT, LBR_VeColorDENAT);
	}

	/** Get Color (DENAT).
		@return Color (DENAT)	  */
	public String getLBR_VeColorDENAT () 
	{
		return (String)get_Value(COLUMNNAME_LBR_VeColorDENAT);
	}

	/** Set Color Description.
		@param LBR_VeColorDesc Color Description	  */
	public void setLBR_VeColorDesc (String LBR_VeColorDesc)
	{
		set_Value (COLUMNNAME_LBR_VeColorDesc, LBR_VeColorDesc);
	}

	/** Get Color Description.
		@return Color Description	  */
	public String getLBR_VeColorDesc () 
	{
		return (String)get_Value(COLUMNNAME_LBR_VeColorDesc);
	}

	/** LBR_VeCondition AD_Reference_ID=1120274 */
	public static final int LBR_VECONDITION_AD_Reference_ID=1120274;
	/** Finished = 1 */
	public static final String LBR_VECONDITION_Finished = "1";
	/** Unfinished = 2 */
	public static final String LBR_VECONDITION_Unfinished = "2";
	/** Semi-Finished = 3 */
	public static final String LBR_VECONDITION_Semi_Finished = "3";
	/** Set Vehicle Condition.
		@param LBR_VeCondition Vehicle Condition	  */
	public void setLBR_VeCondition (String LBR_VeCondition)
	{

		set_Value (COLUMNNAME_LBR_VeCondition, LBR_VeCondition);
	}

	/** Get Vehicle Condition.
		@return Vehicle Condition	  */
	public String getLBR_VeCondition () 
	{
		return (String)get_Value(COLUMNNAME_LBR_VeCondition);
	}

	/** Set Cylinder.
		@param LBR_VeCylinder Cylinder	  */
	public void setLBR_VeCylinder (BigDecimal LBR_VeCylinder)
	{
		set_Value (COLUMNNAME_LBR_VeCylinder, LBR_VeCylinder);
	}

	/** Get Cylinder.
		@return Cylinder	  */
	public BigDecimal getLBR_VeCylinder () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_VeCylinder);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Engine Number.
		@param LBR_VeEngineNo Engine Number	  */
	public void setLBR_VeEngineNo (String LBR_VeEngineNo)
	{
		set_Value (COLUMNNAME_LBR_VeEngineNo, LBR_VeEngineNo);
	}

	/** Get Engine Number.
		@return Engine Number	  */
	public String getLBR_VeEngineNo () 
	{
		return (String)get_Value(COLUMNNAME_LBR_VeEngineNo);
	}

	/** LBR_VeKind AD_Reference_ID=1120272 */
	public static final int LBR_VEKIND_AD_Reference_ID=1120272;
	/** Passenger = 01 */
	public static final String LBR_VEKIND_Passenger = "01";
	/** Cargo = 02 */
	public static final String LBR_VEKIND_Cargo = "02";
	/** Mixed = 03 */
	public static final String LBR_VEKIND_Mixed = "03";
	/** Race = 04 */
	public static final String LBR_VEKIND_Race = "04";
	/** Traction = 05 */
	public static final String LBR_VEKIND_Traction = "05";
	/** Special = 06 */
	public static final String LBR_VEKIND_Special = "06";
	/** Collection = 07 */
	public static final String LBR_VEKIND_Collection = "07";
	/** Set Vehicle Kind.
		@param LBR_VeKind Vehicle Kind	  */
	public void setLBR_VeKind (String LBR_VeKind)
	{

		set_Value (COLUMNNAME_LBR_VeKind, LBR_VeKind);
	}

	/** Get Vehicle Kind.
		@return Vehicle Kind	  */
	public String getLBR_VeKind () 
	{
		return (String)get_Value(COLUMNNAME_LBR_VeKind);
	}

	/** Set Max. Capacity.
		@param LBR_VeMaxCapacity Max. Capacity	  */
	public void setLBR_VeMaxCapacity (int LBR_VeMaxCapacity)
	{
		set_Value (COLUMNNAME_LBR_VeMaxCapacity, Integer.valueOf(LBR_VeMaxCapacity));
	}

	/** Get Max. Capacity.
		@return Max. Capacity	  */
	public int getLBR_VeMaxCapacity () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_VeMaxCapacity);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** LBR_VeOperType AD_Reference_ID=1120269 */
	public static final int LBR_VEOPERTYPE_AD_Reference_ID=1120269;
	/** Dealership Sale = 1 */
	public static final String LBR_VEOPERTYPE_DealershipSale = "1";
	/** Direct sale to end customer = 2 */
	public static final String LBR_VEOPERTYPE_DirectSaleToEndCustomer = "2";
	/** Large Customers Sale (Government, Fleet, etc) = 3 */
	public static final String LBR_VEOPERTYPE_LargeCustomersSaleGovernmentFleetEtc = "3";
	/** Other = 0 */
	public static final String LBR_VEOPERTYPE_Other = "0";
	/** Set Operation Type.
		@param LBR_VeOperType Operation Type	  */
	public void setLBR_VeOperType (String LBR_VeOperType)
	{

		set_Value (COLUMNNAME_LBR_VeOperType, LBR_VeOperType);
	}

	/** Get Operation Type.
		@return Operation Type	  */
	public String getLBR_VeOperType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_VeOperType);
	}

	/** Set Engine Power (CV).
		@param LBR_VePower Engine Power (CV)	  */
	public void setLBR_VePower (BigDecimal LBR_VePower)
	{
		set_Value (COLUMNNAME_LBR_VePower, LBR_VePower);
	}

	/** Get Engine Power (CV).
		@return Engine Power (CV)	  */
	public BigDecimal getLBR_VePower () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_VePower);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** LBR_VeRestriction AD_Reference_ID=1120276 */
	public static final int LBR_VERESTRICTION_AD_Reference_ID=1120276;
	/** None = 0 */
	public static final String LBR_VERESTRICTION_None = "0";
	/** Fiduciary Alienation = 1 */
	public static final String LBR_VERESTRICTION_FiduciaryAlienation = "1";
	/** Lease = 2 */
	public static final String LBR_VERESTRICTION_Lease = "2";
	/** Domain Reservation = 3 */
	public static final String LBR_VERESTRICTION_DomainReservation = "3";
	/** Vehicle Pawn = 4 */
	public static final String LBR_VERESTRICTION_VehiclePawn = "4";
	/** Other = 9 */
	public static final String LBR_VERESTRICTION_Other = "9";
	/** Set Restriction.
		@param LBR_VeRestriction Restriction	  */
	public void setLBR_VeRestriction (String LBR_VeRestriction)
	{

		set_Value (COLUMNNAME_LBR_VeRestriction, LBR_VeRestriction);
	}

	/** Get Restriction.
		@return Restriction	  */
	public String getLBR_VeRestriction () 
	{
		return (String)get_Value(COLUMNNAME_LBR_VeRestriction);
	}

	/** Set Vehicle Serial.
		@param LBR_VeSerial Vehicle Serial	  */
	public void setLBR_VeSerial (String LBR_VeSerial)
	{
		set_Value (COLUMNNAME_LBR_VeSerial, LBR_VeSerial);
	}

	/** Get Vehicle Serial.
		@return Vehicle Serial	  */
	public String getLBR_VeSerial () 
	{
		return (String)get_Value(COLUMNNAME_LBR_VeSerial);
	}

	/** LBR_VeTpFuel AD_Reference_ID=1120270 */
	public static final int LBR_VETPFUEL_AD_Reference_ID=1120270;
	/** Ethanol = 01 */
	public static final String LBR_VETPFUEL_Ethanol = "01";
	/** Gasoline = 02 */
	public static final String LBR_VETPFUEL_Gasoline = "02";
	/** Diesel = 03 */
	public static final String LBR_VETPFUEL_Diesel = "03";
	/** Gasogen = 04 */
	public static final String LBR_VETPFUEL_Gasogen = "04";
	/** Methane Gas = 05 */
	public static final String LBR_VETPFUEL_MethaneGas = "05";
	/** Electrical Internal = 06 */
	public static final String LBR_VETPFUEL_ElectricalInternal = "06";
	/** Electrical External = 07 */
	public static final String LBR_VETPFUEL_ElectricalExternal = "07";
	/** Gasoline / NG = 08 */
	public static final String LBR_VETPFUEL_GasolineNG = "08";
	/** Ethanol / NG = 09 */
	public static final String LBR_VETPFUEL_EthanolNG = "09";
	/** Diesel / NG = 10 */
	public static final String LBR_VETPFUEL_DieselNG = "10";
	/** Ethanol / VNG = 12 */
	public static final String LBR_VETPFUEL_EthanolVNG = "12";
	/** Gasoline / VNG = 13 */
	public static final String LBR_VETPFUEL_GasolineVNG = "13";
	/** Diesel / VNG = 14 */
	public static final String LBR_VETPFUEL_DieselVNG = "14";
	/** Natural Gas = 15 */
	public static final String LBR_VETPFUEL_NaturalGas = "15";
	/** Gasoline / Ethanol = 16 */
	public static final String LBR_VETPFUEL_GasolineEthanol = "16";
	/** Gasoline / Ethanol / NG = 17 */
	public static final String LBR_VETPFUEL_GasolineEthanolNG = "17";
	/** Gasoline / Electrical = 18 */
	public static final String LBR_VETPFUEL_GasolineElectrical = "18";
	/** Set Fuel Type.
		@param LBR_VeTpFuel Fuel Type	  */
	public void setLBR_VeTpFuel (String LBR_VeTpFuel)
	{

		set_Value (COLUMNNAME_LBR_VeTpFuel, LBR_VeTpFuel);
	}

	/** Get Fuel Type.
		@return Fuel Type	  */
	public String getLBR_VeTpFuel () 
	{
		return (String)get_Value(COLUMNNAME_LBR_VeTpFuel);
	}

	/** Set Paint Type.
		@param LBR_VeTpPaint Paint Type	  */
	public void setLBR_VeTpPaint (String LBR_VeTpPaint)
	{
		set_Value (COLUMNNAME_LBR_VeTpPaint, LBR_VeTpPaint);
	}

	/** Get Paint Type.
		@return Paint Type	  */
	public String getLBR_VeTpPaint () 
	{
		return (String)get_Value(COLUMNNAME_LBR_VeTpPaint);
	}

	/** Set Traction Capacity.
		@param LBR_VeTractionCap Traction Capacity	  */
	public void setLBR_VeTractionCap (BigDecimal LBR_VeTractionCap)
	{
		set_Value (COLUMNNAME_LBR_VeTractionCap, LBR_VeTractionCap);
	}

	/** Get Traction Capacity.
		@return Traction Capacity	  */
	public BigDecimal getLBR_VeTractionCap () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_VeTractionCap);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** LBR_VeType AD_Reference_ID=1120271 */
	public static final int LBR_VETYPE_AD_Reference_ID=1120271;
	/** Bicycle = 01 */
	public static final String LBR_VETYPE_Bicycle = "01";
	/** Moped = 02 */
	public static final String LBR_VETYPE_Moped = "02";
	/** Scooter = 03 */
	public static final String LBR_VETYPE_Scooter = "03";
	/** Motorcycle = 04 */
	public static final String LBR_VETYPE_Motorcycle = "04";
	/** Tricycle = 05 */
	public static final String LBR_VETYPE_Tricycle = "05";
	/** Automobile = 06 */
	public static final String LBR_VETYPE_Automobile = "06";
	/** Micro bus = 07 */
	public static final String LBR_VETYPE_MicroBus = "07";
	/** Bus = 08 */
	public static final String LBR_VETYPE_Bus = "08";
	/** Tram = 09 */
	public static final String LBR_VETYPE_Tram = "09";
	/** Trailer = 10 */
	public static final String LBR_VETYPE_Trailer = "10";
	/** Semi-Trailer = 11 */
	public static final String LBR_VETYPE_Semi_Trailer = "11";
	/** Trolley = 12 */
	public static final String LBR_VETYPE_Trolley = "12";
	/** Van = 13 */
	public static final String LBR_VETYPE_Van = "13";
	/** Truck = 14 */
	public static final String LBR_VETYPE_Truck = "14";
	/** Wagon = 15 */
	public static final String LBR_VETYPE_Wagon = "15";
	/** Hand Car = 16 */
	public static final String LBR_VETYPE_HandCar = "16";
	/** Tractor Truck = 17 */
	public static final String LBR_VETYPE_TractorTruck = "17";
	/** Wheel Tractor = 18 */
	public static final String LBR_VETYPE_WheelTractor = "18";
	/** Crawler Tractor = 19 */
	public static final String LBR_VETYPE_CrawlerTractor = "19";
	/** Mixed Tractor = 20 */
	public static final String LBR_VETYPE_MixedTractor = "20";
	/** Quadricycle = 21 */
	public static final String LBR_VETYPE_Quadricycle = "21";
	/** Chassis/Platform = 22 */
	public static final String LBR_VETYPE_ChassisPlatform = "22";
	/** Pickup Truck = 23 */
	public static final String LBR_VETYPE_PickupTruck = "23";
	/** Side-Car = 24 */
	public static final String LBR_VETYPE_Side_Car = "24";
	/** Utility Car = 25 */
	public static final String LBR_VETYPE_UtilityCar = "25";
	/** Motor-Home = 26 */
	public static final String LBR_VETYPE_Motor_Home = "26";
	/** Set Vehicle Type.
		@param LBR_VeType Vehicle Type	  */
	public void setLBR_VeType (String LBR_VeType)
	{

		set_Value (COLUMNNAME_LBR_VeType, LBR_VeType);
	}

	/** Get Vehicle Type.
		@return Vehicle Type	  */
	public String getLBR_VeType () 
	{
		return (String)get_Value(COLUMNNAME_LBR_VeType);
	}

	/** LBR_VeVIN AD_Reference_ID=1120273 */
	public static final int LBR_VEVIN_AD_Reference_ID=1120273;
	/** Remarked = R */
	public static final String LBR_VEVIN_Remarked = "R";
	/** Normal = N */
	public static final String LBR_VEVIN_Normal = "N";
	/** Set VIN.
		@param LBR_VeVIN VIN	  */
	public void setLBR_VeVIN (String LBR_VeVIN)
	{

		set_Value (COLUMNNAME_LBR_VeVIN, LBR_VeVIN);
	}

	/** Get VIN.
		@return VIN	  */
	public String getLBR_VeVIN () 
	{
		return (String)get_Value(COLUMNNAME_LBR_VeVIN);
	}

	/** Set Wheel Base.
		@param LBR_VeWheelBase Wheel Base	  */
	public void setLBR_VeWheelBase (BigDecimal LBR_VeWheelBase)
	{
		set_Value (COLUMNNAME_LBR_VeWheelBase, LBR_VeWheelBase);
	}

	/** Get Wheel Base.
		@return Wheel Base	  */
	public BigDecimal getLBR_VeWheelBase () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_VeWheelBase);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Year Model.
		@param LBR_VeYearModel Year Model	  */
	public void setLBR_VeYearModel (String LBR_VeYearModel)
	{
		set_Value (COLUMNNAME_LBR_VeYearModel, LBR_VeYearModel);
	}

	/** Get Year Model.
		@return Year Model	  */
	public String getLBR_VeYearModel () 
	{
		return (String)get_Value(COLUMNNAME_LBR_VeYearModel);
	}

	/** Set Year Production.
		@param LBR_VeYearProduction Year Production	  */
	public void setLBR_VeYearProduction (String LBR_VeYearProduction)
	{
		set_Value (COLUMNNAME_LBR_VeYearProduction, LBR_VeYearProduction);
	}

	/** Get Year Production.
		@return Year Production	  */
	public String getLBR_VeYearProduction () 
	{
		return (String)get_Value(COLUMNNAME_LBR_VeYearProduction);
	}

	/** Set Lot No.
		@param Lot 
		Lot number (alphanumeric)
	  */
	public void setLot (String Lot)
	{
		set_Value (COLUMNNAME_Lot, Lot);
	}

	/** Get Lot No.
		@return Lot number (alphanumeric)
	  */
	public String getLot () 
	{
		return (String)get_Value(COLUMNNAME_Lot);
	}

	public I_M_AttributeSetInstance getM_AttributeSetInstance() throws RuntimeException
    {
		return (I_M_AttributeSetInstance)MTable.get(getCtx(), I_M_AttributeSetInstance.Table_Name)
			.getPO(getM_AttributeSetInstance_ID(), get_TrxName());	}

	/** Set Attribute Set Instance.
		@param M_AttributeSetInstance_ID 
		Product Attribute Set Instance
	  */
	public void setM_AttributeSetInstance_ID (int M_AttributeSetInstance_ID)
	{
		if (M_AttributeSetInstance_ID < 0) 
			set_Value (COLUMNNAME_M_AttributeSetInstance_ID, null);
		else 
			set_Value (COLUMNNAME_M_AttributeSetInstance_ID, Integer.valueOf(M_AttributeSetInstance_ID));
	}

	/** Get Attribute Set Instance.
		@return Product Attribute Set Instance
	  */
	public int getM_AttributeSetInstance_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_AttributeSetInstance_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Quantity.
		@param Qty 
		Quantity
	  */
	public void setQty (BigDecimal Qty)
	{
		set_Value (COLUMNNAME_Qty, Qty);
	}

	/** Get Quantity.
		@return Quantity
	  */
	public BigDecimal getQty () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Qty);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}