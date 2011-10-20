package org.adempierelbr.process;

import java.sql.Timestamp;
import java.util.logging.Level;

import org.adempierelbr.nfe.NFeInutilizacao;
import org.adempierelbr.nfe.beans.InutilizacaoNF;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MDocType;
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

/**
 * 		Inutiliza uma NF ou uma Sequência de NF
 * 
 *  @author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ProcInutNF.java, v1.0 2010/12/01 3:45:29 PM, ralexsander Exp $
 */
public class ProcInutNF extends SvrProcess 
{
	/** Nota Fiscal               	*/
	private static Integer 	p_AD_Org_ID 	= 0;
	
	/** Tipo de Documento         	*/
	private static Integer 	p_C_DocType_ID 	= 0;
	
	/**	Sequência de NF			  	*/
	private static Integer 	p_DocumentNo 		= 0;
	private static Integer 	p_DocumentNo_To 	= 0;
	
	/**	Justificativa			  	*/
	private static String 	p_Just 			= "";
	
	/**	Data do Cancelamento	  	*/
	private static Timestamp p_DateDoc;
	
	/**	Logger						*/
	private static CLogger log = CLogger.getCLogger(ProcInutNF.class);

	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare ()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = para[i].getParameterAsInt();
			else if (name.equals("C_DocType_ID"))
				p_C_DocType_ID = para[i].getParameterAsInt();
			else if (name.equals("DocumentNo"))
			{
				p_DocumentNo = para[i].getParameterAsInt();
				p_DocumentNo_To = para[i].getParameter_ToAsInt();
			}
			else if (name.equals("DateDoc"))
				p_DateDoc = (Timestamp) para[i].getParameter();
			else if (name.equals("lbr_MotivoCancel"))
				p_Just = (String) para[i].getParameter();
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 * 	DoIt
	 */
	protected String doIt() throws Exception
	{
		if (p_AD_Org_ID <= 0)
			throw new Exception ("@Mandatory@ @AD_Org_ID@");
		if (p_C_DocType_ID <= 0)
			throw new Exception ("@Mandatory@ @C_DocType_ID@");
		if (p_DocumentNo == null || p_DocumentNo.intValue() <= 0)
			throw new Exception ("@Mandatory@ @DocumentNo@");
		if (p_DocumentNo_To == null || p_DocumentNo_To.intValue() <= 0)
			p_DocumentNo_To = p_DocumentNo;
		if (p_DocumentNo_To < p_DocumentNo)
			throw new Exception ("@Mandatory@ @DocumentNo@");
		//
		MOrgInfo oi = MOrgInfo.get(Env.getCtx(), p_AD_Org_ID, get_TrxName());
		MDocType dt = new MDocType(Env.getCtx(), p_C_DocType_ID, get_TrxName());
		//
		String regionCode = BPartnerUtil.getRegionCode(new MLocation(getCtx(), oi.getC_Location_ID(), get_TrxName()));
		if (regionCode.isEmpty())
			return "UF Inválida";
		//
		String serie = dt.get_ValueAsString("lbr_NFSerie");
		if (serie == null || serie.trim().isEmpty())
			serie = "0";
		
		InutilizacaoNF iNF = new InutilizacaoNF (oi, regionCode);
		iNF.setMod(dt.get_ValueAsString("lbr_NFModel"));
		iNF.setSerie(serie);
		iNF.setnNFIni(p_DocumentNo.toString());
		iNF.setnNFFin(p_DocumentNo_To.toString());
		iNF.setxJust(p_Just);
		iNF.setAno(TextUtil.timeToString(p_DateDoc, "yy"));
		//
		if (!iNF.isValid())
		{
			log.severe(iNF.getMsg());
			return "NF não pode ser inutilizada. Verificar log. " + iNF.getMsg();
		}
		//
		return NFeInutilizacao.invalidateNF(oi, iNF);
	}	//	doIt
}	//	ProcInutNF
