package org.adempierelbr.model.boleto.bank;

import java.util.ArrayList;
import java.util.Properties;

import org.adempierelbr.model.MOpenItem;
import org.adempierelbr.model.boleto.MBoleto;


/**
 * MUnibanco
 * 
 * Bank Unibanco Model
 * 
 * @author Mario Grigioni (Kenos, www.kenos.com.br)
 * @version $Id: MUnibanco.java, 12/11/2007 08:35:00 mgrigioni
 */
public class MUnibanco
{
	private static String banco = "";
	
	public static void generateCNAB(MBoleto boleto, Properties ctx, String trx){
	//TODO
	}
	
	public static void returnCNAB(ArrayList<String[]> occurType, String FilePath, String[] linhas, String trx){
	//TODO
	}
	
} //MUnibanco