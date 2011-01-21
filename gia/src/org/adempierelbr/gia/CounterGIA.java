package org.adempierelbr.gia;

import java.util.HashMap;
import java.util.Map;

/**
 *	Counter GIA
 *
 * @author Mario Grigioni
 * @version $Id: CounterGIA.java, 16/06/2010, 14:20, mgrigioni
 */
public class CounterGIA
{
	/**	Logger			*/
	//private static CLogger log = CLogger.getCLogger(CounterGIA.class);
	

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
			


}	// CounterGIA