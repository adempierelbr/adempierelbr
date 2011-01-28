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

import org.compiere.model.I_C_BPartner_Location;
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
 *	BPartnerUtil
 *
 *	Utility class for ADempiereLBR BPartner
 *
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: BPartnerUtil.java, 18/12/2009 09:43:00 mgrigioni
 */
public abstract class BPartnerUtil{

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(BPartnerUtil.class);

	public static final int    BRASIL = AdempiereLBR.BRASIL;
	public static final String EXTCOD = "9999999";
	public static final String EXTREG = "EX";
	public static final String EXTMUN = "EXTERIOR";

	public static String getCNPJ(Properties ctx, int C_BPartner_ID, int C_BPartner_Location_ID){
		MBPartner bpartner = new MBPartner(ctx,C_BPartner_ID,null);
		MBPartnerLocation bpLocation = new MBPartnerLocation(ctx,C_BPartner_Location_ID,null);
		return getCNPJ(bpartner,bpLocation);
	} //getCNPJ
	
	/**
	 * 	Retorna se o PN é Pessoa Física ou Pessoa Jurídica
	 * 
	 * @param bp Business Partner
	 * @return PF, PJ or null
	 */
	public static String getBPTypeBR (MBPartner bp)
	{
		if (bp == null)
			return null;
		//
		return bp.get_ValueAsString("lbr_BPTypeBR");
	}	//	getBPTypeBR

	/**
	 * Utilizar o método que incluí o parametro do MBPLocation
	 * @param bpartner
	 * @return
	 */
	private static String getCNPJ(MBPartner bpartner){

		String  CNPJ = null;

		if (bpartner == null)
			return CNPJ;

		String BPTypeBR = bpartner.get_ValueAsString("lbr_BPTypeBR");

		if (!(BPTypeBR == null || BPTypeBR.equals("")))
		{
			if (BPTypeBR.equalsIgnoreCase("PJ"))
			{
				CNPJ = bpartner.get_ValueAsString("lbr_CNPJ");   //CNPJ
			}
			else if (BPTypeBR.equalsIgnoreCase("PF"))
			{
				CNPJ = bpartner.get_ValueAsString("lbr_CPF");   //CNPJ = CPF
			}
		}

		if (CNPJ != null && CNPJ.trim().equals(""))
			CNPJ = null;

		return CNPJ;
	}//getCNPJ

	private static String getCNPJ(MBPartnerLocation bpLocation)
	{
		String  CNPJ = null;

		if (bpLocation == null)
			return CNPJ;

		MBPartner bp = new MBPartner(Env.getCtx(), bpLocation.getC_BPartner_ID(), null);

		String BPTypeBR = bp.get_ValueAsString("lbr_BPTypeBR");

		if (BPTypeBR != null && !BPTypeBR.equals(""))
		{
			if (BPTypeBR.equalsIgnoreCase("PJ"))
			{
				CNPJ = bpLocation.get_ValueAsString("lbr_CNPJ");   //CNPJ
			}
			else if (BPTypeBR.equalsIgnoreCase("PF"))
			{
				CNPJ = bp.get_ValueAsString("lbr_CPF");   //CNPJ = CPF
			}
		}

		if (CNPJ != null && CNPJ.trim().equals(""))
			CNPJ = null;

		return CNPJ;
	}//getCNPJ


	public static String getCNPJ(MBPartner bpartner, MBPartnerLocation bpLocation)
	{
		String  CNPJ = null;
		String BPTypeBR = bpartner.get_ValueAsString("lbr_BPTypeBR");

		if (BPTypeBR != null && !BPTypeBR.equals(""))
		{
			if(!MSysConfig.getBooleanValue("LBR_USE_UNIFIED_BP",false) || BPTypeBR.equalsIgnoreCase("PF"))
			{
				CNPJ = getCNPJ(bpartner);
			}
			else
			{
				CNPJ = getCNPJ(bpLocation);
			}
		}

		return CNPJ;
	}//getCNPJ

	/**
	 *
	 * @param ctx
	 * @param C_BPartner_ID
	 * @param C_BPartner_Location_ID
	 * @return Inscrição estadual
	 */
	public static String getIE(Properties ctx, int C_BPartner_ID, int C_BPartner_Location_ID){
		MBPartner bpartner = new MBPartner(ctx,C_BPartner_ID,null);
		MBPartnerLocation bpLocation = new MBPartnerLocation(ctx,C_BPartner_Location_ID,null);
		return getIE(bpartner,bpLocation);
	} //getCNPJ


	/**
	 * Utilizar o método que possuí o parâmetro MBPartnerLocation
	 * @param bpartner
	 * @return Inscrição estadual
	 */
	private static String getIE(MBPartner bpartner){

		String  IE   = null;

		if (bpartner == null)
			return IE;

		String BPTypeBR = bpartner.get_ValueAsString("lbr_BPTypeBR");

		if (!(BPTypeBR == null || BPTypeBR.equals(""))){

				boolean isIEExempt = bpartner.get_ValueAsBoolean("lbr_IsIEExempt");

				if (isIEExempt){
					IE = "ISENTO";
				}
				else{
					IE = bpartner.get_ValueAsString("lbr_IE");
				}

		}

		if (IE == null || IE.equals(""))
			IE = "ISENTO";

		return IE;
	} //getIE

	private static String getIE(MBPartnerLocation bpLocation){

		String  IE   = null;

		if (bpLocation == null)
			return IE;

		MBPartner bp = new MBPartner(Env.getCtx(), bpLocation.getC_BPartner_ID(), null);

		String BPTypeBR = bp.get_ValueAsString("lbr_BPTypeBR");

		if (BPTypeBR != null && !BPTypeBR.equals(""))
		{
			boolean isIEExempt = bpLocation.get_ValueAsBoolean("lbr_IsIEExempt");

			if (isIEExempt){
				IE = "ISENTO";
			}
			else{
				IE = bpLocation.get_ValueAsString("lbr_IE");
			}

		}

		if (IE == null || IE.equals(""))
			IE = "ISENTO";

		return IE;
	} //getIE

	public static String getIE(MBPartner bpartner, MBPartnerLocation bpLocation)
	{
		String  IE   = null;
		MBPartner bp = null;
		if (bpLocation == null)
			bp = bpartner;
		else
			bp = new MBPartner(Env.getCtx(), bpLocation.getC_BPartner_ID(), null);

		String BPTypeBR = bp.get_ValueAsString("lbr_BPTypeBR");

		if (BPTypeBR != null && !BPTypeBR.equals(""))
		{
			if(!MSysConfig.getBooleanValue("LBR_USE_UNIFIED_BP",false) || BPTypeBR.equalsIgnoreCase("PF"))
			{
				IE = getIE(bpartner);
			}
			else
			{
				IE = getIE(bpLocation);
			}
		}

		return IE;
	} //getIE

	public static String getUF(Properties ctx, int C_BPartner_Location_ID){
		MBPartnerLocation bpLocation = new MBPartnerLocation(ctx,C_BPartner_Location_ID,null);
		return getUF(bpLocation);
	} //getUF

	public static String getUF(MBPartnerLocation bpLocation){

		MLocation location = new MLocation(bpLocation.getCtx(),bpLocation.getC_Location_ID(),null);
		if (location.getC_Country_ID() != BRASIL)
			return EXTREG;

		MRegion region     = new MRegion(bpLocation.getCtx(),location.getC_Region_ID(),null);
		return region.getName();
	} //getUF

	public static String getSuframa(Properties ctx, int C_BPartner_ID, int C_BPartner_Location_ID){
		MBPartner bpartner = new MBPartner(ctx,C_BPartner_ID,null);
		MBPartnerLocation bpLocation = new MBPartnerLocation(ctx,C_BPartner_Location_ID,null);
		return getSuframa(bpartner,bpLocation);
	} //getSuframa

	/**
	 * Utilizar o método que incluí o parametro do MBPLocation
	 * @param bpartner
	 * @return
	 */
	private static String getSuframa(MBPartner bpartner){

		String  Suframa = null;

		if (bpartner == null)
			return Suframa;

		String BPTypeBR = bpartner.get_ValueAsString("lbr_BPTypeBR");

		if (!(BPTypeBR == null || BPTypeBR.equals("")))
		{
			if (BPTypeBR.equalsIgnoreCase("PJ"))
			{
				Suframa = bpartner.get_ValueAsString("lbr_Suframa");   //Suframa
			}
			else if (BPTypeBR.equalsIgnoreCase("PF"))
			{
				Suframa = null;
			}
		}

		if (Suframa != null && Suframa.trim().equals(""))
			Suframa = null;

		return Suframa;
	}//getSuframa

	private static String getSuframa(MBPartnerLocation bpLocation)
	{
		String  Suframa = null;

		if (bpLocation == null)
			return Suframa;

		MBPartner bp = new MBPartner(Env.getCtx(), bpLocation.getC_BPartner_ID(), null);

		String BPTypeBR = bp.get_ValueAsString("lbr_BPTypeBR");

		if (BPTypeBR != null && !BPTypeBR.equals(""))
		{
			if (BPTypeBR.equalsIgnoreCase("PJ"))
			{
				Suframa = bpLocation.get_ValueAsString("lbr_Suframa");   //SUFRAMA
			}
			else if (BPTypeBR.equalsIgnoreCase("PF"))
			{
				Suframa = null;
			}
		}

		if (Suframa != null && Suframa.trim().equals(""))
			Suframa = null;

		return Suframa;
	}//getSuframa


	public static String getSuframa(MBPartner bpartner, MBPartnerLocation bpLocation)
	{
		String  Suframa = null;
		String BPTypeBR = bpartner.get_ValueAsString("lbr_BPTypeBR");

		if (BPTypeBR != null && !BPTypeBR.equals(""))
		{
			if(!MSysConfig.getBooleanValue("LBR_USE_UNIFIED_BP",false) || BPTypeBR.equalsIgnoreCase("PF"))
			{
				Suframa = getSuframa(bpartner);
			}
			else
			{
				Suframa = getSuframa(bpLocation);
			}
		}

		return Suframa;
	}//getSuframa
	
	public static String getRegionCode(String regionName){
		
		String sql = "SELECT C_Region_ID " +
				     "FROM C_Region " +
				     "WHERE Name = ? AND C_Country_ID = ?";
		
		int C_Region_ID = DB.getSQLValue(null, sql, new Object[]{regionName,BRASIL});
		
		return getRegionCode(C_Region_ID);
	} //getRegionCode
	
	public static String getRegionCode(int C_Region_ID){
		
		String sql = "SELECT lbr_CityCode " +
				     "FROM C_City " +
				     "WHERE C_Region_ID = ?";
		
		String cityCode = DB.getSQLValueString(null, sql, C_Region_ID);
		if (cityCode != null && cityCode.length() > 2)
			return cityCode.substring(0, 2);
		
		return "";
	} //getRegionCode
	
	public static String getRegionCode(I_C_BPartner_Location bpl){
		MLocation loc = new MLocation(Env.getCtx(),bpl.getC_Location_ID(),null);
		return getRegionCode(loc);
	} //getRegionCode
	

	public static String getRegionCode(MLocation location){

		String cityCode = BPartnerUtil.getCityCode(location);
		if (cityCode.length() < 2)
			return "";

		return cityCode.substring(0, 2);
	} //getRegionCode

	public static String getCityCode(MLocation location){

		if (location != null && location.getC_Country_ID() != BRASIL)
			return EXTCOD;

		X_C_City city = getX_C_City(location.getCtx(),location,location.get_TrxName());
		if (city == null)
			return "";

		return city.get_ValueAsString("lbr_CityCode");
	} //getCityCode

	public static X_C_City getX_C_City(Properties ctx, MLocation location, String trxName){
		return getX_C_City(ctx,location,null,0,trxName);
	}

	public static X_C_City getX_C_City(Properties ctx, String cityName, int C_Region_ID, String trxName){
		return getX_C_City(ctx,null,cityName,C_Region_ID,trxName);
	}

	/**
	 * getX_C_City
	 * @param ctx
	 * @param location
	 * @param cityName
	 * @param regionName
	 * @param trxName
	 * @return Object X_C_City
	 */
	private static X_C_City getX_C_City(Properties ctx, MLocation location,
			                           String cityName, int C_Region_ID, String trxName){

		X_C_City city = null;

		if (location == null || location.getC_City_ID() == 0)
		{
			String whereClause = "Name=? " +
			                     "AND IsActive='Y' " +
			                     "AND (AD_Client_ID=0 OR AD_Client_ID=?) " +
			                     "AND C_Region_ID=?";
			MTable table = MTable.get(ctx, X_C_City.Table_Name);
			Query query = new Query(ctx, table, whereClause, trxName);
			if (location != null){
				query.setParameters(new Object[] { location.getCity(), Env.getAD_Client_ID(ctx), location.getC_Region_ID() });
			}
			else{
				query.setParameters(new Object[] { cityName, Env.getAD_Client_ID(ctx), C_Region_ID });
			}

			List<X_C_City> listCity = query.list();
			if (listCity.size() == 1)
				city = listCity.get(0);
			else if (listCity.size() > 1)
				log.warning("More than one code found for City: "+location.getCity()+", Region:"+location.getRegionName());
			else
				log.warning("Code not found for City: "+location.getCity()+", Region:"+location.getRegionName());
		}
		else
			city = new X_C_City(ctx, location.getC_City_ID(), trxName);

		return city;
	} //getX_C_City

} //BPartnerUtil