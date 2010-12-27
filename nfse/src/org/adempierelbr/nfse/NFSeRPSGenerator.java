package org.adempierelbr.nfse;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.logging.Level;

import org.adempierelbr.nfse.beans.BtpRPS;
import org.adempierelbr.util.TextUtil;
import org.compiere.Adempiere;
import org.compiere.util.CLogMgt;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * Gera o arquivo de RPS com base no XML para
 *  NFS-e (Nota Fiscal de Serviços Eletrônica)
 * 	
 * 	Cada prefeitura pode ter um layout diferente para sua NFS-e.
 * 
 * @author Ricardo Santana
 * @version $Id: NFSeXMLGenerator.java, v1.0 2010/05/18 5:21:12 PM, ralexsander Exp $
 */
public class NFSeRPSGenerator
{
	/** Log				*/
	private static CLogger log = CLogger.getCLogger(NFSeRPSGenerator.class);
	
	/** Versão			*/
	private static final String VERSAO = "001";
	
	/**	Contadores		*/
	private static int 			COUNT_REGS = 0;
	private static BigDecimal 	TOTAL_SERVICO = Env.ZERO;
	private static BigDecimal 	TOTAL_DEDUCOES = Env.ZERO;
	
	/**
	 * 	Gera a NFS-e
	 * 
	 * @param 	LBR_NotaFiscal_ID
	 * @return	Error msg or ""
	 */
	public static String generateRPS (int LBR_NotaFiscal_ID) throws Exception
	{
		return generateRPS (LBR_NotaFiscal_ID, null);
	}	//	generateNFSe
	
	/**
	 * 	Gera o cabeçalho do RPS
	 * 
	 * @param 	pIM
	 * @param 	dateFrom
	 * @param 	dateTo
	 * @return	Header of RPS
	 * @throws 	Exception
	 */
	public static String generateHeader (String pIM, Timestamp dateFrom, Timestamp dateTo) 
		throws Exception
	{
		StringBuffer header = new StringBuffer("1");
		//
		header.append(VERSAO);
		header.append(TextUtil.lPad(pIM, 8));
		header.append(TextUtil.timeToString(dateFrom, "yyyyMMdd"));
		header.append(TextUtil.timeToString(dateTo, "yyyyMMdd"));
		header.append(TextUtil.EOL_WIN32);
		//	Zera os contadores
		COUNT_REGS 		= 0;
		TOTAL_SERVICO 	= Env.ZERO;
		TOTAL_DEDUCOES 	= Env.ZERO;
		//
		return header.toString();
	}	//	generateHeader
	
	/**
	 * 	Gera o rodapé do RPS
	 * 
	 * @param 	count
	 * @param 	serviceTotal
	 * @param 	deducTotal
	 * @return	Footer of RPS
	 * @throws 	Exception
	 */
	public static String generateFooter () throws Exception
	{
		StringBuffer footer = new StringBuffer("9");
		//
		footer.append(TextUtil.lPad(""+COUNT_REGS, 7));
		footer.append(TextUtil.lPad(TOTAL_SERVICO, 15));
		footer.append(TextUtil.lPad(TOTAL_DEDUCOES, 15));
		footer.append(TextUtil.EOL_WIN32);
		//
		return footer.toString();
	}	//	generateFooter
	
	/**
	 * 	Gera a NFS-e
	 * 
	 * @param 	LBR_NotaFiscal_ID
	 * @param 	TrxName
	 * @return	Error msg or ""
	 */
	public static String generateRPS (int LBR_NotaFiscal_ID, String trxName) throws Exception
	{
		log.info("init");
		//
		BtpRPS tpRPS = NFSeXMLGenerator.generateNFSe(LBR_NotaFiscal_ID, trxName);
		StringBuffer rps = new StringBuffer("2");
		//
		rps.append(TextUtil.rPad(tpRPS.getTipoRPS(), 5));
		rps.append(TextUtil.rPad(tpRPS.getChaveRPS().getSerieRPS(), 5));
		rps.append(TextUtil.lPad(tpRPS.getChaveRPS().getNumero(), 12));
		rps.append(data(tpRPS.getDataEmissao()));
		rps.append(TextUtil.rPad(statusRPS(tpRPS.getStatusRPS()), 1));
		rps.append(TextUtil.lPad(tpRPS.getValorServicos(), 15));
		rps.append(TextUtil.lPad(tpRPS.getValorDeducoes(), 15));
		rps.append(TextUtil.lPad(tpRPS.getCodigoServicos(), 5));
		rps.append(TextUtil.lPad(tpRPS.getAliquotaServicos(), 4));
		rps.append(TextUtil.lPad(issRetido(tpRPS.getISSRetido()), 1));
		//
		if (tpRPS.getCNPJCPFTomador() != null)
		{
			rps.append(TextUtil.lPad(cnpj(tpRPS.getCNPJCPFTomador().getDoc()), 1));
			rps.append(TextUtil.lPad(tpRPS.getCNPJCPFTomador().getDoc(), 14));
		}
		else
			rps.append("3"+TextUtil.lPad("0", 14));
		//
		rps.append(TextUtil.lPad(tpRPS.getInscricaoMunicipalTomador(), 8));
		rps.append(TextUtil.lPad(tpRPS.getInscricaoEstadualTomador(), 12));
		rps.append(TextUtil.rPad(tpRPS.getRazaoSocialTomador(), 75));
		rps.append(TextUtil.rPad(tpRPS.getEnderecoTomador().getTipoLogradouro(), 3));
		rps.append(TextUtil.rPad(tpRPS.getEnderecoTomador().getLogradouro(), 50));
		rps.append(TextUtil.rPad(tpRPS.getEnderecoTomador().getNumeroEndereco(), 10));
		rps.append(TextUtil.rPad(tpRPS.getEnderecoTomador().getComplementoEndereco(), 30));
		rps.append(TextUtil.rPad(tpRPS.getEnderecoTomador().getBairro(), 30));
		rps.append(TextUtil.rPad(cidade(tpRPS.getEnderecoTomador().getCidade()), 50));
		rps.append(TextUtil.rPad(tpRPS.getEnderecoTomador().getUF(), 2));
		rps.append(TextUtil.rPad(tpRPS.getEnderecoTomador().getCEP(), 8));
		rps.append(TextUtil.pad(tpRPS.getEmailTomador(), ' ', 75, false, false, false)); //	Não retira caracteres especiais
		rps.append(TextUtil.checkSize(tpRPS.getDiscriminacao(), 0, 1000));
		rps.append(TextUtil.EOL_WIN32);
		//	Contadores
		COUNT_REGS++;
		TOTAL_SERVICO  = TOTAL_SERVICO .add(new BigDecimal(tpRPS.getValorServicos()));
		TOTAL_DEDUCOES = TOTAL_DEDUCOES.add(new BigDecimal(tpRPS.getValorDeducoes()));
		//
		return rps.toString();
	}	//	generateRPS
	
	/**
	 * 	Formata a data
	 * 
	 * @param data
	 * @return
	 */
	private static String data (String data)
	{
		Timestamp ts = TextUtil.stringToTime(data, "yyyy-MM-dd'T'HH:mm:ss");
		return TextUtil.timeToString(ts, "yyyyMMdd");
	}	//	data
	
	/**
	 * 	Pega o nome da cidade pelo código
	 * 
	 * @param 	cidade
	 * @return 	Nome da Cidade
	 */
	private static String cidade (String cidade)
	{
		return DB.getSQLValueString(null, "SELECT MAX(Name) " +
				"FROM C_City c " +
				"WHERE c.lbr_CityCode='"+cidade+"'");
	}	//	cidade
	
	/**
	 * 	Identifica se é CPF ou CNPJ
	 * 
	 * @param 	cnpj
	 * @return	1-CPF, 2-CNPJ, 3-Erro
	 */
	private static String cnpj (String cnpj)
	{
		if (cnpj==null || cnpj.length() < 5)
			return "3";
		else if (cnpj.length() > 12)
			return "2";
		else 
			return "1";
	}	//	cnpj
	
	/**
	 * 	Identifica se o ISS é retido
	 * 
	 * @param 	iss
	 * @return	1-true, 2-false
	 */
	private static String issRetido (String iss)
	{
		if (iss==null || iss.equals("false"))
			return "2";
		else 
			return "1";
	}	//	issRetido
	
	/**
	 * 	Converte o Status do XML para RPS
	 * 
	 * @param status
	 * @return
	 */
	private static String statusRPS (String status)
	{
		if (status==null)
			return null;
		else if (status.equals("N"))
			return "T";
		else 
			return status;
	}	//	statusRPS
	
	/**
	 * 	Testes
	 * 
	 * @param args
	 */
	public static void main (String[] args) 
	{
		Adempiere.startupEnvironment(false);
		CLogMgt.setLevel(Level.FINE);
		CLogMgt.enable(true);
		System.out.println("NFSe RPS Test");
		System.out.println("-----------------------");
		
		try
		{
			System.out.print(generateHeader("0.000.000-0", 
					TextUtil.stringToTime("07062010", "ddMMyyyy"), 
					Env.getContextAsDate(Env.getCtx(), "#Date")));
			//
			System.out.print(generateRPS (1000000));
			//
			System.out.print(generateFooter());
		}
		catch (Exception e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println("Process OK");
	}	//	main
}	//	NFSeXMLGenerator