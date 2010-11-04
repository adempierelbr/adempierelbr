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

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;
import java.util.logging.Level;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.adempierelbr.model.MDigitalCertificate;
import org.adempierelbr.model.MNotaFiscal;
import org.adempierelbr.util.AssinaturaDigital;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.ValidaXML;
import org.compiere.model.MAttachment;
import org.compiere.model.MOrgInfo;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;

import br.inf.portalfiscal.www.nfe.wsdl.NfeCancelamento.NfeCancelamento;
import br.inf.portalfiscal.www.nfe.wsdl.NfeCancelamento.NfeCancelamentoLocator;
import br.inf.portalfiscal.www.nfe.wsdl.NfeCancelamento.NfeCancelamentoSoap;

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
	public static String cancelNFe(MNotaFiscal nf) throws Exception
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
		MOrgInfo oi = MOrgInfo.get(ctx, nf.getAD_Org_ID());
		String chNFe 	= nf.getlbr_NFeID();
		String pclNFe 	= nf.getlbr_NFeProt();
		String envType 	= oi.get_ValueAsString("lbr_NFeEnv");
		//
		if (envType == null || envType.equals(""))
			return "Ambiente da NF-e deve ser preenchido.";
		//
		String nfeCancelDadosMsg 	= NFeUtil.geraCabecCancelamentoNF(chNFe, pclNFe, envType, RemoverAcentos.remover(motivoCanc));
		String nfeCancelCabecMsg 	= NFeUtil.geraCabecEnviNFe("1.07");		//	Versão do arquivo XSD
		//
		File attachFile = new File(NFeUtil.gravaArquivo(nf.getDocumentNo()+"-ped-can.xml", nfeCancelDadosMsg));
		AssinaturaDigital.Assinar(attachFile.toString(), oi, AssinaturaDigital.CANCELAMENTO_NFE);
		nfeCancelDadosMsg = "";
		
		FileInputStream stream = new FileInputStream(attachFile);   
		InputStreamReader streamReader = new InputStreamReader(stream);   
		BufferedReader reader = new BufferedReader(streamReader);  
		
		String line    = null;
		while( (line=reader.readLine() ) != null ) { 
			nfeCancelDadosMsg += line;
		}
		
		//
		String validation = ValidaXML.validaCabecalho(nfeCancelCabecMsg);
		if (!validation.equals(""))
		{
			log.severe("Validation Cancel Header Error: " + validation);
        	throw new Exception("Validation Cancel Header Error" + validation);
		}
		validation = ValidaXML.validaPedCancelamentoNFe(nfeCancelDadosMsg);
		if (!validation.equals(""))
		{
			log.severe("Validation Cancel Data Error: " + validation);
        	throw new Exception("Validation Cancel Data Error: " + validation);
		}
		//
		MAttachment attachLotNFe = nf.createAttachment();
		attachLotNFe.addEntry(attachFile);
		attachLotNFe.save();
		
		//INICIALIZA CERTIFICADO
		MDigitalCertificate.setCertificate(ctx, nf.getAD_Org_ID());
		//
		
		NfeCancelamentoLocator.ambiente = envType;
		NfeCancelamento recep = new NfeCancelamentoLocator();
		try 
		{
			//	Envio
			NfeCancelamentoSoap nfeCancelamento = recep.getNfeCancelamentoSoap();
			String nfeRespostaCanc = nfeCancelamento.nfeCancelamentoNF(nfeCancelCabecMsg, nfeCancelDadosMsg);
			
			//	Resposta do Envio
			validation = ValidaXML.validaRetCancelamentoNFe(nfeRespostaCanc);
			if (!validation.equals(""))
				return validation;
			//
			attachLotNFe = nf.createAttachment();
			attachFile = new File(NFeUtil.gravaArquivo(nf.getDocumentNo()+"-can.xml", nfeRespostaCanc));
			attachLotNFe.addEntry(attachFile);
			attachLotNFe.save();
			//
	        DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
	        Document doc = builder.parse(new InputSource(new StringReader(nfeRespostaCanc)));
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
					NFeUtil.updateAttach(nf, NFeUtil.generateDistribution(nf));
				} catch (Exception e) {
					log.log(Level.WARNING,"",e);
				}
				
	        }
	        nf.save(trxName);
			
		} 
		catch (Throwable e1)
		{
			log.severe(e1.getLocalizedMessage());
			e1.printStackTrace();
		}
		//
		return "Processo completado.";
	}	//	sendNFe
}	//	NFeStatus