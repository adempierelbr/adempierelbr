package org.adempierelbr.process;

import java.math.BigDecimal;
import java.util.StringTokenizer;
import java.util.logging.Level;

import org.adempierelbr.model.MNotaFiscal;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.POLBR;
import org.compiere.model.MBPartner;
import org.compiere.model.MClient;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.EMail;
import org.compiere.util.Env;

/**
 * 	Processo para enviar a NF-e para o e-mail do Cliente
 * 
 * @author Ricardo Santana (Kenos, www.kenos.com.br)
 * @version $Id: ProcEMailNFe.java, v1.0 2010/08/02 10:46:41 AM, ralexsander Exp $
 */
public class ProcEMailNFe extends SvrProcess 
{
	/** Nota Fiscal			*/
	private static Integer p_LBR_NotaFiscal_ID = 0;
	
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
		MNotaFiscal nf = new MNotaFiscal (Env.getCtx(), p_LBR_NotaFiscal_ID, get_TrxName());
		//
		return sendEmailNFe (nf, true);	//	TODO: Permitir o re-enviado se explícito nos parâmetros
	}	//	doIt
	
	/**
	 * 	Método para enviar e-mail da NF-e
	 * 
	 * @param nf
	 * @return
	 */
	public static String sendEmailNFe (MNotaFiscal nf, boolean force)
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
			log.severe("NF-e não foi autorizada");
			return "NF-e não foi autorizada";
		}
		
		if (POLBR.get_ValueAsBoolean(nf.get_Value("lbr_EMailSent"), false) && !force)
		{
			log.severe("E-Mail já enviado");
			return "E-Mail já enviado";
		}
		
		MBPartner bp = new MBPartner (Env.getCtx(), nf.getC_BPartner_ID(), nf.get_TrxName());
		String toEMails = bp.get_ValueAsString("lbr_EMailNFe");
		
		if (toEMails == null || toEMails.indexOf('@') == -1)
		{
			log.severe("E-mail para recepção de NF-e inválido");
			return "E-mail para recepção de NF-e inválido";
		}
		else
			toEMails = toEMails.replace(",", ";");
		//
		String message = "Prezado cliente,<br><br>Você está recebendo a Nota Fiscal Eletrônica número " + nf.getDocumentNo() + 
			", série 0 de " + nf.getlbr_OrgName() + ", no valor de R$ " + nf.getGrandTotal().setScale(2, BigDecimal.ROUND_HALF_UP).toString().replace(".", ",") + 
			". Além disso, junto com a mercadoria seguirá o DANFE (Documento Auxiliar da Nota Fiscal Eletrônica), " +
			"impresso em papel que acompanha o transporte das mesmas.<br><br>Anexo à este e-mail você está recebendo " +
			"também o arquivo XML da Nota Fiscal Eletrônica. Este arquivo deve ser armazenado eletronicamente por sua " +
			"empresa pelo prazo de 05 (cinco) anos, conforme previsto na legislação tributária (Art. 173 do Código Tributário " +
			"Nacional e § 4º da Lei 5.172 de 25/10/1966).<br><br>O DANFE em papel pode ser arquivado para apresentação ao fisco " +
			"quando solicitado. Todavia, se sua empresa também for emitente de NF-e, o arquivamento eletrônico do XML de seus " +
			"fornecedores é obrigatório, sendo passível de fiscalização.<br><br>Para se certificar que esta NF-e é válida, queira " +
			"por favor consultar sua autenticidade no site nacional do projeto NF-e (www.nfe.fazenda.gov.br), utilizando a chave " +
			"de acesso contida no DANFE.<br><br>Atenciosamente,<br>" + nf.getlbr_OrgName() + ".";
		//
		String subject = "Nota Fiscal Eletronica, no. " + nf.getDocumentNo();
		//
		MClient client = MClient.get(Env.getCtx());
		//
		EMail mail = client.createEMail(null, client.getRequestEMail(), subject,  message, true);
		mail.addAttachment(NFeUtil.getAttachmentEntryFile(nf.getAttachment(true).getEntry(0)));
		//
		StringTokenizer st = new StringTokenizer(toEMails, ";");
		while (st.hasMoreTokens())
		{
			String toEMail = st.nextToken();
			if (toEMail == null)
				continue;
			//
			toEMail = toEMail.trim();
			if (toEMail.length() == 0)
				continue;
			//
			mail.addTo(toEMail);
		}
		//
		if (mail.send().equals(EMail.SENT_OK))
		{
			nf.set_CustomColumn("lbr_EMailSent", true);
			nf.save();
		}
		//
		return "NF-e enviada por E-mail com sucesso";
	}	//	sendEmailNFe
}	//	ProcEMailNFe
