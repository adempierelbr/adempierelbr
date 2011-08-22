package org.adempierelbr.nfe;

import java.io.File;
import java.io.StringReader;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamReader;

import org.adempierelbr.model.MLBRDigitalCertificate;
import org.adempierelbr.nfe.beans.InutilizacaoNF;
import org.adempierelbr.util.AssinaturaDigital;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.util.ValidaXML;
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

import br.inf.portalfiscal.www.nfe.wsdl.nfeinutilizacao2.NfeInutilizacao2Stub;

/**
 * 	Consulta dos Lotes Processados de NF-e
 * 
 * @author Ricardo Santana (Kenos, www.kenos.com.br)
 */
public class NFeInutilizacao
{
	/**	Logger						*/
	private static CLogger log = CLogger.getCLogger(NFeInutilizacao.class);
	
	/**
	 * 	Inutiliza a NF
	 * 
	 * @param xmlGerado
	 * @param oi
	 * @return
	 * @throws Exception
	 */
	public static String invalidateNF (MOrgInfo oi, InutilizacaoNF iNF) throws Exception
	{
		log.fine("ini");
		String envType 	= oi.get_ValueAsString("lbr_NFeEnv");
		boolean isSCAN  = oi.get_ValueAsBoolean("lbr_IsScan");
		//
		if (envType == null || envType.equals(""))
			return "Ambiente da NF-e deve ser preenchido.";
		//
		MLocation orgLoc = new MLocation(Env.getCtx(),oi.getC_Location_ID(),null);

		String region = BPartnerUtil.getRegionCode(orgLoc);
		if (region.isEmpty())
			return "UF Inválida";
		//
		String nfePedInutMsg = NFeUtil.removeIndent(NFeUtil.geraInutilizacao(iNF));
		log.fine (nfePedInutMsg);
		//
		File attachFile = new File(TextUtil.generateTmpFile(nfePedInutMsg, iNF.getID()+"-ped-inu.xml"));
		System.out.println();
		AssinaturaDigital.Assinar(attachFile.toString(), oi, AssinaturaDigital.INUTILIZACAO_NFE);
		nfePedInutMsg = NFeUtil.XMLtoString(attachFile).replaceAll("[\r\n]+", "");
		log.fine (nfePedInutMsg);

		//	Validação envio
		String validation = ValidaXML.validaPedInutilizacaoNFe(nfePedInutMsg);
		if (!validation.equals(""))
			return validation;

		nfePedInutMsg   = "<nfeDadosMsg>" + nfePedInutMsg + "</nfeDadosMsg>";
		XMLStreamReader dadosXML = XMLInputFactory.newInstance().createXMLStreamReader(new StringReader(nfePedInutMsg));

		MLBRDigitalCertificate.setCertificate(Env.getCtx(), oi.getAD_Org_ID());
		
		NfeInutilizacao2Stub.NfeDadosMsg dadosMsg = NfeInutilizacao2Stub.NfeDadosMsg.Factory.parse(dadosXML);
		NfeInutilizacao2Stub.NfeCabecMsgE cabecMsgE = NFeUtil.geraCabecInutilizacao(region);
		NfeInutilizacao2Stub.setAmbiente(envType,orgLoc.getC_Region_ID(),isSCAN);
		NfeInutilizacao2Stub stub = new NfeInutilizacao2Stub();

		String respLote = stub.nfeInutilizacaoNF2(dadosMsg, cabecMsgE).getExtraElement().toString();
		//
		try 
		{
			//	Status
			log.fine (respLote);
			//
			String valid = ValidaXML.validaRetInutilizacaoNFe(respLote);
			if (!valid.equals(""))
			{
				log.warning("Validation Response Invalidation Error\n"+valid);
			}
			//
			DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
			Document doc = builder.parse(new InputSource(new StringReader(respLote)));
			//
			NodeList infProt =  doc.getElementsByTagName("infInut");
			
			for (int i=0; i< infProt.getLength(); i++)
			{
				Node node = infProt.item(i);
				if (node.getNodeType() == Node.ELEMENT_NODE)
				{
					String cStat 	= NFeUtil.getValue (node, "cStat");
					String xMotivo 	= NFeUtil.getValue (node, "xMotivo");
					//
					if (cStat != null && cStat.equals("102"))
					{
//						String verAplic	= NFeUtil.getValue (node, "verAplic");
//		    			String cUF 		= NFeUtil.getValue (node, "cUF");
//						String ano 		= NFeUtil.getValue (node, "ano");
//						String CNPJ 	= NFeUtil.getValue (node, "CNPJ");
//						String mod 		= NFeUtil.getValue (node, "mod");
//						String serie 	= NFeUtil.getValue (node, "serie");
//						String nNFIni 	= NFeUtil.getValue (node, "nNFIni");
//						String nNFFin 	= NFeUtil.getValue (node, "nNFFin");
//						String dhRecbto = NFeUtil.getValue (node, "dhRecbto");
//						String nProt 	= NFeUtil.getValue (node, "nProt");
						//	TODO:	Criar uma janela para lançar as NF inutilizadas
//						MNote note = new MNote(Env.getCtx(), 225, 100, null);
//						note.setTextMsg(nfeResposta);
//						note.save();
						new File(TextUtil.generateTmpFile(respLote, iNF.getID()+"-inu.xml"));
						//
						return "NF-e Inutilizada com sucesso.";
					}
					else
					{
						log.fine("Erro ao inutilizar a NF. " + xMotivo);
						return "Erro ao inutilizar a NF. " + xMotivo;
					}
				}
			}
			//
			return "";
		} 
		catch (Throwable e1)
		{
			log.severe(e1.getLocalizedMessage());
			e1.printStackTrace();
		}
		//
		return "Processo completado.";
	}	//	invalidateNF
}	//	NFeInutilizacao