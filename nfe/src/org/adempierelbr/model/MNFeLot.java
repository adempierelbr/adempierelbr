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
package org.adempierelbr.model;

import java.io.File;
import java.io.StringReader;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.util.ValidaXML;
import org.compiere.model.MAttachment;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

import br.inf.portalfiscal.www.nfe.wsdl.NfeRecepcao.NfeRecepcao;
import br.inf.portalfiscal.www.nfe.wsdl.NfeRecepcao.NfeRecepcaoLocator;
import br.inf.portalfiscal.www.nfe.wsdl.NfeRecepcao.NfeRecepcaoSoap;
import br.inf.portalfiscal.www.nfe.wsdl.NfeRetRecepcao.NfeRetRecepcao;
import br.inf.portalfiscal.www.nfe.wsdl.NfeRetRecepcao.NfeRetRecepcaoLocator;
import br.inf.portalfiscal.www.nfe.wsdl.NfeRetRecepcao.NfeRetRecepcaoSoap;

/**
 *	Model for LBR_NFeLot
 *	
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@contributor Mario Grigioni
 *	@version $Id: MNFeLot.java,v 1.0 2009/08/23 00:51:27 ralexsander Exp $
 */
public class MNFeLot extends X_LBR_NFeLot 
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private static final String lote = "NFe Lote ";
	
	/**	Logger				*/
	private static CLogger log = CLogger.getCLogger(MNFeLot.class);

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MNFeLot (Properties ctx, int ID, String trx){
		super(ctx,ID,trx);	
	}
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MNFeLot (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}
	
	/**
	 * 	Gera o arquivo de Lote
	 * 
	 * @param String envType
	 * @return String lot
	 * @throws Exception
	 */
	public String geraLote (String envType) throws Exception
	{
		log.fine("Gera Lote: " + envType);
		String[] xmlGerado = getXMLs();
		//
		String dados[] = new String[xmlGerado.length];
		String conjunto = "";
		//
		for (int i = 0; i < xmlGerado.length; i++) 
		{
			File xml = new File(xmlGerado[i]);
	        dados[i] = NFeUtil.XMLtoString(xml);
	        //
	        String validation = ValidaXML.validaXML(dados[i]);
	        if (!validation.equals(""))
	        {
	        	String error = "Validation individuals XML files for LOT Error: "+validation;
	        	log.severe(error);
	        	throw new Exception(error);
	        }
			conjunto += dados[i];
		}
		//
		String lote = getDocumentNo();
        String cabecalho = NFeUtil.geraCabecLoteNFe(lote);
		String rodape 	=  "\n</enviNFe>";
		String contatosEmXML = cabecalho + conjunto + rodape;
		//
		String validation = ValidaXML.validaEnvXML(contatosEmXML);
		if (!validation.equals(""))
		{
			String error = "Validation XML LOT Error: "+validation;
			log.severe(error);
			throw new Exception(error);
		}
		//
		File attachFile = new File(NFeUtil.gravaArquivo(lote+"-env-lot.xml", contatosEmXML));
		
		//Verificação tamanho do Arquivo - Erro 214 / Tamanho Arquivo
		String error = NFeUtil.validateSize(attachFile);
		if (error != null)
			return error;
		
		MAttachment attachLotNFe = createAttachment();
		attachLotNFe.addEntry(attachFile);
		attachLotNFe.save();
		//
		return contatosEmXML;
	}	//	gerarLote
	
	/**
	 * 	Envia Lote NFe
	 * 
	 *  @return String result
	 *  @throws Exception
	 */
	public String enviaNFe() throws Exception
	{
		Properties ctx = getCtx();
		
		log.fine("Envia Lote: " + getDocumentNo());
		
		MOrgInfo oi = MOrgInfo.get(ctx, getAD_Org_ID());
		String envType 	= oi.get_ValueAsString("lbr_NFeEnv");
		//
		if (envType == null || envType.equals(""))
			return "Ambiente da NF-e deve ser preenchido.";
		//
		String nfeLotDadosMsg 	= geraLote(envType);
		String nfeLotCabecMsg 	= NFeUtil.geraCabecEnviNFe(NFeUtil.VERSAO);
		//
		String validation = ValidaXML.validaCabecalho(nfeLotCabecMsg);
	    if (!validation.equals("")) {
	    	String error = "Validation LOT Header Error: "+validation;
	        log.severe(error);
	        throw new Exception(error);
	    }
		
		//INICIALIZA CERTIFICADO
		MDigitalCertificate.setCertificate(ctx, getAD_Org_ID());
		//
		
		NfeRecepcaoLocator.ambiente = envType;
		NfeRecepcao recep = new NfeRecepcaoLocator();
		try 
		{
			//	Envio
			NfeRecepcaoSoap nfeRecepcao = recep.getNfeRecepcaoSoap();
			String nfeResposta = nfeRecepcao.nfeRecepcaoLote(nfeLotCabecMsg, nfeLotDadosMsg);
			
			//	Resposta do Envio
			String retorno = ValidaXML.validaRetXML(nfeResposta);
			if (!retorno.equals(""))
				return retorno;
			//
			MAttachment attachLotNFe = createAttachment();
			File attachFile = new File(NFeUtil.gravaArquivo(getDocumentNo()+"-rec.xml", nfeResposta));
			attachLotNFe.addEntry(attachFile);
			attachLotNFe.save();
			//
	        DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
	        Document doc = builder.parse(new InputSource(new StringReader(nfeResposta)));
	        //
	        String cStat = doc.getElementsByTagName("cStat").item(0).getTextContent();   
	        String xMotivo = doc.getElementsByTagName("xMotivo").item(0).getTextContent();   
	        
	        String nRec = null;
	        if (doc.getElementsByTagName("nRec") != null) //BF - Quando ocorre erro não retorna o nRec
	        	nRec = doc.getElementsByTagName("nRec").item(0).getTextContent();   
	       
	        String dhRecbto = null;
	        if (doc.getElementsByTagName("dhRecbto") != null)
	        	dhRecbto = doc.getElementsByTagName("dhRecbto").item(0).getTextContent();
	        //
	        String lotDesc = "["+dhRecbto.replace('T', ' ')+"] " + xMotivo + "\n";
	        setlbr_NFeStatus(cStat);
	        if (getDescription() == null)
	        	setDescription(lotDesc);
	        else
	        	setDescription(getDescription() + lotDesc);
	        //
	        setlbr_NFeRecID(nRec);
	        //
	        Timestamp timestamp = NFeUtil.stringToTime(dhRecbto);
	        setDateTrx(timestamp);
	        setlbr_LotSent(true);
	        save();
		} 
		catch (Throwable e1)
		{
			log.severe(e1.getLocalizedMessage());
			e1.printStackTrace();
		}
		//
		return "Processo completado.";
	}
	
	/**
	 * 	Consulta Lote NFe
	 * 
	 *  @return String result
	 *  @throws Exception
	 */
	public String consultaNFe () throws Exception
	{
		Properties ctx = getCtx();
		String trxName = get_TrxName();
		
		log.fine("Consulta Lote: " + getDocumentNo());
		//
		if (!islbr_LotSent())
		{
			log.log(Level.SEVERE, "LOT not sent yet");
			throw new Exception("LOT not sent yet");
		}
		//
		MOrgInfo oi = MOrgInfo.get(ctx, Env.getAD_Org_ID(ctx));
		String envType 	= oi.get_ValueAsString("lbr_NFeEnv");
		//
		if (envType == null || envType.equals(""))
			return "Ambiente da NF-e deve ser preenchido.";
		//
		String nfeLotDadosMsg 	= NFeUtil.geraCabecConsultaLote(getlbr_NFeRecID(), envType);
		String nfeLotCabecMsg 	= NFeUtil.geraCabecEnviNFe(NFeUtil.VERSAO);		//	Versão do arquivo XSD
		//
		String validation = ValidaXML.validaCabecalho(nfeLotCabecMsg);
	    if (!validation.equals("")) {
	    	String error = "Validation LOT Header Error: "+validation;
	        log.severe(error);
	        throw new Exception(error);
	    }
		//
		validation = ValidaXML.validaConsultaProt(nfeLotDadosMsg);
	    if (!validation.equals("")) {
	    	String error = "Validation Query Header Error: "+validation;
	        log.severe(error);
	        throw new Exception(error);
	    }
		//	Anexa o arquivo
		MAttachment attachLotNFe = createAttachment();
		File attachFile = new File(NFeUtil.gravaArquivo(getlbr_NFeRecID()+"-ped-rec.xml", nfeLotDadosMsg));
		attachLotNFe.addEntry(attachFile);
		attachLotNFe.save(trxName);
		
		//INICIALIZA CERTIFICADO
		MDigitalCertificate.setCertificate(ctx, getAD_Org_ID());
		//
		
		NfeRetRecepcaoLocator.ambiente = envType;
		NfeRetRecepcao retRecep = new NfeRetRecepcaoLocator();
		try 
		{
			//	Envio
			NfeRetRecepcaoSoap nfeRetRecepcao = retRecep.getNfeRetRecepcaoSoap();
			String nfeRetResposta = nfeRetRecepcao.nfeRetRecepcao(nfeLotCabecMsg, nfeLotDadosMsg);
			
			//	Resposta do Envio
			if (!ValidaXML.validaRetornoConsultaProt(nfeRetResposta).equals(""))
				;	// TODO: Error
			//
			attachLotNFe = createAttachment();
			attachFile = new File(NFeUtil.gravaArquivo(getlbr_NFeRecID()+"-pro-rec.xml", nfeRetResposta));
			attachLotNFe.addEntry(attachFile);
			attachLotNFe.save(trxName);
			//
	        DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
	        Document doc = builder.parse(new InputSource(new StringReader(nfeRetResposta)));
	        //
	        String cStatL = doc.getElementsByTagName("cStat").item(0).getTextContent();   
	        String xMotivoL = doc.getElementsByTagName("xMotivo").item(0).getTextContent();   
	        String nRec = doc.getElementsByTagName("nRec").item(0).getTextContent();   
	        NodeList infProt =  doc.getElementsByTagName("infProt");
	        //
	        if (cStatL.equals("104"))	//	Lote Processado
	        {
	        	//	Marcar como processado somente em 104
		        setlbr_LotReceived(true);
		        setProcessed(true);
		        //
	        	for (int i=0; i< infProt.getLength(); i++)
	        	{
	        		Node node = infProt.item(i);
	        		String error = MNotaFiscal.authorizeNFe(node,trxName);
	        		if (error != null)
	        			throw new Exception(error);
	        	}	//	for
	        }	//	if
	        //
	        Timestamp now = new Timestamp(new Date().getTime());
	        String nfeDesc = "["+TextUtil.timeToString(now, "yyyy-MM-dd HH:mm:ss")+"] "+xMotivoL+"\n";
	        setlbr_NFeAnswerStatus(cStatL);
	        if (getDescription() == null)
	        	setDescription(nfeDesc);
	        else
	        	setDescription(getDescription() + nfeDesc);
	        //
	        setlbr_NFeRespID(nRec);
	        setDateFinish(now);
	        //
	        save(trxName);
		} 
		catch (Throwable e1)
		{
			log.severe(e1.getLocalizedMessage());
			e1.printStackTrace();
		}
		//
		return "Processo completado.";
	}	//	consultaNFe
	
	protected boolean beforeDelete(){
		
		String sql = "UPDATE LBR_NotaFiscal SET LBR_NFeLot_ID = null " +
				     "WHERE LBR_NFeLot_ID = ?";
		
		if (DB.executeUpdate(sql, get_ID(), get_TrxName()) == -1)
			return false;
		
		return true;
	}
	
	protected boolean beforeSave(boolean newRecord){
		
		if (newRecord && (getName() == null || getName().trim().equals(""))){
			String documentno = DB.getDocumentNo(getAD_Client_ID(), p_info.getTableName(), get_TrxName(), this);
			setDocumentNo(documentno);
			setName(lote + documentno);
		}
	
		return true;
	}
	
	public boolean isEmpty ()
	{
		int count = DB.getSQLValue(null, 
				"SELECT COUNT(*) FROM LBR_NotaFiscal WHERE LBR_NFeLot_ID=?", getLBR_NFeLot_ID());
		//
		if (count > 0)
			return false;
		else
			return true;
	}
	
	/**
	 * XMLs
	 * @return String[] XML
	 */
	public String[] getXMLs ()
	{
		ArrayList<String> xmls = new ArrayList<String>();
		String whereClause = "LBR_NFeLot_ID=?";
		//
		MTable table = MTable.get(getCtx(), MNotaFiscal.Table_Name);		
		Query query =  new Query(table, whereClause, null);
	 		  query.setParameters(new Object[]{getLBR_NFeLot_ID()});
	 		  query.setOrderBy("DocumentNo, LBR_NotaFiscal_ID");
		//
	 	List<MNotaFiscal> list = query.list();
	 	//
	 	for (MNotaFiscal NF : list) 
	 	{
	 		if (NF == null)
	 			continue;
	 		
	 		File xml = NFeUtil.getAttachmentEntryFile(NF.getAttachment().getEntry(0));
	 		xmls.add(xml.toString());
	 	}
	 	//
	 	String[] result = new String[xmls.size()];
	 	xmls.toArray(result);
	 	//
		return result;
	}	//	getXMLs
	
}	//	MNFeLot