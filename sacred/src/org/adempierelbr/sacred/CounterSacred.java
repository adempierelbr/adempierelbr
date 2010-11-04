package org.adempierelbr.sacred;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;

/**
 *	Counter Sacred
 *
 * @author Mario Grigioni
 * @version $Id: CounterSacred.java, 13/04/2010, 09:38, mgrigioni
 */
public class CounterSacred
{
	/**	Logger			*/
	//private static CLogger log = CLogger.getCLogger(CounterSacred.class);
	

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
	 * Retorna todos os registros do arquivo
	 * @return String[] registros
	 */
	public static String[] getRegsSacred(){
		
		ArrayList<String> list = new ArrayList<String>(); 
		Object[] keys = regs.keySet().toArray();
		Arrays.sort(keys, SACREDComparator.get());
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
			return 0;
	}	//	getCounter
			
	/**
	 * 	Retorna o contador do bloco especificado
	 * 	@return int
	 */
	public static int getBlockCounter (String bloco)
	{
		int counter = 0;
		Object[] keys = regs.keySet().toArray();
		//
		for (Object key : keys)
		{
			if (bloco == null || 
					(key instanceof String && ((String) key).startsWith(bloco)))
				counter += regs.get(key);
		}
		//
		return counter;
	}	//	getBlockCounter
	
	/**
	 * 	Retorna o contador total do arquivo
	 * 	@return int
	 */
	public static int getTotalCounter ()
	{
		int counter = 0;
		
		String[] regs = CounterSacred.getRegsSacred();
		for(int i=0; i<regs.length; i++){
			String reg = regs[i];
			int    qtd = CounterSacred.getCounter(reg);
		
			counter += qtd;
		}
		
		return counter;
	} // getTotalCounter
	
}	// CounterSacred

class SACREDComparator implements Comparator<Object>
{
	
	public int compare (Object o1, Object o2)
	{
		String s1 = null;
		String s2 = null;
		//
		if (o1 instanceof String)
			s1 = (String) o1;
		if (o2 instanceof String)
			s2 = (String) o2;
		
		if (s1 == null || s2 == null)
			return 0;
		//
	
		return s1.compareTo(s2);
	}	//	compare
	
	/**
	 * 	Get new Comparator
	 * 
	 * 	@return SPEDComparator
	 */
	static SACREDComparator get ()
	{
		return new SACREDComparator ();
	}	//	get
}