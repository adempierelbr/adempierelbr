/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.adempierelbr.util;

import java.util.List;
import java.util.Properties;

import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRTaxDefinition;
import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.adempierelbr.wrapper.I_W_C_BPartner_Location;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MLocation;
import org.compiere.model.MRegion;
import org.compiere.model.MSysConfig;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.model.X_C_City;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *		Utility class for ADempiereLBR BPartner
 *
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: BPartnerUtil.java, v1.0 2009/12/18 10:23:29 PM, mgrigioni Exp $
 */
public abstract class BPartnerUtil
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(BPartnerUtil.class);

	public static final int    BRASIL = AdempiereLBR.BRASIL;
	public static final String EXTCOD = "9999999";
	public static final String EXTREG = "EX";
	public static final String EXTMUN = "EXTERIOR";

	
	/**
	 * 	Retorna se o PN é Pessoa Física ou Pessoa Jurídica
	 * 
	 * @param bp Business Partner
	 * @return PF, PJ or null
	 * @deprecated use {@link I_W_C_BPartner#getlbr_BPTypeBR()}
	 */
	@Deprecated 
	public static String getBPTypeBR (MBPartner bp)
	{
		if (bp == null)
			return null;
		//
		return bp.get_ValueAsString("lbr_BPTypeBR");
	}	//	getBPTypeBR
	
	/**
	 * 		Retorna o Cadastro Nacional de Pessoa Jurídica (CNPJ) do Parceiro
	 * 		
	 * 	@param bpLocation
	 * 	@return CNPJ
	 */
	public static String getCNPJ_CPF (MBPartnerLocation bpLocation)
	{
		if (bpLocation == null)
			return null;
		//
		I_W_C_BPartner_Location bpLW = POWrapper.create(bpLocation, I_W_C_BPartner_Location.class);
		I_W_C_BPartner bp = POWrapper.create(new MBPartner (Env.getCtx(), bpLocation.getC_BPartner_ID(), null), I_W_C_BPartner.class);
		String lbr_BPTypeBR = bp.getlbr_BPTypeBR();
		//
		if (lbr_BPTypeBR != null 
				&& !lbr_BPTypeBR.equals(""))
		{
			/**
			 * 	Pessoa física sempre é definido no Parceiro
			 */
			if (lbr_BPTypeBR.equalsIgnoreCase("PF"))
				return bp.getlbr_CPF();
			
			/**
			 * 	Parceiro com CNPJ definido na localização
			 */
			else if(!MSysConfig.getBooleanValue("LBR_USE_UNIFIED_BP", true))
				return bpLW.getlbr_CNPJ();
			
			/**
			 * 	Parceiro com CNPJ definido no cadastro de Parceiro 
			 */
			else
				return bp.getlbr_CNPJ();
		}
		//
		return null;
	}	//	getCNPJ

	/**
	 * 		Retorna a Inscrição Estadual (IE) do Parceiro
	 * 		
	 * 	@param bpLocation
	 * 	@return IE
	 */
	public static String getIndIE (MBPartnerLocation bpLocation)
	{
		if (bpLocation == null)
			return null;
		//
		I_W_C_BPartner_Location bpLW = POWrapper.create(bpLocation, I_W_C_BPartner_Location.class);
		I_W_C_BPartner bp = POWrapper.create(new MBPartner (Env.getCtx(), bpLocation.getC_BPartner_ID(), null), I_W_C_BPartner.class);
		String lbr_BPTypeBR = bp.getlbr_BPTypeBR();
		//
		if (lbr_BPTypeBR == null || lbr_BPTypeBR.isEmpty())
			return null;
		
		/**
		 * 	Parceiro com IE definido no cadastro de Parceiro 
		 */
		if (MSysConfig.getBooleanValue("LBR_USE_UNIFIED_BP", true))
			return bp.getLBR_IndIEDest();
		
		/**
		 * 	Parceiro com IE definido na Localização 
		 */
		else 
			return bpLW.getLBR_IndIEDest();
	}	//	getIndIE
	
	/**
	 * 		Retorna a Inscrição Estadual (IE) do Parceiro
	 * 		
	 * 	@param bpLocation
	 * 	@return IE
	 */
	public static String getIE (MBPartnerLocation bpLocation)
	{
		if (bpLocation == null)
			return null;
		//
		I_W_C_BPartner_Location bpLW = POWrapper.create(bpLocation, I_W_C_BPartner_Location.class);
		I_W_C_BPartner bp = POWrapper.create(new MBPartner (Env.getCtx(), bpLocation.getC_BPartner_ID(), null), I_W_C_BPartner.class);
		String lbr_BPTypeBR = bp.getlbr_BPTypeBR();
		//
		if (lbr_BPTypeBR != null 
				&& !lbr_BPTypeBR.equals(""))
		{
			/**
			 * 	Parceiro com IE definido no cadastro de Parceiro 
			 */
			if (MSysConfig.getBooleanValue("LBR_USE_UNIFIED_BP", true))
			{
				if (I_W_C_BPartner.LBR_INDIEDEST_2_ContribuinteDeICMS_Isento.equals(bp.getLBR_IndIEDest()))
					return "ISENTO";
				else if (I_W_C_BPartner.LBR_INDIEDEST_9_NãoContribuinteDeICMS.equals(bp.getLBR_IndIEDest()))
					return "ISENTO-NÃO-CONTRIB";
				else
					return bp.getlbr_IE();
			}
			
			/**
			 * 	Parceiro com IE definido na Localização 
			 */
			else
			{
				if (I_W_C_BPartner.LBR_INDIEDEST_2_ContribuinteDeICMS_Isento.equals(bpLW.getLBR_IndIEDest()))
					return "ISENTO";
				else if (I_W_C_BPartner.LBR_INDIEDEST_9_NãoContribuinteDeICMS.equals(bpLW.getLBR_IndIEDest()))
					return "ISENTO-NÃO-CONTRIB";
				else
					return bpLW.getlbr_IE();
			}
		}
		//
		return null;
	}	//	getIE

	/**
	 * 	Get UF
	 * 	
	 * 	@param ctx
	 * 	@param C_BPartner_Location_ID
	 * 	@return UF
	 */
	public static String getUF (Properties ctx, int C_BPartner_Location_ID)
	{
		MBPartnerLocation bpLocation = new MBPartnerLocation(ctx,C_BPartner_Location_ID,null);
		return getUF (bpLocation);
	}	//	getUF

	/**
	 * 	Get UF
	 * 	
	 * 	@param bpLocation
	 * 	@return UF
	 */
	public static String getUF (MBPartnerLocation bpLocation)
	{
		MLocation location = new MLocation(bpLocation.getCtx(),bpLocation.getC_Location_ID(),null);
		if (location.getC_Country_ID() != BRASIL)
			return EXTREG;

		MRegion region     = new MRegion(bpLocation.getCtx(),location.getC_Region_ID(),null);
		return region.getName();
	}	//	getUF

	/**
	 * 		Retorna o código da Superintendência da Zona 
	 * 			Franca de Manaus (SUFRAMA) do Parceiro
	 * 		
	 * 	@param bpLocation
	 * 	@return SUFRAMA
	 */
	public static String getSUFRAMA (MBPartnerLocation bpLocation)
	{
		if (bpLocation == null)
			return null;
		//
		I_W_C_BPartner bp = POWrapper.create(new MBPartner (Env.getCtx(), bpLocation.getC_BPartner_ID(), null), I_W_C_BPartner.class);
		String lbr_BPTypeBR = bp.getlbr_BPTypeBR();
		//
		if (lbr_BPTypeBR != null && !lbr_BPTypeBR.isEmpty())
		{
			/**
			 * 	Parceiro com IE definido no cadastro de Parceiro 
			 */
			if (MSysConfig.getBooleanValue("LBR_USE_UNIFIED_BP", false))
				return bp.getlbr_Suframa();
			
			/**
			 * 	Parceiro com IE definido na Localização 
			 */
			else	//	FIXME: Incluir campo na Localização
				return bp.getlbr_Suframa();
		}
		//
		return null;
	}	//	getSUFRAMA

	/**
	 * 		Get 2-digit region code
	 * 
	 * 	@param location
	 * 	@return
	 */
	public static String getRegionCode (int C_Region_ID)
	{
		String cityCode = DB.getSQLValueString (null, "SELECT MAX(LBR_CityCode) FROM C_City WHERE LBR_CityCode IS NOT NULL AND C_Region_ID=?", C_Region_ID);
		if (cityCode.length() < 2)
			return "";
		//
		return cityCode.substring(0, 2);
	} 	//	getRegionCode
	
	/**
	 * 		Get 2-digit region code
	 * 
	 * 	@param location
	 * 	@return
	 */
	public static String getRegionCode (MLocation location)
	{
		String cityCode = BPartnerUtil.getCityCode(location);
		if (cityCode.length() < 2)
			return "";
		//
		return cityCode.substring(0, 2);
	} 	//	getRegionCode

	/**
	 * 		Get 2-digit region code
	 * 
	 * 	@param location
	 * 	@return
	 */
	public static String getRegionCode (String regionName, String cityName)
	{
		String cityCode = getCityCode (regionName, cityName);
		
		//	Invalid City Code
		if (cityCode == null
				|| cityCode.length() < 2)
			return "";
		
		return cityCode.substring (0, 2);
	}	//	getRegionCode

	/**
	 * 		Get 2-digit region code
	 * 
	 * 	@param location
	 * 	@return
	 */
	public static String getCityCode (String regionName, String cityName)
	{
		int C_Region_ID = DB.getSQLValue (null, "SELECT C_Region_ID FROM C_Region WHERE Name=? AND C_Country_ID=139", regionName);
		
		//	Invalid Region
		if (C_Region_ID < 1)
			return "";
		
		X_C_City city = getX_C_City (Env.getCtx(), cityName, C_Region_ID, null);
		
		//	Invalid City
		if (city == null )
			return "";
		
		String cityCode = city.get_ValueAsString ("lbr_CityCode");
		
		//	Invalid City Code
		if (cityCode == null
				|| cityCode.length() < 2)
			return "";
		
		//	City Code
		return cityCode;
	} 	//	getCityCode

	/**
	 * 	Get City Code
	 * 
	 * 	@param location
	 * 	@return
	 */
	public static String getCityCode (MLocation location)
	{
		if (location != null && location.getC_Country_ID() != BRASIL)
			return EXTCOD;

		X_C_City city = getX_C_City(location.getCtx(),location,location.get_TrxName());
		if (city == null)
			return "";

		return city.get_ValueAsString("lbr_CityCode");
	} 	//	getCityCode

	/**
	 * 	Get X_C_City model
	 * @param ctx
	 * @param location
	 * @param trxName
	 * @return
	 */
	public static X_C_City getX_C_City (Properties ctx, MLocation location, String trxName)
	{
		return getX_C_City (ctx,location,null,0,trxName);
	}	//	getX_C_City

	/**
	 * 	Get X_C_City model
	 * @param ctx
	 * @param cityName
	 * @param C_Region_ID
	 * @param trxName
	 * @return
	 */
	public static X_C_City getX_C_City (Properties ctx, String cityName, int C_Region_ID, String trxName)
	{
		return getX_C_City (ctx, null, cityName, C_Region_ID, trxName);
	}	//	getX_C_City

	/**
	 * getX_C_City
	 * @param ctx
	 * @param location
	 * @param cityName
	 * @param regionName
	 * @param trxName
	 * @return Object X_C_City
	 */
	private static X_C_City getX_C_City (Properties ctx, MLocation location, String cityName, int C_Region_ID, String trxName)
	{
		//	City
		X_C_City city = null;

		if (location == null || location.getC_City_ID() == 0)
		{
			String whereClause = "Name=? " +
			                     "AND IsActive='Y' " +
			                     "AND (AD_Client_ID=0 OR AD_Client_ID=?) " +
			                     "AND C_Region_ID=?";
			
			MTable table = MTable.get(ctx, X_C_City.Table_Name);
			Query query = new Query(ctx, table, whereClause, trxName);
			
			if (location != null)
				query.setParameters(new Object[] { location.getCity(), Env.getAD_Client_ID(ctx), location.getC_Region_ID() });
			
			else
				query.setParameters(new Object[] { cityName, Env.getAD_Client_ID(ctx), C_Region_ID });

			List<X_C_City> listCity = query.list();
			
			//	OK: One city found
			if (listCity.size() == 1)
				city = listCity.get(0);
			
			//	Errors
			else if (listCity.size() > 1)
				log.warning ("More than one code found for City: " + location.getCity() + ", Region:" + location.getRegionName());
			else
				log.warning ("Code not found for City: " + cityName + ", Region:" + C_Region_ID + ", Location:" + location);
		}
		else
			city = new X_C_City (ctx, location.getC_City_ID(), trxName);

		return city;
	}	//	getX_C_City
	
	/**
	 * 	Get Brazilian Region (Sul, Sudeste, Norte, Nordeste and Centro-Oeste)
	 * 		based on Region (UF)
	 * 	@param C_Region_ID
	 * 	@return	BR Region
	 */
	public static String getBRRegion (int C_Region_ID)
	{
		if (C_Region_ID <= 0)
			return null;
		
		//	Sul
		if (TextUtil.match (C_Region_ID, 456,	//	Paraná
				461,							//	Rio Grande do Sul
				464))							//	Santa Catarina
			return MLBRTaxDefinition.LBR_REGIONFROM_Sul;
		
		//	Sudeste
		if (TextUtil.match (C_Region_ID, 448,	//	Espírito Santo
				453,							//	Minas Gerais
				459,							//	Rio de Janeiro
				465))							//	São Paulo
			return MLBRTaxDefinition.LBR_REGIONFROM_Sudeste;
		
		//	 Norte
		if (TextUtil.match (C_Region_ID, 441,	//	Acre
				444, 							//	Amapá
				443, 							//	Amazonas
				454,  							//	Pará
				462,  							//	Rondônia
				463,  							//	Roraima
				467)) 							//	Tocantins
			return MLBRTaxDefinition.LBR_REGIONFROM_Norte;
		
		//	Nordeste
		if (TextUtil.match (C_Region_ID, 442, 	//	Alagoas
				445,							//	Bahia
				446, 							//	Ceará
				450, 							//	Maranhão
				455, 							//	Paraíba
				457, 							//	Pernambuco
				458, 							//	Piauí
				460, 							//	Rio Grande do Norte
				466))							//	Sergipe
			return MLBRTaxDefinition.LBR_REGIONFROM_Nordeste;
		
		//	Centro-Oeste
		if (TextUtil.match (C_Region_ID, 447, 	//	Distrito Federal
				449, 							//	Goiás
				452, 							//	Mato Grosso
				451))							//	Mato Grosso do Sul
			return MLBRTaxDefinition.LBR_REGIONFROM_Centro_Oeste;
		
		return null;
	}	//	getBRRegion
} 	//	BPartnerUtil
