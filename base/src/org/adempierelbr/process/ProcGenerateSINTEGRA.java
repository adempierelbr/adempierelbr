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

import java.io.FileWriter;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.model.MNotaFiscal;
import org.adempierelbr.model.MNotaFiscalLine;
import org.adempierelbr.util.POLBR;
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
 *	@version $Id: ProcGenerateSINTEGRA.java, 2009/04/08 15:57:00 ralexsander 
 */
public class ProcGenerateSINTEGRA extends SvrProcess
{
	/**	Arquivo							*/
	private String p_FilePath = null;
	
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
			else if(name.equals("AD_Org_ID"))
				p_AD_Org_ID = para[i].getParameterAsInt();
			else if(name.equals("C_Region_ID"))
				p_C_Region_ID = para[i].getParameterAsInt();
			else if(name.equals("ConsolidateDocument"))
				p_Consolidate = "Y".equals(para[i].getParameter());
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
		
		if(p_Consolidate == null)
			p_Consolidate = false;
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message
	 *  @throws Exception if not successful
	 */
	protected String doIt() throws Exception
	{	
		Properties ctx = Env.getCtx();
		
		if (p_Consolidate)
		{
			String fileName = p_FilePath;
			
			if (!(p_FilePath.endsWith(POLBR.getFileSeparator()))) 
		    	fileName += POLBR.getFileSeparator();
			
			fileName += "SINTEGRA_CONSOLIDADO.txt";
			
			FileWriter fw = new FileWriter(fileName, false);
			fw.write(getSINTEGRA(ctx, ""));
			fw.flush();
			fw.close();
		}
		else if (p_C_Region_ID > 0)
		{
			String fileName = p_FilePath;
			String rName = new MRegion(ctx, p_C_Region_ID, null).getName().trim().toUpperCase();
			
			if (!(p_FilePath.endsWith(POLBR.getFileSeparator()))) 
		    	fileName += POLBR.getFileSeparator();
			
			fileName += "SINTEGRA_"+rName+".txt";
			
			FileWriter fw = new FileWriter(fileName, false);
			fw.write(getSINTEGRA(ctx, rName));
			fw.flush();
			fw.close();
		}
		else
		{
			MRegion[] regions = MRegion.getRegions(ctx, 139);	//	Only Brazilian Regions
			
			if (regions != null)
			{
				for (MRegion r : regions)
				{
					String fileName = p_FilePath;
					String rName = r.getName().trim().toUpperCase();
					String result = getSINTEGRA(ctx, rName);
					
					//	Menor que 3 linhas não salva o arquivo
					if (result.length() <= (130 * 3))
						continue;
					
					if (!(p_FilePath.endsWith(POLBR.getFileSeparator()))) 
				    	fileName += POLBR.getFileSeparator();
					
					fileName += "SINTEGRA_"+rName+".txt";
					
					FileWriter fw = new FileWriter(fileName, false);
					fw.write(result);
					fw.flush();
					fw.close();
				}
			}
		}
		
		return "";
	}	//	doIt
	
	private String getSINTEGRA(Properties ctx, String estado) throws Exception
	{
		/**	Validar produto					*/
		ArrayList<String> uniquePrd = new ArrayList<String>();
		
		StringBuffer registro50 = new StringBuffer("");
		StringBuffer registro51 = new StringBuffer("");
		StringBuffer registro54 = new StringBuffer("");
		StringBuffer registro70 = new StringBuffer("");
		StringBuffer registro75 = new StringBuffer("");
		Integer	count50 = 0;
		Integer	count51 = 0;
		Integer	count54 = 0;
		Integer	count70 = 0;
		Integer	count75 = 0;
		
		if(estado == null)
			estado = "";
		
		if (p_AD_Org_ID == 0)
			throw new Exception("AD_Org_ID Mandatory");
		
		MOrgInfo oi 	= new MOrg(Env.getCtx(), p_AD_Org_ID, null).getInfo();
		MLocation ol 	= new MLocation(Env.getCtx(), oi.getC_Location_ID(), null);
		MRegion r 		= ol.getRegion();
		
		StringBuffer result = new StringBuffer("");
		StringBuffer whereClause = new StringBuffer("");
		
		whereClause.append("AD_Client_ID=? ")
			.append("AND AD_Org_ID=? ");
		
		if(estado != "")
			whereClause.append("AND lbr_BPInvoiceRegion='" + estado + "' ");
		
		whereClause.append("AND TRUNC(DateDoc) BETWEEN ")
			.append(DB.TO_DATE(p_DateFrom))
			.append(" AND ")
			.append(DB.TO_DATE(p_DateTo));

		MTable table = MTable.get(ctx, MNotaFiscal.Table_Name);		
		Query q =  new Query(table, whereClause.toString(), null);
		q.setParameters(new Object[]{Env.getAD_Client_ID(ctx), p_AD_Org_ID});
		List<MNotaFiscal> list = q.list();
		
		//	Monta o Registro 10
		log.finer("SINTEGRA: 10");
		result.append(
				registro10(oi.get_ValueAsString("lbr_CNPJ"),
						oi.get_ValueAsString("lbr_IE"),
						oi.get_ValueAsString("lbr_LegalEntity"),	//	Razão Social
						ol.getCity(), r.getName(),
						oi.get_ValueAsString("Fax"),	//	Fax
						p_DateFrom,	p_DateTo, "3", "3",	"1"));
		
		//	Monta o Registro 11
		log.finer("SINTEGRA: 11");
		result.append(
				registro11(ol.getAddress1(), ol.getAddress2(),
						ol.getAddress4(), ol.getAddress3(),
						ol.getPostal(),
						oi.get_ValueAsString("ContactName"),		//	Pessoa Contato
						oi.get_ValueAsString("Phone")));	//	Telefone Contato
		
		for(MNotaFiscal NF : list)
		{
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			StringBuffer sql = new StringBuffer("");

			try
			{
//				Monta o Registro 50 e 70
				sql.append("SELECT NVL(nfl.lbr_CFOPName,'0'), SUM(NVL(nfl.LineTotalAmt,0) + NVL(nfltipi.lbr_TaxAmt,0)), SUM(NVL(nflt.lbr_TaxBaseAmt,0)), ")
					.append("SUM(NVL(nflt.lbr_TaxAmt,0)), NVL(nflt.lbr_TaxRate,0) FROM LBR_NotaFiscal nf ")
					.append("INNER JOIN  LBR_NotaFiscalLine nfl ON nf.LBR_NotaFiscal_ID=nfl.LBR_NotaFiscal_ID ")
					.append("LEFT JOIN   LBR_NFLineTax nflt ON (nflt.LBR_NotaFiscalLine_ID=nfl.LBR_NotaFiscalLine_ID ")
					.append("AND nflt.LBR_TaxGroup_ID IN (SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE Name='ICMS')) ")
					.append("LEFT JOIN   LBR_NFLineTax nfltipi ON (nfltipi.LBR_NotaFiscalLine_ID=nfl.LBR_NotaFiscalLine_ID ")
					.append("AND nfltipi.LBR_TaxGroup_ID IN (SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE Name='IPI')) ")
					.append("WHERE nf.LBR_NotaFiscal_ID = ? GROUP BY nflt.lbr_TaxRate, nfl.lbr_CFOPName");
				
				DB.close(rs, pstmt);
				pstmt = DB.prepareStatement(sql.toString(), null);
				pstmt.setInt(1, NF.getLBR_NotaFiscal_ID());
				rs = pstmt.executeQuery();
				while (rs.next())
				{
					StringBuffer linha = new StringBuffer("");
					String CFOP = rs.getString(1);
					
					if (CFOP != null
							&& CFOP.trim().endsWith("352"))	//	CFOP de Transporte
					{
						linha.append(registro70(NF.getlbr_BPCNPJ(),
			    				NF.getlbr_BPIE(),
			    				NF.getDateDoc(),
			    				NF.getlbr_BPRegion(),
			    				"08",		//	FIXME	Modelo
			    				"",			//	FIXME	SubSérie
			    				serieNo(NF.getDocumentNo()),
			    				docNo(NF.getDocumentNo()),
			    				rs.getString(1),
			    				rs.getBigDecimal(2),
			    				rs.getBigDecimal(3),
			    				rs.getBigDecimal(4),
			    				Env.ZERO,	//	FIXME	Isenta
			    				Env.ZERO,	//	FIXME	Outras
			    				"1",
			    				"N"));		//	FIXME 	Situação NF
						
						if (linha.length() < 5)
							continue;
						
						count70++;
						log.finer("SINTEGRA: 70");
			    		registro70.append(linha);
					}
					else								//	Outro CFOP
					{
						linha.append(registro50(NF.getlbr_BPCNPJ(),
			    				NF.getlbr_BPIE(),
			    				NF.getDateDoc(),
			    				NF.getlbr_BPRegion(),
			    				"01",		//	FIXME	Modelo
			    				serieNo(NF.getDocumentNo()),
			    				docNo(NF.getDocumentNo()),
			    				CFOP,
			    				NF.get_ValueAsString("lbr_IsOwnDocument"),
			    				rs.getBigDecimal(2),
			    				rs.getBigDecimal(3),
			    				rs.getBigDecimal(4),
			    				Env.ZERO,	//	FIXME	Isenta
			    				Env.ZERO,	//	FIXME	Outras
			    				rs.getBigDecimal(5),
			    				"N"));		//	FIXME 	Situação NF
						
						if (linha.length() < 5)
							continue;
						
						count50++;
						log.finer("SINTEGRA: 50");
			    		registro50.append(linha);
					}
				}
				
//				Monta o registro 51
				sql = new StringBuffer("");
				sql.append("SELECT NVL(nfl.lbr_CFOPName,'0'), SUM(NVL(nfl.LineTotalAmt,0)), SUM(NVL(nflt.lbr_TaxBaseAmt,0)), ")
					.append("SUM(NVL(nflt.lbr_TaxAmt,0)), NVL(nflt.lbr_TaxRate,0) FROM LBR_NotaFiscal nf ")
					.append("INNER JOIN  LBR_NotaFiscalLine nfl ON nf.LBR_NotaFiscal_ID=nfl.LBR_NotaFiscal_ID ")
					.append("LEFT JOIN   LBR_NFLineTax nflt ON (nflt.LBR_NotaFiscalLine_ID=nfl.LBR_NotaFiscalLine_ID ")
					.append("AND nflt.LBR_TaxGroup_ID IN (SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE Name='IPI')) ")
					.append("WHERE nf.LBR_NotaFiscal_ID = ? GROUP BY nflt.lbr_TaxRate, nfl.lbr_CFOPName");
				
				DB.close(rs, pstmt);
				pstmt = DB.prepareStatement(sql.toString(), null);
				pstmt.setInt(1, NF.getLBR_NotaFiscal_ID());
				rs = pstmt.executeQuery();
				while (rs.next())
				{
					StringBuffer linha = new StringBuffer("");
					String CFOP = rs.getString(1);
					
					if (CFOP != null
							&& CFOP.trim().endsWith("352"))	//	CFOP de Transporte
						continue;
					
					linha.append(registro51(NF.getlbr_BPCNPJ(),
	        				NF.getlbr_BPIE(),
	        				NF.getDateDoc(),
	        				NF.getlbr_BPRegion(),
	        				serieNo(NF.getDocumentNo()),	
	        				docNo(NF.getDocumentNo()),
	        				CFOP,
	        				rs.getBigDecimal(2),
	        				rs.getBigDecimal(4),
	        				Env.ZERO,	//	FIXME	Isenta
	        				Env.ZERO,	//	FIXME	Outras
	        				"N"));		//	FIXME 	Situação NF
					
					if (linha.length() < 5)
						continue;
					
					count51++;
					log.finer("SINTEGRA: 51");
					registro51.append(linha);
				}
				
				MNotaFiscalLine[] NFLines = NF.getLines("Line");
				for (MNotaFiscalLine NFLine : NFLines)
				{
					String CFOP = NFLine.getlbr_CFOPName();
					
					if (CFOP != null
							&& CFOP.trim().endsWith("352"))	//	CFOP de Transporte
						continue;
					
					count54++;
					
//					Registro 54
					log.finer("SINTEGRA: 54");
					registro54.append(registro54(
							NF.getlbr_BPCNPJ(),
							"01",			//	FIXME 	Modelo
							serieNo(NF.getDocumentNo()),
							docNo(NF.getDocumentNo()),
							NFLine.getlbr_CFOPName(),
							NFLine.getlbr_TaxStatus(),
							"" + NFLine.getLine(),
							NFLine.getProductValue(),
							NFLine.getQty(),
							NFLine.getLineTotalAmt(),
							Env.ZERO,	//	FIXME	Desconto
							NFLine.getICMSBase(),
							Env.ZERO,	//	FIXME	ICMS ST
							NFLine.getIPIAmt(),
							NFLine.getICMSRate()));
					
					
					if (uniquePrd.contains(NFLine.getProductValue()))
						continue;
					
					uniquePrd.add(NFLine.getProductValue());
					count75++;
					
//					Registro 75
					log.finer("SINTEGRA: 75");
					registro75.append(registro75(
							p_DateFrom,
							p_DateTo,
							NFLine.getProductValue(),
							NFLine.getlbr_NCMName(),
							NFLine.getProductName(),
							NFLine.getlbr_UOMName(),
							NFLine.getIPIRate(),
							NFLine.getICMSRate(),
							NFLine.getICMSBaseReduction(),
							Env.ZERO));
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
		}
		
		StringBuffer registro90 = new StringBuffer("");
		
		registro90.append(registro90(
				oi.get_ValueAsString("lbr_CNPJ"),
				oi.get_ValueAsString("lbr_IE"), count50, 
				count51, count54, count70, count75));
		
		return result.append(registro50)
				.append(registro51)
				.append(registro54)
				.append(registro70)
				.append(registro75)
				.append(registro90).toString();
	}
	
	/**
	 * Extrai o número da NF
	 * 
	 * @param	String	No da NF com a Série
	 * @return	String	No da NF sem a Série
	 */
	private String docNo(String documentNo)
	{
		if (documentNo == null
				|| documentNo.startsWith("-"))
			return "";
		
		if (documentNo.indexOf('-') == -1)
			return documentNo;
		
		return documentNo.substring(0, documentNo.indexOf('-'));
	}	//	docNo
	
	/**
	 * Extrai a Série da NF
	 * 
	 * @param	String	No da NF com a Série
	 * @return	String	Série da NF
	 */
	private String serieNo(String documentNo)
	{
		if (documentNo == null
				|| documentNo.indexOf('-') == -1
				|| documentNo.endsWith("-"))
			return "";
		
		return documentNo.substring(1+documentNo.indexOf('-'), documentNo.length());
	}	//	docNo
	
	/**
	 * 	Formata o Registro 10
	 * 
	 * 	Mestre do Estabelecimento
	 * 
	 * @param	String		CNPJ
	 * @param	String		IE
	 * @param	String		Razão Social
	 * @param	String		Município
	 * @param	String		UF
	 * @param	String		Fax
	 * @param	Timestamp	Data Inicial
	 * @param	Timestamp	Data Final
	 * @param	String		Código do Convênio
	 * @param	String		Código da Natureza de Operações
	 * @param	String		Código da Finalidade
	 * @return	String		Registro 10 Formatado
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
	 * 
	 * @param	String	Logradouro
	 * @param	String	Numero
	 * @param	String	Complemento
	 * @param	String	Bairro
	 * @param	String	CEP
	 * @param	String	Contato
	 * @param	String	Telefone
	 * @return	String	Registro 11 Formatado
	 */
	private String registro11(String Logradouro, String Numero, String Complemento,
			String Bairro, String CEP, String Contato, String Telefone)
	{
		StringBuffer result = new StringBuffer("");

		result.append("11")								//	1	2	N
			.append(TextUtil.rPad(Logradouro	, 34))	//	2	34	X
			.append(TextUtil.lPad(Numero		, 5))	//	3	5	N
			.append(TextUtil.rPad(Complemento	, 22))	//	4	22	X
			.append(TextUtil.rPad(Bairro		, 15))	//	5	15	X
			.append(TextUtil.lPad(CEP			, 8))	//	6	8	N
			.append(TextUtil.rPad(Contato		, 28))	//	7	28	X
			.append(TextUtil.lPad(Telefone		, 12));	//	8	12	N
		
		result.append(TextUtil.EOL_WIN32);
		
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
	 *
	 * @param	String		CNPJ
	 * @param	String		IE
	 * @param	Timestamp	Data de emissão ou recebimento
	 * @param	String		UF
	 * @param	String		Código do modelo da nota fiscal
	 * @param	String		Série da nota fiscal
	 * @param	String		Número da nota fiscal
	 * @param	String		CFOP
	 * @param	String		Emitente da Nota Fiscal (P-próprio/T-terceiros)
	 * @param	BigDecimal	Valor total da nota fiscal
	 * @param	BigDecimal	Base de Cálculo do ICMS
	 * @param	BigDecimal	Montante do imposto ICMS
	 * @param	BigDecimal	Valor amparado por isenção ou não incidência
	 * @param	BigDecimal	Valor que não confira débito ou crédito do ICMS
	 * @param	BigDecimal	Alíquota do ICMS
	 * @param	String		Situação da Nota Fiscal
	 * @return	String		Registro 50 Formatado
	 */
	private String registro50(String CNPJ, String IE, Timestamp DataEmissao,
			String UF, String CodModeloNF, String SerieNF, String NoNF,
			String CFOP, String Emitente, BigDecimal ValorTotal, BigDecimal BaseICMS,
			BigDecimal ValorICMS, BigDecimal ValorIsento, BigDecimal ValorOutras,
			BigDecimal AliqICMS, String SitNF)
	{
		StringBuffer result = new StringBuffer("");
		
		Emitente = Emitente.equals("Y") || Emitente.equalsIgnoreCase("true")  ? "P" : "T";
		
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
			.append(TextUtil.rPad(SitNF			, 1));	//	17	1	X
		
		result.append(TextUtil.EOL_WIN32);
		
		return result.toString();
	}	//	registro50

	/**
	 * 	Formata o Registro 51
	 * 	
	 * 	Total de NF quanto ao IPI.
	 * 
	 * @param	String		CNPJ
	 * @param	String		IE
	 * @param	Timestamp	Data de emissão ou recebimento
	 * @param	String		UF
	 * @param	String		Série da nota fiscal
	 * @param	String		Número da nota fiscal
	 * @param	String		CFOP
	 * @param	BigDecimal	Valor total da nota fiscal
	 * @param	BigDecimal	Montante do imposto IPI
	 * @param	BigDecimal	Valor amparado por isenção ou não incidência
	 * @param	BigDecimal	Valor que não confira débito ou crédito do ICMS
	 * @param	String		Situação da Nota Fiscal
	 * @return	String		Registro 51 Formatado
	 */
	private String registro51(String CNPJ, String IE, Timestamp DataEmissao,
			String UF, String SerieNF, String NoNF,	String CFOP, 
			BigDecimal ValorTotal, BigDecimal ValorIPI, BigDecimal ValorIsento, 
			BigDecimal ValorOutras, String SitNF)
	{
		StringBuffer result = new StringBuffer("");
		
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
			.append(TextUtil.rPad(SitNF			, 1));	//	14	1	X
		
		result.append(TextUtil.EOL_WIN32);
		
		return result.toString();
	}	//	registro51
	
	/**
	 * SUBSTITUIÇÃO TRIBUTÁRIA
	 * *
	@SuppressWarnings("unused")
	private void registro53()
	{
		//TODO: Registro 53
	}
	
	/***	Comentada os métodos acima	***/
	
	/**
	 * 	Formata o Registro 54
	 * 
	 * 	Produto
	 *
	 * @param	String		CNPJ
	 * @param	String		Código do modelo da nota fiscal
	 * @param	String		Série da nota fiscal
	 * @param	String		Número da nota fiscal
	 * @param	String		CFOP
	 * @param	String		Código da Situação Tributária
	 * @param	String		Número de ordem do item na nota fiscal
	 * @param	String		Código do produto ou serviço do informante
	 * @param	BigDecimal	Quantidade do produto (com 3 decimais)
	 * @param	BigDecimal	Valor total do Produto (Total)
	 * @param	BigDecimal	Valor do Desconto
	 * @param	BigDecimal	Base de Cálculo do ICMS
	 * @param	BigDecimal	Base de Cálculo do ICMS de retenção na Subst. Trib.
	 * @param	BigDecimal	Valor do IPI
	 * @param	BigDecimal	Alíquota Utilizada no Cálculo do ICMS
	 * @return	String		Registro 54 Formatado
	 */
	private String registro54(String CNPJ, String CodModeloNF, 
			String SerieNF, String NoNF, String CFOP, String CST, 
			String SeqItem, String CodProduto,
			BigDecimal QtdProd, BigDecimal ValorProd,
			BigDecimal ValorDesconto, BigDecimal BaseICMS, BigDecimal BaseICMSST,
			BigDecimal ValorIPI, BigDecimal AliqICMS)
	{
		StringBuffer result = new StringBuffer("");
		
		if (CodProduto == null || CodProduto.equals(""))
		{
			CodProduto = "SEMCODIGO";
			errors.append("NF: ").append(NoNF).append(" do CNPJ ").append(CNPJ)
				.append(" sem código de produto. Item: ").append(SeqItem);
		}
		
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
		
		result.append(TextUtil.EOL_WIN32);
		
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
	 * Nota Fiscal de Serviço de Transporte
	 * Conhecimento de Transporte Rodoviário de Cargas
	 * Conhecimento de Transporte Aquaviário de Cargas
	 * Conhecimento de Transporte Ferroviário de Cargas
	 * Conhecimento Aéreo
	 * Conhecimento de Transporte Multimodal de Cargas
	 * Nota Fiscal de Serviço de Transporte Ferroviário
	 *
	 * @param	String		CNPJ
	 * @param	String		IE
	 * @param	Timestamp	Data de emissão ou recebimento
	 * @param	String		UF
	 * @param	String		Código do modelo da nota fiscal
	 * @param	String		Série da nota fiscal
	 * @param	String		Número da nota fiscal
	 * @param	String		CFOP
	 * @param	String		Emitente da Nota Fiscal (P-próprio/T-terceiros)
	 * @param	BigDecimal	Valor total da nota fiscal
	 * @param	BigDecimal	Base de Cálculo do ICMS
	 * @param	BigDecimal	Montante do imposto ICMS
	 * @param	BigDecimal	Valor amparado por isenção ou não incidência
	 * @param	BigDecimal	Valor que não confira débito ou crédito do ICMS
	 * @param	BigDecimal	Alíquota do ICMS
	 * @param	String		Situação da Nota Fiscal
	 * @return	String		Registro 70 Formatado
	 */
	private String registro70(String CNPJ, String IE, Timestamp DataEmissao,
			String UF, String CodModeloNF, String SerieNF, String SubSerieNF, String NoNF,
			String CFOP, BigDecimal ValorTotal, BigDecimal BaseICMS,
			BigDecimal ValorICMS, BigDecimal ValorIsento, BigDecimal ValorOutras,
			String CIF_FOB, String SitNF)
	{
		StringBuffer result = new StringBuffer("");
				
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
			.append(TextUtil.rPad(SitNF			, 1));	//	17	1	X
		
		result.append(TextUtil.EOL_WIN32);
		
		return result.toString();
		//TODO: Registro 70
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
	 *
	 * @param	String		CNPJ
	 * @param	Timestamp	Data Inicial
	 * @param	Timestamp	Data Final
	 * @param	String		Código do prod ou ser utilizado pelo contrib.
	 * @param	String		NCM
	 * @param	String		Descrição do produto ou serviço
	 * @param	String		Unidade de medida de comercialização do produto
	 * @param	BigDecimal	Alíquota do IPI do produto
	 * @param	BigDecimal	Alíquota do ICMS aplicável a mercadoria
	 * @param	BigDecimal	% de Redução na base de cálculo do ICMS
	 * @param	BigDecimal	Base de Cálculo do ICMS de ST
	 * @return	String		Registro 54 Formatado
	 */
	private String registro75(Timestamp DataInicial, 
			Timestamp DataFinal, String CodProduto, String NCM, 
			String DescProduto, String UdM, BigDecimal AliqIPI, 
			BigDecimal AliqICMS, BigDecimal RedBaseCalc, BigDecimal BaseICMSST)
	{
		StringBuffer result = new StringBuffer("");
		
		if (CodProduto == null || CodProduto.equals(""))
		{
			CodProduto = "SEMCODIGO";
			errors.append("Registro 75 sem código.");
		}
		
		if (DescProduto == null || DescProduto.equals(""))
		{
			DescProduto = "SEMDESCRICAO";
			errors.append("Registro 75 sem descrição.");
		}
		
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
		
		result.append(TextUtil.EOL_WIN32);
		
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
	 * TOTALIZAÇÃO DO ARQUIVO
	 * 
	 * TODO: Feito uma solução rápida, desenvolver uma solução
	 * 	mais eficiente, com o uso de HashMap por exemplo.
	 * 
	 * @param	String CNPJ
	 * @param	String IE
	 * @param	Integer Total de Registros 50
	 * @param	Integer Total de Registros 51
	 * @param	Integer Total de Registros 53
	 * @param	Integer Total de Registros 54
	 * @param	Integer Total de Registros 55
	 * @param	Integer Total de Registros 56
	 * @param	Integer Total de Registros 57
	 * @param	Integer Total de Registros 60
	 * @param	Integer Total de Registros 61
	 * @param	Integer Total de Registros 70
	 * @param	Integer Total de Registros 71
	 * @param	Integer Total de Registros 74
	 * @param	Integer Total de Registros 75
	 * @param	Integer Total de Registros 76
	 * @param	Integer Total de Registros 77
	 * @param	Integer Total de Registros 85
	 * @param	Integer Total de Registros 86
	 * @return	String	Registro 90 Formatado
	 * */
	private String registro90(String CNPJ, String IE, Integer Total50, 
			Integer Total51, Integer Total53, Integer Total54, Integer Total55, 
			Integer Total56, Integer Total57, Integer Total60, Integer Total61, 
			Integer Total70, Integer Total71, Integer Total74, Integer Total75, 
			Integer Total76, Integer Total77, Integer Total85, Integer Total86)
	{
		int count 	= 0;
		int Total90	= 1;
		
		StringBuffer header = new StringBuffer("");
		StringBuffer linhas	= new StringBuffer("");
	
		header.append("90")							//	1	2	X
			.append(TextUtil.lPad(CNPJ	, 14))		//	2	14	N
			.append(TextUtil.rPad(IE	, 14));		//	3	14	X;
		
		
		/**	Primeira Linha	*/
		linhas.append(header);
		
		if (Total50 != null && Total50.intValue() != 0)	//	1
		{
			count++;
			linhas.append("50")
				.append(TextUtil.lPad("" + Total50, 8));
		}
		
		if (Total51 != null && Total51.intValue() != 0)	//	2
		{
			count++;
			linhas.append("51")
				.append(TextUtil.lPad("" + Total51, 8));
		}
		
		if (Total53 != null && Total53.intValue() != 0)	//	3
		{
			count++;
			linhas.append("53")
				.append(TextUtil.lPad("" + Total53, 8));
		}
		
		if (Total54 != null && Total54.intValue() != 0)	//	4
		{
			count++;
			linhas.append("54")
				.append(TextUtil.lPad("" + Total54, 8));
		}
		
		if (Total55 != null && Total55.intValue() != 0)	//	5
		{
			count++;
			linhas.append("55")
				.append(TextUtil.lPad("" + Total55, 8));
		}
		
		if (Total56 != null && Total56.intValue() != 0)	//	6
		{
			count++;
			linhas.append("56")
				.append(TextUtil.lPad("" + Total56, 8));
		}
		
		if (Total57 != null && Total57.intValue() != 0)	//	7
		{
			count++;
			linhas.append("57")
				.append(TextUtil.lPad("" + Total57, 8));
		}
		
		if (Total60 != null && Total60.intValue() != 0)	//	8
		{
			count++;
			linhas.append("60")
				.append(TextUtil.lPad("" + Total60, 8));
		}
		
		if (Total61 != null && Total61.intValue() != 0)	//	9
		{
			count++;
			linhas.append("61")
				.append(TextUtil.lPad("" + Total61, 8));
		}
		
		if (count == 9)
		{
			Total90++;
			count=0;
			linhas.append(Total90)
				.append(TextUtil.EOL_WIN32)
				.append(header);
		}
		
		if (Total70 != null && Total70.intValue() != 0)	//	10
		{
			count++;
			linhas.append("70")
				.append(TextUtil.lPad("" + Total70, 8));
		}
		
		if (count == 9)
		{
			Total90++;
			count=0;
			linhas.append(Total90)
				.append(TextUtil.EOL_WIN32)
				.append(header);
		}
		
		if (Total71 != null && Total71.intValue() != 0)	//	11
		{
			count++;
			linhas.append("71")
				.append(TextUtil.lPad("" + Total71, 8));
		}
		
		if (count == 9)
		{
			Total90++;
			count=0;
			linhas.append(Total90)
				.append(TextUtil.EOL_WIN32)
				.append(header);
		}
		
		if (Total74 != null && Total74.intValue() != 0)	//	12
		{
			count++;
			linhas.append("74")
				.append(TextUtil.lPad("" + Total74, 8));
		}
		
		if (count == 9)
		{
			Total90++;
			count=0;
			linhas.append(Total90)
				.append(TextUtil.EOL_WIN32)
				.append(header);
		}
		
		if (Total75 != null && Total75.intValue() != 0)	//	13
		{
			count++;
			linhas.append("75")
				.append(TextUtil.lPad("" + Total75, 8));
		}
		
		if (count == 9)
		{
			Total90++;
			count=0;
			linhas.append(Total90)
				.append(TextUtil.EOL_WIN32)
				.append(header);
		}
		
		if (Total76 != null && Total76.intValue() != 0)	//	14
		{
			count++;
			linhas.append("76")
				.append(TextUtil.lPad("" + Total76, 8));
		}
		
		if (count == 9)
		{
			Total90++;
			count=0;
			linhas.append(Total90)
				.append(TextUtil.EOL_WIN32)
				.append(header);
		}
		
		if (Total77 != null && Total77.intValue() != 0)	//	15
		{
			count++;
			linhas.append("77")
				.append(TextUtil.lPad("" + Total77, 8));
		}
		
		if (count == 9)
		{
			Total90++;
			count=0;
			linhas.append(Total90)
				.append(TextUtil.EOL_WIN32)
				.append(header);
		}
		
		if (Total85 != null && Total85.intValue() != 0)	//	16
		{
			count++;
			linhas.append("85")
				.append(TextUtil.lPad("" + Total85, 8));
		}
		
		if (count == 9)
		{
			Total90++;
			count=0;
			linhas.append(Total90)
				.append(TextUtil.EOL_WIN32)
				.append(header);
		}
		
		if (Total86 != null && Total86.intValue() != 0)	//	17
		{
			count++;
			linhas.append("86")
				.append(TextUtil.lPad("" + Total86, 8));
		}
		
		if (count == 9)
		{
			Total90++;
			count=0;
			linhas.append(Total90)
				.append(TextUtil.EOL_WIN32)
				.append(header);
		}
		
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
		
		count++;
		linhas.append("99")
			.append(TextUtil.lPad("" + Total99, 8))
			.append(TextUtil.rPad(" ", 95 - (count * 10)))
			.append(Total90);
		
		return linhas.toString();
	}
	
	
	/**
	 * TOTALIZAÇÃO DO ARQUIVO
	 * 
	 * @param	String 	CNPJ
	 * @param	String 	IE
	 * @param	Integer Total de Registros 50
	 * @param	Integer Total de Registros 51
	 * @param	Integer Total de Registros 54
	 * @param	Integer Total de Registros 70
	 * @param	Integer Total de Registros 75
	 * @return	String	Registro 90 Formatado
	 * */
	private String registro90(String CNPJ, String IE, Integer Total50, 
			Integer Total51,Integer Total54, Integer Total70, Integer Total75)
	{
		return registro90(CNPJ, IE, Total50, Total51, 0, Total54, 
				0, 0, 0, 0, 0, Total70, 0, 0, Total75, 0, 0, 0, 0);
	}
	
}	//	ProcGenerateSINTEGRA