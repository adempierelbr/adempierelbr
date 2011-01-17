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
	 *
	 * 	Peso para cada bloco:
	 *
	 * 		0	=	0,
	 * 		C	=	2,
	 * 		D	=	3,
	 * 		E	=	4,
	 * 		G	=	5,
	 * 		H	=	6,
	 * 		1	=	7,
	 * 		9	=	9
	 */
	public int compare (Object o1, Object o2)
	{
		String s1 = "0000";
		String s2 = "0000";
		//
		if (o1 instanceof String)
			s1 = (String)o1;
		if (o2 instanceof String)
			s2 = (String)o2;

		if (s1 == null || s2 == null)
			return 0;
		//
		if (s1.startsWith("0"))
			s1 = "01" + s1.substring(1);	
		if (s1.startsWith("A"))
			s1 = "02" + s1.substring(1);
		if (s1.startsWith("C"))
			s1 = "03" + s1.substring(1);
		if (s1.startsWith("D"))
			s1 = "04" + s1.substring(1);
		if (s1.startsWith("E"))
			s1 = "05" + s1.substring(1);
		if (s1.startsWith("G"))
			s1 = "06" + s1.substring(1);
		if (s1.startsWith("H"))
			s1 = "07" + s1.substring(1);
		if (s1.startsWith("I"))
			s1 = "08" + s1.substring(1);
		if (s1.startsWith("J"))
			s1 = "09" + s1.substring(1);
		if (s1.startsWith("1"))
			s1 = "10" + s1.substring(1);
		if (s1.startsWith("9"))
			s1 = "11" + s1.substring(1);
		//
		if (s2.startsWith("0"))
			s2 = "01" + s2.substring(1);	
		if (s2.startsWith("A"))
			s2 = "02" + s2.substring(1);
		if (s2.startsWith("C"))
			s2 = "03" + s2.substring(1);
		if (s2.startsWith("D"))
			s2 = "04" + s2.substring(1);
		if (s2.startsWith("E"))
			s2 = "05" + s2.substring(1);
		if (s2.startsWith("G"))
			s2 = "06" + s2.substring(1);
		if (s2.startsWith("H"))
			s2 = "07" + s2.substring(1);
		if (s2.startsWith("I"))
			s2 = "08" + s2.substring(1);
		if (s2.startsWith("J"))
			s2 = "09" + s2.substring(1);
		if (s2.startsWith("1"))
			s2 = "10" + s2.substring(1);
		if (s2.startsWith("9"))
			s2 = "11" + s2.substring(1);
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
}