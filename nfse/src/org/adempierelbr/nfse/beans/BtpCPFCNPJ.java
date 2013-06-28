package org.adempierelbr.nfse.beans;

import org.adempierelbr.util.TextUtil;
import org.compiere.util.CLogger;

/**
 * 		Bean para CPF CNPJ
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: BtpCPFCNPJ.java, v1.0 2013/06/25 6:23:51 PM, ralexsander Exp $
 */
public class BtpCPFCNPJ
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(BtpCPFCNPJ.class);
	
	String CPF;
	String CNPJ;
	
	public String getCPF()
	{
		return CPF;
	}
	
	public void setCPF(String CPF)
	{
		CPF = TextUtil.toNumeric (CPF);
		//
		if (CPF == null || CPF.length() != 11)
			log.warning("tpCPF must has 11 char lenght");
		//
		this.CPF = CPF;
	}
	
	public String getCNPJ()
	{
		return CNPJ;
	}
	
	public void setCNPJ(String CNPJ)
	{
		CNPJ = TextUtil.toNumeric (CNPJ);
		//
		if (CNPJ == null || CNPJ.length() != 11)
			log.warning("tpCNPJ must has 14 char lenght");
		//
		this.CNPJ = CNPJ;
	}
	
	public String getDoc()
	{
		if (CNPJ != null && !CNPJ.equals(""))
			return CNPJ;
		else if (CPF != null && !CPF.equals(""))
			return CPF;
		else
			return null;
	}
	
	/**
	 * 	Indicador para CNPJ/CPF com 1 posição
	 * 
	 * 		Valor 1 para CPF
	 * 		Valor 2 para CNPJ
	 * 		Valor 3 para Não-Informado
	 * 
	 * 	@return Indicador de tipo de documento
	 */
	public String getIndicacaoCNPJF()
	{
		if (CNPJ != null && !CNPJ.equals(""))
			return "2";
		else if (CPF != null && !CPF.equals(""))
			return "1";
		else
			return "3";
	}	//	getIndicacaoCNPJF
}	//	BtpCPFCNPJ
