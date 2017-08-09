package org.adempierelbr.process;

import java.io.File;
import java.util.StringTokenizer;
import java.util.logging.Level;

import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.nfse.INFSe;
import org.adempierelbr.nfse.NFSeUtil;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.TextUtil;
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
	
	/**	EMail				*/
	private String p_EMail = null;
	
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
			else if (name.equals(MUser.COLUMNNAME_EMail))
				p_EMail = (String) para[i].getParameter();
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
		return sendEmailNFe (nf, p_EMail, true);
	}	//	doIt
	
	/**
	 * 	Método para enviar e-mail da NF-e
	 * 
	 * @param nf
	 * @param force
	 * @return
	 */
	public static String sendEmailNFe (MLBRNotaFiscal nf, boolean force)
	{
		return sendEmailNFe (nf, null, force);
	}	//	sendEmailNFe
	
	/**
	 * 	Método para enviar e-mail da NF-e
	 * 
	 * @param nf
	 * @return
	 */
	public static String sendEmailNFe (MLBRNotaFiscal nf, String toEMails, boolean force)
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
		
		boolean isProductNFe = TextUtil.match(nf.getlbr_NFModel(), 
				MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalEletrônica,
				MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalDeConsumidorEletrônica);
		
		if (nf.getlbr_NFeProt() == null || nf.getlbr_NFeProt().length() <= 1
				|| (isProductNFe && (!TextUtil.match (nf.getlbr_NFeStatus(), MLBRNotaFiscal.LBR_NFESTATUS_100_AutorizadoOUsoDaNF_E,
							MLBRNotaFiscal.LBR_NFESTATUS_101_CancelamentoDeNF_EHomologado,
							MLBRNotaFiscal.LBR_NFESTATUS_110_UsoDenegado,
							MLBRNotaFiscal.LBR_NFESTATUS_135_EventoRegistradoEVinculadoANF_E,
							MLBRNotaFiscal.LBR_NFESTATUS_302_RejeiçãoIrregularidadeFiscalDoDestinatário,
							MLBRNotaFiscal.LBR_NFESTATUS_999_RejeiçãoErroNãoCatalogadoInformarAMensagemDeErroCapturadoNoTratamentoDaExceção))))
		{
			log.warning("NF-e não foi autorizada");
			return "NF-e não foi autorizada";
		}
		
		if (nf.isLBR_EMailSent() && !force)
		{
			log.warning("E-Mail já enviado");
			return "E-Mail já enviado";
		}
		
		//	Get e-mail from business partner
		if (toEMails == null || toEMails.trim().isEmpty() || toEMails.indexOf('@') == -1)
		{
			MBPartner bp = new MBPartner (Env.getCtx(), nf.getC_BPartner_ID(), nf.get_TrxName());
			toEMails = bp.get_ValueAsString("lbr_EMailNFe");
		}
		
		if (isProductNFe && nf.getM_Shipper_ID() > 0)
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
		
		// Definir Endereço de Email para receber todas as NFs Autorizadas no Adempiere
		String nfbyEmailto = MSysConfig.getValue("LBR_SEND_NF_BY_EMAIL_TO", "", Env.getAD_Client_ID(Env.getCtx()));
		
		if (!"".equals(nfbyEmailto))
		{
			toEMails += ";" + nfbyEmailto;
		}
		
		if (toEMails == null || toEMails.indexOf('@') == -1)
		{
			log.warning("E-mail para recepção de NF-e inválido");
			return "@Error@ E-mail para recepção de NF-e inválido";
		}
		else
			toEMails = toEMails.replace(",", ";");
		//
		String emailMsgTag = null;
		
		if (isProductNFe)
			emailMsgTag = MSysConfig.getValue ("LBR_CUSTOM_NFE_EMAIL_MESSAGE", "LBR_EMailNFe", nf.getAD_Client_ID());
		else
			emailMsgTag = MSysConfig.getValue ("LBR_CUSTOM_NFSE_EMAIL_MESSAGE", "LBR_EMailNFSe", nf.getAD_Client_ID());
		
		String message = Env.parseVariable (Msg.getMsg(Env.getCtx(), emailMsgTag), nf, nf.get_TrxName(), false);
		String subject = null;
		
		if (isProductNFe)
			subject = "Nota Fiscal Eletr\u00F4nica - Chave " + nf.getlbr_NFeID();
		else
			subject = "Nota Fiscal de Servi\u00E7os Eletr\u00F4nica - " + nf.getlbr_NFENo();
		
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
		String replyTo = null;
		if (oi.getLBR_ContatoNFe_ID() > 0)
		{

			MUser user = new MUser (nf.getCtx(), oi.getLBR_ContatoNFe_ID(), null);
			
			//	O e-mail configurado na organização deve conter os dados de usuário/senha
			if (user.isCanSendEMail())
				from = user;
			
			//	Caso não esteja configurado, o envio é feito pelo cadastro da empresa, 
			//		com o Reply-To para o endereço configurado
			else if (user.getEMail() != null)
				replyTo = user.getEMail(); 
		}
		
		EMail mail = client.createEMail (from, client.getRequestEMail(), subject,  message, true);

		if (mail == null)
		{
			log.severe("E-mail para envio da NF-e não está configurado corretamenete, verifique usuário/senha no contato do envio");
			return "E-mail para envio da NF-e não está configurado corretamenete, verifique usuário/senha no contato do envio";
		}
		
		//	Ask for Delivery Notification
		mail.setDeliveryNotification(true);
		
		//	Responder para
		if (replyTo != null)
			mail.setReplyTo(replyTo);
		
		if (isProductNFe)
		{
			MAttachmentEntry entryXML = null;
			for (MAttachmentEntry entry : nf.getAttachment(true).getEntries())
			{
				if (entry.getName().endsWith ("dst.xml"))
					entryXML = entry;
			}
			
			mail.addAttachment (NFeUtil.getAttachmentEntryFile (entryXML));
			
			//	DANFE
			File danfe = nf.createPDF();
			if (danfe != null)
				mail.addAttachment(danfe);
		}
		else
		{
			INFSe iNFSe = NFSeUtil.get (nf);
			mail.addAttachment (iNFSe.getPDF (nf));
		}
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
		else
			return "@Error@ " + mail.getSentMsg();
		//
		return "@Success@";
	}	//	sendEmailNFe
}	//	ProcEMailNFe
