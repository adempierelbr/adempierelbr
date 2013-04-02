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
package org.adempierelbr.nfe;

import java.io.File;
import java.io.StringReader;
import java.io.StringWriter;
import java.rmi.RemoteException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Properties;

import javax.net.ssl.SSLException;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.cce.beans.EnvEvento;
import org.adempierelbr.cce.beans.ProcEventoNFe;
import org.adempierelbr.cce.beans.RetEnvEvento;
import org.adempierelbr.cce.beans.Signature;
import org.adempierelbr.cce.beans.evento.Evento;
import org.adempierelbr.cce.beans.evento.infevento.InfEvento;
import org.adempierelbr.cce.beans.retevento.RetEvento;
import org.adempierelbr.model.MLBRDigitalCertificate;
import org.adempierelbr.model.MLBRNFeWebService;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.nfe.beans.detevento.DetEventoCancel;
import org.adempierelbr.nfe.beans.detevento.I_DetEvento;
import org.adempierelbr.util.AssinaturaDigital;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.NFeEmail;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.apache.axis2.databinding.ADBException;
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.process.DocAction;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

import br.inf.portalfiscal.www.nfe.wsdl.recepcaoevento.RecepcaoEventoStub;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.CompactWriter;
import com.thoughtworks.xstream.io.xml.DomDriver;

/**
 * 	Consulta dos Lotes Processados de NF-e
 *
 * @author Ricardo Santana (Kenos, www.kenos.com.br)
 * @contributor Mario Grigioni
 */
public class NFeCancelamento
{
	/**	Logger						*/
	private static CLogger log = CLogger.getCLogger(NFeCancelamento.class);

	/** Header						*/
	private final static String header = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>";
	
	/**
	 * 	Consulta dos Lotes Processados de NF-e
	 *
	 * @param xmlGerado
	 * @param oi
	 * @return
	 * @throws Exception
	 */
	public static String cancelNFe (MLBRNotaFiscal nf) throws Exception
	{
		Properties ctx = Env.getCtx();
		
		log.fine("ini");
		//
		String motivoCanc = nf.getlbr_MotivoCancel();

		if (motivoCanc == null)
			return "Sem motivo de cancelamento";
		else if (motivoCanc.length() < 16)
			return "Motivo de cancelamento muito curto. Min: 15 letras.";
		else if (motivoCanc.length() >= 255)
			return "Motivo de cancelamento muito longo. Max: 255 letras.";
		//
		MOrgInfo oi = MOrgInfo.get(ctx, nf.getAD_Org_ID(),null);
		String envType 	= oi.get_ValueAsString("lbr_NFeEnv");
		//
		if (envType == null || envType.equals(""))
			return "Ambiente da NF-e deve ser preenchido.";
		//
		MLocation orgLoc = new MLocation(ctx,oi.getC_Location_ID(),null);

		String region = BPartnerUtil.getRegionCode(orgLoc);
		if (region.isEmpty())
			return "UF Inválida";
		
		//	Classes usadas para annotation
		Class<?>[] classForAnnotation = new Class[]{DetEventoCancel.class, InfEvento.class, Evento.class, EnvEvento.class, ProcEventoNFe.class, 
				org.adempierelbr.cce.beans.retevento.infevento.InfEvento.class, RetEnvEvento.class, RetEvento.class, Signature.CanonicalizationMethod.class, 
				Signature.DigestMethod.class, Signature.KeyInfo.class, Signature.Reference.class, Signature.SignatureMethod.class, 
				Signature.SignedInfo.class, Signature.Transform.class, Signature.Transforms.class, Signature.X509Data.class};
		
		I_W_AD_OrgInfo oiW = POWrapper.create (oi, I_W_AD_OrgInfo.class);

		//	Detalhes
		DetEventoCancel det = new DetEventoCancel ();
		det.setVersao(NFeUtil.VERSAO_CCE);
		det.setnProt(nf.getlbr_NFeProt());
		det.setxJust(nf.getlbr_MotivoCancel());
		
		//	Informações do Evento de Cancelamento
		InfEvento cancel = new InfEvento ();
		cancel.setCOrgao("" + NFeUtil.getRegionCode (oi));
		cancel.setTpAmb(oiW.getlbr_NFeEnv());
		cancel.setCNPJ(oiW.getlbr_CNPJ());
		cancel.setChNFe(nf.getlbr_NFeID());
		cancel.setDhEvento(new Timestamp (Calendar.getInstance().getTimeInMillis()));
		cancel.setNSeqEvento("1");
		cancel.setVerEvento(NFeUtil.VERSAO_CCE);
		cancel.setDetEvento(det);
		cancel.setTpEvento(NFeUtil.NFE_EVENTO_CANCEL);
		cancel.setId();
		
		//	Dados do Evento da Carta de Correção
		Evento evento = new Evento ();
		evento.setVersao(NFeUtil.VERSAO_CCE);
		evento.setInfEvento(cancel);
		
		//	Dados do Envio
		EnvEvento env = new EnvEvento();
		env.setVersao(NFeUtil.VERSAO_CCE);
		env.setIdLote("" + nf.getLBR_NotaFiscal_ID());
		
		//	Valida as informações
		if (!cancel.isValid())
		{
			log.severe (cancel.getErrorMsg());
			return DocAction.STATUS_Invalid;
		}
		
		XStream xstream = new XStream ();
		xstream.autodetectAnnotations(true);
		xstream.aliasSystemAttribute(null, "class");
		 
		StringWriter sw = new StringWriter ();
		xstream.marshal (evento,  new CompactWriter (sw));
		
		StringBuilder xml = new StringBuilder (sw.toString());
		String xmlFile = TextUtil.generateTmpFile (xml.toString(), cancel.getId() + "-can.xml");
		
		try
		{
			log.fine ("Assinando XML: " + xml);
			AssinaturaDigital.Assinar (xmlFile, oi, AssinaturaDigital.CARTADECORRECAO_CCE);
			
			//	Lê o arquivo assinado
			xstream = new XStream (new DomDriver("UTF-8"));
			xstream.processAnnotations (classForAnnotation);
			xstream.alias("detEvento", I_DetEvento.class, DetEventoCancel.class);
			evento = (Evento) xstream.fromXML (TextUtil.readFile (new File (xmlFile)));
			
			//	Popula o evio do Evento com o XML assinado
			env.setEvento(evento);
			
			sw = new StringWriter ();
			xstream = new XStream ();
			xstream.aliasSystemAttribute(null, "class");
			xstream.processAnnotations (classForAnnotation);
			xstream.marshal (env,  new CompactWriter (sw));
			xml =  new StringBuilder (sw.toString());
		
			log.fine ("XML: " + xml);
			
			//	Arquivo para transmitir
			xmlFile = TextUtil.generateTmpFile (xml.toString(), cancel.getId() + "-can.xml");
			
			//	Procura os endereços para Transmissão
			MLBRNFeWebService ws = MLBRNFeWebService.get (MLBRNFeWebService.RECEPCAOEVENTO, oiW.getlbr_NFeEnv(), NFeUtil.VERSAO, oi.getC_Location().getC_Region_ID());
			
			if (ws == null)
			{
				log.severe ("Erro ao transmitir a CC-e. Não foi encontrado um endereço WebServices válido.");
				return DocAction.STATUS_Invalid;
			}
			
			XMLStreamReader dadosXML = XMLInputFactory.newInstance().createXMLStreamReader(new StringReader(header + "<nfeDadosMsg>" + xml.toString() + "</nfeDadosMsg>"));

			//	Prepara a Transmissão
			MLBRDigitalCertificate.setCertificate (Env.getCtx(), oi.getAD_Org_ID());
			RecepcaoEventoStub.NfeDadosMsg dadosMsg = RecepcaoEventoStub.NfeDadosMsg.Factory.parse(dadosXML);
			RecepcaoEventoStub.NfeCabecMsgE cabecMsgE = NFeUtil.geraCabecEvento ("" + NFeUtil.getRegionCode (oi));
			RecepcaoEventoStub.setAmbiente (ws);
			RecepcaoEventoStub stub = new RecepcaoEventoStub();

			//	Resposta do SEFAZ
			StringBuilder respLote = new StringBuilder (header + stub.nfeRecepcaoEvento (dadosMsg, cabecMsgE).getExtraElement().toString());
			log.fine (respLote.toString());
						
			xstream = new XStream (new DomDriver());
			xstream.processAnnotations (classForAnnotation);
			//
			RetEnvEvento retEvent = (RetEnvEvento) xstream.fromXML (respLote.toString());
			
			if (!"128".equals (retEvent.getcStat()))
				throw new AdempiereException (retEvent.getxMotivo());
			
			org.adempierelbr.cce.beans.retevento.infevento.InfEvento infReturn = retEvent.getRetEvento().getInfEvento();
			
			//	CC-e processada com sucesso
			if ("135".equals (infReturn.getcStat ()) || "136".equals (infReturn.getcStat ()))
			{
				nf.setlbr_NFeProt(infReturn.getnProt());
				nf.setlbr_NFeStatus(infReturn.getcStat ());
				nf.setDescription(nf.getDescription() + "\r" + infReturn.getxMotivo());
				//
				nf.setDateTrx(infReturn.getDhRegEventoTS());
				nf.setIsCancelled(true);
				if (!nf.isProcessed())
					nf.setProcessed(true);
				
				nf.saveEx();

				if (!NFeUtil.updateAttach(nf, NFeUtil.generateDistribution(nf)))
					return "Problemas ao atualizar o XML para o padrão de distribuição";

				NFeEmail.sendMail (nf);
			}
			else
				throw new AdempiereException (infReturn.getxMotivo());
		}
		catch (AdempiereException e)
		{
			e.printStackTrace();
			log.severe ("Problema com o processamento do lote pela SEFAZ: " + e.getMessage());
			return DocAction.STATUS_Invalid;
		}
		catch (SSLException e)
		{
			e.printStackTrace();
			log.severe ("Erro ao transmitir o pedido de cancelamento. " + e.getMessage());
			return DocAction.STATUS_Invalid;
		}
		catch (RemoteException e)
		{
			e.printStackTrace();
			log.severe ("Erro ao transmitir o pedido de cancelamento. " + e.getMessage());
			return DocAction.STATUS_Invalid;
		}
		catch (ADBException e)
		{
			e.printStackTrace();
			log.severe ("Erro ao converter o XML para transmissão do pedido de cancelamento. " + e.getMessage());
			return DocAction.STATUS_Invalid;
		}
		catch (XMLStreamException e)
		{
			e.printStackTrace();
			log.severe ("Erro ao converter o XML para transmissão do pedido de cancelamento. " + e.getMessage());
			return DocAction.STATUS_Invalid;
		}
		catch (CertificateExpiredException e)
		{
			e.printStackTrace();
			log.severe ("Erro ao assinar o pedido de cancelamento. O certificado expirou. " + e.getMessage());
			return DocAction.STATUS_Invalid;
		}
		catch (CertificateNotYetValidException e)
		{
			e.printStackTrace();
			log.severe ("Erro ao assinar o pedido de cancelamento. O certificado não é válido para esta data. " + e.getMessage());
			return DocAction.STATUS_Invalid;
		}
		catch (Exception e)
		{
			e.printStackTrace();
			log.severe ("Erro no processo para gerar o pedido de cancelamento. Verifique o LOG.");
			return DocAction.STATUS_Invalid;
		}
		//
		return "Processo completado.";
	}	//	cancelNFe
}	//	NFeCancelamento
