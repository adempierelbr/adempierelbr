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

import java.io.StringReader;
import java.rmi.RemoteException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Properties;

import javax.net.ssl.SSLException;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRDigitalCertificate;
import org.adempierelbr.model.MLBRNFeWebService;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.util.AssinaturaDigital;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.SignatureUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.apache.axis2.databinding.ADBException;
import org.apache.xmlbeans.SchemaTypeLoader;
import org.apache.xmlbeans.XmlBeans;
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.process.DocAction;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

import br.inf.portalfiscal.nfe.evento.cancelamento.EnvEventoDocument;
import br.inf.portalfiscal.nfe.evento.cancelamento.RetEnvEventoDocument;
import br.inf.portalfiscal.nfe.evento.cancelamento.TAmb;
import br.inf.portalfiscal.nfe.evento.cancelamento.TCOrgaoIBGE;
import br.inf.portalfiscal.nfe.evento.cancelamento.TEnvEvento;
import br.inf.portalfiscal.nfe.evento.cancelamento.TEvento;
import br.inf.portalfiscal.nfe.evento.cancelamento.TEvento.InfEvento;
import br.inf.portalfiscal.nfe.evento.cancelamento.TEvento.InfEvento.DetEvento;
import br.inf.portalfiscal.nfe.evento.cancelamento.TRetEnvEvento;
import br.inf.portalfiscal.nfe.evento.cancelamento.TRetEvento;
import br.inf.portalfiscal.www.nfe.wsdl.recepcaoevento.RecepcaoEventoStub;

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
	public static void cancelNFeEx (MLBRNotaFiscal nf) throws Exception
	{
		Properties ctx = Env.getCtx();
		
		log.fine("ini");
		//
		String motivoCanc = nf.getlbr_MotivoCancel();

		if (motivoCanc == null)
			throw new AdempiereException ("Sem motivo de cancelamento");
		else if (motivoCanc.length() < 16)
			throw new AdempiereException ("Motivo de cancelamento muito curto. Min: 15 letras.");
		else if (motivoCanc.length() >= 255)
			throw new AdempiereException ("Motivo de cancelamento muito longo. Max: 255 letras.");
		//
		MOrgInfo oi = MOrgInfo.get(ctx, nf.getAD_Org_ID(),null);
		String envType 	= oi.get_ValueAsString("lbr_NFeEnv");
		//
		if (envType == null || envType.equals(""))
			throw new AdempiereException ("Ambiente da NF-e deve ser preenchido.");
		//
		MLocation orgLoc = new MLocation(ctx,oi.getC_Location_ID(),null);

		String region = BPartnerUtil.getRegionCode(orgLoc);
		if (region.isEmpty())
			throw new AdempiereException ("UF Inválida");
		
		I_W_AD_OrgInfo oiW = POWrapper.create (oi, I_W_AD_OrgInfo.class);

		//	Dados do Envio
		EnvEventoDocument envDoc = EnvEventoDocument.Factory.newInstance();
		TEnvEvento env = envDoc.addNewEnvEvento();
		env.setVersao(NFeUtil.VERSAO_CCE);
		env.setIdLote("" + nf.getLBR_NotaFiscal_ID());
		
		//	Dados do Evento de Cancelamento
		TEvento evento = env.addNewEvento();
		evento.setVersao(NFeUtil.VERSAO_CCE);
		
		//	Informações do Evento de Cancelamento
		InfEvento infCancel = evento.addNewInfEvento();
		infCancel.setCOrgao(TCOrgaoIBGE.Enum.forString (Integer.toString (NFeUtil.getRegionCode (oi))));
		infCancel.setTpAmb(TAmb.Enum.forString (oiW.getlbr_NFeEnv()));
		infCancel.setCNPJ (TextUtil.toNumeric (oiW.getlbr_CNPJ()));
		infCancel.setChNFe(nf.getlbr_NFeID());
		infCancel.setDhEvento(NFeXMLGenerator.normalizeTZ (new Timestamp (Calendar.getInstance().getTimeInMillis())));
		infCancel.setNSeqEvento("1");
		infCancel.setVerEvento(TEvento.InfEvento.VerEvento.X_1_00);
		infCancel.setTpEvento(TEvento.InfEvento.TpEvento.X_110111);
		
		//	Chave
		String key = "ID" + infCancel.getTpEvento() + infCancel.getChNFe() + TextUtil.lPad (infCancel.getNSeqEvento(), 2);
		infCancel.setId(key);
		
		//	Detalhes
		DetEvento det = infCancel.addNewDetEvento();
		det.setVersao(DetEvento.Versao.X_1_00);
		det.setDescEvento(InfEvento.DetEvento.DescEvento.CANCELAMENTO);
		det.setNProt(nf.getlbr_NFeProt());
		det.setXJust(NFeXMLGenerator.normalize (nf.getlbr_MotivoCancel()));
		
		//	Assinatura
		new SignatureUtil(oi, AssinaturaDigital.EVENTO).sign(envDoc, evento.newCursor());
//		AssinaturaDigital.Assinar (xml, oi, AssinaturaDigital.EVENTO);

		//	Validação
		NFeUtil.validate (envDoc);

		//	XML
		StringBuilder xml = new StringBuilder (envDoc.xmlText (NFeUtil.getXmlOpt()));

		//	Procura os endereços para Transmissão
		MLBRNFeWebService ws = MLBRNFeWebService.get (MLBRNFeWebService.RECEPCAOEVENTO, oiW.getlbr_NFeEnv(), NFeUtil.VERSAO_LAYOUT, oi.getC_Location().getC_Region_ID());
		
		if (ws == null)
			throw new AdempiereException ("Erro ao transmitir a CC-e. Não foi encontrado um endereço WebServices válido.");
		
		XMLStreamReader dadosXML = XMLInputFactory.newInstance().createXMLStreamReader(new StringReader(header + "<nfeDadosMsg>" + xml.toString() + "</nfeDadosMsg>"));

		//	Prepara a Transmissão
		MLBRDigitalCertificate.setCertificate (Env.getCtx(), oi.getAD_Org_ID());
		RecepcaoEventoStub.NfeDadosMsg dadosMsg = RecepcaoEventoStub.NfeDadosMsg.Factory.parse(dadosXML);
		RecepcaoEventoStub.NfeCabecMsgE cabecMsgE = NFeUtil.geraCabecEvento ("" + NFeUtil.getRegionCode (oi));
		RecepcaoEventoStub.setAmbiente (ws.getURL());
		RecepcaoEventoStub stub = new RecepcaoEventoStub();

		//	Resposta do SEFAZ
		String respLote = header + stub.nfeRecepcaoEvento (dadosMsg, cabecMsgE).getExtraElement().toString();
		log.fine (respLote);
		
		//	SchemaTypeLoader necessário, pois o RetEnvEventoDocument existe com a mesma namespace para outros docs
		//		ref. http://ateneatech.com/blog/desenredando-xmlbeans
		SchemaTypeLoader stl = XmlBeans.typeLoaderUnion(new SchemaTypeLoader[]{RetEnvEventoDocument.type.getTypeSystem(), XmlBeans.getContextTypeLoader()});			
		TRetEnvEvento retEnvEvento = ((RetEnvEventoDocument) stl.parse (respLote, null, null)).getRetEnvEvento();
		
		if (!MLBRNotaFiscal.LBR_NFESTATUS_128_LoteDeEventoProcessado.equals (retEnvEvento.getCStat()))
			throw new AdempiereException (retEnvEvento.getXMotivo());
		
		for (TRetEvento retEvento : retEnvEvento.getRetEventoArray())
		{
			br.inf.portalfiscal.nfe.evento.cancelamento.TRetEvento.InfEvento infReturn = retEvento.getInfEvento();
			
			//	Cancelamento processado com sucesso
			if (TextUtil.match(infReturn.getCStat (), 
					MLBRNotaFiscal.LBR_NFESTATUS_135_EventoRegistradoEVinculadoANFC_E,
					MLBRNotaFiscal.LBR_NFESTATUS_136_EventoRegistradoMasNãoVinculadoANFC_E,
					"155"))	//	Vinculado, fora do Prazo
			{
				nf.setlbr_NFeProt(infReturn.getNProt());
				
				try
		        {
					nf.setlbr_NFeStatus(infReturn.getCStat ());
		        }
		        catch (IllegalArgumentException e)
		        {
		        	e.printStackTrace();
		        }
				//
				nf.setDateTrx (NFeUtil.stringToTime (infReturn.getDhRegEvento()));
				nf.setIsCancelled(true);
				nf.setDocStatus(MLBRNotaFiscal.DOCSTATUS_Voided);
				nf.setDocAction(MLBRNotaFiscal.DOCACTION_None);
				if (!nf.isProcessed())
					nf.setProcessed(true);
				
				nf.saveEx();

				if (!NFeUtil.updateAttach(nf, NFeUtil.generateDistribution(nf)))
					throw new AdempiereException ("Problemas ao atualizar o XML para o padrão de distribuição");

//				TODO: Verificar a necessidade de enviar email no cancelamento
//				ProcEMailNFe.sendEmailNFe (nf, false);
			}
			else
				throw new AdempiereException (infReturn.getXMotivo());
		}
	}
	
	/**
	 * 	Consulta dos Lotes Processados de NF-e
	 *
	 * @param xmlGerado
	 * @param oi
	 * @return
	 * @throws Exception
	 */
	public static String cancelNFe (MLBRNotaFiscal nf)
	{
		try
		{
			cancelNFeEx (nf);
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
			log.severe ("Erro no processo para gerar o pedido de cancelamento. Verifique o LOG." + e.getMessage());
			return DocAction.STATUS_Invalid;
		}
		//
		return "Processo completado.";
	}	//	cancelNFe
}	//	NFeCancelamento
