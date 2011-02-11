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

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRNCM;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MLocation;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MRegion;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *	Generate SINTEGRA Files
 *
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@contributor Mario Grigioni
 *  @contributor Pablo Boff Pigozzo
 *	@contributor Marcelo Luiz Onhate
 *  @version $Id: ProcGenerateSINTEGRA.java, 11/03/2010 08:29 mgrigioni
 */
public class ProcGenerateSINTEGRA extends SvrProcess
{
	/**	Arquivo							*/
	private String p_FilePath = null;
	private final static String EXT = ".txt";

	/** Periodo a ser pesquisado		*/
	private Timestamp p_DateFrom;
	private Timestamp p_DateTo;

	/** Organização						*/
	private int p_AD_Org_ID = 0;

	/** Estado							*/
	private int p_C_Region_ID = 0;

	/**	Consolidar em um único document	*/
	private Boolean p_Consolidate = false;

	/**	Erros e Advertências			*/
	private StringBuffer errors = new StringBuffer("");

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
			else if(name.equals("lbr_DocDate"))
			{
				p_DateFrom = (Timestamp)para[i].getParameter();
				p_DateTo   = (Timestamp)para[i].getParameter_To();
			}
			else if(name.equals("File_Directory"))
				p_FilePath = para[i].getParameter().toString();
			/*
			else if(name.equals("AD_Org_ID"))
				p_AD_Org_ID = para[i].getParameterAsInt();
			*/
			else if(name.equals("C_Region_ID"))
				p_C_Region_ID = para[i].getParameterAsInt();
			else if(name.equals("ConsolidateDocument"))
				p_Consolidate = "Y".equals(para[i].getParameter());
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}

		if(p_Consolidate == null)
			p_Consolidate = false;

		p_AD_Org_ID = Env.getAD_Org_ID(getCtx());
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message
	 *  @throws Exception if not successful
	 */
	protected String doIt() throws Exception
	{
		Properties ctx = Env.getCtx();

		long start = System.currentTimeMillis();

		if (p_DateFrom == null || p_DateTo == null)
			throw new IllegalArgumentException("Intervalo de Datas Inválido");

		if (!(p_FilePath.endsWith(AdempiereLBR.getFileSeparator())))
	    	p_FilePath += AdempiereLBR.getFileSeparator();

		StringBuffer sintegra = new StringBuffer(); //Data File
		String rName          = null; //Region name

		String dataInicial = TextUtil.timeToString(p_DateFrom, "ddMMyy");
		String dataFinal   = TextUtil.timeToString(p_DateTo, "ddMMyy");

		String fileName = "SNTGRA_" + dataInicial + dataFinal;

		if (p_C_Region_ID > 0)
		{
			rName = new MRegion(ctx, p_C_Region_ID, null).getName().trim().toUpperCase();
			fileName += rName;
		}

		try{

			if (p_Consolidate) {
				sintegra = getSINTEGRA(ctx, "");
				TextUtil.generateFile(sintegra.toString(), p_FilePath + fileName + EXT);
			} //Arquivo Consolidado

			else if (p_C_Region_ID > 0) {
				sintegra = getSINTEGRA(ctx, rName);
				TextUtil.generateFile(sintegra.toString(), p_FilePath + fileName + EXT);
			} //Estado Selecionado

			else {
				MRegion[] regions = MRegion.getRegions(ctx, 139); // Only Brazilian Regions
				if (regions != null) {
					for (MRegion r : regions) {
						rName = r.getName().trim().toUpperCase();

						sintegra = getSINTEGRA(ctx, rName);
						if (sintegra.length() <= (130 * 3)) //	Menor que 3 linhas não salva o arquivo
							continue;

						TextUtil.generateFile(sintegra.toString(), p_FilePath + fileName + rName + EXT);
					} //loop Estados
				}
			} //Todos os Estados Separados

		} catch (Exception e) {
			log.log(Level.SEVERE,"",e);
			return "Erro na Geração do Arquivo";
		}

		long end = System.currentTimeMillis();

		String tempoDecorrido = AdempiereLBR.executionTime(start, end);

		return "Arquivo(s) Gerado(s) com Sucesso em: " + p_FilePath +
		       " <br>** Tempo decorrido: <font color=\"008800\">" + tempoDecorrido + "</font>";
	}	//	doIt


	/**
	 * Retorna os registros do SINTEGRA para o estado determinado.
	 *
	 * @param ctx
	 * @param estado or null
	 * @return	SINTEGRA
	 * @throws Exception
	 */
	private StringBuffer getSINTEGRA(Properties ctx, String estado) throws Exception
	{
		//
		if(estado == null)
			estado = "";
		//
		if (p_AD_Org_ID == 0)
			throw new Exception("@AD_Org_ID@ @Mandatory@");
		//	
		/**	Validar produto					*/
		ArrayList<String> uniquePrd = new ArrayList<String>();
		//
		StringBuffer registro50 = new StringBuffer("");
		StringBuffer registro51 = new StringBuffer("");
		StringBuffer registro53 = new StringBuffer("");
		StringBuffer registro54 = new StringBuffer("");
		StringBuffer registro70 = new StringBuffer("");
		StringBuffer registro75 = new StringBuffer("");
		int countnf = 0;
		int aux     = 1;
		int	count50 = 0;
		int	count51 = 0;
		int	count53 = 0;
		int	count54 = 0;
		int	count70 = 0;
		int	count75 = 0;
		//
		MOrgInfo oi 	= new MOrg(Env.getCtx(), p_AD_Org_ID, null).getInfo();
		MLocation ol 	= new MLocation(Env.getCtx(), oi.getC_Location_ID(), null);
		MRegion r 		= ol.getRegion();
		//
		StringBuffer result = new StringBuffer("");

		//	Monta o Registro 10
		log.finer("SINTEGRA: 10");
		result.append(
				registro10(oi.get_ValueAsString("lbr_CNPJ"),
						oi.get_ValueAsString("lbr_IE"),
						oi.get_ValueAsString("lbr_LegalEntity"),	//	Razão Social
						ol.getCity(), r.getName(),
						oi.get_ValueAsString("Fax"), //	Fax
						p_DateFrom,	p_DateTo, "3", "3",	"1"));

		//	Monta o Registro 11
		log.finer("SINTEGRA: 11");
		result.append(
				registro11(ol.getAddress1(), ol.getAddress2(),
						ol.getAddress4(), ol.getAddress3(),
						ol.getPostal(),
						oi.get_ValueAsString("ContactName"), //	Pessoa Contato
						oi.get_ValueAsString("Phone")));	//	Telefone Contato


		MLBRNotaFiscal[] nfs = getNotasFiscais(ctx,estado);
		countnf = nfs.length;
		for(MLBRNotaFiscal nf : nfs) {

			log.finer("NF " + aux + "/" + countnf + ": "+ nf.getDocumentNo());
			log.info("Processado: " + String.format("%,.5f",(((double)aux/(double)countnf)*100)) + "%");
			aux++;

			PreparedStatement pstmt = null;
			ResultSet rs = null;
			StringBuffer sql = new StringBuffer("");
						
			//	Data do documento ou data da entrada
			Timestamp data = nf.isSOTrx() ? nf.getDateDoc() : nf.getlbr_DateInOut();
			if (data == null)
				data = nf.getDateDoc();
			
			// Modelo da NF			
			String modeloNF = "";
			if(!nf.isSOTrx()){
				modeloNF = nf.getlbr_NFeID()==null || "".equals(nf.getlbr_NFeID()) ? "01" : "55";
			}else{
				modeloNF = nf.getlbr_NFeID()==null || "".equals(nf.getlbr_NFeID()) ? "03" : "55"; 
			}
			
			
			try 
			{

				//	Monta o Registro 50 e 70
				sql.append(" SELECT CFOP, valorContabil, baseICMS, valorICMS, 		"); 
				sql.append("   aliqICMS, isentoICMS, outrosICMS, LBR_NotaFiscal_ID 	");
                sql.append(" FROM LBR_SitICMS_SINTEGRA 								");
                sql.append(" WHERE LBR_NotaFiscal_ID = ? 							");

				pstmt = DB.prepareStatement(sql.toString(), null);
				pstmt.setInt(1, nf.getLBR_NotaFiscal_ID());
				rs = pstmt.executeQuery();

				Integer lastNF_ID = 0;
				while (rs.next()) 
				{
					StringBuffer linha = new StringBuffer("");
					String CFOP = rs.getString("CFOP");
					Integer currentNF_ID = rs.getInt("LBR_NotaFiscal_ID");

					if (nf.isCancelled() && currentNF_ID.intValue() == lastNF_ID.intValue())
						continue;

					lastNF_ID = currentNF_ID;
					if (CFOP != null && CFOP.trim().endsWith("352")) 
					{
						linha.append(
								registro70(nf.getlbr_BPCNPJ(),nf.getlbr_BPIE(),
			    				data, nf.getlbr_BPRegion(), "08", nf.getSerieNo(), "",
			    				nf.getDocNo(), CFOP,
			    				rs.getBigDecimal("valorContabil"),
			    				rs.getBigDecimal("baseICMS"),
			    				rs.getBigDecimal("valorICMS"),
			    				rs.getBigDecimal("isentoICMS"),
			    				rs.getBigDecimal("outrosICMS"),
			    				"1", nf.isCancelled()));

						if (linha.length() < 5)
							continue;

						count70++;
						log.finer("SINTEGRA: 70");
			    		registro70.append(linha);
					
					} // end Registro 70
					else 
					{
						boolean emitente = true;
						
						if (!nf.isSOTrx()){
							if (!nf.get_ValueAsBoolean("lbr_IsOwnDocument") && 
									nf.getC_DocType_ID() == 0)
								emitente = false;
						}
						
						linha.append(
								registro50(nf.getlbr_BPCNPJ(), nf.getlbr_BPIE(),
			    				data, nf.getlbr_BPRegion(), modeloNF,
			    				nf.getSerieNo(), nf.getDocNo(),
			    				CFOP, emitente ? "Y" : "N",
			    				rs.getBigDecimal("valorContabil"),
			    				rs.getBigDecimal("baseICMS"),
			    				rs.getBigDecimal("valorICMS"),
			    				rs.getBigDecimal("isentoICMS"),
			    				rs.getBigDecimal("outrosICMS"),
			    				rs.getBigDecimal("aliqICMS"),
			    				nf.isCancelled()));

						if (linha.length() < 5)
							continue;

						count50++;
						log.finer("SINTEGRA: 50");
			    		registro50.append(linha);
			    		
					} // End Registro 50
					
				} // loop SELECT Registros 50 e 70
				DB.close(rs, pstmt);

				// Monta o registro 51
				sql = new StringBuffer("");

				sql.append(" SELECT CFOP, valorTotal, baseIPI, valorIPI,"); //1..4
				sql.append(" isentoIPI, outrosIPI, LBR_NotaFiscal_ID 	"); //5..7
				sql.append(" FROM LBR_SitIPI_V 							");
				sql.append(" WHERE LBR_NotaFiscal_ID = ? 				");
				sql.append("   AND CFOP NOT LIKE '%352%'				");

				pstmt = DB.prepareStatement(sql.toString(), null);
				pstmt.setInt(1, nf.getLBR_NotaFiscal_ID());
				rs = pstmt.executeQuery();
		
				while (rs.next()) 
				{
					StringBuffer linha = new StringBuffer("");
					String CFOP = rs.getString(1);
					linha.append(registro51(nf.getlbr_BPCNPJ(),
	        				nf.getlbr_BPIE(),
	        				data,
	        				nf.getlbr_BPRegion(),
	        				nf.getSerieNo(),
	        				nf.getDocNo(),
	        				CFOP,
	        				rs.getBigDecimal("valorTotal"),
	        				rs.getBigDecimal("valorIPI"),
	        				rs.getBigDecimal("isentoIPI"),
	        				rs.getBigDecimal("outrosIPI"),
	        				nf.isCancelled()));

					if (linha.length() < 5)
						continue;

					count51++;
					log.finer("SINTEGRA: 51");
					registro51.append(linha);
					
				} // loop SELECT Registro 51
				DB.close(rs, pstmt);
				
				//	Monta o Registro 53				
				log.finer("SINTEGRA: 53");
				
				sql = new StringBuffer("");
				sql.append(" SELECT * 						");
  				sql.append(" FROM LBR_SitICMSST 			");
  				sql.append(" WHERE AD_Client_ID=?			");
  				sql.append("   AND LBR_NotaFiscal_ID = ? 	");
				
				pstmt = DB.prepareStatement(sql.toString(), null);
				pstmt.setInt(1, nf.getAD_Client_ID());
				pstmt.setInt(2, nf.getLBR_NotaFiscal_ID());
				rs = pstmt.executeQuery();
				
				while (rs.next()) {
					registro53.append(
							registro53(nf.getlbr_BPCNPJ(), nf.getlbr_BPIE(),
									data, nf.getlbr_BPRegion(),
									modeloNF, nf.getSerieNo(),
			        				nf.getDocNo(), rs.getString("cfop"),
			        				nf.get_ValueAsBoolean("lbr_IsOwnDocument"),
			        				rs.getBigDecimal("baseICMS"),
			        				rs.getBigDecimal("valorICMS"),
			        				rs.getBigDecimal("outrasDesp"),
			        				nf.isCancelled(),			        				
			        				" "));
					count53++;
				}// end REGISTRO TIPO 53				
				
				
				// Não gerar registros 54 e 75 para canceladas
				if (nf.isCancelled()) 
					continue;
				
				// Registro tipo 54 e 75
				MLBRNotaFiscalLine[] nfLines = getLines(nf);
				String CFOP = "";
				int line = 0;
				for (MLBRNotaFiscalLine nfLine : nfLines) {
					log.finer("NF: "+ nf.getDocumentNo() +
							  " Linha: "  + nfLine.getLine());

					line++;
					CFOP = nfLine.getlbr_CFOPName();

					//Registro 54
					count54++;
					registro54.append(
							registro54(nf.getlbr_BPCNPJ(), nf.getlbr_BPRegion(),
							modeloNF,nf.getSerieNo(),nf.getDocNo(),
							nfLine.getlbr_CFOPName(),
							nfLine.getlbr_TaxStatus(),"" + line,
							nfLine.getProductValue(),
							nfLine.getQty(),
							nfLine.getLineTotalAmt(),
							Env.ZERO,				//	FIXME	Desconto
							nfLine.getICMSBaseAmt(),
							nfLine.getICMSSTBase(),
							nfLine.getIPIAmt(),
							nfLine.getICMSRate()));

					log.finer("SINTEGRA: 54");

					if (uniquePrd.contains(nfLine.getProductValue()))
						continue;

					uniquePrd.add(nfLine.getProductValue());

					//BF NCM Name
					String ncmName = nfLine.getlbr_NCMName();
					if (ncmName == null || ncmName.trim().equals("")){

						ncmName = "0000.00.00";

						if (nfLine.getLBR_NCM_ID() != 0){
							MLBRNCM ncm = new MLBRNCM(ctx,nfLine.getLBR_NCM_ID(),null);
							ncmName = ncm.getValue();
						}
					}

					//Registro 75
					count75++;
					registro75.append(
							registro75(p_DateFrom, p_DateTo,
							nfLine.getProductValue(),
							ncmName,
							nfLine.getProductName(),
							nfLine.getlbr_UOMName(),
							nfLine.getIPIRate(),
							nfLine.getICMSRate(),
							nfLine.getICMSBaseReduction(),
							nfLine.getICMSSTBase()));
					log.finer("SINTEGRA: 75");
				}

				if (nf.getFreightAmt().signum() == 1){
					registro54.append(registro54(
							nf.getlbr_BPCNPJ(), nf.getlbr_BPRegion(), modeloNF,
							nf.getSerieNo(),
							nf.getDocNo(),
							CFOP, "   ", "991", "  ", //FRETE
							Env.ONE, Env.ZERO,
							nf.getFreightAmt(), Env.ZERO,
							Env.ZERO, Env.ZERO, Env.ZERO));

					count54++;
					log.finer("SINTEGRA: 54 - FRETE");
				}

				if (nf.getlbr_InsuranceAmt().signum() == 1){
					registro54.append(registro54(
							nf.getlbr_BPCNPJ(), nf.getlbr_BPRegion(), modeloNF,
							nf.getSerieNo(),
							nf.getDocNo(),
							CFOP, "   ", "992", "  ", //SEGURO
							Env.ONE, Env.ZERO,
							nf.getlbr_InsuranceAmt(), Env.ZERO,
							Env.ZERO, Env.ZERO, Env.ZERO));
					count54++;
					log.finer("SINTEGRA: 54 - SEGURO");
				}

			}
			catch (Exception e)
			{
				throw new Exception(e);
			}
			finally
			{
				DB.close(rs, pstmt);
			}
		} //loop NotaFiscal

		StringBuffer registro90 = new StringBuffer("");

		registro90.append(registro90(
				oi.get_ValueAsString("lbr_CNPJ"),
				oi.get_ValueAsString("lbr_IE"), 
				count50,
				count51, 
				count53,
				count54,
				0,//55
				0,//56
				0,//57
				0,//60
				0,//61
				count70,
				0,//71
				0,//74
				count75,
				0,//76
				0,//77
				0,//85
				0//86
				));

		return result.append(registro50)
				     .append(registro51)
				     .append(registro53)
				     .append(registro54)
				     .append(registro70)
				     .append(registro75)
				     .append(registro90);
	} //getSintegra


	/**
	 * 	Formata o Registro 10
	 *
	 * 	Mestre do Estabelecimento
	 */
	private String registro10(String CNPJ, String IE, String RazaoSocial,
			String Municipio, String UF, String Fax, Timestamp DataInicial,
			Timestamp DataFinal, String CC, String CNO, String CF)
	{
		StringBuffer result = new StringBuffer("");

		/**
		 * Descrição do código de identificação da estrutura do arquivo
		 *
		 * Estrutura conforme Convênio ICMS 57/95,
		 * com as alterações promovidas pelo Convênio ICMS 76/03.
		 * */
		if (CC == null || CC.length() == 0)
			CC = "3";

		/**
		 * Descrição do código da natureza das operações
		 *
		 * Totalidade das operações do informante
		 * */
		if (CNO == null || CNO.length() == 0)
			CNO = "3";

		/**
		 * Descrição da finalidade
		 *
		 * Normal
		 * */
		if (CF == null || CF.length() == 0)
			CF = "1";

		result.append("10")								//	1	2	N
			.append(TextUtil.lPad(CNPJ			, 14))	//	2	14	N
			.append(TextUtil.rPad(IE			, 14))	//	3	14	X
			.append(TextUtil.rPad(RazaoSocial	, 35))	//	4	35	X
			.append(TextUtil.rPad(Municipio		, 30))	//	5	30	X
			.append(TextUtil.rPad(UF			, 2))	//	6	2	X
			.append(TextUtil.lPad(Fax			, 10))	//	7	10	N
			.append(TextUtil.timeToString(DataInicial))	//	8	8	D
			.append(TextUtil.timeToString(DataFinal))	//	9	8	D
			.append(TextUtil.lPad(CC			, 1))	//	10	1	X
			.append(TextUtil.lPad(CNO			, 1))	//	11	1	X
			.append(TextUtil.lPad(CF			, 1));	//	12	1	X

		result.append(TextUtil.EOL_WIN32);

		return result.toString();
	}	//	registro10

	/**
	 * 	Formata o Registro 11
	 *
	 * 	Dados Complementares do Informante
	 */
	private String registro11(String Logradouro, String Numero, String Complemento,
			String Bairro, String CEP, String Contato, String Telefone)
	{
		StringBuffer result = new StringBuffer("");
		//
		result.append("11")								//	1	2	N
			.append(TextUtil.rPad(Logradouro	, 34))	//	2	34	X
			.append(TextUtil.lPad(Numero		, 5))	//	3	5	N
			.append(TextUtil.rPad(Complemento	, 22))	//	4	22	X
			.append(TextUtil.rPad(Bairro		, 15))	//	5	15	X
			.append(TextUtil.lPad(CEP			, 8))	//	6	8	N
			.append(TextUtil.rPad(Contato		, 28))	//	7	28	X
			.append(TextUtil.lPad(Telefone		, 12));	//	8	12	N
		//
		result.append(TextUtil.EOL_WIN32);
		//
		return result.toString();
	}	//	registro11

	/**
	 * 	Formata o Registro 50
	 *
	 * 	Nota Fiscal, modelo 1 ou 1-A (código 01), quanto ao ICMS, <BR>
	 * 	   a critério de cada UF, Nota Fiscal do Produtor, modelo 4 (código 04),
	 *	Nota Fiscal/Conta de Energia Elétrica, modelo 6 (código 06),
	 *	Nota Fiscal de Serviço de Comunicação, modelo 21 (código 21),
	 *	Nota Fiscal de Serviços de Telecomunicações, modelo 22 (código 22)’
	 *	Nota Fiscal Eletrônica, modelo 55 (código 55).
	 */
	private String registro50(String CNPJ, String IE, Timestamp DataEmissao,
			String UF, String CodModeloNF, String SerieNF, String NoNF,
			String CFOP, String Emitente, BigDecimal ValorTotal, BigDecimal BaseICMS,
			BigDecimal ValorICMS, BigDecimal ValorIsento, BigDecimal ValorOutras,
			BigDecimal AliqICMS, Boolean SitNF)
	{
		StringBuffer result = new StringBuffer("");
		//
		String situacao = SitNF ? "S" : "N";
		//
		if (IE == null || IE.equals(""))
			IE = "ISENTO";
		//
		if (UF == null || !AdempiereLBR.isRegionBR(UF)){
			UF = "EX";
			CNPJ = null;
		}
		//
		if (SitNF)	//	NF Cancelada
		{
			ValorTotal 	= Env.ZERO;
			BaseICMS 	= Env.ZERO;
			ValorICMS 	= Env.ZERO;
			ValorIsento = Env.ZERO;
			ValorOutras = Env.ZERO;
			AliqICMS 	= Env.ZERO;
		}
		//
		Emitente = Emitente.equals("Y") || Emitente.equalsIgnoreCase("true")  ? "P" : "T";
		//
		result.append("50")								//	1	2	N
			.append(TextUtil.lPad(CNPJ			, 14))	//	2	14	N
			.append(TextUtil.rPad(IE			, 14))	//	3	14	X
			.append(TextUtil.timeToString(DataEmissao))	//	4	8	D
			.append(TextUtil.rPad(UF			, 2))	//	5	2	X
			.append(TextUtil.lPad(CodModeloNF	, 2))	//	6	2	N
			.append(TextUtil.rPad(SerieNF		, 3))	//	7	3	X
			.append(TextUtil.lPad(NoNF			, 6))	//	8	6	N
			.append(TextUtil.lPad(CFOP			, 4))	//	9	4	N
			.append(TextUtil.rPad(Emitente		, 1))	//	10	1	X
			.append(TextUtil.lPad(ValorTotal	, 13))	//	11	13	N
			.append(TextUtil.lPad(BaseICMS		, 13))	//	12	13	N
			.append(TextUtil.lPad(ValorICMS		, 13))	//	13	13	N
			.append(TextUtil.lPad(ValorIsento	, 13))	//	14	13	N
			.append(TextUtil.lPad(ValorOutras	, 13))	//	15	13	N
			.append(TextUtil.lPad(AliqICMS		, 4))	//	16	4	N
			.append(TextUtil.rPad(situacao		, 1));	//	17	1	X
		//
		result.append(TextUtil.EOL_WIN32);
		//
		return result.toString();
	}	//	registro50

	/**
	 * 	Formata o Registro 51
	 *
	 * 	Total de NF quanto ao IPI.
	 */
	private String registro51(String CNPJ, String IE, Timestamp DataEmissao,
			String UF, String SerieNF, String NoNF,	String CFOP,
			BigDecimal ValorTotal, BigDecimal ValorIPI, BigDecimal ValorIsento,
			BigDecimal ValorOutras, Boolean SitNF)
	{
		StringBuffer result = new StringBuffer("");
		//
		if (IE == null || IE.equals(""))
			IE = "ISENTO";
		//
		if (UF == null || !AdempiereLBR.isRegionBR(UF)){
			UF = "EX";
			CNPJ = null;
		}
		//
		String situacao = SitNF ? "S" : "N";
		//
		if (SitNF)	//	NF Cancelada
		{
			ValorTotal 	= Env.ZERO;
			ValorIPI 	= Env.ZERO;
			ValorIsento = Env.ZERO;
			ValorOutras = Env.ZERO;
		}
		//
		result.append("51")								//	1	2	N
			.append(TextUtil.lPad(CNPJ			, 14))	//	2	14	N
			.append(TextUtil.rPad(IE			, 14))	//	3	14	X
			.append(TextUtil.timeToString(DataEmissao))	//	4	8	D
			.append(TextUtil.rPad(UF			, 2))	//	5	2	X
			.append(TextUtil.rPad(SerieNF		, 3))	//	6	3	X
			.append(TextUtil.lPad(NoNF			, 6))	//	7	6	N
			.append(TextUtil.lPad(CFOP			, 4))	//	8	4	N
			.append(TextUtil.lPad(ValorTotal	, 13))	//	9	13	N
			.append(TextUtil.lPad(ValorIPI		, 13))	//	10	13	N
			.append(TextUtil.lPad(ValorIsento	, 13))	//	11	13	N
			.append(TextUtil.lPad(ValorOutras	, 13))	//	12	13	N
			.append(TextUtil.rPad(" "			, 20))	//	13	20	X
			.append(TextUtil.rPad(situacao		, 1));	//	14	1	X
		//
		result.append(TextUtil.EOL_WIN32);
		//
		return result.toString();
	}	//	registro51

	
	
	
	/**
	* SUBSTITUIÇÃO TRIBUTÁRIA - REGISTRO53
	* 
	* @param CNPJ CNPJ do Contribuínte Substituído
	* @param IE IE do Contribuínte Substituído
	* @param DataEmissao Data de Emissão ou Recebimento 
	* @param UF do Contribuínte Substituído
	* @param ModeloNF Código do Modelo da NF
	* @param SerieNF Série da NF
	* @param NoNF Número da NF
	* @param CFOP Código Fiscal de Operação e Prestação
	* @param lbr_IsOwnDocument Documento Próprio
	* @param BaseICMSST Base de Cálculo
	* @param ValorICMSST Valor de ICMSST
	* @param ValorOutrasDesp valor de outras despesas como frete, seguro e outras.
	* @param IsCancelled NF cancelada
	* @param CodAntecipacao Tipo de Antecipação tributária
	* */
	private String registro53(String CNPJ, String IE, Timestamp DataEmissao, String UF, 
			String ModeloNF, String SerieNF, String NoNF, String CFOP, Boolean lbr_IsOwnDocument, 
			BigDecimal BaseICMSST, BigDecimal ValorICMSST, BigDecimal ValorOutrasDesp, 
			Boolean IsCanceled, String CodAntecipacao)
	{
		
		StringBuffer result = new StringBuffer("");
		
		// UF Nacional ou EXTERIOR
		if (UF == null || !AdempiereLBR.isRegionBR(UF)){
			UF = "EX";
			CNPJ = null;
		}
		
		// Isento
		if (IE == null || IE.equals(""))
			IE = "ISENTO";
				
		// S - Cancelada   N - Normal
		String situacao = IsCanceled ? "S" : "N"; 
		
		// IsOwnDocument P - Proprio   T - Terceiros
		String emitente = lbr_IsOwnDocument ?  "P" : "T";  
		
		//	NF Cancelada
		if (IsCanceled)	
		{
			ValorICMSST = Env.ZERO;
			ValorOutrasDesp = Env.ZERO;
			BaseICMSST = Env.ZERO;
		}
		
		//
		result.append("53")									//	1
			.append(TextUtil.lPad(CNPJ			, 14))		//	2
			.append(TextUtil.lPad(IE			, 14))		//	3
			.append(TextUtil.timeToString(DataEmissao))		//	4
			.append(TextUtil.lPad(UF			, 2))		//	5
			.append(TextUtil.lPad(ModeloNF		, 2))		//	6
			.append(TextUtil.rPad(SerieNF		, 3))		//	7
			.append(TextUtil.lPad(NoNF			, 6))		//	8
			.append(TextUtil.rPad(CFOP			, 4))		//	9
			.append(TextUtil.lPad(emitente		, 1))		//	10
			.append(TextUtil.lPad(BaseICMSST	, 13))		//	11
			.append(TextUtil.lPad(ValorICMSST	, 13))		//	12
			.append(TextUtil.lPad(ValorOutrasDesp , 13))	//	13
			.append(TextUtil.lPad(situacao		, 1))		//	14
			.append(TextUtil.lPad(CodAntecipacao, 1))		//	15
			.append(TextUtil.lPad(" "			, 29));		//	16
		//
		result.append(TextUtil.EOL_WIN32);
	
		//
		return result.toString();
			
	} // Registr 53

	/***	Comentada os métodos acima	***/

	/**
	 * 	Formata o Registro 54
	 *
	 * 	Produto
	 */
	private String registro54(String CNPJ, String UF, String CodModeloNF,
			String SerieNF, String NoNF, String CFOP, String CST,
			String SeqItem, String CodProduto,
			BigDecimal QtdProd, BigDecimal ValorProd,
			BigDecimal ValorDesconto, BigDecimal BaseICMS, BigDecimal BaseICMSST,
			BigDecimal ValorIPI, BigDecimal AliqICMS)
	{
		StringBuffer result = new StringBuffer("");
		//
		if (CodProduto == null || CodProduto.equals(""))
		{
			CodProduto = "SEMCODIGO";
			errors.append("NF: ").append(NoNF).append(" do CNPJ ").append(CNPJ)
				.append(" sem código de produto. Item: ").append(SeqItem);
		}
		//
		if (UF == null || !AdempiereLBR.isRegionBR(UF)){
			CNPJ = null;
		}
		//
		result.append("54")									//	1	2	N
			.append(TextUtil.lPad(CNPJ			, 14))		//	2	14	N
			.append(TextUtil.lPad(CodModeloNF	, 2))		//	3	2	N
			.append(TextUtil.rPad(SerieNF		, 3))		//	4	3	X
			.append(TextUtil.lPad(NoNF			, 6))		//	5	6	N
			.append(TextUtil.lPad(CFOP			, 4))		//	6	4	N
			.append(TextUtil.rPad(CST			, 3))		//	7	3	X
			.append(TextUtil.lPad(SeqItem		, 3))		//	8	3	N
			.append(TextUtil.rPad(CodProduto	, 14))		//	9	14	X
			.append(TextUtil.lPad(QtdProd		, 11, 3))	//	10	11	N
			.append(TextUtil.lPad(ValorProd		, 12))		//	11	12	N
			.append(TextUtil.lPad(ValorDesconto	, 12))		//	12	12	N
			.append(TextUtil.lPad(BaseICMS		, 12))		//	13	12	N
			.append(TextUtil.lPad(BaseICMSST	, 12))		//	14	12	N
			.append(TextUtil.lPad(ValorIPI		, 12))		//	15	12	N
			.append(TextUtil.lPad(AliqICMS		, 4));		//	16	4	X
		//
		result.append(TextUtil.EOL_WIN32);
		//
		return result.toString();
	}	//	registro54

	/**
	 * GUIA NACIONAL DE RECOLHIMENTO DE TRIBUTOS ESTADUAIS
	 * *
	@SuppressWarnings("unused")
	private void registro55()
	{
		//TODO: Registro 55
	}

	/**
	 * OPERAÇÕES COM VEÍCULOS AUTOMOTORES NOVOS
	 * *
	@SuppressWarnings("unused")
	private void registro56()
	{
		//TODO: Registro 56
	}

	/**
	 * NÚMERO DE LOTE DE FABRICAÇÃO DE PRODUTO
	 * *
	@SuppressWarnings("unused")
	private void registro57()
	{
		//TODO: Registro 57
	}

	/**
	 * Cupom Fiscal, Cupom Fiscal - PDV, e os seguintes Documentos Fiscais quando
	 * emitidos por Equipamento Emissor de Cupom Fiscal:
	 * Bilhete de Passagem Rodoviário (modelo 13),
	 * Bilhete de Passagem Aquaviário (modelo 14),
	 * Bilhete de Passagem e Nota de Bagagem (modelo 15),
	 * Bilhete de Passagem Ferroviário (modelo 16), e
	 * Nota Fiscal de Venda a Consumidor (modelo 2)
	 * *
	@SuppressWarnings("unused")
	private void registro60()
	{
		//TODO: Registro 60
	}

	/**
	 * Para os documentos fiscais descritos a seguir, quando não
	 * emitidos por equipamento emissor de cupom fiscal:
	 * Bilhete de Passagem Aquaviário (modelo 14),
	 * Bilhete de Passagem e Nota de Bagagem (modelo 15),
	 * Bilhete de Passagem Ferroviário (modelo 16),
	 * Bilhete de Passagem Rodoviário (modelo 13) e
	 * Nota Fiscal de Venda a Consumidor (modelo 2),
	 * Nota Fiscal de Produtor (modelo 4), para as unidades da
	 * Federação que não o exigirem na forma prevista no item 11.
	 * *
	@SuppressWarnings("unused")
	private void registro61()
	{
		//TODO: Registro 61
	}

	/**
	 * Formata o Registro 70
	 *
	 * Nota Fiscal de Serviço de Transporte
	 * Conhecimento de Transporte Rodoviário de Cargas
	 * Conhecimento de Transporte Aquaviário de Cargas
	 * Conhecimento de Transporte Ferroviário de Cargas
	 * Conhecimento Aéreo
	 * Conhecimento de Transporte Multimodal de Cargas
	 * Nota Fiscal de Serviço de Transporte Ferroviário
	 */
	private String registro70(String CNPJ, String IE, Timestamp DataEmissao,
			String UF, String CodModeloNF, String SerieNF, String SubSerieNF, String NoNF,
			String CFOP, BigDecimal ValorTotal, BigDecimal BaseICMS,
			BigDecimal ValorICMS, BigDecimal ValorIsento,
			BigDecimal ValorOutras, String CIF_FOB, Boolean SitNF)
	{
		StringBuffer result = new StringBuffer("");
		//
		String situacao = SitNF ? "S" : "N";
		//
		if (UF == null || !AdempiereLBR.isRegionBR(UF)){
			UF = "EX";
			CNPJ = null;
		}
		//
		if (SitNF)	//	NF Cancelada
		{
			ValorTotal 	= Env.ZERO;
			BaseICMS 	= Env.ZERO;
			ValorICMS 	= Env.ZERO;
			ValorIsento = Env.ZERO;
			ValorOutras = Env.ZERO;
		}
		//
		if (IE == null || IE.equals(""))
			IE = "ISENTO";
		//
		result.append("70")								//	1	2	N
			.append(TextUtil.lPad(CNPJ			, 14))	//	2	14	N
			.append(TextUtil.rPad(IE			, 14))	//	3	14	X
			.append(TextUtil.timeToString(DataEmissao))	//	4	8	D
			.append(TextUtil.rPad(UF			, 2))	//	5	2	X
			.append(TextUtil.lPad(CodModeloNF	, 2))	//	6	2	N
			.append(TextUtil.rPad(SerieNF		, 1))	//	7	3	X
			.append(TextUtil.rPad(SubSerieNF	, 2))	//	7	3	X
			.append(TextUtil.lPad(NoNF			, 6))	//	8	6	N
			.append(TextUtil.lPad(CFOP			, 4))	//	9	4	N
			.append(TextUtil.lPad(ValorTotal	, 13))	//	11	13	N
			.append(TextUtil.lPad(BaseICMS		, 14))	//	12	13	N
			.append(TextUtil.lPad(ValorICMS		, 14))	//	13	13	N
			.append(TextUtil.lPad(ValorIsento	, 14))	//	14	13	N
			.append(TextUtil.lPad(ValorOutras	, 14))	//	15	13	N
			.append(TextUtil.rPad(CIF_FOB		, 1))	//	16	4	N
			.append(TextUtil.rPad(situacao		, 1));	//	17	1	X
		//
		result.append(TextUtil.EOL_WIN32);
		//
		return result.toString();
	}

	/**
	 * Informações da Carga Transportada Referente a:
	 * Conhecimento de Transporte Rodoviário de Cargas
	 * Conhecimento de Transporte Aquaviário de Cargas
	 * Conhecimento Aéreo
	 * Conhecimento de Transporte Ferroviário de Cargas
	 * Acrescido pelo Conv. ICMS 18/04, efeitos a partir
	 * *
	@SuppressWarnings("unused")
	private void registro71()
	{
		//TODO: Registro 71
	}

	/**
	 * REGISTRO DE INVENTÁRIO
	 * *
	@SuppressWarnings("unused")
	private void registro74()
	{
		//TODO: Registro 74
	}

	/***	Comentada os métodos acima	***/

	/**
	 * 	Formata o Registro 75
	 *
	 * 	CÓDIGO DE PRODUTO OU SERVIÇO
	 */
	private String registro75(Timestamp DataInicial,
			Timestamp DataFinal, String CodProduto, String NCM,
			String DescProduto, String UdM, BigDecimal AliqIPI,
			BigDecimal AliqICMS, BigDecimal RedBaseCalc, BigDecimal BaseICMSST)
	{
		StringBuffer result = new StringBuffer("");
		//
		if (CodProduto == null || CodProduto.equals(""))
		{
			CodProduto = "SEMCODIGO";
			errors.append("Registro 75 sem código.");
		}
		//
		if (DescProduto == null || DescProduto.equals(""))
		{
			DescProduto = "SEMDESCRICAO";
			errors.append("Registro 75 sem descrição.");
		}
		//
		result.append("75")								//	1	2	N
			.append(TextUtil.timeToString(DataInicial))	//	2	6	D
			.append(TextUtil.timeToString(DataFinal))	//	3	6	D
			.append(TextUtil.rPad(CodProduto	, 14))	//	4	14	X
			.append(TextUtil.rPad(NCM			, 8))	//	5	8	X
			.append(TextUtil.rPad(DescProduto	, 53))	//	6	53	X
			.append(TextUtil.rPad(UdM			, 6))	//	7	6	X
			.append(TextUtil.lPad(AliqIPI		, 5))	//	8	5	N
			.append(TextUtil.lPad(AliqICMS		, 4))	//	9	4	N
			.append(TextUtil.lPad(RedBaseCalc	, 5))	//	10	5	N
			.append(TextUtil.lPad(BaseICMSST	, 13));	//	11	13	X
		//
		result.append(TextUtil.EOL_WIN32);
		//
		return result.toString();
	}	//	registro75

	/**
	 * NOTA FISCAL DE SERVIÇOS DE COMUNICAÇÃO (MOD. 21)
	 * NOTA FISCAL DE SERVIÇOS DE TELECOMUNICAÇÕES (MOD. 22
	 *
	 * (NAS PRESTAÇÕES DE SERVIÇO)
	 *
	 * *
	@SuppressWarnings("unused")
	private void registro76()
	{
		//TODO: Registro 76
	}

	/**
	 * SERVIÇOS DE COMUNICAÇÃO E TELECOMUNICAÇÃO
	 * *
	@SuppressWarnings("unused")
	private void registro77()
	{
		//TODO: Registro 77
	}

	/**
	 * Informações de Exportações
	 * *
	@SuppressWarnings("unused")
	private void registro85()
	{
		//TODO: Registro 85
	}

	/**
	 * Informações Complementares de Exportações
	 * *
	@SuppressWarnings("unused")
	private void registro86()
	{
		//TODO: Registro 86
	}

	/***	Comentada os métodos acima	***/

	/**
	 * Formata Registro 90
	 *
	 * TOTALIZAÇÃO DO ARQUIVO
	 * */
	private String registro90(String CNPJ, String IE, Integer Total50,
			Integer Total51, Integer Total53, Integer Total54, Integer Total55,
			Integer Total56, Integer Total57, Integer Total60, Integer Total61,
			Integer Total70, Integer Total71, Integer Total74, Integer Total75,
			Integer Total76, Integer Total77, Integer Total85, Integer Total86)
	{
		int count 	= 0;
		int Total90	= 1;
		//
		StringBuffer header = new StringBuffer("");
		StringBuffer linhas	= new StringBuffer("");
		//
		header.append("90")							//	1	2	X
			.append(TextUtil.lPad(CNPJ	, 14))		//	2	14	N
			.append(TextUtil.rPad(IE	, 14));		//	3	14	X;
		//
		//	Primeira Linha
		linhas.append(header);
		//
		if (Total50 != null && Total50.intValue() != 0)	//	1
		{
			count++;
			linhas.append("50")
				.append(TextUtil.lPad("" + Total50, 8));
		}
		//
		if (Total51 != null && Total51.intValue() != 0)	//	2
		{
			count++;
			linhas.append("51")
				.append(TextUtil.lPad("" + Total51, 8));
		}
		//
		if (Total53 != null && Total53.intValue() != 0)	//	3
		{
			count++;
			linhas.append("53")
				.append(TextUtil.lPad("" + Total53, 8));
		}
		//
		if (Total54 != null && Total54.intValue() != 0)	//	4
		{
			count++;
			linhas.append("54")
				.append(TextUtil.lPad("" + Total54, 8));
		}
		//
		if (Total55 != null && Total55.intValue() != 0)	//	5
		{
			count++;
			linhas.append("55")
				.append(TextUtil.lPad("" + Total55, 8));
		}
		//
		if (Total56 != null && Total56.intValue() != 0)	//	6
		{
			count++;
			linhas.append("56")
				.append(TextUtil.lPad("" + Total56, 8));
		}
		//
		if (Total57 != null && Total57.intValue() != 0)	//	7
		{
			count++;
			linhas.append("57")
				.append(TextUtil.lPad("" + Total57, 8));
		}
		//
		if (Total60 != null && Total60.intValue() != 0)	//	8
		{
			count++;
			linhas.append("60")
				.append(TextUtil.lPad("" + Total60, 8));
		}
		//
		if (Total61 != null && Total61.intValue() != 0)	//	9
		{
			count++;
			linhas.append("61")
				.append(TextUtil.lPad("" + Total61, 8));
		}
		//
		if (count == 9)
		{
			Total90++;
			count=0;
			linhas.append(Total90)
				.append(TextUtil.EOL_WIN32)
				.append(header);
		}
		//
		if (Total70 != null && Total70.intValue() != 0)	//	10
		{
			count++;
			linhas.append("70")
				.append(TextUtil.lPad("" + Total70, 8));
		}
		//
		if (count == 9)
		{
			Total90++;
			count=0;
			linhas.append(Total90)
				.append(TextUtil.EOL_WIN32)
				.append(header);
		}
		//
		if (Total71 != null && Total71.intValue() != 0)	//	11
		{
			count++;
			linhas.append("71")
				.append(TextUtil.lPad("" + Total71, 8));
		}
		//
		if (count == 9)
		{
			Total90++;
			count=0;
			linhas.append(Total90)
				.append(TextUtil.EOL_WIN32)
				.append(header);
		}
		//
		if (Total74 != null && Total74.intValue() != 0)	//	12
		{
			count++;
			linhas.append("74")
				.append(TextUtil.lPad("" + Total74, 8));
		}
		//
		if (count == 9)
		{
			Total90++;
			count=0;
			linhas.append(Total90)
				.append(TextUtil.EOL_WIN32)
				.append(header);
		}
		//
		if (Total75 != null && Total75.intValue() != 0)	//	13
		{
			count++;
			linhas.append("75")
				.append(TextUtil.lPad("" + Total75, 8));
		}
		//
		if (count == 9)
		{
			Total90++;
			count=0;
			linhas.append(Total90)
				.append(TextUtil.EOL_WIN32)
				.append(header);
		}
		//
		if (Total76 != null && Total76.intValue() != 0)	//	14
		{
			count++;
			linhas.append("76")
				.append(TextUtil.lPad("" + Total76, 8));
		}
		//
		if (count == 9)
		{
			Total90++;
			count=0;
			linhas.append(Total90)
				.append(TextUtil.EOL_WIN32)
				.append(header);
		}
		//
		if (Total77 != null && Total77.intValue() != 0)	//	15
		{
			count++;
			linhas.append("77")
				.append(TextUtil.lPad("" + Total77, 8));
		}
		//
		if (count == 9)
		{
			Total90++;
			count=0;
			linhas.append(Total90)
				.append(TextUtil.EOL_WIN32)
				.append(header);
		}
		//
		if (Total85 != null && Total85.intValue() != 0)	//	16
		{
			count++;
			linhas.append("85")
				.append(TextUtil.lPad("" + Total85, 8));
		}
		//
		if (count == 9)
		{
			Total90++;
			count=0;
			linhas.append(Total90)
				.append(TextUtil.EOL_WIN32)
				.append(header);
		}
		//
		if (Total86 != null && Total86.intValue() != 0)	//	17
		{
			count++;
			linhas.append("86")
				.append(TextUtil.lPad("" + Total86, 8));
		}
		//
		if (count == 9)
		{
			Total90++;
			count=0;
			linhas.append(Total90)
				.append(TextUtil.EOL_WIN32)
				.append(header);
		}
		//
		Integer Total99 = 	(Total50 == null ? 0 : Total50) +
							(Total51 == null ? 0 : Total51) +
							(Total53 == null ? 0 : Total53) +
							(Total54 == null ? 0 : Total54) +
							(Total55 == null ? 0 : Total55) +
							(Total56 == null ? 0 : Total56) +
							(Total57 == null ? 0 : Total57) +
							(Total60 == null ? 0 : Total60) +
							(Total61 == null ? 0 : Total61) +
							(Total70 == null ? 0 : Total70) +
							(Total71 == null ? 0 : Total71) +
							(Total74 == null ? 0 : Total74) +
							(Total75 == null ? 0 : Total75) +
							(Total76 == null ? 0 : Total76) +
							(Total77 == null ? 0 : Total77) +
							(Total85 == null ? 0 : Total85) +
							(Total86 == null ? 0 : Total86) +
							(Total90 + 2); //	Total de Registros 90 + 2 ref. aos registro 10 e 11
		//
		count++;
		linhas.append("99")
			.append(TextUtil.lPad("" + Total99, 8))
			.append(TextUtil.rPad(" ", 95 - (count * 10)))
			.append(Total90);
		//
		return linhas.toString();
	}


	/**
	 * Retorna Array com LBR_NotaFiscal_ID
	 * @param ctx
	 * @param estado
	 * @throws Exception
	 */
	private MLBRNotaFiscal[] getNotasFiscais(Properties ctx, String estado){

		StringBuffer whereClause = new StringBuffer("");
		//
		whereClause.append("AD_Client_ID=? AND AD_Org_ID=? ");
		//
		if(estado != "")
			whereClause.append("AND lbr_BPRegion='" + estado + "' ");
		//
		whereClause.append("AND (CASE WHEN IsSOTrx='Y' THEN TRUNC(DateDoc) ELSE TRUNC(NVL(lbr_DateInOut, DateDoc)) END) BETWEEN ? AND ? ");
		//
		MTable table = MTable.get(ctx, MLBRNotaFiscal.Table_Name);
		Query q =  new Query(ctx, table, whereClause.toString(), null);
		q.setParameters(new Object[]{Env.getAD_Client_ID(ctx), p_AD_Org_ID, p_DateFrom, p_DateTo});
		q.setOrderBy(" (CASE WHEN IsSOTrx='Y' THEN TRUNC(DateDoc) ELSE TRUNC(NVL(lbr_DateInOut, DateDoc)) END), Documentno ");
		List<MLBRNotaFiscal> list = q.list();

		return list.toArray(new MLBRNotaFiscal[list.size()]);
	} //getNotasFiscais

	/**************************************************************************
	 *  getLines
	 *  @param String MNotaFiscal
	 *  @return MNotaFiscalLine[] lines
	 */
	private MLBRNotaFiscalLine[] getLines(MLBRNotaFiscal nf)
	{

		String whereClause = "LBR_NotaFiscal_ID = ? "
			               + "AND lbr_CFOPName NOT LIKE '%1%933%' "
			               + "AND lbr_CFOPName NOT LIKE '%2%933%' "
			               + "AND lbr_CFOPName NOT LIKE '%352%' "
			               + "AND lbr_CFOPName NOT LIKE '%ZZZ%'";;

		String orderBy = "Line";
		Object[] parameters = new Object[]{nf.getLBR_NotaFiscal_ID()};

		return nf.getLines(parameters, whereClause, orderBy);
	}//	getLines

}	//	ProcGenerateSINTEGRA