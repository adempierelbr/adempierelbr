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
package org.adempierelbr.process;

import java.io.StringReader;
import java.util.Properties;
import java.util.logging.Level;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamReader;

import org.adempierelbr.model.MLBRDigitalCertificate;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.NFeUtil;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;

import br.inf.portalfiscal.www.nfe.wsdl.cadconsultacadastro2.CadConsultaCadastro2Stub;

/**
 * 	Processo para consultar o cadastro do contribuinte
 *
 * @author Mario Grigioni
 * @version $Id: ProcConsultaCadastro.java, 22/07/2010 09:02:00 mgrigioni
 */
public class ProcConsultaCadastro extends SvrProcess
{

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ProcConsultaCadastro.class);

	private int p_C_BPartner_ID          = 0;
	private int p_C_BPartner_Location_ID = 0;

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
			else if (name.equals("C_BPartner_ID"))
				p_C_BPartner_ID = para[i].getParameterAsInt();
			else if (name.equals("C_BPartner_Location_ID"))
				p_C_BPartner_Location_ID = para[i].getParameterAsInt();
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 * 	DoIt
	 */
	protected String doIt() throws Exception
	{
		MBPartnerLocation bpl = new MBPartnerLocation(getCtx(),p_C_BPartner_Location_ID,get_TrxName());
		MLocation bpLoc = new MLocation(getCtx(),bpl.getC_Location_ID(),get_TrxName());
		
		String CNPJ = BPartnerUtil.getCNPJ(getCtx(), p_C_BPartner_ID, p_C_BPartner_Location_ID);
		String IE   = BPartnerUtil.getIE(getCtx(), p_C_BPartner_ID, p_C_BPartner_Location_ID);
		return consultaCadastro(getCtx(),bpLoc,IE,CNPJ)[0];
	}	//	doIt

	public static String[] consultaCadastro(Properties ctx, MLocation bpLoc, String bpIE, String bpCNPJ) throws Exception{

		String habilitado = "Y";
		String envType    = "1"; //Produção

		MOrgInfo orgInfo = MOrgInfo.get(ctx, Env.getAD_Org_ID(ctx),null);
		if (orgInfo == null)
			return null;
		
		boolean isSCAN  = orgInfo.get_ValueAsBoolean("lbr_IsScan");

		//MLocation orgLoc = new MLocation(ctx,orgInfo.getC_Location_ID(),null);

		String region = BPartnerUtil.getRegionCode(bpLoc);
		if (region.isEmpty())
			return null;

		//INICIALIZA CERTIFICADO
		MLBRDigitalCertificate.setCertificate(ctx, orgInfo);
		//
		String status = "Erro na verificação de Status";

		try{
			XMLStreamReader dadosXML = XMLInputFactory.newInstance().createXMLStreamReader(new StringReader(NFeUtil.geraMsgConsultaCadastro(bpLoc.getC_Region().getName(),bpIE,bpCNPJ)));

			CadConsultaCadastro2Stub.setAmbiente(envType,bpLoc.getC_Region_ID(),isSCAN);
			CadConsultaCadastro2Stub.NfeDadosMsg_type0 dadosMsg = CadConsultaCadastro2Stub.NfeDadosMsg_type0.Factory.parse(dadosXML);
			CadConsultaCadastro2Stub.NfeCabecMsgE cabecMsgE = NFeUtil.geraCabecConsultaCadastro(region);
			CadConsultaCadastro2Stub.ConsultaCadastro2 consulta = new CadConsultaCadastro2Stub.ConsultaCadastro2();
			consulta.setNfeDadosMsg(dadosMsg);

			CadConsultaCadastro2Stub stub = new CadConsultaCadastro2Stub();

			String respStatus = stub.consultaCadastro2(consulta,cabecMsgE).getConsultaCadastro2Result().getExtraElement().toString();

			DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
		    Document doc = builder.parse(new InputSource(new StringReader(respStatus)));
		    //
		    String cStat    = NFeUtil.getValue(doc, "cStat");
		    if (cStat.equals("111") || cStat.equals("112")){

		    	String xNome    = NFeUtil.getValue(doc, "xNome");
		    	String xRegApur = NFeUtil.getValue(doc, "xRegApur");
		    	String dIniAtiv = NFeUtil.getValue(doc, "dIniAtiv");
		    	String dBaixa   = NFeUtil.getValue(doc, "dBaixa");
		    	String IE       = NFeUtil.getValue(doc, "IE");
		    	String CNPJ     = NFeUtil.getValue(doc, "CNPJ");
		    	String CPF      = NFeUtil.getValue(doc, "CPF");
		    	String xLgr     = NFeUtil.getValue(doc, "xLgr");
		    	String xMun     = NFeUtil.getValue(doc, "xMun");

		    	String cSit     = NFeUtil.getValue(doc, "cSit");
		    	if (cSit.equals("0")){
		    		cSit = "NÃO HABILITADO";
		    		habilitado = "N";
		    	}
		    	else
		    		cSit = "HABILITADO";

		    	String credNFe = "";
		    	char indCredNFe = NFeUtil.getValue(doc, "indCredNFe").charAt(0);
		    	switch (indCredNFe){
		    		case '0' : credNFe = "Não credenciado para emissão da NF-e"; break;
		    		case '1' : credNFe = "Credenciado"; break;
		    		case '2' : credNFe = "Credenciado com obrigatoriedade para todas operações"; break;
		    		case '3' : credNFe = "Credenciado com obrigatoriedade parcial"; break;
		    		case '4' : credNFe = "A SEFAZ não fornece informação"; break;
		    	}

		    	 status = "<br/>" +
	    		 "Nome: " + xNome + "<br/>" +
	    		 "Endereço: " + xLgr + ", Cidade: " + xMun + "<br/>" +
	             "Regime Apuração: " + xRegApur + "<br/>" +
	             "Data Início Atividade: " + dIniAtiv + "<br/>" +
	             "Data Baixa Contribuinte: " + dBaixa + "<br/>" +
	             "IE: " + IE + "<br/>" +
	             "CNPJ: " + CNPJ + "<br/>" +
	             "CPF: " + CPF + "<br/>" +
	             "Situação: " + cSit + "<br/>" +
	             "Credenciado emissão NFe: " + credNFe;

		    }
		    else if (cStat.equals("259")){
		    	status = "Rejeição: CNPJ da consulta não cadastrado como contribuinte na UF";
		    }

		}
		catch (Throwable e1){
			log.severe(e1.getLocalizedMessage());
			e1.printStackTrace();
		}

		return new String[]{status,habilitado};
	} //consultaCadastro

}	//	ProcStatusServico