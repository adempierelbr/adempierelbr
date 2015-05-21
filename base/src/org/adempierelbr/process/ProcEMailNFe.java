package org.adempierelbr.process;

import java.util.StringTokenizer;
import java.util.logging.Level;

import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.compiere.model.MAttachmentEntry;
import org.compiere.model.MBPartner;
import org.compiere.model.MClient;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MShipper;
import org.compiere.model.MSysConfig;
import org.compiere.model.MUser;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.EMail;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * 	Processo para enviar a NF-e para o e-mail do Cliente
 * 
 * @author Ricardo Santana (Kenos, www.kenos.com.br)
 * @version $Id: ProcEMailNFe.java, v1.0 2010/08/02 10:46:41 AM, ralexsander Exp $
 */
public class ProcEMailNFe extends SvrProcess 
{
	/** Nota Fiscal			*/
	private Integer p_LBR_NotaFiscal_ID = 0;
	
	/**	Logger				*/
	private static CLogger log = CLogger.getCLogger(ProcEMailNFe.class);

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
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
		//
		p_LBR_NotaFiscal_ID = getRecord_ID();
	}	//	prepare
	
	/**
	 * 	DoIt
	 */
	protected String doIt() throws Exception 
	{
		if (p_LBR_NotaFiscal_ID <= 0)
			return "NF-e não encontrada.";
		//
		MLBRNotaFiscal nf = new MLBRNotaFiscal (Env.getCtx(), p_LBR_NotaFiscal_ID, get_TrxName());
		//
		return sendEmailNFe (nf, true);	//	TODO: Permitir o re-enviado se explícito nos parâmetros
	}	//	doIt
	
	/**
	 * 	Método para enviar e-mail da NF-e
	 * 
	 * @param nf
	 * @return
	 */
	public static String sendEmailNFe (MLBRNotaFiscal nf, boolean force)
	{
		if (nf == null)
		{
			log.severe("NF-e não encontrada");
			return "NF-e não encontrada";
		}
		
		if (nf.getC_BPartner_ID() <= 0)
		{
			log.severe("NF-e sem parceiro de Negócios");
			return "NF-e sem parceiro de Negócios";
		}
		
		if (nf.getlbr_NFeProt() == null || nf.getlbr_NFeProt().length() <= 1
				|| nf.getlbr_NFeStatus() == null || !nf.getlbr_NFeStatus().equals("100"))
		{
			log.warning("NF-e não foi autorizada");
			return "NF-e não foi autorizada";
		}
		
		if (nf.get_ValueAsBoolean("lbr_EMailSent") && !force)
		{
			log.warning("E-Mail já enviado");
			return "E-Mail já enviado";
		}
		
		MBPartner bp = new MBPartner (Env.getCtx(), nf.getC_BPartner_ID(), nf.get_TrxName());
		String toEMails = bp.get_ValueAsString("lbr_EMailNFe");
		
		if (nf.getM_Shipper_ID() > 0)
		{
			MShipper shipper = new MShipper(nf.getCtx(), nf.getM_Shipper_ID(), null);
			//
			if (shipper.getC_BPartner_ID() > 0)
			{
				MBPartner shipperBP = new MBPartner (Env.getCtx(), shipper.getC_BPartner_ID(), nf.get_TrxName());
				String shipperEMail = shipperBP.get_ValueAsString("lbr_EMailNFe");
				//
				if (shipperEMail != null && shipperEMail.length() > 0)
					if (toEMails == null || toEMails.length() < 1)
						toEMails = shipperEMail;
					else
						toEMails += ";" + shipperEMail;
			}
		}
		
		if (toEMails == null || toEMails.indexOf('@') == -1)
		{
			log.warning("E-mail para recepção de NF-e inválido");
			return "E-mail para recepção de NF-e inválido";
		}
		else
			toEMails = toEMails.replace(",", ";");
		//
		String emailMsgTag = MSysConfig.getValue ("LBR_CUSTOM_NFE_EMAIL_MESSAGE", "LBR_EMailNFe", nf.getAD_Client_ID());
		String message = Env.parseVariable (Msg.getMsg(Env.getCtx(), emailMsgTag), 
				nf, nf.get_TrxName(), false);
		//
		String subject = "Nota Fiscal Eletrônica - Chave " + nf.getlbr_NFeID();
		
		if (message == null || message.length() == 0)
		{
			log.severe("Mensagem do corpo do e-mail não encontrada");
			return "Mensagem do corpo do e-mail não encontrada";
		}
		
		//	Empresa
		MClient client = MClient.get (nf.getCtx());

		//	Organização
		I_W_AD_OrgInfo oi = POWrapper.create (MOrgInfo.get (nf.getCtx(), nf.getAD_Org_ID(), null), I_W_AD_OrgInfo.class);
		
		//	E-mail
		//	Caso o contato não esteja configurado na Organização
		//		o XML é enviado pelo e-mail da empresa
		MUser from = null;
		if (oi.getLBR_ContatoNFe_ID() > 0)
			from = new MUser (nf.getCtx(), oi.getLBR_ContatoNFe_ID(), null);
		
		EMail mail = client.createEMail (from, client.getRequestEMail(), subject,  message, true);
		
		MAttachmentEntry entryXML = null;
		for (MAttachmentEntry entry : nf.getAttachment(true).getEntries())
		{
			if (entry.getName().endsWith ("dst.xml"))
				entryXML = entry;
		}
		
		mail.addAttachment (NFeUtil.getAttachmentEntryFile (entryXML));
		//
		StringTokenizer st = new StringTokenizer(toEMails, ";");
		while (st.hasMoreTokens())
		{
			String toEMail = st.nextToken();
			if (toEMail == null)
				continue;
			//
			toEMail = toEMail.trim();
			if (toEMail.length() == 0 || toEMail.indexOf("@") == -1)
				continue;
			//
			mail.addCc(toEMail);
		}
		//
		if (mail.send().equals(EMail.SENT_OK))
		{
			nf.setLBR_EMailSent (true);
			nf.save();
		}
		//
		return "NF-e enviada por E-mail com sucesso";
	}	//	sendEmailNFe
}	//	ProcEMailNFe
