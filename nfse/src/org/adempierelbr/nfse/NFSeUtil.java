package org.adempierelbr.nfse;

import java.util.HashMap;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.nfse.sp.NFSeImpl;
import org.adempierelbr.webui.adapter.RPSAdapter;
import org.compiere.model.MOrgInfo;
import org.compiere.util.CLogger;

public class NFSeUtil
{
	/**	Static Logger	*/
	private static CLogger 	s_log = CLogger.getCLogger (RPSAdapter.class);

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
}	//	NFSeUtil