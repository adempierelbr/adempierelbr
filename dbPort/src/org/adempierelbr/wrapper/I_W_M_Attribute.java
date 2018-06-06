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

/** Generated Interface for M_Attribute
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_W_M_Attribute extends I_M_Attribute 
{


    /** Column name LBR_XMLMapping */
    public static final String COLUMNNAME_LBR_XMLMapping = "LBR_XMLMapping";

	/** LBR_XMLMapping AD_Reference_ID=1120279 */
	public static final int LBR_XMLMAPPING_AD_Reference_ID=1120279;

	/** Tracking: Lot Number = TR01 */
	public static final String LBR_XMLMAPPING_TrackingLotNumber = "TR01";

	/** Tracking: Production Date = TR02 */
	public static final String LBR_XMLMAPPING_TrackingProductionDate = "TR02";

	/** Tracking: Due Date = TR03 */
	public static final String LBR_XMLMAPPING_TrackingDueDate = "TR03";

	/** Medicine: ANVISA Code = ME01 */
	public static final String LBR_XMLMAPPING_MedicineANVISACode = "ME01";

	/** Medicine: Max Price = ME02 */
	public static final String LBR_XMLMAPPING_MedicineMaxPrice = "ME02";

	/** Fuel: ANP Code = FU01 */
	public static final String LBR_XMLMAPPING_FuelANPCode = "FU01";

	/** Fuel: ANP Description = FU02 */
	public static final String LBR_XMLMAPPING_FuelANPDescription = "FU02";

	/** Fuel: % GLP Derivative = FU03 */
	public static final String LBR_XMLMAPPING_FuelGLPDerivative = "FU03";

	/** Fuel: % Gás Interior = FU04 */
	public static final String LBR_XMLMAPPING_FuelGásInterior = "FU04";

	/** Fuel: % Gás Imported = FU05 */
	public static final String LBR_XMLMAPPING_FuelGásImported = "FU05";

	/** Fuel: Start Amount = FU06 */
	public static final String LBR_XMLMAPPING_FuelStartAmount = "FU06";

	/** Fuel: CODIF = FU07 */
	public static final String LBR_XMLMAPPING_FuelCODIF = "FU07";

	/** Vehicle: Operation Tipe = VE01 */
	public static final String LBR_XMLMAPPING_VehicleOperationTipe = "VE01";

	/** Vehicle: Chassis = VE02 */
	public static final String LBR_XMLMAPPING_VehicleChassis = "VE02";

	/** Vehicle: Color Code = VE03 */
	public static final String LBR_XMLMAPPING_VehicleColorCode = "VE03";

	/** Vehicle: Color Description = VE04 */
	public static final String LBR_XMLMAPPING_VehicleColorDescription = "VE04";

	/** Vehicle: Engine Power (CV) = VE05 */
	public static final String LBR_XMLMAPPING_VehicleEnginePowerCV = "VE05";

	/** Vehicle: Cylinder = VE06 */
	public static final String LBR_XMLMAPPING_VehicleCylinder = "VE06";

	/** Vehicle: Serial Number = VE07 */
	public static final String LBR_XMLMAPPING_VehicleSerialNumber = "VE07";

	/** Vehicle: Fuel Ty[e = VE08 */
	public static final String LBR_XMLMAPPING_VehicleFuelTyE = "VE08";

	/** Vehicle: Engine Number = VE09 */
	public static final String LBR_XMLMAPPING_VehicleEngineNumber = "VE09";

	/** Vehicle: Traction Capacity = VE10 */
	public static final String LBR_XMLMAPPING_VehicleTractionCapacity = "VE10";

	/** Vehicle: Wheel Base = VE11 */
	public static final String LBR_XMLMAPPING_VehicleWheelBase = "VE11";

	/** Vehicle: Year Model = VE12 */
	public static final String LBR_XMLMAPPING_VehicleYearModel = "VE12";

	/** Vehicle: Year Production = VE13 */
	public static final String LBR_XMLMAPPING_VehicleYearProduction = "VE13";

	/** Vehicle: Paint Type = VE14 */
	public static final String LBR_XMLMAPPING_VehiclePaintType = "VE14";

	/** Vehicle: Vehicle Type = VE15 */
	public static final String LBR_XMLMAPPING_VehicleVehicleType = "VE15";

	/** Vehicle: Vehicle Kind = VE16 */
	public static final String LBR_XMLMAPPING_VehicleVehicleKind = "VE16";

	/** Vehicle: Vehicle VIN = VE17 */
	public static final String LBR_XMLMAPPING_VehicleVehicleVIN = "VE17";

	/** Vehicle: Vehicle Condition = VE18 */
	public static final String LBR_XMLMAPPING_VehicleVehicleCondition = "VE18";

	/** Vehicle: Model Number = VE19 */
	public static final String LBR_XMLMAPPING_VehicleModelNumber = "VE19";

	/** Vehicle: Color Code DENATRAN = VE20 */
	public static final String LBR_XMLMAPPING_VehicleColorCodeDENATRAN = "VE20";

	/** Vehicle: Max Capacity = VE21 */
	public static final String LBR_XMLMAPPING_VehicleMaxCapacity = "VE21";

	/** Vehicle: Restriction = VE22 */
	public static final String LBR_XMLMAPPING_VehicleRestriction = "VE22";

	/** Gun: Gun Type = GU01 */
	public static final String LBR_XMLMAPPING_GunGunType = "GU01";

	/** Gun: Gun Serial = GU02 */
	public static final String LBR_XMLMAPPING_GunGunSerial = "GU02";

	/** Gun: Gun Barrel Serial = GU03 */
	public static final String LBR_XMLMAPPING_GunGunBarrelSerial = "GU03";

	/** Paper: RECOPI = PA01 */
	public static final String LBR_XMLMAPPING_PaperRECOPI = "PA01";


	/** Set XML Mapping.
	  * XML Mapping of NF-e
	  */
	public void setLBR_XMLMapping (String LBR_XMLMapping);

	/** Get XML Mapping.
	  * XML Mapping of NF-e
	  */
	public String getLBR_XMLMapping();
}
