package org.adempierelbr.nfse;

import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.nfse.sp.NFSeImpl;
import org.compiere.model.MOrgInfo;
import org.compiere.model.Query;
import org.compiere.model.X_C_City;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

public class NFSeUtil
{
	/**	Static Logger	*/
	private static CLogger 	s_log = CLogger.getCLogger (NFSeUtil.class);

	/** Registered classes map (AD_Table_ID -> Class) */
	private static HashMap<Integer, Class<? extends INFSe>> s_registeredClasses = null;

	/**
	 * Register custom INFSe* class
	 * @param C_City_ID
	 * @param cl custom class
	 */
	public static final void registerClass (int C_City_ID, Class<? extends INFSe> cl)
	{
		s_registeredClasses.put (C_City_ID, cl);
		s_log.info("Registered C_City_ID=" + C_City_ID + ", Class=" + cl);
	}	//	registerClass
	
	static
	{
		// 	Register defaults:
		s_registeredClasses = new HashMap<Integer, Class<? extends INFSe>>();
		
		//	Prefeitura de SP
		s_registeredClasses.put (NFSeImpl.C_City_ID, NFSeImpl.class);
	}
	

	/**
	 *  Factory - called from APanel
	 *  @param  mTab        Model Tab for the trx
	 *  @return JDialog
	 */
	public static INFSe get (MLBRNotaFiscal nf)
	{
		MOrgInfo oi = MOrgInfo.get (nf.getCtx(), nf.getAD_Org_ID(), nf.get_TrxName());
		int C_City_ID = oi.getC_Location().getC_City_ID();
		//
		return get (C_City_ID);
	}
	
	/**
	 *  Factory - called from APanel
	 *  @param  mTab        Model Tab for the trx
	 *  @return JDialog
	 */
	public static INFSe get (int C_City_ID)
	{
		INFSe retValue = null;
		Class<? extends INFSe> cl = s_registeredClasses.get (C_City_ID);
		if (cl != null)
		{
			try
			{
				java.lang.reflect.Constructor<? extends INFSe> ctor = cl.getConstructor ();
				retValue = ctor.newInstance ();
			}
			catch (Throwable e)
			{
				s_log.log (Level.SEVERE, e.getLocalizedMessage(), e);
				return null;
			}
		}
		if (retValue == null)
		{
			s_log.info("Unsupported C_City_ID=" + C_City_ID);
			return null;
		}
		return retValue;
	}   //  create
	
	/**
	 * Get City
	 * @param citycode
	 * @param regionname
	 * @param cityname
	 * @return
	 */
	public static X_C_City getCity (String citycode, String regionname, String cityname)
	{
		//	Validate Variavel citycode
		if (citycode != null && !"0".equals(citycode))
		{	
			//	Get City Source by City Code
			X_C_City city = new Query(Env.getCtx(), X_C_City.Table_Name, "LBR_CityCode = ?", null)
			.setParameters(citycode)
			.first();
			
			// Return City
			if (city != null)
				return city;
		}
		
		//	Validate Variavel regionname e cityname
		if (regionname == null || cityname == null)
			return null;

		//	Get List of city
		List <X_C_City> citys = new Query(Env.getCtx(), X_C_City.Table_Name, "Name = ?", null)
				.setParameters(cityname)
				.list();
		
		//	Cities
		for (X_C_City c : citys)
		{
			//	Return the City after validate the Region Name
			if (c.getC_Region().getName().equals(regionname))
				return c;
		}
		
		return null;			
	}
	
}	//	NFSeUtil