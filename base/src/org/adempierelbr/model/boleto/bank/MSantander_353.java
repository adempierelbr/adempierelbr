package org.adempierelbr.model.boleto.bank;

import java.util.ArrayList;
import java.util.Properties;

import org.adempierelbr.model.MOpenItem;
import org.adempierelbr.model.boleto.MBoleto;


/**
 * MSantander
 * 
 * Bank Santander Model
 * 
 * @author Mario Grigioni (Kenos, www.kenos.com.br)
 * @version $Id: MSantander_353.java, 22/11/2007 10:46:00 mgrigioni
 */
public class MSantander_353
{
	private static String banco     = "353";
	private static String bancoName = "SANTANDER";
	private static String especie   = "01";
	
	public static void generateCNAB(MBoleto boleto, Properties ctx, String trx){
		//TODO
	} //generateCNAB
	
	public static void returnCNAB(ArrayList<String[]> occurType, String FilePath, String[] linhas, String trx){
	//TODO
	}
	
} //MSantander