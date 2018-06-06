package org.adempierelbr.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.compiere.util.DB;
import org.compiere.util.Msg;

public class MLBRNFLineMA extends X_LBR_NFLineMA
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = 5756020518483727188L;

	private static final String MATCH_TRACKING 	= "R";
	private static final String MATCH_MEDICINE 	= "01";
	private static final String MATCH_FUEL 		= "02";
	private static final String MATCH_VEHICLE 	= "03";
	private static final String MATCH_GUN 		= "04";
	private static final String MATCH_PAPER 		= "05";
	
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
}	//	MLBRNFLineMA
