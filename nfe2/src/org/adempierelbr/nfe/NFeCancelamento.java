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
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;
import java.util.logging.Level;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamReader;

import org.adempierelbr.model.MLBRDigitalCertificate;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.util.AssinaturaDigital;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.NFeEmail;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.util.ValidaXML;
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;

import br.inf.portalfiscal.www.nfe.wsdl.nfecancelamento2.NfeCancelamento2Stub;

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

	/**
	 * 	Consulta dos Lotes Processados de NF-e
	 *
	 * @param xmlGerado
	 * @param oi
	 * @return
	 * @throws Exception
	 */
	public static String cancelNFe(MLBRNotaFiscal nf) throws Exception
	{
		Properties ctx = Env.getCtx();
		String trxName = nf.get_TrxName();

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
		boolean isSCAN  = oi.get_ValueAsBoolean("lbr_IsScan");
		
		if (nf.getlbr_MotivoScan() != null && !nf.getlbr_MotivoScan().trim().isEmpty()){
			isSCAN = true;
		}
		//
		if (envType == null || envType.equals(""))
			return "Ambiente da NF-e deve ser preenchido.";
		//
		MLocation orgLoc = new MLocation(ctx,oi.getC_Location_ID(),null);

		String region = BPartnerUtil.getRegionCode(orgLoc);
		if (region.isEmpty())
			return "UF Inválida";
		//

		//INICIALIZA CERTIFICADO
		MLBRDigitalCertificate.setCertificate(ctx, Env.getAD_Org_ID(ctx));
		//

		try{
			String chNFe 	= nf.getlbr_NFeID();
			String pclNFe 	= nf.getlbr_NFeProt();

			String nfeCancDadosMsg 	= NFeUtil.geraMsgCancelamento(chNFe, pclNFe, envType, RemoverAcentos.remover(motivoCanc));

			File attachFile = new File(TextUtil.generateTmpFile(nfeCancDadosMsg, nf.getDocumentNo()+"-ped-can.xml"));
			AssinaturaDigital.Assinar(attachFile.toString(), oi, AssinaturaDigital.CANCELAMENTO_NFE);
			nfeCancDadosMsg = NFeUtil.XMLtoString(attachFile);

			String validation = ValidaXML.validaPedCancelamentoNFe(nfeCancDadosMsg);
			if (!validation.isEmpty())
			{
				log.severe("Validation Cancel Data Error: " + validation);
	        	throw new Exception("Validation Cancel Data Error: " + validation);
			}

			//
			nfeCancDadosMsg   = "<nfeDadosMsg>" + nfeCancDadosMsg + "</nfeDadosMsg>";

			XMLStreamReader dadosXML = XMLInputFactory.newInstance().createXMLStreamReader(new StringReader(nfeCancDadosMsg));

			NfeCancelamento2Stub.NfeDadosMsg dadosMsg = NfeCancelamento2Stub.NfeDadosMsg.Factory.parse(dadosXML);
			NfeCancelamento2Stub.NfeCabecMsgE cabecMsgE = NFeUtil.geraCabecCancelamento(region);

			NfeCancelamento2Stub.setAmbiente(envType,orgLoc.getC_Region_ID(),isSCAN);
			NfeCancelamento2Stub stub = new NfeCancelamento2Stub();

			String respCanc = stub.nfeCancelamentoNF2(dadosMsg, cabecMsgE).getExtraElement().toString();

			//	Resposta do Envio
			validation = ValidaXML.validaRetCancelamentoNFe(respCanc);
			if (!validation.isEmpty())
				return validation;
			//

	        DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
	        Document doc = builder.parse(new InputSource(new StringReader(respCanc)));
	        //
	        String cStat = 		NFeUtil.getValue (doc, "cStat");
	        String xMotivo = 	NFeUtil.getValue (doc, "xMotivo");
	        String nProt = 		NFeUtil.getValue (doc, "nProt");
	        String dhRecbto = 	NFeUtil.getValue (doc, "dhRecbto");
	        //
	        String nfeDesc = "["+dhRecbto.replace('T', ' ')+"] " + xMotivo + "\n";
	        nf.setlbr_NFeStatus(cStat);
	        if (nf.getlbr_NFeDesc() == null)
	        	nf.setlbr_NFeDesc(nfeDesc);
	        else
	        	nf.setlbr_NFeDesc(nf.getlbr_NFeDesc() + nfeDesc);
	        //
	        if (cStat.equals("101"))	//	Cancelameno Autorizado
	        {
		        nf.setlbr_NFeProt(nProt);
		        //
		        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		        Date parsedDate = dateFormat.parse(dhRecbto.replace('T', ' '));
		        Timestamp timestamp = new Timestamp(parsedDate.getTime());
		        nf.setDateTrx(timestamp);
		        nf.setIsCancelled(true);
		        if (!nf.isProcessed())
		        	nf.setProcessed(true);

				//Atualiza XML para padrão de distribuição - Cancelamento
				try {
					if (!NFeUtil.updateAttach(nf, NFeUtil.generateDistribution(nf)))
						return "Problemas ao atualizar o XML para o padrão de distribuição";

					if (nf.getlbr_NFeStatus().equals(NFeUtil.AUTORIZADA) ||
					    nf.getlbr_NFeStatus().equals(NFeUtil.CANCELADA)){
						NFeEmail.sendMail(nf);
					}

				} catch (Exception e) {
					log.log(Level.WARNING,"",e);
				}

	        }
	        nf.save(trxName);


		}
		catch (Throwable e1){
			log.severe(e1.getLocalizedMessage());
			e1.printStackTrace();
		}

		//
		return "Processo completado.";
	}	//	cancelNFe

}	//	NFeCancelamento