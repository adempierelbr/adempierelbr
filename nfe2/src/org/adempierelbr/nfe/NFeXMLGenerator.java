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

import java.sql.Timestamp;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBROpenItem;
import org.adempierelbr.nfe.beans.ChaveNFE;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.adempierelbr.wrapper.I_W_C_Country;
import org.compiere.model.MCountry;
import org.compiere.model.MDocType;
import org.compiere.model.MOrder;
import org.compiere.model.MOrgInfo;
import org.compiere.util.CLogger;

import sun.security.action.GetLongAction;
import br.inf.portalfiscal.nfe.NFeDocument;
import br.inf.portalfiscal.nfe.TAmb;
import br.inf.portalfiscal.nfe.TCodUfIBGE;
import br.inf.portalfiscal.nfe.TEnderEmi;
import br.inf.portalfiscal.nfe.TEndereco;
import br.inf.portalfiscal.nfe.TFinNFe;
import br.inf.portalfiscal.nfe.TLocal;
import br.inf.portalfiscal.nfe.TMod;
import br.inf.portalfiscal.nfe.TNFe;
import br.inf.portalfiscal.nfe.Tpais;
import br.inf.portalfiscal.nfe.TNFe.InfNFe;
import br.inf.portalfiscal.nfe.TNFe.InfNFe.AutXML;
import br.inf.portalfiscal.nfe.TNFe.InfNFe.Cana;
import br.inf.portalfiscal.nfe.TNFe.InfNFe.Cobr;
import br.inf.portalfiscal.nfe.TNFe.InfNFe.Compra;
import br.inf.portalfiscal.nfe.TNFe.InfNFe.Dest;
import br.inf.portalfiscal.nfe.TNFe.InfNFe.Det;
import br.inf.portalfiscal.nfe.TNFe.InfNFe.Det.Imposto;
import br.inf.portalfiscal.nfe.TNFe.InfNFe.Det.ImpostoDevol;
import br.inf.portalfiscal.nfe.TNFe.InfNFe.Det.Prod;
import br.inf.portalfiscal.nfe.TNFe.InfNFe.Det.Prod.DI;
import br.inf.portalfiscal.nfe.TNFe.InfNFe.Det.Prod.DetExport;
import br.inf.portalfiscal.nfe.TNFe.InfNFe.Emit;
import br.inf.portalfiscal.nfe.TNFe.InfNFe.Exporta;
import br.inf.portalfiscal.nfe.TNFe.InfNFe.Ide;
import br.inf.portalfiscal.nfe.TNFe.InfNFe.Ide.NFref;
import br.inf.portalfiscal.nfe.TNFe.InfNFe.Pag;
import br.inf.portalfiscal.nfe.TNFe.InfNFe.Total;
import br.inf.portalfiscal.nfe.TNFe.InfNFe.Total.ICMSTot;
import br.inf.portalfiscal.nfe.TNFe.InfNFe.Total.ISSQNtot;
import br.inf.portalfiscal.nfe.TNFe.InfNFe.Total.RetTrib;
import br.inf.portalfiscal.nfe.TNFe.InfNFe.Transp;
import br.inf.portalfiscal.nfe.TProcEmi;
import br.inf.portalfiscal.nfe.TUf;
import br.inf.portalfiscal.nfe.TUfEmi;

/**
 * 	Gera o arquivo XML
 *
 * @author Ricardo Santana (Kenos, www.kenos.com.br)
 * 
 * 	<li>based on version from:
 * 		@contributor Mario Grigioni
 * 		@contributor Pablo Boff Pigozzo 
 * @version $Id: NFeXMLGenerator.java, v1.0 2015/02/01 18:17:39 PM, ralexsander Exp $
 */
@SuppressWarnings("unused")
public class NFeXMLGenerator
{
	/** Log				*/
	private static CLogger log = CLogger.getCLogger(NFeXMLGenerator.class);

	/** XML             */
	private static final String FILE_EXT      = "-nfe.xml";
	
	/** Versão do Layout		*/
	private static final String VERSAO_LAYOUT	=	"2.0";
	private static final String VERSAO_APP		=	"Kenos Adempiere NF-e 3.10.0";

	/**
	 * 		Tipo de Emissão da NF-e
	 * 
	 * 	1=Emissão normal (não em contingência); 
	 * 	2=Contingência FS-IA, com impressão do DANFE em	formulário de segurança;
	 * 	3=Contingência SCAN (Sistema de Contingência do	Ambiente Nacional);
	 * 	4=Contingência DPEC (Declaração Prévia da Emissão em Contingência);	
	 * 	5=Contingência FS-DA, com impressão do DANFE em formulário de segurança;
	 * 	6=Contingência SVC-AN (SEFAZ Virtual de Contingência do AN);
	 * 	7=Contingência SVC-RS (SEFAZ Virtual de Contingência do RS);
	 * 	9=Contingência off-line da NFC-e (as demais opções de contingência são válidas também para a NFC-e);
	 * 
	 * 	Observação: Para a NFC-e somente estão disponíveis e são válidas as opções de contingência 5 e 9.		
	 */
	private static final Ide.TpEmis.Enum	TP_EMI_NORMAL	=	Ide.TpEmis.X_1;
	private static final Ide.TpEmis.Enum	TP_EMI_FS_IA	=	Ide.TpEmis.X_2;
	private static final Ide.TpEmis.Enum	TP_EMI_SCAN		=	Ide.TpEmis.X_3;
	private static final Ide.TpEmis.Enum	TP_EMI_DPEC		=	Ide.TpEmis.X_4;
	private static final Ide.TpEmis.Enum	TP_EMI_FS_DA	=	Ide.TpEmis.X_5;
	private static final Ide.TpEmis.Enum	TP_EMI_SVC_AN	=	Ide.TpEmis.X_6;
	private static final Ide.TpEmis.Enum	TP_EMI_SVC_RS	=	Ide.TpEmis.X_7;
	private static final Ide.TpEmis.Enum	TP_EMI_OFFLINE	=	Ide.TpEmis.X_9;

	/**	Indicação de Pagamento	*/
	private static final Ide.IndFinal.Enum IND_FINAL_NORMAL		=	Ide.IndFinal.X_0;
	private static final Ide.IndFinal.Enum IND_FINAL_CONS_FINAL	=	Ide.IndFinal.X_1;
	
	/**	Indicação de Pagamento	*/
	private static final Ide.IndPag.Enum IND_PAG_A_VISTA	=	Ide.IndPag.X_0;
	private static final Ide.IndPag.Enum IND_PAG_A_PRAZO	=	Ide.IndPag.X_1;
	private static final Ide.IndPag.Enum IND_PAG_OUTROS		=	Ide.IndPag.X_2;
	
	/**	Modelo da NF			*/
	private static final TMod.Enum MOD_NFE_55				=	TMod.X_55;
	private static final TMod.Enum MOD_NFCE_65				=	TMod.X_65;

	/**	Tipo de NF				*/
	private static final Ide.TpNF.Enum TP_NF_SAIDA			=	Ide.TpNF.X_0;
	private static final Ide.TpNF.Enum TP_NF_ENTRADA		=	Ide.TpNF.X_1;
	
	/**	Tipo de Ambiente				*/
	private static final TAmb.Enum 	T_AMB_PRODUCAO		=	TAmb.X_1;
	private static final TAmb.Enum	T_AMB_HOMOLOG		=	TAmb.X_2;

	/**	Finalidade da NF-e		*/
	private static final TFinNFe.Enum FIN_NFE_NORMAL		=	TFinNFe.X_1;
	private static final TFinNFe.Enum FIN_NFE_COMPLEMENTAR	=	TFinNFe.X_2;
	private static final TFinNFe.Enum FIN_NFE_AJUSTE		=	TFinNFe.X_3;
	private static final TFinNFe.Enum FIN_NFE_DEVOLUCAO		=	TFinNFe.X_4;

	/**	Finalidade da NF-e		*/
	private static final Ide.IndPres.Enum IND_PRES_N_A				=	Ide.IndPres.X_0;
	private static final Ide.IndPres.Enum IND_PRES_PRESENCIAL		=	Ide.IndPres.X_1;
	private static final Ide.IndPres.Enum IND_PRES_INTERNET			=	Ide.IndPres.X_2;
	private static final Ide.IndPres.Enum IND_PRES_TELE				=	Ide.IndPres.X_3;
	private static final Ide.IndPres.Enum IND_PRES_NFCE_DOMICILIO	=	Ide.IndPres.X_4;
	private static final Ide.IndPres.Enum IND_PRES_NAO_PRESENCIAL	=	Ide.IndPres.X_9;
	
	/**	Indicador da IE do Destinatário	*/
	private static final Dest.IndIEDest.Enum IND_IE_CONTRIB 	= Dest.IndIEDest.X_1;
	private static final Dest.IndIEDest.Enum IND_IE_ISENTO		= Dest.IndIEDest.X_2;
	private static final Dest.IndIEDest.Enum IND_IE_NAO_CONTRIB = Dest.IndIEDest.X_9;
	
	/** Impostos						*/
	private static final String PIS				= "PIS";
	private static final String COFINS			= "COFINS";
	private static final String ICMS			= "ICMS";
	private static final String IPI				= "IPI";
	private static final String II				= "II";
	private static final String ISSQN			= "ISS";
	
	/** Código de Situaçnao Tributária	*/
	public static final String CST_ICMS_00		= "00";
	public static final String CST_ICMS_10		= "10";
	public static final String CST_ICMS_20		= "20";
	public static final String CST_ICMS_30		= "30";
	public static final String CST_ICMS_40		= "40";
	public static final String CST_ICMS_41		= "41";
	public static final String CST_ICMS_50		= "50";
	public static final String CST_ICMS_51		= "51";
	public static final String CST_ICMS_60		= "60";
	public static final String CST_ICMS_70		= "70";
	public static final String CST_ICMS_90		= "90";
	public static final String CST_ICMS_Part	= "Part";
	public static final String CST_ICMS_ST		= "ST";
	
	/** Código de Situaçnao Tributária	- IPI */
	public static final String CST_IPI_00		= "00";
	public static final String CST_IPI_01		= "01";
	public static final String CST_IPI_02		= "02";
	public static final String CST_IPI_03		= "03";
	public static final String CST_IPI_04		= "04";
	public static final String CST_IPI_49		= "49";
	public static final String CST_IPI_50		= "50";
	public static final String CST_IPI_51		= "51";
	public static final String CST_IPI_52		= "52";
	public static final String CST_IPI_53		= "53";
	public static final String CST_IPI_54		= "54";
	public static final String CST_IPI_55		= "55";
	public static final String CST_IPI_99		= "99";

	/** Código de Situaçnao Tributária	- PIS e COFINS */
	public static final String CST_PC_01		= "01";
	public static final String CST_PC_02		= "02";
	public static final String CST_PC_03		= "03";
	public static final String CST_PC_04		= "04";
	public static final String CST_PC_05		= "05";
	public static final String CST_PC_06		= "06";
	public static final String CST_PC_07		= "07";
	public static final String CST_PC_08		= "08";
	public static final String CST_PC_09		= "09";
	public static final String CST_PC_49  		= "49";
	public static final String CST_PC_50  		= "50";
	public static final String CST_PC_51  		= "51";
	public static final String CST_PC_52  		= "52";
	public static final String CST_PC_53  		= "53";
	public static final String CST_PC_54  		= "54";
	public static final String CST_PC_55  		= "55";
	public static final String CST_PC_56  		= "56";
	public static final String CST_PC_60  		= "60";
	public static final String CST_PC_61  		= "61";
	public static final String CST_PC_62  		= "62";
	public static final String CST_PC_63  		= "63";
	public static final String CST_PC_64  		= "64";
	public static final String CST_PC_65  		= "65";
	public static final String CST_PC_66  		= "66";
	public static final String CST_PC_67  		= "67";
	public static final String CST_PC_70  		= "70";
	public static final String CST_PC_71  		= "71";
	public static final String CST_PC_72  		= "72";
	public static final String CST_PC_73  		= "73";
	public static final String CST_PC_74  		= "74";
	public static final String CST_PC_75  		= "75";
	public static final String CST_PC_98  		= "98";
	public static final String CST_PC_99  		= "99";
	
	/**	Simples Nacional				*/
	public static final String CSOSN_101	= "101";
	public static final String CSOSN_102	= "102";
	public static final String CSOSN_103	= "103";
	public static final String CSOSN_300	= "300";
	public static final String CSOSN_400	= "400";
	public static final String CSOSN_201	= "201";
	public static final String CSOSN_202	= "202";
	public static final String CSOSN_203	= "203";
	public static final String CSOSN_500	= "500";
	public static final String CSOSN_900	= "900";
	
	/**	Modalidade de determinação da BC do ICMS		*/
	private static final String MOD_BC_MVA			= "0";
	private static final String MOD_BC_PAUTA		= "1";
	private static final String MOD_BC_TABELADO		= "2";
	private static final String MOD_BC_VALOR_OP		= "2";
	
	private static final String MOT_DESONERA_TAXI			= "1";
	private static final String MOT_DESONERA_DEFICIENTE		= "2";
	private static final String MOT_DESONERA_PRODUTOR		= "3";
	private static final String MOT_DESONERA_FROTISTA		= "4";
	private static final String MOT_DESONERA_DIPLOMAT		= "5";
	private static final String MOT_DESONERA_AREA_LIVRE_COM	= "6";
	private static final String MOT_DESONERA_SUFRAMA		= "7";
	private static final String MOT_DESONERA_ORGAO_PUBLICO	= "8";
	private static final String MOT_DESONERA_OUTROS			= "9";
	
	private static final String ENQ_IPI_999	= "999";

	/**
	 * Gera o corpo da NF
	 * 
	 * @param ctx Context
	 * @param LBR_NotaFiscal_ID
	 * @param trxName Transação
	 * @return
	 */
	public static String geraCorpoNFe (Properties ctx, int LBR_NotaFiscal_ID, String trxName) throws Exception
	{
		if (ctx == null || LBR_NotaFiscal_ID <= 0)
			return "@Error@ - Invalid context";
		
		//	Gera o XML
		return geraCorpoNFe (new MLBRNotaFiscal (ctx, LBR_NotaFiscal_ID, trxName));
	}	//	geraCorpoNFe
	
	/**
	 * Gera o corpo da NF
	 * 
	 * @param nf Nota Fiscal
	 * @return Success or Error message
	 * @throws Exception
	 */
	public static String geraCorpoNFe (MLBRNotaFiscal nf) throws Exception
	{
		log.finer ("init");		
		
		String arg0 = "";	//	DELETEME
		
		//	Transaction and Context
		String trxName = nf.get_TrxName ();
		Properties ctx = nf.getCtx();
		
		//	OrgInfo
		I_W_AD_OrgInfo oi = POWrapper.create (MOrgInfo.get (nf.getCtx(), nf.getAD_Org_ID(), null), I_W_AD_OrgInfo.class);
		
		//	Tipo de Documento
		MDocType docType = new MDocType(ctx, nf.getC_DocTypeTarget_ID(), trxName);
		
		//	Tipo de Emissão da NF / TODO: Implementar contingência
		Ide.TpEmis.Enum tpEmissao = TP_EMI_NORMAL;
		
		//	Main document
		NFeDocument document = NFeDocument.Factory.newInstance ();
		TNFe nfe = document.addNewNFe();
		
		//	Chave da NF-e
		ChaveNFE chaveNFE = new ChaveNFE();
		
		chaveNFE.setAAMM(nf.getDateDoc());
		chaveNFE.setCUF(BPartnerUtil.getRegionCode (nf.getlbr_OrgRegion(), nf.getlbr_OrgCity()));
		chaveNFE.setCNPJ(nf.getlbr_CNPJ());
		chaveNFE.setMod(nf.getlbr_NFModel());
		chaveNFE.setSerie(nf.getlbr_NFSerie());
		chaveNFE.setTpEmis(tpEmissao.toString());
		chaveNFE.setNNF(TextUtil.lPad(nf.getDocumentNo(), 9));
		chaveNFE.setCNF();	//	Random code	
		
		//	A. Dados da Nota Fiscal eletrônica
		InfNFe infNFe = nfe.addNewInfNFe();
		infNFe.setVersao(VERSAO_LAYOUT);
		infNFe.setId("NFe" + chaveNFE.toString() + chaveNFE.getDigito());
		
		//	B. Identificação da Nota Fiscal eletrônica
		Ide ide = infNFe.addNewIde();
		ide.setCUF (TCodUfIBGE.Enum.forString (chaveNFE.getCUF()));
		ide.setCNF (chaveNFE.getCNF());
		ide.setNatOp (normalize (TextUtil.checkSize (nf.getlbr_CFOPNote(), 1, 60)));
		
		//	Indicador da forma de pagamento
		Ide.IndPag.Enum indPag = IND_PAG_OUTROS;
		
		MLBROpenItem[] openItems = MLBROpenItem.getOpenItem (nf.getC_Invoice_ID(), trxName);
		
		//	Mais de uma parcela
		if (openItems.length > 1)
			indPag = IND_PAG_A_PRAZO;
		
		//	Parcela única
		else
		{
			//	Se parcela única for para o mesmo dia da emissão
			if (openItems.length == 1 && openItems[0].getNetDays() > 0)
				indPag = IND_PAG_A_VISTA;
		}
		
		ide.setIndPag (indPag);
		ide.setMod(TMod.Enum.forString (chaveNFE.getMod()));
		ide.setSerie(nf.getlbr_NFSerie());
		ide.setNNF(nf.getDocumentNo());
		ide.setDhEmi(convertDate (nf.getDateDoc()));
		
		if (nf.getlbr_DateInOut() != null)
			ide.setDhSaiEnt(convertDate (nf.getlbr_DateInOut()));
		
		ide.setTpNF (nf.isSOTrx() ? TP_NF_SAIDA : TP_NF_ENTRADA);
		ide.setIdDest (nf.getIdDest ());
		ide.setCMunFG (BPartnerUtil.getCityCode (nf.getlbr_OrgRegion(), nf.getlbr_OrgCity()));
		ide.setTpImp (Ide.TpImp.Enum.forString (docType.get_ValueAsString ("lbr_DANFEFormat")));
		ide.setTpEmis (tpEmissao);
		ide.setCDV (chaveNFE.getDigito());
		
		//	Produção
		if (T_AMB_PRODUCAO.toString().equals (oi.getlbr_NFeEnv()))
			ide.setTpAmb (T_AMB_PRODUCAO);
		
		//	Homologação
		else if (T_AMB_HOMOLOG.toString().equals (oi.getlbr_NFeEnv()))
			ide.setTpAmb (T_AMB_HOMOLOG); 
		
		ide.setFinNFe (TFinNFe.Enum.forString (nf.getlbr_FinNFe ()));
		
		//	Indicação para verificar se a venda é para consumidor final
		if (MLBRNotaFiscal.LBR_TRANSACTIONTYPE_EndUser.equals(nf.getlbr_TransactionType()))
			ide.setIndFinal (IND_FINAL_CONS_FINAL);
		else
			ide.setIndFinal (IND_FINAL_NORMAL);
		
		//	Indicação da presença do consumidor no momento da compra
		if (ide.getFinNFe().equals (FIN_NFE_AJUSTE)
				|| ide.getFinNFe().equals (FIN_NFE_COMPLEMENTAR))
			ide.setIndPres (IND_PRES_N_A);
		else
			ide.setIndPres (IND_PRES_TELE);	//	TODO: Outras formas de emissão
		
		//	0 = Emissão de NF-e com aplicativo do contribuinte
		ide.setProcEmi (TProcEmi.X_0);
		ide.setVerProc (VERSAO_APP);
		
		//	BA. Documento Fiscal Referenciado
		NFref nFref = ide.addNewNFref();
		
		//	C. Identificação do Emitente da Nota Fiscal eletrônica
		Emit emit = infNFe.addNewEmit();
		emit.setCNPJ(chaveNFE.getCNPJ());
		emit.setXNome(normalize (oi.getlbr_LegalEntity()));
		emit.setXFant(normalize (oi.getlbr_Fantasia()));
		
		TEnderEmi enderEmit = emit.addNewEnderEmit();
		enderEmit.setXLgr(normalize (nf.getlbr_OrgAddress1()));
		enderEmit.setNro(normalize (nf.getlbr_OrgAddress2()));
		enderEmit.setXCpl(normalize (nf.getlbr_OrgAddress4()));
		enderEmit.setXBairro(normalize (nf.getlbr_OrgAddress3()));
		enderEmit.setCMun(BPartnerUtil.getCityCode (nf.getlbr_OrgRegion(), nf.getlbr_OrgCity()));
		enderEmit.setXMun(normalize (normalize (nf.getlbr_OrgCity())));
		enderEmit.setUF(TUfEmi.Enum.forString (nf.getlbr_OrgRegion()));
		enderEmit.setCEP(nf.getlbr_OrgPostal());
		enderEmit.setCPais(TEnderEmi.CPais.X_1058);	//	Emitente, somente Brasil
		enderEmit.setXPais(TEnderEmi.XPais.BRASIL);	//	Emitente, somente Brasil
		enderEmit.setFone(nf.getlbr_OrgPhone());
		
		//	IE
		emit.setIE(nf.getlbr_IE());
		
		//	D. Identificação do Fisco Emitente da NF-e
		//		USO EXCLUSIVO DO FISCO
		//	Avulsa avulsa = infNFe.addNewAvulsa();
		
		//	E. Identificação do Destinatário da Nota Fiscal eletrônica
		Dest dest = infNFe.addNewDest();
		dest.setCNPJ(arg0);
		dest.setCPF(arg0);
		dest.setIdEstrangeiro(arg0);
		dest.setXNome(arg0);
		
		//	Endereço do destinatário
		I_W_C_Country country = POWrapper.create(new MCountry(ctx, nf.getC_BPartner_Location().getC_Location().getC_Country_ID(), trxName), I_W_C_Country.class);
		
		if (country == null)
			throw new AdempiereException ("Country not found");
		
		TEndereco enderDest = dest.addNewEnderDest();
		enderDest.setXLgr(normalize (nf.getlbr_BPAddress1()));
		enderDest.setNro(normalize (nf.getlbr_BPAddress2()));
		enderDest.setXCpl(normalize (nf.getlbr_BPAddress4()));
		enderDest.setXBairro(normalize (nf.getlbr_BPAddress3()));
		
		//	Brazil
		if (country.getC_Country_ID() == MLBRNotaFiscal.BRAZIL)
		{
			enderDest.setCMun(BPartnerUtil.getCityCode (nf.getlbr_BPRegion(), nf.getlbr_BPCity()));
			enderDest.setXMun(normalize (normalize (nf.getlbr_BPCity())));
			enderDest.setUF(TUf.Enum.forString (nf.getlbr_BPRegion()));

			/**
			 * 	Nota 1: No caso de NFC-e informar indIEDest=9 e não
			 * 		informar a tag IE do destinatário;
			 */
			if (ide.getMod().equals (MOD_NFCE_65))
				dest.setIndIEDest(IND_IE_NAO_CONTRIB);
			else 
			{
				//	Contribuinte de ICMS, possuí IE
				if (nf.getlbr_BPIE() != null
						&& !nf.getlbr_BPIE().toUpperCase().contains("ISENT"))
				{
					dest.setIndIEDest (IND_IE_CONTRIB);
					dest.setIE (TextUtil.toNumeric (nf.getlbr_BPIE()));
				}
				else
					dest.setIndIEDest (IND_IE_ISENTO);
			}
			
			//	SUFRAMA
			if (nf.getlbr_BPSuframa() != null && !nf.getlbr_BPSuframa().isEmpty())
				dest.setISUF (nf.getlbr_BPSuframa());
		}
		
		//	Other countries
		else
		{
			enderDest.setCMun(BPartnerUtil.EXTCOD);
			enderDest.setXMun(BPartnerUtil.EXTMUN);
			enderDest.setUF(TUf.EX);

			/**
			 * 	Nota 2: No caso de operação com o Exterior informar
			 * 		indIEDest=9 e não informar a tag IE do destinatário;
			 */
			dest.setIndIEDest(IND_IE_NAO_CONTRIB);
		}
		
		enderDest.setCEP(nf.getlbr_BPPostal());
		enderDest.setCPais(Tpais.Enum.forString (country.getlbr_CountryCode()));
		enderDest.setXPais(AdempiereLBR.getCountry_trl ((MCountry) POWrapper.getPO (country)));
		enderDest.setFone(nf.getlbr_OrgPhone());
		
		//	F. Identificação do Local de Retirada
		//	G. Identificação do Local de Entrega
		TLocal retOuEntreg = null;

		//	Retirada
		if (false) 	//	MOrder.DELIVERYVIARULE_Pickup.equals (nf.getDeliveryViaRule ()))
			if (!nf.isSamePickUpAddr())
				retOuEntreg = infNFe.addNewRetirada();
		
		//	Entrega
		else if (!nf.isSameDeliveryAddr())
				retOuEntreg = infNFe.addNewEntrega();
		
		//	Endereço não obrigatório caso seja igual ao do parceiro
		//		para entrega ou igual ao emitente no caso de retirada
		if (retOuEntreg != null)
		{
			//	CNPJ ou CPF
			if (false) //"PF".equals(nf.getlbr_BPTypeBR()))
				retOuEntreg.setCPF(nf.getlbr_BPDeliveryCNPJ());
			else
				retOuEntreg.setCNPJ(nf.getlbr_BPDeliveryCNPJ());
			//
			retOuEntreg.setXLgr(normalize (nf.getlbr_BPDeliveryAddress1()));
			retOuEntreg.setNro(normalize (nf.getlbr_BPDeliveryAddress2()));
			retOuEntreg.setXCpl(normalize (nf.getlbr_BPDeliveryAddress4()));
			retOuEntreg.setXBairro(normalize (nf.getlbr_BPDeliveryAddress3()));
			
			if (nf.getlbr_Delivery_Location().getC_Location().getC_Country_ID() != MLBRNotaFiscal.BRAZIL)
			{
				retOuEntreg.setCMun(BPartnerUtil.EXTCOD);
				retOuEntreg.setXMun(BPartnerUtil.EXTMUN);
				retOuEntreg.setUF(TUf.EX);
			}
			else
			{
				retOuEntreg.setCMun(BPartnerUtil.getCityCode (nf.getlbr_BPDeliveryRegion(), nf.getlbr_BPDeliveryCity()));
				retOuEntreg.setXMun(normalize (normalize (nf.getlbr_BPDeliveryCity())));
				retOuEntreg.setUF(TUf.Enum.forString (nf.getlbr_BPDeliveryRegion()));
			}
		}
		//	GA. Autorização para obter XML
		AutXML autXML = infNFe.addNewAutXML();
		
		//	H. Detalhamento de Produtos e Serviços da NF-e
		Det det = infNFe.addNewDet();
		
		//	I. Produtos e Serviços da NF-e
		Prod prod = det.addNewProd();
		
		//	I01. Produtos e Serviços / Declaração de Importação
		DI di = prod.addNewDI();
		
		//	I03. Produtos e Serviços / Grupo de Exportação
		DetExport detExport = prod.addNewDetExport();
		
		//	I05. Produtos e Serviços / Pedido de Compra
		prod.setXPed("");
		prod.setNItemPed("");
		
		//	I07. Produtos e Serviços / Grupo Diversos
		prod.setNFCI("");
		
		/**
		 * 	J. Produto Específico
		 * 
		 * 		Grupo opcional, somente um 
		 * 	deles poderá ser informado: Veículo, Medicamentos, Armas, Combustível.
		 * 	
		 * 	JA. Detalhamento Específico de Veículos novos
		 * 	K. Detalhamento Específico de Medicamento e de 
		 * 		matérias-primas farmacêuticas
		 * 	L. Detalhamento Específico de Armamentos
		 * 	LA. Detalhamento Específico de Combustíveis
		 * 	LB. Detalhamento Específico para Operação com Papel Imune
		 */
//		if (product.getType . equals ( Veiculo ))
//			;
//		else if (product.getType . equals ( Medicamento ))
//			;
//		....
		
		//	M. Tributos incidentes no Produto ou Serviço
		Imposto imposto = det.addNewImposto();
		
		//	UA. Tributos Devolvidos (para o item da NF-e)
		ImpostoDevol impostoDevol = det.addNewImpostoDevol();
		
		//	V. Informações adicionais (para o item da NF-e)
//		det.setInfAdProd("");
		
		//	W. Total da NF-e
		Total total = infNFe.addNewTotal();
		ICMSTot icmsTot = total.addNewICMSTot();
		
		//	W01. Total da NF-e / ISSQN
		ISSQNtot issqNtot = total.addNewISSQNtot();
		
		//	W02. Total da NF-e / Retenção de Tributos
		RetTrib retTrib = total.addNewRetTrib();
		
		//	X. Informações do Transporte da NF-e
		Transp transp = infNFe.addNewTransp();
		
		//	Y. Dados da Cobrança
		Cobr cobr = infNFe.addNewCobr();
		
		//	YA. Formas de Pagamento
		Pag pag = infNFe.addNewPag();
		
		//	Z. Informações Adicionais da NF-e
		infNFe.addNewInfAdic();
		
		//	ZA. Informações de Comércio Exterior
		Exporta exporta = infNFe.addNewExporta();
		
		//	ZB. Informações de Compras
		Compra compra = infNFe.addNewCompra();
		
		//	ZC. Informações do Registro de Aquisição de Cana
		Cana cana = infNFe.addNewCana();
		
		//	ZZ. Informações da Assinatura Digital
		
		
		return "@Success@";
	}	//	geraCorpoNFe
	
	/**
	 * 	Normalize
	 * 
	 * 	@param text
	 * 	@return
	 */
	private static String normalize (String text)
	{
		if (text == null || text.isEmpty())
			return text;
		//
		text = text.replaceAll ("<", "&lt;");
		text = text.replaceAll (">", "&gt;");
		text = text.replaceAll ("&", "&amp;");
		text = text.replaceAll ("\"", "&quot;");
		text = text.replaceAll ("'", "&#39;");
		//
		return text.trim();
	}	//	normalize
	
	/**
	 * 	Convert Date
	 * 	@param ts
	 * 	@return
	 */
	private static String convertDate (Timestamp ts)
	{
		TextUtil.timeToString (ts, "yyyy-MM-dd'T'HH:mm:ssZ");
		return "";
	}	//	convertDate
}	//	NFeXMLGenerator
