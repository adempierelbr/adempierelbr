package org.adempierelbr.sped;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;

import org.compiere.util.CLogger;

/**
 *	Counter Sped
 *
 * @author Mario Grigioni
 * @contributor Ricardo Santana, ralexsander
 * @version $Id: CounterSped.java, 16/11/2010, 14:36, mgrigioni
 */
public class CounterSped
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(CounterSped.class);
	
	/**	Contador de Registros	*/
	private static Map<String, Integer> regs = new HashMap<String, Integer>();

	//Limpa o contador de registros
	public static void clear(){
		regs = new HashMap<String, Integer>();
	}
	
	/**
	 * 	Adiciona o registro no contador
	 * 
	 * @param regName
	 */
	public static void register (String regName)
	{
		if (regs.containsKey(regName))
		{
			Integer count = regs.get(regName);
			regs.remove(regName);
			regs.put(regName, count+1);
		}
		else
			regs.put(regName, 1);
	}	//	register
	
	/**
	 * 	Remove o registro no contador
	 * 
	 * @param regName
	 */
	public static void unregister (String regName)
	{
		if (regs.containsKey(regName))
		{
			Integer count = regs.get(regName);
			regs.remove(regName);
			regs.put(regName, count-1);
		}
	}	//	unregister
		
	/**
	 * Retorna todos os registros do arquivo
	 * @return String[] registros
	 */
	public static String[] getRegsSped(){
		
		ArrayList<String> list = new ArrayList<String>(); 
		Object[] keys = regs.keySet().toArray();
		Arrays.sort(keys, SPEDComparator.get());
		//
		for (Object key : keys)
		{
			if (key instanceof String)
				list.add((String)key);
		}
		
		return list.toArray(new String[list.size()]);
	} // getRegsSacred
	
	/**
	 * 	Retorna o contador do registro especificado
	 * 	@return int
	 */
	public static int getCounter (String regName)
	{
		if (regs.containsKey(regName)){
			return regs.get(regName);
		}
		else
			log.log(Level.WARNING, "Registro não encontrado: " + regName);
			
		return 0;
	}	//	getCounter
			
	/**
	 * 	Retorna o contador do bloco especificado
	 * 	@return int
	 */
	public static int getBlockCounter (String bloco) {
		
		if (bloco == null || bloco.isEmpty()){
			log.log(Level.WARNING, "Bloco inválido: " + bloco);
			return 0;
		}
		
		if (bloco.length() > 1)
			bloco = bloco.substring(0, 1); //SE PASSAR O REGISTRO, RETORNA O CONTADOR DO BLOCO
		
		int counter = 0;
		Object[] keys = regs.keySet().toArray();
		//
		for (Object key : keys)
		{
			if (bloco == null || 
					(key instanceof String && ((String) key).charAt(0) == bloco.charAt(0)))
				counter += regs.get(key);
		}
		//
		return counter;
	}	//	getBlockCounter
	
	/**
	 * 	Retorna o contador total do arquivo
	 * 	@return int
	 */
	public static long getTotalCounter ()
	{
		int counter = 0;
		
		String[] regs = CounterSped.getRegsSped();
		for(int i=0; i<regs.length; i++){
			String reg = regs[i];
			int    qtd = CounterSped.getCounter(reg);
		
			counter += qtd;
		}
		
		return counter;
	} // getTotalCounter
	
}	// CounterSped

class SPEDComparator implements Comparator<Object>
{
	/**
	 * 	Comparator para ordenar os Arrays
	 */
	public int compare (Object o1, Object o2)
	{
		String s1 = null, s2 = null;
		//
		if (o1 instanceof String)
			s1 = (String)o1;
		else if (o1 instanceof RegSped)
			s1 = ((RegSped) o1).getReg();
		
		if (o2 instanceof String)
			s2 = (String)o2;
		else if (o2 instanceof RegSped)
			s2 = ((RegSped) o2).getReg();

		if (s1 == null || s2 == null)
			return 0;
		if (s1.isEmpty() || s2.isEmpty())
			return 0;
		//		
		switch(s1.charAt(0)){
			case '1' : s1 = "ZZ"  + s1; break;
			case '9' : s1 = "ZZZ" + s1; break;
		}
		
		switch(s2.charAt(0)){
			case '1' : s2 = "ZZ"  + s2; break;
			case '9' : s2 = "ZZZ" + s2; break;
		}
		
		//
		return s1.compareTo(s2);
	}	//	compare

	/**
	 * 	Get new Comparator
	 *
	 * 	@return SPEDComparator
	 */
	static SPEDComparator get ()
	{
		return new SPEDComparator ();
	}	//	get	
	
	public static void main (String[] args){
		
		Object[] keys = new Object[]{"0001","A100","9990","1001","C100","A150","M001","F102","D110","D100"};
		Arrays.sort(keys, SPEDComparator.get());
		
		for (Object key : keys)
		{
			if (key instanceof String)
				System.out.println(key);
		}
		
	}
	
}