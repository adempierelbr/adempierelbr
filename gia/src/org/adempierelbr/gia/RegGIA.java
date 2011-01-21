package org.adempierelbr.gia;

import org.adempierelbr.util.TextUtil;

/**
 * Interface de Registro do Projeto GIA
 * 
 * Uso obrigatório a partir de 01/junho/2008. 
 * Para uso exclusivo de desenvolvedores de sistemas. 
 * (versão 0208a - 15/05/2008) 
 * 
 * @author Mario Grigioni
 * @version $Id: RegGIA.java, 16/06/2010, 14:29, mgrigioni
 */
public interface RegGIA {
	
	//String EOL
	public static final String EOL  = TextUtil.EOL_WIN32;
	
	//Método para retornar registro formatado
	public String toString();
	
	//Método para adicionar registro ao contador
	void addCounter();
	
} //RegGIA