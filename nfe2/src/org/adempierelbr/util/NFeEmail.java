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

import java.io.File;
import java.util.List;
import java.util.Properties;

import org.adempierelbr.model.MLBRNotaFiscal;
import org.compiere.model.MAttachment;
import org.compiere.model.MClient;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MUser;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

/**
 * NFeEmail
 * 
 * Utility class to send NFe files to customer
 * 
 * BF 3048696 - Alteração para padrão texto e adicionada nova mensagem para
 * cancelamento
 * 
 * @author Mario Grigioni
 * @contributor Pablo Boff Pigozzo 18/08/2010 pablobp
 * @version $Id: NFeEmail, 28/07/2010 08:48:00 mgrigioni
 */
public abstract class NFeEmail {

	/** Logger */
	private static CLogger log = CLogger.getCLogger(NFeEmail.class);

	/**
	 * Send Mail
	 * 
	 * @param MLBRNotaFiscal
	 *            nf
	 * @return E-mail enviado
	 * */
	public static boolean sendMail(final MLBRNotaFiscal nf) {

		final Properties ctx = nf.getCtx();
		final String trx = nf.get_TrxName();

		try {
			// Prepare sending Notice/Mail
			final MClient client = MClient.get(ctx);
			MOrgInfo orgInfo = MOrgInfo.get(ctx, nf.getAD_Org_ID(), trx);

			final MUser from = new MUser(ctx,
					orgInfo.get_ValueAsInt("lbr_ContatoNFe"), trx);

			// Check from email user
			if (from.getEMailUser() == null && from.getEMailUserPW() == null)
				throw new IllegalArgumentException(
						"Problemas com o Contato de emissão da NFe da Organização");

			// NFe Contacts
			final List<MUser> contacts = AdempiereLBR.getContacts(
					nf.getC_BPartner_ID(),
					"lbr_IsNFeContact = 'Y' AND EMail IS NOT NULL");

			// User who processed
			final MUser actual = new MUser(ctx, Env.getAD_User_ID(ctx), trx);
			if (!(actual.getEMail() == null
					|| actual.getEMail().indexOf('@') == -1 || actual
					.getEMail().contains(" ")))
				contacts.add(actual);

			if (contacts.size() > 0) {

				final String subject = "NFe - " + nf.getlbr_NFeID();
				final String message = getMessage(nf.getDocumentNo(),
						nf.getlbr_OrgName(), nf.getlbr_CNPJ(),
						nf.isCancelled(), nf.getlbr_NFeID());

				MAttachment attachment = nf.getAttachment(true);
				final File nfeXML = NFeUtil.getAttachmentEntryFile(attachment
						.getEntry(0));

				new Thread() {
					public void run() {
						try {
							for (final MUser to : contacts) {
								String mailto = to.getEMail();
								if (mailto == null || mailto.indexOf('@') == -1
										|| mailto.contains(" "))
									throw new IllegalArgumentException(
											"Problems with Client Email");

								for (int i = 0; i < 30; i++) {
									if (client.sendEMail(from, to, subject,
											message, nfeXML, false))
										break;

									Thread.sleep(30000); // wait 30s and try
															// again
								}

								Thread.sleep(5000); // wait 5s to send to next
													// contact
							} // all NFeContacts
						} catch (InterruptedException e) {
							e.printStackTrace();
						}
					}
				}.start();
			} // contacts > 0

		} catch (Exception e) {
			log.severe(e.toString());
			return false;
		}

		return true;
	} // sendProductMail

	private static final String getMessage(String documentNo,
			String companyName, String CNPJ, boolean isCancelled, String NFe_ID) {
		if (isCancelled) {
			StringBuilder messageCancel = new StringBuilder("");
			messageCancel
					.append("Prezado Cliente,\n\n")
					.append("Você está recebendo o XML referente ao CANCELAMENTO da Nota Fiscal Eletrônica número [")
					.append(documentNo)
					.append("] da [")
					.append(companyName)
					.append("], CNPJ [")
					.append(CNPJ)
					.append("].\n\n")
					.append("A validade e autenticidade deste documento eletrônico pode ser verificada no site nacional do projeto (http://www.nfe.fazenda.gov.br/portal/), através da ")
					.append("Chave de Acesso [" + NFe_ID + "].\n\n--\n")
					.append("ATENCAO: Este e-mail foi gerado automaticamente pelo sistema da ")
					.append(companyName).append(", por favor não responda.");

			return messageCancel.toString();
		} else {
			StringBuilder messageOk = new StringBuilder("");
			messageOk
					.append("Prezado cliente,\n\n")
					.append("Você está recebendo a Nota Fiscal Eletrônica número [")
					.append(documentNo)
					.append("] da [")
					.append(companyName)
					.append("], CNPJ [")
					.append(CNPJ)
					.append("].\n\n")
					.append("Junto com a mercadoria, você receberá também um DANFE (Documento Auxiliar da Nota Fiscal Eletrônica), ")
					.append("que acompanha o trânsito das mercadorias, conforme aprovado pelo ajuste SINIEF 07/05 e alterações do ajuste SINIEF 04/06.\n\n")
					.append("Podemos conceituar a Nota Fiscal Eletrônica como um documento de existência apenas digital, ")
					.append("emitido e armazenado eletronicamente, com o intuito de documentar, para fins fiscais, ")
					.append("uma operação de circulação de mercadorias, ocorrida entre as partes. Sua validade jurídica é garantida ")
					.append("pela assinatura digital do remetente (garantia de autoria e de integridade) e recepção, pelo Fisco, ")
					.append("do documento eletrônico, antes da ocorrência do Fato Gerador.\n\n")
					.append("Os registros fiscais e contábeis devem ser feitos, a partir do próprio arquivo da NF-e, anexo neste e-mail, ")
					.append("ou utilizando o DANFE, que representa graficamente a Nota Fiscal Eletrônica. A validade e autenticidade deste ")
					.append("documento eletrônico pode ser verificada no site (http://www.nfe.fazenda.gov.br/portal/), através da ")
					.append("Chave de Acesso [")
					.append(NFe_ID)
					.append("].\n\n")
					.append("O contribuinte destinatário, não emissor de NF-e, poderá utilizar os dados descritos do DANFE para a escrituração da NF-e, ")
					.append("e o contribuinte emitente da NF-e realizará a escrituração a partir  das NF-e emitidas e recebidas. Em ambos os casos, ")
					.append("a validade ficará vinculada à efetiva existência da NF-e nos arquivos das administrações tributárias envolvidas no processo, ")
					.append("comprovada através da emissão da Autorização de Uso e consultada pelo destinatário da NF-e.\n\n")
					.append("O DANFE não é uma nota fiscal, nem substitui uma nota fiscal, servindo apenas como instrumento auxiliar para consulta da NF-e no Ambiente Nacional.")
					.append("\n\n--\n")
					.append("ATENCAO: Este e-mail foi gerado automaticamente pelo sistema da ")
					.append(companyName).append(", por favor não responda.");

			return messageOk.toString();
		}
	} // getMessageAutorizada

} // EmailUtil