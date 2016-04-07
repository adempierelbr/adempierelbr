package org.adempierelbr.callout;

import java.math.BigDecimal;
import java.util.Properties;

import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalDocRef;
import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.adempierelbr.wrapper.I_W_C_BPartner_Location;
import org.adempierelbr.wrapper.I_W_C_DocType;
import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MCountry;
import org.compiere.model.MDocType;
import org.compiere.model.MInOut;
import org.compiere.model.MInvoice;
import org.compiere.model.MLocation;
import org.compiere.model.MOrder;
import org.compiere.model.MRegion;
import org.compiere.model.MShipper;
import org.compiere.model.MSysConfig;
import org.compiere.util.Env;

/**
 * 	Callout para facilitar o preenchimento da NF-e
 * 
 * @author Rogério Feitosa (Kenos, www.kenos.com.br)
 * @contributor Ricardo Santana (Kenos, www.kenos.com.br)
 * @version $Id: CalloutNFe.java, v1.0 2015/11/30 11:03:01, rfeitosa Exp $
 */
public class CalloutNFe extends CalloutEngine
{
	/**
	 * 	Preenche o Campo NFeID com o ID da Nota Fiscal Selecionada
	 * 	- Usar o novo método com o nome correto
	 * 
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 */
	@Deprecated
	public String NFeReferenced (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		return refNFe (ctx, WindowNo, mTab, mField, value);
	}	//	NFeReferenced
	
	/**
	 * 	Preenche o Campo NFeID com o ID da Nota Fiscal Selecionada
	 * 
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 */
	public String refNFe (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		// Verificar se o Campo NF-e Referenciada foi preenchido
		if ("".equals(mTab.get_ValueAsString(MLBRNotaFiscalDocRef.COLUMNNAME_LBR_NFeReferenced_ID))
				|| "0".equals(mTab.get_ValueAsString(MLBRNotaFiscalDocRef.COLUMNNAME_LBR_NFeReferenced_ID)))
			return "";
				
		BigDecimal nfeid = new BigDecimal(mTab.get_ValueAsString(MLBRNotaFiscalDocRef.COLUMNNAME_LBR_NFeReferenced_ID));
		
		if (nfeid == null || nfeid.equals(BigDecimal.ZERO))
			return "";
		
		MLBRNotaFiscal nf = new MLBRNotaFiscal(Env.getCtx(), nfeid.intValue(), null);
		
		return mTab.setValue(MLBRNotaFiscalDocRef.COLUMNNAME_lbr_NFeID, nf.getlbr_NFeID());
	}	//	NFeReferenced

	/**
	 * 	Fill NF-e
	 * 	- Usar o novo método com o nome correto
	 *
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 */
	@Deprecated
	public String EventFillNFeID (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		return fillNFeID (ctx, WindowNo, mTab, mField, value);
	}	//	EventFillNFeID
	
	/**
	 * 		Preencher o campo NFeID quando preenchido a NF
	 * 
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 */
	public String fillNFeID (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		//	Preenche o valor da chave da NF-e
		if (mField.getColumnName().equals(MLBRNotaFiscal.COLUMNNAME_LBR_NotaFiscal_ID) && value != null)
		{
			MLBRNotaFiscal nf = new MLBRNotaFiscal (ctx, (Integer) value, null);
			if (nf == null || nf.getlbr_NFeID() == null)
				return "";
			//
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_NFeID, nf.getlbr_NFeID());
		}
		return "";
	}	//	EventFillNFeID

	/**
	 * 	Preencher campos ref. ao Tipo de Documento
	 * 
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 */
	public String docType (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		if (!MLBRNotaFiscal.COLUMNNAME_C_DocTypeTarget_ID.equals(mField.getColumnName()) || value == null)
			return "";
		
		I_W_C_DocType dt = POWrapper.create (new MDocType (ctx, (Integer) value, null), I_W_C_DocType.class);
		
		mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_NFModel, dt.getlbr_NFModel());
		mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_NFSerie, dt.getlbr_NFSerie());
		mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_IsOwnDocument, dt.islbr_IsOwnDocument());
		
		if (dt.getlbr_DANFEFormat() != null)
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_DANFEFormat, dt.getlbr_DANFEFormat());
		
		return "";
	}	//	docType
	
	/**
	 * 	Parceiro de Negócios
	 * 
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 */
	public String bPartner (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		if (!MLBRNotaFiscal.COLUMNNAME_C_BPartner_ID.equals(mField.getColumnName()) || value == null)
			return "";
		
		I_W_C_BPartner bp = POWrapper.create (new MBPartner (ctx, (Integer) value, null), I_W_C_BPartner.class);
		
		mTab.setValue (MLBRNotaFiscal.COLUMNNAME_BPName, bp.getName());
		mTab.setValue (MLBRNotaFiscal.COLUMNNAME_LBR_IndIEDest, bp.getLBR_IndIEDest());
		mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPSuframa, bp.getlbr_Suframa());
		mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPTypeBR, bp.getlbr_BPTypeBR());
		
		if (!MSysConfig.getBooleanValue("LBR_USE_UNIFIED_BP", false))
		{
			if (MLBRNotaFiscal.LBR_BPTYPEBR_PF_Individual.equals(bp.getlbr_BPTypeBR()))
				mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPCNPJ, bp.getlbr_CPF());
			else
				mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPCNPJ, bp.getlbr_CNPJ());
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPIE, bp.getlbr_IE());
		}
		else
		{
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPCNPJ, null);
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPIE, null);
		}
		
		MBPartnerLocation[] locations = ((MBPartner) POWrapper.getPO(bp)).getLocations(true);
		
		if (locations != null && locations.length == 1)
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_C_BPartner_Location_ID, locations[0].getC_BPartner_Location_ID());
		else
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_C_BPartner_Location_ID, null);
		
		return "";
	}	//	docType
	
	/**
	 * 	Localização do PN
	 * 
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 */
	public String bPartnerLocation (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		if (!MLBRNotaFiscal.COLUMNNAME_C_BPartner_Location_ID.equals(mField.getColumnName()))
			return "";
		
		if (value == null)
		{
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPCNPJ, null);
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPIE, null);
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPPhone, null);
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPAddress1, null);
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPAddress2, null);
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPAddress3, null);
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPAddress4, null);
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPCity, null);
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPPostal, null);
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPCountry, null);
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPRegion, null);
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPRegion, null);
			//
			return "";
		}
		
		MBPartnerLocation bpl = new MBPartnerLocation (ctx, (Integer) value, null);
		
		if (MSysConfig.getBooleanValue("LBR_USE_UNIFIED_BP", false))
		{
			I_W_C_BPartner_Location bplW = POWrapper.create(bpl, I_W_C_BPartner_Location.class);
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPCNPJ, bplW.getlbr_CNPJ());
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPIE, bplW.getlbr_IE());
		}

		mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPPhone, bpl.getPhone());
		
		MLocation location = bpl.getLocation (true);
		MCountry country = new MCountry (ctx, location.getC_Country_ID(), null);

		//	Endereço do Destinatário
		mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPAddress1, location.getAddress1());
		mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPAddress2, location.getAddress2());
		mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPAddress3, location.getAddress3());
		mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPAddress4, location.getAddress4());
		mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPCity, location.getCity());
		mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPPostal, location.getPostal());
		mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPCountry, country.getCountryCode());
		mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPRegion, null);

		if (country.get_ID() != MLBRNotaFiscal.BRAZIL)
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPRegion, "EX");
		else
		{
			MRegion region = new MRegion(ctx, location.getC_Region_ID(), null);
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPRegion, region.getName());
		}
		
		return "";
	}	//	docType
	
	/**
	 * 	Transportadora
	 * 
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 */
	public String shipper (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		if (!MLBRNotaFiscal.COLUMNNAME_M_Shipper_ID.equals(mField.getColumnName()) || value == null)
			return "";
		
		MShipper shipper = new MShipper (ctx, (Integer) value, null);
		mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPShipperName, shipper.getName());

		MBPartner transp = new MBPartner(ctx, shipper.getC_BPartner_ID(), null);
		I_W_C_BPartner transpW = POWrapper.create(transp, I_W_C_BPartner.class);
		
		//	Localização Transportadora
		MBPartnerLocation[] transpLocations = transp.getLocations (false);

		if (transpLocations.length > 0)
		{
			MLocation location = new MLocation(ctx, transpLocations[0].getC_Location_ID(), null);
			MCountry country = new MCountry(ctx,location.getC_Country_ID(),null);

			if (!MSysConfig.getBooleanValue("LBR_USE_UNIFIED_BP", true))
			{
				mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPShipperCNPJ, transpW.getlbr_CNPJ());
				mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPShipperIE, transpW.getlbr_IE());
			}
			else
			{
				I_W_C_BPartner_Location bplW = POWrapper.create(transpLocations[0], I_W_C_BPartner_Location.class);
				mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPShipperCNPJ, bplW.getlbr_CNPJ());
				mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPShipperIE, bplW.getlbr_IE());
			}
			
			//	Concatenar o Endereço em uma unica variável
			String address = (location.getAddress1() == null ? "" : location.getAddress1()) + 
							 (location.getAddress2() == null ? "" : ", "  + location.getAddress2()) + 
							 (location.getAddress3() == null ? "" : " - " + location.getAddress3()) + 
							 (location.getAddress4() == null ? "" : " - " + location.getAddress4());
			
			// Rua, Número, Bairro e Complemento e um único campo
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPShipperAddress, address);
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPShipperCity, location.getCity());
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPShipperPostal, location.getPostal());
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPShipperCountry, country.getCountryCode());

			if (country.get_ID() != MLBRNotaFiscal.BRAZIL)
				mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPShipperRegion, "EX");
				
			else
			{
				MRegion region = new MRegion(ctx,location.getC_Region_ID(),null);
				mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPShipperRegion, region.getName());
			}
		}
		return "";
	}	//	docType
	
	/**
	 * 	Fatura
	 * 
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 */
	public String invoice (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		if (!MLBRNotaFiscal.COLUMNNAME_C_Invoice_ID.equals(mField.getColumnName()) || value == null)
			return "";
		
		MInvoice invoice = new MInvoice (ctx, (Integer) value, null);
		mTab.setValue (MLBRNotaFiscal.COLUMNNAME_C_BPartner_ID, invoice.getC_BPartner_ID());
		mTab.setValue (MLBRNotaFiscal.COLUMNNAME_C_BPartner_Location_ID, invoice.getC_BPartner_Location_ID());

		return "";
	}
	
	/**
	 * 	Pedido
	 * 
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 */
	public String order (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		if (!MLBRNotaFiscal.COLUMNNAME_C_Order_ID.equals(mField.getColumnName()) || value == null)
			return "";
		
		MOrder order = new MOrder (ctx, (Integer) value, null);
		mTab.setValue (MLBRNotaFiscal.COLUMNNAME_C_BPartner_ID, order.getC_BPartner_ID());
		mTab.setValue (MLBRNotaFiscal.COLUMNNAME_C_BPartner_Location_ID, order.getC_BPartner_Location_ID());
		
		return "";
	}
	
	/**
	 * 	Remessa
	 * 
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 */
	public String shipment (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		if (!MLBRNotaFiscal.COLUMNNAME_M_InOut_ID.equals(mField.getColumnName()) || value == null)
			return "";
		
		MInOut shipment = new MInOut (ctx, (Integer) value, null);
		mTab.setValue (MLBRNotaFiscal.COLUMNNAME_C_BPartner_ID, shipment.getC_BPartner_ID());
		mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_Ship_Location_ID, shipment.getC_BPartner_Location_ID());
		
		if (shipment.getWeight() != null && shipment.getWeight().signum() == 1)
		{
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_NetWeight, shipment.getWeight());
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_GrossWeight, shipment.getWeight());
		}
		
		if (shipment.getNoPackages() > 0)
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_NoPackages, shipment.getNoPackages());
		
		return "";
	}
	
	/**
	 * 	Entrega
	 * 
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 */
	public String delivery (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		if (!MLBRNotaFiscal.COLUMNNAME_lbr_Ship_Location_ID.equals(mField.getColumnName()) || value == null)
			return "";
		
		MBPartnerLocation bpl = new MBPartnerLocation (ctx, (Integer) value, null);
		
		if (MSysConfig.getBooleanValue("LBR_USE_UNIFIED_BP", false))
		{
			I_W_C_BPartner_Location bplW = POWrapper.create(bpl, I_W_C_BPartner_Location.class);
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPDeliveryCNPJ, bplW.getlbr_CNPJ());
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPDeliveryIE, bplW.getlbr_IE());
		}
		
		MLocation location = bpl.getLocation (true);
		MCountry country = new MCountry (ctx, location.getC_Country_ID(), null);

		//	Endereço do Destinatário
		mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPDeliveryAddress1, location.getAddress1());
		mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPDeliveryAddress2, location.getAddress2());
		mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPDeliveryAddress3, location.getAddress3());
		mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPDeliveryAddress4, location.getAddress4());
		mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPDeliveryCity, location.getCity());
		mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPDeliveryPostal, location.getPostal());
		mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPDeliveryCountry, country.getCountryCode());
		mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPDeliveryRegion, null);

		if (country.get_ID() != MLBRNotaFiscal.BRAZIL)
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPDeliveryRegion, "EX");
		else
		{
			MRegion region = new MRegion(ctx, location.getC_Region_ID(), null);
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_lbr_BPDeliveryRegion, region.getName());
		}
		
		return "";
	}
}	//	CalloutNFe
