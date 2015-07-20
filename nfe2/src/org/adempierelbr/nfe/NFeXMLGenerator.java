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

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRAuthorizedAccessXML;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalDocRef;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.model.MLBROpenItem;
import org.adempierelbr.model.X_LBR_NFDI;
import org.adempierelbr.model.X_LBR_NFLineTax;
import org.adempierelbr.nfe.beans.ChaveNFE;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.SignatureUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.adempierelbr.wrapper.I_W_C_Country;
import org.adempierelbr.wrapper.I_W_M_Product;
import org.compiere.model.MAttachment;
import org.compiere.model.MCountry;
import org.compiere.model.MDocType;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

import br.inf.portalfiscal.nfe.v8f.NFeDocument;
import br.inf.portalfiscal.nfe.v8f.TAmb;
import br.inf.portalfiscal.nfe.v8f.TCfop;
import br.inf.portalfiscal.nfe.v8f.TCodUfIBGE;
import br.inf.portalfiscal.nfe.v8f.TEnderEmi;
import br.inf.portalfiscal.nfe.v8f.TEndereco;
import br.inf.portalfiscal.nfe.v8f.TFinNFe;
import br.inf.portalfiscal.nfe.v8f.TIpi;
import br.inf.portalfiscal.nfe.v8f.TIpi.IPINT;
import br.inf.portalfiscal.nfe.v8f.TIpi.IPITrib;
import br.inf.portalfiscal.nfe.v8f.TLocal;
import br.inf.portalfiscal.nfe.v8f.TMod;
import br.inf.portalfiscal.nfe.v8f.TNFe;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.AutXML;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Cobr;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Cobr.Dup;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Cobr.Fat;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Dest;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Det;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Det.Imposto;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Det.Imposto.COFINS.COFINSAliq;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Det.Imposto.COFINS.COFINSNT;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Det.Imposto.COFINS.COFINSOutr;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Det.Imposto.COFINS.COFINSQtde;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Det.Imposto.COFINSST;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Det.Imposto.ICMS.ICMS00;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Det.Imposto.ICMS.ICMS10;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Det.Imposto.ICMS.ICMS20;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Det.Imposto.ICMS.ICMS30;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Det.Imposto.ICMS.ICMS40;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Det.Imposto.ICMS.ICMS51;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Det.Imposto.ICMS.ICMS60;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Det.Imposto.ICMS.ICMS70;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Det.Imposto.ICMS.ICMS90;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Det.Imposto.ICMS.ICMSSN101;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Det.Imposto.ICMS.ICMSSN102;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Det.Imposto.ICMS.ICMSSN201;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Det.Imposto.ICMS.ICMSSN202;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Det.Imposto.ICMS.ICMSSN500;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Det.Imposto.ICMS.ICMSSN900;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Det.Imposto.II;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Det.Imposto.PIS.PISAliq;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Det.Imposto.PIS.PISNT;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Det.Imposto.PIS.PISOutr;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Det.Imposto.PIS.PISQtde;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Det.Imposto.PISST;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Det.Prod;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Det.Prod.DI;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Det.Prod.DI.Adi;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Det.Prod.DI.TpIntermedio;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Det.Prod.DI.TpViaTransp;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Det.Prod.DetExport;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Emit;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Ide;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Ide.NFref;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Ide.NFref.RefECF;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Ide.NFref.RefNF;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Ide.NFref.RefNFP;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.InfAdic;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.InfAdic.ObsCont;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Total;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Total.ICMSTot;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Transp;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Transp.Transporta;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Transp.Vol;
import br.inf.portalfiscal.nfe.v8f.TProcEmi;
import br.inf.portalfiscal.nfe.v8f.TUf;
import br.inf.portalfiscal.nfe.v8f.TUfEmi;
import br.inf.portalfiscal.nfe.v8f.Torig;
import br.inf.portalfiscal.nfe.v8f.Tpais;

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
	public static final String FILE_EXT      = "-nfe.xml";

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
	private static final TMod.Enum MOD_NFE_55			=	TMod.X_55;
	private static final TMod.Enum MOD_NFCE_65			=	TMod.X_65;

	/**	Tipo de NF				*/
	private static final Ide.TpNF.Enum TP_NF_ENTRADA	=	Ide.TpNF.X_0;
	private static final Ide.TpNF.Enum TP_NF_SAIDA		=	Ide.TpNF.X_1;
	
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
	
	/**	Homologação						*/
	private static final String HOMOLOG_BPNAME	=	"NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL";
	private static final String HOMOLOG_BPCNPJ	=	"99999999000191";
	
	/** NCM	para serviços				*/
	private static final String NCM_SERVICE		=	"00";
	
	/**	Indicação do  Total				*/
	private static final Det.Prod.IndTot.Enum IND_TOT_NAO_COMPOE 	= Det.Prod.IndTot.X_0;
	private static final Det.Prod.IndTot.Enum IND_TOT_COMPOE 		= Det.Prod.IndTot.X_1;
	
	/**	Identificador de local de destino da operação	*/
	private static final Ide.IdDest.Enum ID_DEST_INTERNA 			= Ide.IdDest.X_1;
	private static final Ide.IdDest.Enum ID_DEST_INTERESTADUAL 		= Ide.IdDest.X_2;
	private static final Ide.IdDest.Enum ID_DEST_EXTERIOR 			= Ide.IdDest.X_3;
	
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
	public static final String CST_IPI_05		= "05";
	public static final String CST_IPI_49		= "49";
	public static final String CST_IPI_50		= "50";
	public static final String CST_IPI_51		= "51";
	public static final String CST_IPI_52		= "52";
	public static final String CST_IPI_53		= "53";
	public static final String CST_IPI_54		= "54";
	public static final String CST_IPI_55		= "55";
	public static final String CST_IPI_99		= "99";

	/**	Código de Enquadramento Legal do IPI			*/
	public static final String CENQ_IPI_999		= "999";
	
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
	 * 	Gera o corpo da NF
	 * 
	 * @param ctx Context
	 * @param LBR_NotaFiscal_ID
	 * @param trxName Transação
	 * @return
	 */
	public static String generate (Properties ctx, int LBR_NotaFiscal_ID, String trxName) throws Exception
	{
		if (ctx == null || LBR_NotaFiscal_ID <= 0)
			return "@Error@ - Invalid context";
		
		//	Gera o XML
		return generate (new MLBRNotaFiscal (ctx, LBR_NotaFiscal_ID, trxName));
	}	//	generate
	
	/**
	 * Gera o corpo da NF
	 * 
	 * @param nf Nota Fiscal
	 * @return Success or Error message
	 * @throws Exception
	 */
	public static String generate (MLBRNotaFiscal nf) throws Exception
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
		chaveNFE.setCNPJ(toNumericStr (nf.getlbr_CNPJ()));
		chaveNFE.setMod(nf.getlbr_NFModel());
		chaveNFE.setSerie(nf.getlbr_NFSerie());
		chaveNFE.setTpEmis(tpEmissao.toString());
		chaveNFE.setNNF(TextUtil.lPad(nf.getDocumentNo(), 9));
		chaveNFE.setCNF();	//	Random code	
		
		//	A. Dados da Nota Fiscal eletrônica
		InfNFe infNFe = nfe.addNewInfNFe();
		infNFe.setVersao(NFeUtil.VERSAO_LAYOUT);
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
		ide.setDhEmi(normalizeTZ (nf.getDateDoc()));
		
		if (nf.getlbr_DateInOut() != null)
			ide.setDhSaiEnt(normalizeTZ (nf.getlbr_DateInOut()));
		
		ide.setTpNF (nf.isSOTrx() ? TP_NF_SAIDA : TP_NF_ENTRADA);
		ide.setIdDest (nf.getIdDestinoOp ());
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
		ide.setVerProc (NFeUtil.VERSAO_APP);
		
		//	BA. Documento Fiscal Referenciado
		MLBRNotaFiscalDocRef[] docRefs = MLBRNotaFiscalDocRef.get (nf.getLBR_NotaFiscal_ID(), nf.get_TrxName());		
		for (MLBRNotaFiscalDocRef docRef: docRefs)
		{
			NFref nFref = ide.addNewNFref();
			
			//	NF-e
			if (MLBRNotaFiscalDocRef.LBR_FISCALDOCREFTYPE_NF_E.equals(docRef.getLBR_FiscalDocRefType()))
				nFref.setRefNFe(docRef.getlbr_NFeID());
			
			//	NF Modelo 1 e 1-A
			else if (MLBRNotaFiscalDocRef.LBR_FISCALDOCREFTYPE_NFManual11A.equals(docRef.getLBR_FiscalDocRefType()))
			{
				RefNF refNF = nFref.addNewRefNF();
				refNF.setCUF(TCodUfIBGE.Enum.forString(BPartnerUtil.getRegionCode (docRef.getC_Region_ID())));
				refNF.setAAMM(TextUtil.timeToString(docRef.getDateDoc(), "yyMM"));
				refNF.setCNPJ(toNumericStr(docRef.getlbr_CNPJ()));
				refNF.setMod(InfNFe.Ide.NFref.RefNF.Mod.Enum.forString(toNumericStr(docRef.getlbr_NFModel())));
				refNF.setSerie(toNumericStr(docRef.getlbr_NFSerie()));
				refNF.setNNF(toNumericStr(docRef.getDocumentNo()));
			}
			
			//	NF de Produtor Rural
			else if (MLBRNotaFiscalDocRef.LBR_FISCALDOCREFTYPE_NFProdutorRural.equals(docRef.getLBR_FiscalDocRefType()))
			{
				RefNFP refNFP = nFref.addNewRefNFP();
				refNFP.setCUF(TCodUfIBGE.Enum.forString(BPartnerUtil.getRegionCode (docRef.getC_Region_ID())));
				refNFP.setAAMM(TextUtil.timeToString(docRef.getDateDoc(), "yyMM"));
				
				if (MLBRNotaFiscalDocRef.LBR_BPTYPEBR_PJ_LegalEntity.equals(docRef.getlbr_BPTypeBR()))
					refNFP.setCNPJ(toNumericStr(docRef.getlbr_CNPJ()));
				else
					refNFP.setCPF(toNumericStr(docRef.getlbr_CPF()));
				refNFP.setIE(toNumericStr(docRef.getlbr_IE()));
				refNFP.setMod(InfNFe.Ide.NFref.RefNFP.Mod.Enum.forString(toNumericStr(docRef.getlbr_NFModel())));
				refNFP.setSerie(toNumericStr(docRef.getlbr_NFSerie()));
				refNFP.setNNF(toNumericStr(docRef.getDocumentNo()));
			}
			
			//	CT-e
			else if (MLBRNotaFiscalDocRef.LBR_FISCALDOCREFTYPE_CT_E.equals(docRef.getLBR_FiscalDocRefType()))
				nFref.setRefCTe(docRef.getlbr_NFeID());
			
			//	ECF
			else if (MLBRNotaFiscalDocRef.LBR_FISCALDOCREFTYPE_CupomFiscalECF.equals(docRef.getLBR_FiscalDocRefType()))
			{
				RefECF refECF = nFref.addNewRefECF();
				refECF.setMod(InfNFe.Ide.NFref.RefECF.Mod.Enum.forString(toNumericStr(docRef.getlbr_NFModel())));
				refECF.setNECF(toNumericStr(docRef.getDocumentNo()));
				refECF.setNCOO(toNumericStr(docRef.getLBR_COOno()));
			}
		}
		
		//	C. Identificação do Emitente da Nota Fiscal eletrônica
		Emit emit = infNFe.addNewEmit();
		emit.setCNPJ(chaveNFE.getCNPJ());
		emit.setXNome(normalize (oi.getlbr_LegalEntity()));
		emit.setXFant(normalize (oi.getlbr_Fantasia()));
		
		TEnderEmi enderEmit = emit.addNewEnderEmit();
		enderEmit.setXLgr(normalize (nf.getlbr_OrgAddress1()));
		enderEmit.setNro(normalize (nf.getlbr_OrgAddress2()));
		
		if (nf.getlbr_OrgAddress4() != null)
			enderEmit.setXCpl(normalize (nf.getlbr_OrgAddress4()));
		
		enderEmit.setXBairro(normalize (nf.getlbr_OrgAddress3()));
		enderEmit.setCMun(BPartnerUtil.getCityCode (nf.getlbr_OrgRegion(), nf.getlbr_OrgCity()));
		enderEmit.setXMun(normalize (normalize (nf.getlbr_OrgCity())));
		enderEmit.setUF(TUfEmi.Enum.forString (nf.getlbr_OrgRegion()));
		enderEmit.setCEP(toNumericStr (nf.getlbr_OrgPostal()));
		enderEmit.setCPais(TEnderEmi.CPais.X_1058);	//	Emitente, somente Brasil
		enderEmit.setXPais(TEnderEmi.XPais.BRASIL);	//	Emitente, somente Brasil
		
		if (nf.getlbr_OrgPhone() != null)
			enderEmit.setFone(toNumericStr (nf.getlbr_OrgPhone()));
		
		//	IE
		emit.setIE(toNumericStr (nf.getlbr_IE()));
		
		String regime = (String) MOrgInfo.get (nf.getCtx(), nf.getAD_Org_ID(), null).get_Value("Z_TaxRegime");
		
		//	Regime Normal
		String crt = "3";
		
		//	Simples Nacional
		if (regime != null && regime.equals("S"))
			crt = "1";
		
		emit.setCRT(InfNFe.Emit.CRT.Enum.forString (crt));
		
		//	D. Identificação do Fisco Emitente da NF-e
		//		USO EXCLUSIVO DO FISCO
		//	Avulsa avulsa = infNFe.addNewAvulsa();
		
		//	E. Identificação do Destinatário da Nota Fiscal eletrônica
		Dest dest = infNFe.addNewDest();
		
		//	Homologação
		if (!T_AMB_PRODUCAO.equals(ide.getTpAmb()))
		{
			dest.setCNPJ (HOMOLOG_BPCNPJ);
			dest.setXNome (HOMOLOG_BPNAME);
		}
		
		//	Produção
		else
		{
			if (MLBRNotaFiscal.LBR_BPTYPEBR_PF_Individual.equals(nf.getlbr_BPTypeBR()))
				dest.setCPF(toNumericStr (nf.getlbr_BPDeliveryCNPJ()));
			
			else if (MLBRNotaFiscal.LBR_BPTYPEBR_PJ_LegalEntity.equals(nf.getlbr_BPTypeBR()))
				dest.setCNPJ(toNumericStr (nf.getlbr_BPDeliveryCNPJ()));

			else if (nf.getC_BPartner_ID() > 0
					&& nf.getC_BPartner().getTaxID() != null
					&& nf.getC_BPartner().getTaxID().trim().length() >= 5)
				dest.setIdEstrangeiro(nf.getC_BPartner().getTaxID());
			
			//	ID do Estrangeiro não especificado
			else
				dest.setIdEstrangeiro("");
			
			dest.setXNome(normalize (nf.getBPName()));
		}
		
		//	Endereço do destinatário
		I_W_C_Country country = POWrapper.create(new MCountry(ctx, nf.getC_BPartner_Location().getC_Location().getC_Country_ID(), trxName), I_W_C_Country.class);
		
		if (country == null)
			throw new AdempiereException ("Country not found");
		
		TEndereco enderDest = dest.addNewEnderDest();
		enderDest.setXLgr(normalize (nf.getlbr_BPAddress1()));
		enderDest.setNro(normalize (nf.getlbr_BPAddress2()));
		
		if (nf.getlbr_BPAddress4() != null)
			enderDest.setXCpl(normalize (nf.getlbr_BPAddress4()));
		
		enderDest.setXBairro(normalize (nf.getlbr_BPAddress3()));
		
		//	Brazil
		if (country.getC_Country_ID() == MLBRNotaFiscal.BRAZIL)
		{
			enderDest.setCMun(BPartnerUtil.getCityCode (nf.getlbr_BPRegion(), nf.getlbr_BPCity()));
			enderDest.setXMun(normalize (normalize (nf.getlbr_BPCity())));
			enderDest.setUF(TUf.Enum.forString (nf.getlbr_BPRegion()));
			enderDest.setCEP(toNumericStr (nf.getlbr_BPPostal()));

			/**
			 * 	Nota 1: No caso de NFC-e informar indIEDest=9 e não
			 * 		informar a tag IE do destinatário;
			 */
			if (ide.getMod().equals (MOD_NFCE_65))
				dest.setIndIEDest(IND_IE_NAO_CONTRIB);
			else 
			{
				//	Contribuinte de ICMS, possuí IE
				if (T_AMB_PRODUCAO.equals(ide.getTpAmb())
						&& nf.getlbr_BPIE() != null
						&& !nf.getlbr_BPIE().toUpperCase().contains("ISENT"))
				{
					dest.setIndIEDest (IND_IE_CONTRIB);
					dest.setIE (toNumericStr (nf.getlbr_BPIE()));
				}
				else
					dest.setIndIEDest (IND_IE_ISENTO);
			}
			
			//	SUFRAMA
			if (nf.getlbr_BPSuframa() != null && !nf.getlbr_BPSuframa().isEmpty())
				dest.setISUF (toNumericStr (nf.getlbr_BPSuframa()));
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
		
		enderDest.setCPais(Tpais.Enum.forString (country.getlbr_CountryCode().substring(1)));
		enderDest.setXPais(AdempiereLBR.getCountry_trl ((MCountry) POWrapper.getPO (country)));
		
		if (nf.getlbr_BPPhone() != null)
			enderDest.setFone(toNumericStr (nf.getlbr_BPPhone()));
		
		//	F. Identificação do Local de Retirada
		//	G. Identificação do Local de Entrega
		TLocal retOuEntreg = null;

		//	Retirada
		if (MLBRNotaFiscal.DELIVERYVIARULE_Pickup.equals (nf.getDeliveryViaRule ()))
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
			if (MLBRNotaFiscal.LBR_BPTYPEBR_PF_Individual.equals(nf.getlbr_BPTypeBR()))
				retOuEntreg.setCPF(toNumericStr (nf.getlbr_BPDeliveryCNPJ()));
			
			else if (MLBRNotaFiscal.LBR_BPTYPEBR_PJ_LegalEntity.equals(nf.getlbr_BPTypeBR()))
				retOuEntreg.setCNPJ(toNumericStr (nf.getlbr_BPDeliveryCNPJ()));
			//
			retOuEntreg.setXLgr(normalize (nf.getlbr_BPDeliveryAddress1()));
			retOuEntreg.setNro(normalize (nf.getlbr_BPDeliveryAddress2()));
			
			if (nf.getlbr_BPDeliveryAddress4() != null)
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
		MLBRAuthorizedAccessXML[] autXMLs = MLBRAuthorizedAccessXML.get (oi.getAD_Org_ID(), nf.getC_BPartner_ID());

		// Registra os CNPJ e CPF já adicionados no XML
		String duplicado = "";
		
		for (MLBRAuthorizedAccessXML autAccessXML : autXMLs)
		{
			// Não Adicionar CNPJ do Emissor
			if (toNumericStr(autAccessXML.getlbr_CNPJ()).equals(toNumericStr(nf.getlbr_CNPJ())))
				continue;
			
			if (MLBRAuthorizedAccessXML.LBR_BPTYPEBR_PJ_LegalEntity.equals(autAccessXML.getlbr_BPTypeBR()))
			{
				if (toNumericStr(autAccessXML.getlbr_CNPJ()).equals(toNumericStr (nf.getlbr_BPDeliveryCNPJ())))
					continue;
				
				else if (!duplicado.contains(toNumericStr (autAccessXML.getlbr_CNPJ ())))
				{
					//	Adiciona os CNPJ/CPF Validados no XML			
					AutXML autXML = infNFe.addNewAutXML();
					
					autXML.setCNPJ (toNumericStr (autAccessXML.getlbr_CNPJ ()));
					duplicado += toNumericStr (autAccessXML.getlbr_CNPJ ()) + "; ";
				}	
			}
			
			else if (MLBRAuthorizedAccessXML.LBR_BPTYPEBR_PF_Individual.equals(autAccessXML.getlbr_BPTypeBR()))
			{
				if (toNumericStr(autAccessXML.getlbr_CPF()).equals(toNumericStr (nf.getlbr_BPDeliveryCNPJ())))
					continue;				
					
				else if (!duplicado.contains(toNumericStr (autAccessXML.getlbr_CPF())))
				{
					//	Adiciona os CNPJ/CPF Validados no XML			
					AutXML autXML = infNFe.addNewAutXML();
					
					autXML.setCPF (toNumericStr (autAccessXML.getlbr_CPF()));
					duplicado += toNumericStr (autAccessXML.getlbr_CPF()) + "; ";
				}
			}
			
			//	Limit de 10 registros por NF
			if (infNFe.getAutXMLArray().length == 10)
				break;
		}
		
		//	Linhas do documento
		for (MLBRNotaFiscalLine nfl : nf.getLines())
		{
			//	H. Detalhamento de Produtos e Serviços da NF-e
			Det det = infNFe.addNewDet();	
			det.setNItem (String.valueOf (nfl.getLine ()));
			
			//	I. Produtos e Serviços da NF-e
			Prod prod = det.addNewProd();
			prod.setCProd(nfl.getProductValue());
			
			//	EAN
			String ean = nfl.getM_Product().getUPC();
			if (ean == null)
			{
				prod.setCEAN("");
				prod.setCEANTrib("");
			}
			else
			{
				prod.setCEAN(toNumericStr (ean));
				prod.setCEANTrib(toNumericStr (ean));
			}
			
			prod.setXProd(normalize (nfl.getProductName()));
			
			//	Serviço
			if (nfl.islbr_IsService())
				prod.setNCM(NCM_SERVICE);
			else
				prod.setNCM (toNumericStr (nfl.getlbr_NCMName ()));
			
//			prod.addNVE(arg0);		//	FIXME
//			prod.setEXTIPI(arg0);	//	FIXME
			prod.setCFOP(TCfop.Enum.forString (toNumericStr (nfl.getlbr_CFOPName())));
			prod.setUCom(normalize (nfl.getlbr_UOMName()));
			prod.setQCom(normalize4  (nfl.getQty()));
			prod.setVUnCom(normalize10  (nfl.getPrice()));
			prod.setVProd(normalize  (nfl.getLineTotalAmt()));
//			prod.setCEANTrib();		//	Check above (after setCEAN)
			prod.setUTrib(normalize (nfl.getlbr_UOMName()));
			prod.setQTrib(normalize4  (nfl.getQty()));
			prod.setVUnTrib(normalize10  (nfl.getPrice()));
			
			//	Valores adicionais
			BigDecimal freightAmt 		= nfl.getFreightAmt();
			BigDecimal insuranceAmt	 	= nfl.getlbr_InsuranceAmt();
			BigDecimal discountAmt 		= nfl.getDiscountAmt();
			BigDecimal otherChargesAmt 	= nfl.getLBR_OtherChargesAmt();
			
			//	Frete
			if (freightAmt != null && freightAmt.signum() == 1)
				prod.setVFrete(normalize  (freightAmt));
			
			//	Seguro
			if (insuranceAmt != null && insuranceAmt.signum() == 1)			
				prod.setVSeg(normalize  (insuranceAmt));
			
			//	Desconto
			if (discountAmt != null && discountAmt.signum() == 1)
				prod.setVDesc(normalize  (discountAmt));
			
			//	Outras despesas
			if (otherChargesAmt != null && otherChargesAmt.signum() == 1)
				prod.setVOutro(normalize  (otherChargesAmt));
			
			prod.setIndTot (IND_TOT_COMPOE);	//	FIXME
			
			//	Operação com o Exterior
			if (ID_DEST_EXTERIOR.equals (ide.getIdDest()))

				//	I01. Produtos e Serviços / Declaração de Importação
				if (TP_NF_ENTRADA.equals (ide.getTpNF())
						&& nfl.get_Value ("LBR_NFDI_ID") != null)
				{
					DI di = prod.addNewDI();
					
					X_LBR_NFDI nfdi = new X_LBR_NFDI (ctx, (Integer) nfl.get_Value ("LBR_NFDI_ID"), null);
					//
					di.setNDI(nfdi.getlbr_DI ());
					di.setDDI(TextUtil.timeToString (nfdi.getDateTrx(), "yyyy-MM-dd"));
					di.setXLocDesemb(normalize (nfdi.getlbr_LocDesemb()));
					di.setUFDesemb(TUfEmi.Enum.forString (nfdi.getlbr_BPRegion()));
					di.setDDesemb(TextUtil.timeToString (nfdi.getlbr_DataDesemb(), "yyyy-MM-dd"));
					di.setTpViaTransp(TpViaTransp.X_4);		//FIXME
//					di.setVAFRMM(arg0);						//FIXME
					di.setTpIntermedio(TpIntermedio.X_1);	//FIXME
					di.setCExportador (normalize (nfdi.getlbr_CodExportador()));

					Adi adi = di.addNewAdi();
					adi.setNAdicao(nfl.get_ValueAsString("lbr_NumAdicao"));
					adi.setNSeqAdic(nfl.get_ValueAsString("lbr_NumSeqItem"));
					adi.setCFabricante(normalize (nfl.get_ValueAsString("Manufacturer")));
//					adi.setVDescDI(Env.ZERO);	//TODO
//					adi.setNDraw(arg0);			//TODO
				}
			
				//	I03. Produtos e Serviços / Grupo de Exportação
				else if (TP_NF_SAIDA.equals (ide.getTpNF())
						&& false)	//FIXME TODO
				{
					DetExport detExport = prod.addNewDetExport();
				}
			
			//	I05. Produtos e Serviços / Pedido de Compra
			if (nfl.getC_InvoiceLine_ID() > 0 && nfl.getC_InvoiceLine().getC_OrderLine_ID() > 0)
			{
				MOrderLine orderline = new MOrderLine (Env.getCtx(), nfl.getC_InvoiceLine().getC_OrderLine_ID(), null);
				
				//	Preenche o pedido referenciado (xPed)
				String xPed = orderline.getParent().getPOReference();
				if (xPed != null && !xPed.trim().isEmpty())
					prod.setXPed (xPed);

				//	Preenche o item do pedido referenciado (nItemPed)
				String nItemPed = orderline.get_ValueAsString("POReference");
				if (nItemPed != null && !nItemPed.trim().isEmpty())
					prod.setNItemPed(nItemPed);
			}
			
			//	I07. Produtos e Serviços / Grupo Diversos
			String nFCI = nfl.get_ValueAsString ("LBR_FCIValue");
			if (nFCI != null && !nFCI.trim().isEmpty())
				prod.setNFCI (nFCI);
			
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
//			if (product.getType . equals ( Veiculo ))
//				;
//			else if (product.getType . equals ( Medicamento ))
//				;
//			....
			
			//	M. Tributos incidentes no Produto ou Serviço
			Imposto imposto = det.addNewImposto();
			
			//	N. ICMS Normal e ST
			if (nfl.getICMSTax() != null)
			{
				X_LBR_NFLineTax icmsTax = nfl.getICMSTax();

				//	ICMS ST
				X_LBR_NFLineTax icmsSTTax = nfl.getICMSSTTax();

				//	CST = Código de Situação Tributária
				String taxStatus = icmsTax.getLBR_TaxStatus().getName();
				
				//	Product Source
				I_W_M_Product prdct = POWrapper.create(MProduct.get(ctx, nfl.getM_Product_ID()), I_W_M_Product.class);
				String productSource = prdct.getlbr_ProductSource();
				
				if (CST_ICMS_00.equals (taxStatus))
				{
					ICMS00 icms00 = imposto.addNewICMS().addNewICMS00();
					icms00.setOrig(Torig.Enum.forString(productSource));
					icms00.setCST(Det.Imposto.ICMS.ICMS00.CST.X_00);
					icms00.setModBC(InfNFe.Det.Imposto.ICMS.ICMS00.ModBC.X_0);	//	FIXME
					icms00.setVBC(normalize  (icmsTax.getlbr_TaxBaseAmt()));
					icms00.setPICMS(normalize4  (icmsTax.getlbr_TaxRate()));
					icms00.setVICMS(normalize  (icmsTax.getlbr_TaxAmt()));
				}
				else if (CST_ICMS_10.equals (taxStatus))
				{
					if (icmsSTTax != null)
					{
						ICMS10 icms10 = imposto.addNewICMS().addNewICMS10();
						icms10.setOrig(Torig.Enum.forString(productSource));
						icms10.setCST(Det.Imposto.ICMS.ICMS10.CST.X_10);
						icms10.setModBC(InfNFe.Det.Imposto.ICMS.ICMS10.ModBC.X_0);		//	FIXME
						icms10.setVBC(normalize  (icmsTax.getlbr_TaxBaseAmt()));
						icms10.setPICMS(normalize4  (icmsTax.getlbr_TaxRate()));
						icms10.setVICMS(normalize  (icmsTax.getlbr_TaxAmt()));
						icms10.setModBCST(InfNFe.Det.Imposto.ICMS.ICMS10.ModBCST.X_4);	//	FIXME: MVA %
						
						//	MVA - IVA
//						if (nfl.getMVA)	//	FIXME
//						icms10.setPMVAST(normalize4  (nfl.getMVA, 4));
						
						//	Redução na BC
						if (icmsSTTax.getlbr_TaxBase() != null 
								&& icmsSTTax.getlbr_TaxBase().signum() == 1
								&& icmsSTTax.getlbr_TaxBase().compareTo(Env.ONEHUNDRED) != 0)
							icms10.setPRedBCST(normalize4  (icmsSTTax.getlbr_TaxBase()));
						
						//	ICMS ST
						icms10.setVBCST(normalize  (icmsSTTax.getlbr_TaxBaseAmt()));
						icms10.setPICMSST(normalize4  (icmsSTTax.getlbr_TaxRate()));
						icms10.setVICMSST(normalize  (icmsSTTax.getlbr_TaxAmt()));
					}
				}
				else if (CST_ICMS_20.equals (taxStatus))
				{
					ICMS20 icms20 = imposto.addNewICMS().addNewICMS20();
					icms20.setOrig(Torig.Enum.forString(productSource));
					icms20.setCST(Det.Imposto.ICMS.ICMS20.CST.X_20);
					icms20.setModBC(InfNFe.Det.Imposto.ICMS.ICMS20.ModBC.X_0);		//	FIXME
					icms20.setPRedBC(normalize4  (icmsTax.getlbr_TaxBase()));
					icms20.setVBC(normalize  (icmsTax.getlbr_TaxBaseAmt()));
					icms20.setPICMS(normalize4  (icmsTax.getlbr_TaxRate()));
					icms20.setVICMS(normalize  (icmsTax.getlbr_TaxAmt()));
				}
				else if (CST_ICMS_30.equals (taxStatus))
				{
					if (icmsSTTax != null)
					{
						ICMS30 icms30 = imposto.addNewICMS().addNewICMS30();
						icms30.setOrig(Torig.Enum.forString(productSource));
						icms30.setCST(Det.Imposto.ICMS.ICMS30.CST.X_30);
						icms30.setModBCST(InfNFe.Det.Imposto.ICMS.ICMS30.ModBCST.X_4);	//	FIXME: MVA %
						
						//	MVA - IVA
//						if (nfl.getMVA)	//	FIXME
//						icms10.setPMVAST(normalize4  (nfl.getMVA, 4));
						
						//	Redução na BC
						if (icmsSTTax.getlbr_TaxBase() != null 
								&& icmsSTTax.getlbr_TaxBase().signum() == 1
								&& icmsSTTax.getlbr_TaxBase().compareTo(Env.ONEHUNDRED) != 0)
							icms30.setPRedBCST(normalize4  (icmsSTTax.getlbr_TaxBase()));
						
						icms30.setVBCST(normalize (icmsSTTax.getlbr_TaxBaseAmt()));
						icms30.setPICMSST(normalize4  (icmsSTTax.getlbr_TaxRate()));
						icms30.setVICMSST(normalize (icmsSTTax.getlbr_TaxAmt()));
					}
				}
				else if (CST_ICMS_40.equals (taxStatus)
						|| CST_ICMS_41.equals (taxStatus)
						|| CST_ICMS_50.equals (taxStatus))
				{
					ICMS40 icms40 = imposto.addNewICMS().addNewICMS40();
					icms40.setOrig(Torig.Enum.forString(productSource));
					icms40.setCST(Det.Imposto.ICMS.ICMS40.CST.Enum.forString (taxStatus));
				}
				else if (CST_ICMS_51.equals (taxStatus))
				{
					ICMS51 icms51 = imposto.addNewICMS().addNewICMS51();
					icms51.setOrig(Torig.Enum.forString(productSource));
					icms51.setCST(Det.Imposto.ICMS.ICMS51.CST.X_51);
					icms51.setModBC(InfNFe.Det.Imposto.ICMS.ICMS51.ModBC.X_0);	//	FIXME: MVA %
				}
				else if (CST_ICMS_60.equals (taxStatus))
				{
					ICMS60 icms60 = imposto.addNewICMS().addNewICMS60();
					icms60.setOrig(Torig.Enum.forString(productSource));
					icms60.setCST(Det.Imposto.ICMS.ICMS60.CST.X_60);
					
					if (icmsSTTax != null)
					{
						icms60.setVBCSTRet(normalize (icmsSTTax.getlbr_TaxBaseAmt()));
						icms60.setVICMSSTRet(normalize (icmsSTTax.getlbr_TaxAmt()));
					}
				}
				else if (CST_ICMS_70.equals (taxStatus))
				{
					if (icmsSTTax != null)
					{
						ICMS70 icms70 = imposto.addNewICMS().addNewICMS70();
						icms70.setOrig(Torig.Enum.forString(productSource));
						icms70.setCST(Det.Imposto.ICMS.ICMS70.CST.X_70);
						icms70.setPRedBC(normalize (icmsTax.getlbr_TaxBase()));
						icms70.setVBC(normalize (icmsTax.getlbr_TaxBaseAmt()));
						icms70.setPICMS(normalize4  (icmsTax.getlbr_TaxRate()));
						icms70.setVICMS(normalize  (icmsTax.getlbr_TaxAmt()));
						icms70.setModBC(InfNFe.Det.Imposto.ICMS.ICMS70.ModBC.X_0);
						
						//	Redução na BC
						if (icmsSTTax.getlbr_TaxBase() != null 
								&& icmsSTTax.getlbr_TaxBase().signum() == 1
								&& icmsSTTax.getlbr_TaxBase().compareTo(Env.ONEHUNDRED) != 0)
							icms70.setPRedBCST(normalize4  (icmsSTTax.getlbr_TaxBase()));
						
						icms70.setModBCST(InfNFe.Det.Imposto.ICMS.ICMS70.ModBCST.X_4);
						icms70.setVBCST(normalize (icmsSTTax.getlbr_TaxBaseAmt()));
						icms70.setPICMSST(normalize4  (icmsSTTax.getlbr_TaxRate()));
						icms70.setVICMSST(normalize  (icmsSTTax.getlbr_TaxAmt()));
					}
				}
				else if (CST_ICMS_90.equals (taxStatus))
				{
					ICMS90 icms90 = imposto.addNewICMS().addNewICMS90();
					icms90.setOrig(Torig.Enum.forString(productSource));
					icms90.setCST(Det.Imposto.ICMS.ICMS90.CST.X_90);
				}
				else if (CSOSN_101.equals (taxStatus))
				{
					ICMSSN101 icmssn101 = imposto.addNewICMS().addNewICMSSN101();
					icmssn101.setOrig(Torig.Enum.forString(productSource));
					icmssn101.setCSOSN(Det.Imposto.ICMS.ICMSSN101.CSOSN.X_101);
					icmssn101.setPCredSN(normalize4  (icmsTax.getlbr_TaxRate()));
					icmssn101.setVCredICMSSN(normalize  (icmsTax.getlbr_TaxAmt()));
				}
				else if (TextUtil.match(taxStatus, CSOSN_102, CSOSN_103, CSOSN_300, CSOSN_400))
				{
					ICMSSN102 icmssn102 = imposto.addNewICMS().addNewICMSSN102();
					icmssn102.setOrig(Torig.Enum.forString(productSource));
					icmssn102.setCSOSN(Det.Imposto.ICMS.ICMSSN102.CSOSN.Enum.forString (taxStatus));
				}
				else if (CSOSN_201.equals (taxStatus))
				{
					if (icmsSTTax != null)
					{
						ICMSSN201 icmssn201 = imposto.addNewICMS().addNewICMSSN201();
						icmssn201.setOrig(Torig.Enum.forString(productSource));
						icmssn201.setCSOSN(Det.Imposto.ICMS.ICMSSN201.CSOSN.X_201);
						icmssn201.setModBCST(Det.Imposto.ICMS.ICMSSN201.ModBCST.X_4);
						
						//	Redução na BC
						if (icmsSTTax.getlbr_TaxBase() != null 
								&& icmsSTTax.getlbr_TaxBase().signum() == 1
								&& icmsSTTax.getlbr_TaxBase().compareTo(Env.ONEHUNDRED) != 0)
							icmssn201.setPRedBCST(normalize4  (icmsSTTax.getlbr_TaxBase()));
						
						icmssn201.setVBCST(normalize (icmsSTTax.getlbr_TaxBaseAmt()));
						icmssn201.setPICMSST(normalize4  (icmsSTTax.getlbr_TaxRate()));
						icmssn201.setVICMSST(normalize  (icmsSTTax.getlbr_TaxAmt()));
						icmssn201.setPCredSN(normalize4  (icmsTax.getlbr_TaxRate()));
						icmssn201.setVCredICMSSN(normalize  (icmsTax.getlbr_TaxAmt()));
					}
				}
				else if (TextUtil.match(taxStatus, CSOSN_202, CSOSN_203))
				{
					if (icmsSTTax != null)
					{
						ICMSSN202 icmssn202 = imposto.addNewICMS().addNewICMSSN202();
						icmssn202.setOrig(Torig.Enum.forString(productSource));
						icmssn202.setCSOSN(Det.Imposto.ICMS.ICMSSN202.CSOSN.Enum.forString(taxStatus));
						icmssn202.setModBCST(Det.Imposto.ICMS.ICMSSN202.ModBCST.X_4);
						
						//	Redução na BC
						if (icmsSTTax.getlbr_TaxBase() != null 
								&& icmsSTTax.getlbr_TaxBase().signum() == 1
								&& icmsSTTax.getlbr_TaxBase().compareTo(Env.ONEHUNDRED) != 0)
							icmssn202.setPRedBCST(normalize4  (icmsSTTax.getlbr_TaxBase()));
						
						icmssn202.setVBCST(normalize (icmsSTTax.getlbr_TaxBaseAmt()));
						icmssn202.setPICMSST(normalize4  (icmsSTTax.getlbr_TaxRate()));
						icmssn202.setVICMSST(normalize  (icmsSTTax.getlbr_TaxAmt()));
					}
				}
				else if (CSOSN_500.equals (taxStatus))
				{
					ICMSSN500 icmssn500 = imposto.addNewICMS().addNewICMSSN500();
					icmssn500.setOrig(Torig.Enum.forString(productSource));
					icmssn500.setCSOSN(Det.Imposto.ICMS.ICMSSN500.CSOSN.X_500);
				}
				else if (CSOSN_900.equals (taxStatus))
				{
					ICMSSN900 icmssn900 = imposto.addNewICMS().addNewICMSSN900();
					icmssn900.setOrig(Torig.Enum.forString(productSource));
					icmssn900.setCSOSN(Det.Imposto.ICMS.ICMSSN900.CSOSN.X_900);
					icmssn900.setModBC(Det.Imposto.ICMS.ICMSSN900.ModBC.X_0);
					icmssn900.setVBC(normalize (icmsTax.getlbr_TaxBaseAmt()));
					icmssn900.setPICMS(normalize4  (icmsTax.getlbr_TaxRate()));
					icmssn900.setVICMS(normalize  (icmsTax.getlbr_TaxAmt()));
				}
			}
			
			//	O. Imposto sobre Produtos Industrializados
			if (nfl.getIPITax() != null)
			{
				X_LBR_NFLineTax ipiTax = nfl.getIPITax();

				//	CST = Código de Situação Tributária
				String taxStatus = ipiTax.getLBR_TaxStatus().getName();
				
				//	IPI
				TIpi ipi = imposto.addNewIPI();
				ipi.setCEnq (CENQ_IPI_999);
				
				//	IPI Tributado
				if (TextUtil.match (taxStatus, CST_IPI_00, CST_IPI_49, CST_IPI_50, CST_IPI_99))
				{
					IPITrib ipiTrib = ipi.addNewIPITrib();
					ipiTrib.setCST(TIpi.IPITrib.CST.Enum.forString(taxStatus));
					ipiTrib.setVBC(normalize  (ipiTax.getlbr_TaxBaseAmt()));
					ipiTrib.setPIPI(normalize4  (ipiTax.getlbr_TaxRate()));
					ipiTrib.setVIPI(normalize  (ipiTax.getlbr_TaxAmt()));
				}
				
				//	IPI NT
				else if (TextUtil.match (taxStatus, CST_IPI_01, CST_IPI_02, CST_IPI_03, CST_IPI_04, CST_IPI_05, 
													CST_IPI_51, CST_IPI_52, CST_IPI_53, CST_IPI_54, CST_IPI_55))
				{
					IPINT ipiNT = ipi.addNewIPINT();
					ipiNT.setCST(TIpi.IPINT.CST.Enum.forString (taxStatus));
				}
			}
			
			//	P. Imposto de Importação
			if (nfl.getIITax() != null)
			{
				X_LBR_NFLineTax iiTax = nfl.getIITax();
				//	
				II ii = imposto.addNewII();
				ii.setVBC (normalize  (iiTax.getlbr_TaxBaseAmt()));
				ii.setVDespAdu(TextUtil.ZERO_STRING);
				ii.setVII (normalize  (iiTax.getlbr_TaxAmt()));
				ii.setVIOF(TextUtil.ZERO_STRING);
			}
			
			//	Q. PIS
			if (nfl.getPISTax() != null)
			{
				X_LBR_NFLineTax pisTax = nfl.getPISTax();

				//	CST = Código de Situação Tributária
				String taxStatus = pisTax.getLBR_TaxStatus().getName();

				//	PIS Tributado
				if (TextUtil.match (taxStatus, CST_PC_01, CST_PC_02))
				{
					PISAliq pisAliq = imposto.addNewPIS().addNewPISAliq();
					pisAliq.setCST(Det.Imposto.PIS.PISAliq.CST.Enum.forString (taxStatus));
					pisAliq.setVBC(normalize  (pisTax.getlbr_TaxBaseAmt()));
					pisAliq.setPPIS(normalize4  (pisTax.getlbr_TaxRate()));
					pisAliq.setVPIS(normalize  (pisTax.getlbr_TaxAmt()));
				}
				else if (TextUtil.match (taxStatus, CST_PC_03))
				{
					PISQtde pisQtde = imposto.addNewPIS().addNewPISQtde();
					pisQtde.setCST(Det.Imposto.PIS.PISQtde.CST.X_03);
				}
				else if (TextUtil.match (taxStatus, CST_PC_04, CST_PC_05, CST_PC_06, CST_PC_07, CST_PC_08, CST_PC_09))
				{
					PISNT pisNT = imposto.addNewPIS().addNewPISNT();
					pisNT.setCST(Det.Imposto.PIS.PISNT.CST.Enum.forString (taxStatus));
				}
				else if (TextUtil.match (taxStatus, CST_PC_49, CST_PC_50, CST_PC_51, CST_PC_52, CST_PC_53, 
								CST_PC_54, CST_PC_55, CST_PC_56, CST_PC_60, CST_PC_61, CST_PC_62, CST_PC_63, 
								CST_PC_64, CST_PC_65, CST_PC_66, CST_PC_67, CST_PC_70, CST_PC_71, CST_PC_72, 
								CST_PC_73, CST_PC_74, CST_PC_75, CST_PC_98, CST_PC_99))
				{
					PISOutr pisOutr = imposto.addNewPIS().addNewPISOutr();
					pisOutr.setCST(Det.Imposto.PIS.PISOutr.CST.Enum.forString (taxStatus));
					pisOutr.setVBC(normalize  (pisTax.getlbr_TaxBaseAmt()));
					pisOutr.setPPIS(normalize4  (pisTax.getlbr_TaxRate()));
					pisOutr.setVPIS(normalize  (pisTax.getlbr_TaxAmt()));
				}
				else if (false)	//	FIXME PIS ST
				{
					PISST pisST = imposto.addNewPISST();
					pisST.setVBC(normalize  (pisTax.getlbr_TaxBaseAmt()));
					pisST.setPPIS(normalize4  (pisTax.getlbr_TaxRate()));
					pisST.setVPIS(normalize  (pisTax.getlbr_TaxAmt()));
				}
			}
			
			//	S. COFINS
			X_LBR_NFLineTax cofinsTax = nfl.getCOFINSTax();
			if (cofinsTax != null)
			{
				//	CST = Código de Situação Tributária
				String taxStatus = cofinsTax.getLBR_TaxStatus().getName();

				//	PIS Tributado
				if (TextUtil.match (taxStatus, CST_PC_01, CST_PC_02))
				{
					COFINSAliq cofinsAliq = imposto.addNewCOFINS().addNewCOFINSAliq();
					cofinsAliq.setCST(Det.Imposto.COFINS.COFINSAliq.CST.Enum.forString (taxStatus));
					cofinsAliq.setVBC(normalize  (cofinsTax.getlbr_TaxBaseAmt()));
					cofinsAliq.setPCOFINS(normalize4  (cofinsTax.getlbr_TaxRate()));
					cofinsAliq.setVCOFINS(normalize  (cofinsTax.getlbr_TaxAmt()));
				}
				else if (TextUtil.match (taxStatus, CST_PC_03))
				{
					COFINSQtde cofinsQtde = imposto.addNewCOFINS().addNewCOFINSQtde();
					cofinsQtde.setCST(Det.Imposto.COFINS.COFINSQtde.CST.X_03);
				}
				else if (TextUtil.match (taxStatus, CST_PC_04, CST_PC_05, CST_PC_06, CST_PC_07, CST_PC_08, CST_PC_09))
				{
					COFINSNT cofinsNT = imposto.addNewCOFINS().addNewCOFINSNT();
					cofinsNT.setCST(Det.Imposto.COFINS.COFINSNT.CST.Enum.forString (taxStatus));
				}
				else if (TextUtil.match (taxStatus, CST_PC_49, CST_PC_50, CST_PC_51, CST_PC_52, CST_PC_53, 
								CST_PC_54, CST_PC_55, CST_PC_56, CST_PC_60, CST_PC_61, CST_PC_62, CST_PC_63, 
								CST_PC_64, CST_PC_65, CST_PC_66, CST_PC_67, CST_PC_70, CST_PC_71, CST_PC_72, 
								CST_PC_73, CST_PC_74, CST_PC_75, CST_PC_98, CST_PC_99))
				{
					COFINSOutr cofinsOutr = imposto.addNewCOFINS().addNewCOFINSOutr();
					cofinsOutr.setCST(Det.Imposto.COFINS.COFINSOutr.CST.Enum.forString (taxStatus));
					cofinsOutr.setVBC(normalize  (cofinsTax.getlbr_TaxBaseAmt()));
					cofinsOutr.setPCOFINS(normalize4  (cofinsTax.getlbr_TaxRate()));
					cofinsOutr.setVCOFINS(normalize  (cofinsTax.getlbr_TaxAmt()));
				}
				else if (false)	//	FIXME COFINS ST
				{
					COFINSST cofinsST = imposto.addNewCOFINSST();
					cofinsST.setVBC(normalize  (cofinsTax.getlbr_TaxBaseAmt()));
					cofinsST.setPCOFINS(normalize4  (cofinsTax.getlbr_TaxRate()));
					cofinsST.setVCOFINS(normalize  (cofinsTax.getlbr_TaxAmt()));
				}
			}
			
			//	TODO 	U. ISSQN
			
			//	TODO	UA. Tributos Devolvidos (para o item da NF-e)
//			ImpostoDevol impostoDevol = det.addNewImpostoDevol();
			
			//	V. Informações adicionais (para o item da NF-e)
			String nflDesc = nf.getDescription();
			if (nflDesc != null && !nflDesc.isEmpty())
				det.setInfAdProd (normalize (nflDesc));
		}
		
		//	W. Total da NF-e
		Total total = infNFe.addNewTotal();
		ICMSTot icmsTot = total.addNewICMSTot();
		icmsTot.setVBC(normalize (nf.getICMSBase()));
		icmsTot.setVICMS(normalize (nf.getICMSAmt()));
		icmsTot.setVICMSDeson(TextUtil.ZERO_STRING);
		icmsTot.setVBCST(normalize (nf.getICMSSTBase()));
		icmsTot.setVST(normalize (nf.getICMSSTAmt()));
		icmsTot.setVProd(normalize (nf.getTotalLines()));
		icmsTot.setVFrete(normalize (nf.getFreightAmt()));
		icmsTot.setVSeg(normalize (nf.getlbr_InsuranceAmt()));
		icmsTot.setVDesc(normalize (nf.getDiscountAmt()));
		icmsTot.setVII(normalize (nf.getIIAmt()));
		icmsTot.setVIPI(normalize (nf.getIPIAmt()));
		icmsTot.setVPIS(normalize (nf.getPISAmt()));
		icmsTot.setVCOFINS(normalize (nf.getCOFINSAmt()));
		icmsTot.setVOutro(normalize (nf.getLBR_OtherChargesAmt()));
		icmsTot.setVNF(normalize (nf.getGrandTotal()));
//		icmsTot.setVTotTrib(arg0);
		
		//	W01. Total da NF-e / ISSQN
//		ISSQNtot issqNtot = total.addNewISSQNtot();
		
		//	W02. Total da NF-e / Retenção de Tributos
//		RetTrib retTrib = total.addNewRetTrib();
		
		//	X. Informações do Transporte da NF-e
		Transp transp = infNFe.addNewTransp();
		//
		if (nf.getLBR_FreightCostRule() != null)
			transp.setModFrete (Transp.ModFrete.Enum.forString (nf.getLBR_FreightCostRule()));
		else
			transp.setModFrete(Transp.ModFrete.X_0);
		
		if (nf.getM_Shipper_ID() > 0)
		{
			Transporta transporta = transp.addNewTransporta();
			
			String shipperCNPJ 		= toNumericStr (nf.getlbr_BPShipperCNPJ());
			String shipperName 		= normalize (nf.getlbr_BPShipperName());
			String shipperIE 		= toNumericStr (nf.getlbr_BPShipperIE());
			String shipperAddress 	= normalize (nf.getlbr_BPShipperAddress1());
			String shipperCity 		= normalize (nf.getlbr_BPShipperCity());
			String shipperRegion 	= normalize (nf.getlbr_BPShipperRegion());
			
			if (shipperCNPJ != null && !shipperCNPJ.trim().isEmpty())
				transporta.setCNPJ(shipperCNPJ);
			
			if (shipperName != null && !shipperName.isEmpty())
				transporta.setXNome(shipperName);
			
			if (shipperIE != null && !shipperIE.trim().isEmpty())
				transporta.setIE (shipperIE);
			
			if (shipperAddress != null && !shipperAddress.isEmpty())
				transporta.setXEnder(shipperAddress);
			
			if (shipperCity != null && !shipperCity.isEmpty())
				transporta.setXMun(shipperCity);
			
			if (shipperRegion != null && !shipperRegion.isEmpty())
				transporta.setUF(TUf.Enum.forString(shipperRegion));
		}
		
		// Adicionar Volume no XMl da NF-e
		if ( nf.getNoPackages() != 0  )
		{
			Vol vol = transp.addNewVol();
				
			vol.setQVol(Integer.toString(nf.getNoPackages()));
		}		
				
		//	Dados da cobrança
		if (FIN_NFE_NORMAL.equals (ide.getFinNFe()) && nf.isSOTrx())
		{
			//	Y. Dados da Cobrança
			Cobr cobr = infNFe.addNewCobr();
			
			BigDecimal discountAmt = nf.getDiscountAmt();
			
			if (discountAmt == null || discountAmt.signum() == -1)
				discountAmt = Env.ZERO;
			
			//	Fatura
			Fat fat = cobr.addNewFat();
			String fatNo = nf.getC_Invoice().getDocumentNo();
			
			fat.setNFat (fatNo); 				// 	Codigo NFE
			fat.setVOrig(normalize (discountAmt.add (nf.getGrandTotal()))); // 	Valor Bruto
			
			if (discountAmt.signum() == 1)
				fat.setVDesc (normalize (discountAmt));
			
			fat.setVLiq (normalize (nf.getGrandTotal())); 					// 	Valor Liquido

			//	Contador de duplicata
			int dupCounter = 1;
			
		    //	Adiciona as duplicatas da fatura
		    for (MLBROpenItem openItem : MLBROpenItem.getOpenItem (nf.getC_Invoice_ID(), trxName))
		    {
		    	Dup dup = cobr.addNewDup();
		    	dup.setNDup(fatNo + "/" + Integer.toString (dupCounter++));
		    	dup.setDVenc(normalize (openItem.getDueDate()));
		    	dup.setVDup(normalize (openItem.getGrandTotal()));
			}
		}
		
		//	YA. Formas de Pagamento
//		Pag pag = infNFe.addNewPag();	//	FIXME NFC-e
		
		//	Z. Informações Adicionais da NF-e
		InfAdic infAdic = infNFe.addNewInfAdic();

		String descriptionNF = nf.getDescription();
		if (descriptionNF != null && !descriptionNF.isEmpty())
			infAdic.setInfCpl(normalize (descriptionNF));
		
		ObsCont obsCont = infAdic.addNewObsCont();
		obsCont.setXCampo("site-developer");
		obsCont.setXTexto("www.kenos.com.br");
		
		//	ZA. Informações de Comércio Exterior
//		Exporta exporta = infNFe.addNewExporta();
		
		//	ZB. Informações de Compras
//		Compra compra = infNFe.addNewCompra();
		
		//	ZC. Informações do Registro de Aquisição de Cana
//		Cana cana = infNFe.addNewCana();
		
		//	XML
		String nfeID = infNFe.getId().substring(3);

		log.fine ("Assinando NF-e");
		
		//	ZZ. Informações da Assinatura Digital
		new SignatureUtil ((MOrgInfo) POWrapper.getPO (oi), SignatureUtil.RECEPCAO_NFE).sign (document, nfe.newCursor());
		
		log.fine ("Validando NF-e");
		NFeUtil.validate (document);
		
		//	Grava ID
		nf.setlbr_NFeID(nfeID);
		nf.setProcessed(true);
		nf.save();
		
		//	Anexa o XML na NF
		if (nf.getAttachment (true) != null)
			nf.getAttachment ().delete (true);
		
		MAttachment attachNFe = nf.createAttachment(true);
		attachNFe.addEntry(nfeID + FILE_EXT, document.xmlText(NFeUtil.getXmlOpt()).toString().getBytes("UTF-8"));
		attachNFe.save();
		
		return "@Success@";
	}	//	generate

	/**
	 * 	Converts BD to String, with 2 decimals (fixed)
	 * 
	 * 	E.g. 	10.12000 	->  10.12
	 * 			100.00		-> 100.00
	 * 			100.1234	-> 100.12
	 * 			40.789		->  40.79
	 * @param value
	 * @return
	 */
	private static String normalize (BigDecimal value)
	{
		return TextUtil.bigdecimalToString (value);
	}	//	normalize

	/**
	 * 	Converts BD to String, with up to 4 decimals,
	 * 		with no trailing zeroes
	 * 
	 * 	E.g. 	10.12000 	->  10.12
	 * 			100.00		-> 100
	 * 			100.12345	-> 100.1235
	 * @param value
	 * @return
	 */
	private static String normalize4 (BigDecimal value)
	{
		return TextUtil.bigdecimalToString (value);
		//return TextUtil.bdToStringNoTrail (value, 4);
	}	//	normalize4
	
	/**
	 * 	Converts BD to String, with up to 10 decimals,
	 * 		with no trailing zeroes.
	 * 
	 * 	E.g. 	10.12000 	->  10.12
	 * 			100.00		-> 100
	 * 			100.12345	-> 100.12345
	 * @param value
	 * @return
	 */
	private static String normalize10 (BigDecimal value)
	{
		return TextUtil.bdToStringNoTrail  (value, 10);
	}	//	normalize10
	
	/**
	 * 	Normalize to XML standards
	 * 
	 * 	@param text
	 * 	@return
	 */
	static String normalize (String text)
	{
		if (text == null || text.isEmpty())
			return text;
		
		//	Substitui o travessão por hífen
		text = text.replaceAll ("–", "-");
		
		//	Remove espaços duplos e tabulações
		text = text.replaceAll ("[ \t]{2,}|\t", " ");
		
		//	Remove múltiplas quebra de linha, tabulações e espaços
		text = text.replaceAll ("\\s\\s*\\s|\n*\n", ". ");
		//
		return text.trim();
	}	//	normalize
	
	/**
	 * 	Convert Timestamp to String with pattern yyyy-MM-dd
	 * 
	 *	@param ts
	 * 	@return
	 */
	private static String normalize (Timestamp ts)
	{
		return TextUtil.timeToString (ts,"yyyy-MM-dd");
	}	//	normalize
	
	/**
	 * 	Convert Date
	 * 	@param ts
	 * 	@return
	 */
	public static String normalizeTZ (Timestamp ts)
	{
		StringBuffer timeStr = new StringBuffer (TextUtil.timeToString (ts, "yyyy-MM-dd'T'HH:mm:ssZ"));
		return timeStr.insert (timeStr.length() - 2, ':').toString();
	}	//	convertDate
	
	/**
	 * 	Convert String to Numeric String
	 * 	@param value
	 * 	@return
	 */
	private static String toNumericStr (String value)
	{
		return TextUtil.toNumeric (value);
	}	//	toNumericStr
}	//	NFeXMLGenerator