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

import org.adempierelbr.model.MNotaFiscal;
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
 * @author Mario Grigioni
 * @version $Id: NFeEmail, 28/07/2010 08:48:00 mgrigioni
 */
public class NFeEmail {

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(NFeEmail.class);

	/**
	 * 	Send Mail
	 * 	@param MNotaFiscal nf
	 * 	@return	E-mail enviado
	 * */
	public static boolean sendMail(final MNotaFiscal nf)
	{

		final Properties ctx = nf.getCtx();
		final String     trx = nf.get_TrxName();

		try{
			// Prepare sending Notice/Mail
			final MClient client = MClient.get(ctx);
			MOrgInfo orgInfo = MOrgInfo.get(ctx, nf.getAD_Org_ID(),trx);

			final MUser from = new MUser(ctx,orgInfo.getSupervisor_ID(),trx);
			// Check from email user
			if (from.getEMailUser() == null && from.getEMailUserPW() == null)
				throw new IllegalArgumentException("Problems with Org Supervisor Email");

			//NFe Contacts
			final List<MUser> contacts = AdempiereLBR.getContacts(nf.getC_BPartner_ID(),
					"lbr_IsNFeContact = 'Y' AND EMail IS NOT NULL");

			//User who processed
			final MUser actual = new MUser(ctx,Env.getAD_User_ID(ctx),trx);
			if (!(actual.getEMail() == null || actual.getEMail().indexOf('@') == -1 || actual.getEMail().contains(" ")))
				contacts.add(actual);

			if (contacts.size() > 0){

				final String subject = "NFe - " + nf.getlbr_NFeID();
				final String message = getMessage(nf.getDocumentNo(),nf.getlbr_OrgName());

				MAttachment attachment = nf.getAttachment(true);
				final File nfeXML = NFeUtil.getAttachmentEntryFile(attachment.getEntry(0));

				new Thread(){
					public void run(){
						try{
							for (final MUser to : contacts){
								String mailto = to.getEMail();
								if (mailto == null || mailto.indexOf('@') == -1 || mailto.contains(" "))
									throw new IllegalArgumentException("Problems with Client Email");

										for (int i=0;i<30;i++){
											if (client.sendEMail(from, to, subject, message, nfeXML, true))
													break;

											Thread.sleep(30000); //wait 30s and try again
										}

								Thread.sleep(5000); //wait 5s to send to next contact
							} //all NFeContacts
						}
						catch (InterruptedException e) {
								e.printStackTrace();
							}
					}
				}.start();
			} //contacts > 0

		}
		catch (Exception e){
			log.severe(e.toString());
			return false;
		}

		return true;
	} //sendProductMail

	private static final String getMessage(String documentNo, String companyName){

		StringBuffer message = new StringBuffer("");

		message.append("Prezado cliente,<br/>" +
					   "Você está recebendo a Nota Fiscal Eletrônica número: " + documentNo + ", da " + companyName);

		message.append("<br/><br/>Junto com a mercadoria, você receberá também um DANFE (Documento Auxiliar da Nota Fiscal Eletrônica), " +
				       "que acompanha o trânsito das mercadorias, conforme aprovado pelo ajuste SINIEF 07/05 e alterações do ajuste SINIEF 04/06.<br/><br/>");

		message.append("Podemos conceituar a Nota Fiscal Eletrônica como um documento de existência apenas digital, " +
				       "emitido e armazenado eletronicamente, com o intuito de documentar, para fins fiscais, " +
				       "uma operação de circulação de mercadorias, ocorrida entre as partes. Sua validade jurídica é garantida " +
				       "pela assinatura digital do remetente (garantia de autoria e de integridade) e recepção, pelo Fisco, " +
				       "do documento eletrônico, antes da ocorrência do Fato Gerador.<br/><br/>");

		message.append("Os registros fiscais e contábeis devem ser feitos, a partir do próprio arquivo da NF-e, anexo neste e-mail, " +
				       "ou utilizando o DANFE, que representa graficamente a Nota Fiscal Eletrônica. A validade e autenticidade deste " +
				       "documento eletrônico pode ser verificada no site nacional do projeto (www.nfe.fazenda.gov.br), através da chave de acesso contida no DANFE.<br/><br/>");

		message.append("O contribuinte destinatário, não emissor de NF-e, poderá utilizar os dados descritos do DANFE para a escrituração da NF-e, " +
				       "e o contribuinte emitente da NF-e realizará a escrituração a partir  das NF-e emitidas e recebidas. Em ambos os casos, " +
				       "a validade ficará vinculada à efetiva existência da NF-e nos arquivos das administrações tributárias envolvidas no processo, " +
				       "comprovada através da emissão da Autorização de Uso e consultada pelo destinatário da NF-e.<br/><br/>");

		message.append("O DANFE não é uma nota fiscal, nem substitui uma nota fiscal, servindo apenas como instrumento auxiliar para consulta da NF-e no Ambiente Nacional.");

		message.append("<br><br><br>------------------------<br>Enviado por AdempiereLBR<br>E-mail Automático");

		return message.toString();
	} //getMessage

} //EmailUtil