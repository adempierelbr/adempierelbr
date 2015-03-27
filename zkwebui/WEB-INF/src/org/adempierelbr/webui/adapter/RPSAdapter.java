package org.adempierelbr.webui.adapter;

import java.io.InputStream;
import java.util.HashMap;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.nfse.INFSe;
import org.adempierelbr.nfse.sp.NFSeImpl;
import org.compiere.model.MOrgInfo;
import org.compiere.util.CLogger;
import org.zkoss.util.media.AMedia;
import org.zkoss.zul.Filedownload;

/**
 * 		Usado para processar o RPS já que os métodos Web ficam
 * 			inacessíveis pelo processo.
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: RPSAdapter.java, v1.0 2012/10/18 6:54:22 PM, ralexsander Exp $
 */
public class RPSAdapter
{
	/**
	 * 	Constructor
	 * 	@param fileName
	 * 	@param rps
	 */
	public RPSAdapter (String fileName, StringBuffer rps)
	{
		AMedia media = new AMedia (fileName, "txt", "charset=ISO8859_1", rps.toString());
		Filedownload.save(media);
	}	//	RPSAdapter
	
	/**
	 * 	Constructor
	 * 	@param fileName
	 * 	@param rps
	 */
	public RPSAdapter (String fileName, InputStream is)
	{
		AMedia media = new AMedia (fileName, "txt", "charset=ISO8859_1", is);
		Filedownload.save (media);
	}	//	RPSAdapter
	
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
}	//	RPSAdapter