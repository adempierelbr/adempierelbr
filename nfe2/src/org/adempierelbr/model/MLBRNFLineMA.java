package org.adempierelbr.model;

import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_FuelANPCode;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_FuelANPDescription;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_FuelCODIF;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_FuelGLPDerivative;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_FuelGásImported;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_FuelGásInterior;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_FuelStartAmount;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_GunGunBarrelSerial;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_GunGunSerial;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_GunGunType;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_MedicineANVISACode;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_MedicineMaxPrice;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_PaperRECOPI;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_TrackingDueDate;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_TrackingLotNumber;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_TrackingProductionDate;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_VehicleChassis;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_VehicleColorCode;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_VehicleColorCodeDENATRAN;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_VehicleColorDescription;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_VehicleCylinder;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_VehicleEngineNumber;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_VehicleEnginePowerCV;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_VehicleFuelTyE;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_VehicleMaxCapacity;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_VehicleModelNumber;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_VehicleOperationTipe;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_VehiclePaintType;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_VehicleRestriction;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_VehicleSerialNumber;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_VehicleTractionCapacity;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_VehicleVehicleCondition;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_VehicleVehicleKind;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_VehicleVehicleType;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_VehicleVehicleVIN;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_VehicleWheelBase;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_VehicleYearModel;
import static org.adempierelbr.wrapper.I_W_M_Attribute.LBR_XMLMAPPING_VehicleYearProduction;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;

import org.adempiere.model.POWrapper;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_M_Attribute;
import org.compiere.model.MAttribute;
import org.compiere.model.MAttributeInstance;
import org.compiere.model.MAttributeSetInstance;
import org.compiere.util.DB;
import org.compiere.util.Msg;

public class MLBRNFLineMA extends X_LBR_NFLineMA
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = 5756020518483727188L;

	static final String MATCH_TRACKING 	= "R";
	static final String MATCH_MEDICINE 	= "01";
	static final String MATCH_FUEL 		= "02";
	static final String MATCH_VEHICLE 	= "03";
	static final String MATCH_GUN 		= "04";
	static final String MATCH_PAPER 		= "05";
	
	public MLBRNFLineMA(Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRNFLineMA

	public MLBRNFLineMA (Properties ctx, int LBR_NFLineMA_ID, String trxName)
	{
		super (ctx, LBR_NFLineMA_ID, trxName);
	}	//	MLBRNFLineMA
	
	@Override
	protected boolean beforeSave (boolean newRecord)
	{
		if (getLBR_NotaFiscalLine_ID() < 1)
		{
			log.saveError("FillMandatory", Msg.getElement (getCtx(), "LBR_NotaFiscalLine_ID"));
			return false;
		}
		
		String attributeType = getLBR_NotaFiscalLine().getLBR_AttributeType();
		if (attributeType == null || attributeType.isEmpty())
		{
			log.saveError("FillMandatory", Msg.getElement (getCtx(), "LBR_AttributeType"));
			return false;
		}
		
		if (newRecord && !LBR_ATTRIBUTETYPE_Tracking.equals(getLBR_AttributeType()) 
					&& (attributeType.endsWith(MATCH_MEDICINE)	//	Medicamento 
					|| attributeType.endsWith(MATCH_FUEL) 		//	Combustível
					|| attributeType.endsWith(MATCH_VEHICLE)		//	Veículo
					|| attributeType.endsWith(MATCH_PAPER)))		//	Papel Imune
		{
			String sql = "SELECT COUNT(*) FROM LBR_NFLineMA WHERE LBR_AttributeType<>'R00' AND LBR_NotaFiscalLine_ID=? AND LBR_NFLineMA_ID<>?";
			int qty = DB.getSQLValue (get_TrxName(), sql, getLBR_NotaFiscalLine_ID(), getLBR_NFLineMA_ID());
			//
			if (qty > 0)
			{
				log.saveError ("Error", "Somente um registro de atributos é aceito para este produto");
				return false;
			}
		}
		//	Valida os dados do rastreamento / detalhamento
		validate();
		//
		return true;
	}	//	beforeSave
	
	/**
	 * 	Validates the Document
	 */
	private void validate ()
	{
		//	Start as false
		boolean trackingOK = false;

		//	In case of track only, ignore detail validation, so starts as true
		boolean detailOK = getLBR_AttributeType().equals(LBR_ATTRIBUTETYPE_Tracking);
		
		/**
		 * 	Tracking
		 */
		if (getLBR_AttributeType().startsWith (MATCH_TRACKING)
				&& !getLBR_AttributeType().endsWith(MATCH_MEDICINE)
				&& !getLBR_AttributeType().endsWith(MATCH_FUEL)
				&& !getLBR_AttributeType().endsWith(MATCH_PAPER))
		{
			if (getLot() != null && !getLot().isEmpty()
					&& getQty() != null && getQty().signum() == 1
					&& getLBR_ProductionDate() != null
					&& getDueDate() != null)
				trackingOK = true;
		}
		
		/**
		 *	No tracking requested
		 */
		else
			trackingOK = true;
		
		/**
		 * 	Medicine
		 */
		if (getLBR_AttributeType().endsWith (MATCH_MEDICINE))
		{
			if (getLBR_ANVISACode() != null && !getLBR_ANVISACode().isEmpty()
					&& getLBR_MaxPrice() != null && getLBR_MaxPrice().signum() == 1)
				detailOK = true;
		}
		
		/**
		 * 	Fuel
		 */
		else if (getLBR_AttributeType().endsWith (MATCH_FUEL))
		{
			if (getLBR_ANPCode() != null && !getLBR_ANPCode().isEmpty()
					&& getLBR_ANPDesc() != null && !getLBR_ANPDesc().isEmpty()
					&& getLBR_CODIF() != null && !getLBR_CODIF().isEmpty())
				detailOK = true;
		}
		
		/**
		 * 	Vehicle
		 */
		else if (getLBR_AttributeType().endsWith (MATCH_VEHICLE))
		{
			if (getLBR_VeOperType() != null && !getLBR_VeOperType().isEmpty()
					&& getLBR_VeChassis() != null && !getLBR_VeChassis().isEmpty()
					&& getLBR_VeColorCode() != null && !getLBR_VeColorCode().isEmpty()
					&& getLBR_VeColorDesc() != null && !getLBR_VeColorDesc().isEmpty()
					&& getLBR_VePower() != null && getLBR_VePower().signum() == 1
					&& getLBR_VeCylinder() != null && getLBR_VeCylinder().signum() == 1
					&& getLBR_VeSerial() != null && !getLBR_VeSerial().isEmpty()
					&& getLBR_VeTpFuel() != null && !getLBR_VeTpFuel().isEmpty()
					&& getLBR_VeEngineNo() != null && !getLBR_VeEngineNo().isEmpty()
					&& getLBR_VeTractionCap() != null && getLBR_VeTractionCap().signum() == 1
					&& getLBR_VeWheelBase() != null && getLBR_VeWheelBase().signum() == 1
					&& getLBR_VeYearModel() != null && !getLBR_VeYearModel().isEmpty()
					&& getLBR_VeYearProduction() != null && !getLBR_VeYearProduction().isEmpty()
					&& getLBR_VeTpPaint() != null && !getLBR_VeTpPaint().isEmpty()
					&& getLBR_VeType() != null && !getLBR_VeType().isEmpty()
					&& getLBR_VeKind() != null && !getLBR_VeKind().isEmpty()
					&& getLBR_VeVIN() != null && !getLBR_VeVIN().isEmpty()
					&& getLBR_VeCondition() != null && !getLBR_VeCondition().isEmpty()
					&& getLBR_VeBrandCode() != null && !getLBR_VeBrandCode().isEmpty()
					&& getLBR_VeColorDENAT() != null && !getLBR_VeColorDENAT().isEmpty()
					&& getLBR_VeMaxCapacity() > 0
					&& getLBR_VeRestriction() != null && !getLBR_VeRestriction().isEmpty())
				detailOK = true;
		}
		
		/**
		 * 	Gun
		 */
		else if (getLBR_AttributeType().endsWith (MATCH_GUN))
		{
			if (getLBR_GunType() != null && !getLBR_GunType().isEmpty()
					&& getLBR_GunSerial() != null && !getLBR_GunSerial().isEmpty()
					&& getLBR_GunBarrel() != null && !getLBR_GunBarrel().isEmpty())
				detailOK = true;
		}
		
		/**
		 * 	Paper
		 */
		else if (getLBR_AttributeType().endsWith (MATCH_PAPER))
		{
			if (getLBR_RECOPI() != null && !getLBR_RECOPI().isEmpty())
				detailOK = true;
		}
		
		// Both should be valid
		setIsValid (detailOK && trackingOK);
	}	//	validate
	
	/**
	 * 		
	 * 	@param asi
	 * 	@param instanceAS
	 */
	public void setASI (MAttributeSetInstance asi, boolean instanceAS)
	{
		//	Instance Attributes
		if (instanceAS)
		{
			String lot = asi.getLot();
			String serNo = asi.getSerNo();
			String attributeType = getLBR_AttributeType();
			Timestamp guaranteeDate = asi.getGuaranteeDate();
			//
			if (lot != null && !lot.isEmpty())
				setLot(lot);
			if (serNo != null && !serNo.isEmpty())
			{
				if (attributeType.endsWith(MATCH_GUN))
					setLBR_GunSerial(serNo);
				else if (attributeType.endsWith(MATCH_VEHICLE))
					setLBR_VeSerial(serNo);
			}
			if (guaranteeDate != null)
				setDueDate(guaranteeDate);
		}
		
		//	Scan all attributes
		for (MAttribute attribute : asi.getMAttributeSet().getMAttributes (instanceAS))
		{
			MAttributeInstance mai = attribute.getMAttributeInstance (getM_AttributeSetInstance_ID());
			if (mai != null && mai.getValue() != null)
			{
				I_W_M_Attribute maW = POWrapper.create(new MAttribute (mai.getCtx(), mai.getM_Attribute_ID(),  mai.get_TrxName()), I_W_M_Attribute.class);
				if (maW.getLBR_XMLMapping() == null || maW.getLBR_XMLMapping().isEmpty())
					continue;
				
				//	Process Attributes
				process (maW.getLBR_XMLMapping(), mai);
			}
		}
	}	//	setASI
	
	/**
	 * 	Process Attributes
	 * 
	 * @param attributeMapping
	 * @param mai
	 */
	private void process (String attributeMapping, MAttributeInstance mai)
	{
		//		Value of Attribute
		String value = mai.getValue();
		BigDecimal valueBD = mai.getValueNumber();
		Timestamp valueTS = TextUtil.stringToTime (value, "yyyy-MM-dd");
		
		switch (attributeMapping)
		{
			case LBR_XMLMAPPING_TrackingProductionDate :
				setLBR_ProductionDate (valueTS);
				break;
			case LBR_XMLMAPPING_TrackingDueDate :
				setDueDate (valueTS);
				break;
			case LBR_XMLMAPPING_TrackingLotNumber :
				setLot (value);
				break;
			case LBR_XMLMAPPING_MedicineANVISACode :
				setLBR_ANVISACode (value);
				break;
			case LBR_XMLMAPPING_MedicineMaxPrice :
				setLBR_MaxPrice (valueBD);
				break;
			case LBR_XMLMAPPING_PaperRECOPI :
				setLBR_RECOPI (value);
				break;
			case LBR_XMLMAPPING_VehicleChassis :
				setLBR_VeChassis (value);
				break;
			case LBR_XMLMAPPING_VehicleColorCode :
				setLBR_VeColorCode (value);
				break;
			case LBR_XMLMAPPING_VehicleColorCodeDENATRAN :
				setLBR_VeColorDENAT (value);
				break;
			case LBR_XMLMAPPING_VehicleColorDescription :
				setLBR_VeColorDesc (value);
				break;
			case LBR_XMLMAPPING_VehicleCylinder :
				setLBR_VeCylinder (valueBD);
				break;
			case LBR_XMLMAPPING_VehicleEngineNumber :
				setLBR_VeEngineNo (value);
				break;
			case LBR_XMLMAPPING_VehicleEnginePowerCV :
				setLBR_VePower (valueBD);
				break;
			case LBR_XMLMAPPING_VehicleFuelTyE :
				setLBR_VeTpFuel (value);
				break;
			case LBR_XMLMAPPING_VehicleMaxCapacity :
				setLBR_VeMaxCapacity (valueBD.intValue());
				break;
			case LBR_XMLMAPPING_VehicleModelNumber :
				setLBR_VeBrandCode (value);
				break;
			case LBR_XMLMAPPING_VehicleOperationTipe :
				setLBR_VeOperType (value);
				break;
			case LBR_XMLMAPPING_VehiclePaintType :
				setLBR_VeTpPaint (value);
				break;
			case LBR_XMLMAPPING_VehicleRestriction :
				setLBR_VeRestriction (value);
				break;
			case LBR_XMLMAPPING_VehicleSerialNumber :
				setLBR_VeSerial (value);
				break;
			case LBR_XMLMAPPING_VehicleTractionCapacity :
				setLBR_VeTractionCap (valueBD);
				break;
			case LBR_XMLMAPPING_VehicleVehicleCondition :
				setLBR_VeCondition (value);
				break;
			case LBR_XMLMAPPING_VehicleVehicleKind :
				setLBR_VeKind (value);
				break;
			case LBR_XMLMAPPING_VehicleVehicleType :
				setLBR_VeType (value);
				break;
			case LBR_XMLMAPPING_VehicleVehicleVIN :
				setLBR_VeVIN (value);
				break;
			case LBR_XMLMAPPING_VehicleWheelBase :
				setLBR_VeWheelBase (valueBD);
				break;
			case LBR_XMLMAPPING_VehicleYearModel :
				setLBR_VeYearModel (value);
				break;
			case LBR_XMLMAPPING_VehicleYearProduction :
				setLBR_VeYearProduction (value);
				break;
			case LBR_XMLMAPPING_FuelANPCode :
				setLBR_ANPCode (value);
				break;
			case LBR_XMLMAPPING_FuelANPDescription :
				setLBR_ANPDesc (value);
				break;
			case LBR_XMLMAPPING_FuelCODIF :
				setLBR_CODIF (value);
				break;
			case LBR_XMLMAPPING_FuelGásImported :
				setLBR_PercGasI (valueBD);
				break;
			case LBR_XMLMAPPING_FuelGásInterior :
				setLBR_PercGasN (valueBD);
				break;
			case LBR_XMLMAPPING_FuelGLPDerivative :
				setLBR_PercGLP (valueBD);
				break;
			case LBR_XMLMAPPING_FuelStartAmount :
				setLBR_StartAmt (valueBD);
				break;
			case LBR_XMLMAPPING_GunGunBarrelSerial :
				setLBR_GunBarrel (value);
				break;
			case LBR_XMLMAPPING_GunGunSerial :
				setLBR_GunSerial (value);
				break;
			case LBR_XMLMAPPING_GunGunType :
				setLBR_GunType (value);
				break;
			default :
				break;
		}
	}	//	process
}	//	MLBRNFLineMA
