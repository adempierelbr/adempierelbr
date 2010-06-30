package org.adempierelbr.process;

import java.sql.Timestamp;
import java.util.Date;
import java.util.logging.Level;

import org.adempierelbr.model.MNFeLot;
import org.adempierelbr.model.MNotaFiscal;
import org.adempierelbr.nfe.NFeXMLGenerator;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MDocType;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

public class ProcGenerateNFEXml extends SvrProcess 
{
	/** Nota Fiscal               */
	private static Integer p_LBR_NotaFiscal_ID = 0;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ProcGenerateNFEXml.class);

	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals("LBR_NotaFiscal_ID"))
				p_LBR_NotaFiscal_ID = para[i].getParameterAsInt();
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
		p_LBR_NotaFiscal_ID = getRecord_ID();
	}	//	prepare

	/**
	 * 	DoIt
	 */
	protected String doIt() throws Exception 
	{
		MNotaFiscal nf = new MNotaFiscal(Env.getCtx(), p_LBR_NotaFiscal_ID, null);
		//
		if (nf.getC_DocTypeTarget_ID() <= 0)
			return "Tipo de documento inválido";
		//
		MDocType dt = new MDocType (Env.getCtx(), nf.getC_DocTypeTarget_ID(), null);
		String nfModel = (String) dt.get_Value("lbr_NFModel");
		//
		if (nfModel == null)
			return "Não há modelo para esta NF-e.";
		//
		else if(nfModel.startsWith("55"))	//	Estadual
		{
			//
			if (nf.get_Value("lbr_NFeProt") != null)
			{
				return "NF já processada.";
			}
			if (nf.get_Value("LBR_NFeLot_ID") != null)
			{
				MNFeLot nfLot = new MNFeLot (Env.getCtx(), (Integer) nf.get_Value("LBR_NFeLot_ID"), null);
				if (!nfLot.isProcessed())
					return "Lote da NF não foi processado ainda.";
				//	Apaga o XML antigo
				Timestamp now = new Timestamp(new Date().getTime());
		        String nfeDesc = "["+TextUtil.timeToString(now, "yyyy-MM-dd HH:mm:ss")+"] XML antigo deletado\n";
		        //
		        if (nf.getAttachment(true) != null)
		        	nf.getAttachment().delete(true);
		        //
				nfeDesc += "["+TextUtil.timeToString(now, "yyyy-MM-dd HH:mm:ss")+"] NF removida do lote anterior\n";
				nf.set_CustomColumn("LBR_NFeLot_ID", null);
				//
				if (nf.get_Value("lbr_NFeDesc") == null)
					nf.set_CustomColumn("lbr_NFeDesc", nfeDesc);
				else
					nf.set_CustomColumn("lbr_NFeDesc", nf.get_Value("lbr_NFeDesc") + nfeDesc);
			}
			//
			if (!nf.isProcessed())
				nf.setProcessed(true);
			nf.save();
			//
			String result = NFeXMLGenerator.geraCorpoNFe(p_LBR_NotaFiscal_ID);
			if (!result.equals(""))
				return result;
		}
		else if (nfModel.startsWith("RPS"))
		{
			//	TODO
		}
		else 
			return "Modelo de NF-e desconhecido.";
		//
		return "Processo finalizado";
	}	//	doIt
}	//	ProcGenerateNFEXml
