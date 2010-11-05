package org.adempierelbr.boleto;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.HashMap;

import org.adempierelbr.model.MLBRBoleto;
import org.compiere.model.MBankAccount;
import org.compiere.util.CLogger;

/**
 * Interface para Bancos
 *
 * @author Mario Grigioni
 * @version $Id: I_Bank.java, 04/08/2010, 08:50, mgrigioni
 */
public interface I_Bank {

	public CLogger log = CLogger.getCLogger(I_Bank.class);

	public final String CBANCOBRASIL    = "001";
	public final String CBANCOREAL      = "356";
	public final String CBRADESCO       = "237";
	public final String CCAIXAECONOMICA = "104";
	public final String CHSBC           = "399";
	public final String CITAU           = "341";
	public final String CSANTANDER033   = "033";
	public final String CSANTANDER353   = "353";
	public final String CUNIBANCO       = "409";

	public final String NBANCOBRASIL    = "BANCO DO BRASIL";
	public final String NBANCOREAL      = "Banco Real";
	public final String NBRADESCO       = "BRADESCO";
	public final String NCAIXAECONOMICA = "CAIXA ECONOMICA";
	public final String NHSBC           = "HSBC";
	public final String NITAU           = "BANCO ITAU SA";
	public final String NSANTANDER033   = "BANESPA";
	public final String NSANTANDER353   = "SANTANDER";
	public final String NUNIBANCO       = "UNIBANCO S/A";

	public final String DUPLICATA  = "01"; //ESPECIE DUPLICATA MERCANTIL - HSBC = 98

	//Método para geração do CNAB
	public void generateCNAB(MLBRBoleto boleto);

	//Método para retorno do CNAB
	public void returnCNAB(HashMap<Integer,String[]> occurType, String FilePath, String[] linhas, String trx) throws IOException;

	//Método para geração do arquivo CNAB
	public void generateFile(String FileName, Timestamp DateFrom, Timestamp DateTo, MBankAccount BankA, String trx) throws IOException;

} //I_Bank