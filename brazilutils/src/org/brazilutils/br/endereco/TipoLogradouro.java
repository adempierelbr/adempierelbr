/**
 * 
 */
package org.brazilutils.br.endereco;

import java.util.EnumSet;

/**
 * Represents a kind of Logradouro.
 * <P>
 * 
 * @author Douglas Siviotti
 * 
 */
public final class TipoLogradouro {
    public static final TipoLogradouro Aeroporto = new TipoLogradouro("Aeroporto","","");
//    Alameda(""),
//    Area(""),
//    Avenida("Av", "AV.*"),
//    Campo(""),
//    Chacara(""),
//    Colonia(""),
//    Condominio("Cond", "COND.*"),
//    Conjunto(""),
//    Distrito(""),
//    Esplanada(""),
//    Estacao("Esta", "ESTA.*"),
//    Estrada("Estr", "ESTR.*"),
//    Favela(""),
//    Fazenda(""),
//    Feira(""),
//    Jardim(""),
//    Ladeira(""),
//    Lago(""),
//    Lagoa(""),
//    Largo(""),
//    Loteamento(""),
//    Morro(""),
//    Nucleo(""),
//    Parque(""),
//    Passarela(""),
//    Patio(""),
//    Praca(""),
//    Quadra("Q", "Q.*"),
//    Recanto(""),
//    Residencial(""),
//    Rodovia("Rod", "ROD.*"),
//    Rua("R", "RU.*"),
//    Setor(""),
//    Sitio(""),
//    Travessa("Trav", "TRA.*"),
//    Trecho(""),
//    Trevo(""),
//    Vale(""),
//    Vereda(""),
//    Via(""),
//    Viaduto(""),
//    Viela(""),
    public static final TipoLogradouro Vila = new TipoLogradouro("Vila", "", "");
	
	/**
	 * Returns a TipoLogradouro if the String parameter matches the
	 * <code>name()</code> method or the <code>getShortFormat()</code>
	 * method. Else return null.
	 * 
	 * @param tipo
	 *            The tipo as String
	 * @return A TipoLogradouro or null
	 */
	public static TipoLogradouro create(String tipo){
//		String upper = tipo.toUpperCase();
//		// Try match the Name
//		for (TipoLogradouro t: EnumSet.range
//			(TipoLogradouro.Aeroporto, TipoLogradouro.Vila)){
//			String s = t.name().toUpperCase(); 
//			if (upper.equals(s)) return t;
//		}
//		// Try match the Short Format
//		for (TipoLogradouro t: EnumSet.range
//			(TipoLogradouro.Aeroporto, TipoLogradouro.Vila)){
//			String a = t.getShortFormat().toUpperCase().toString();
//			if (upper.equals(a)) return t;
//		}				
		return null;
	}
	/**
	 * Returns true if the parameter is a enum Value.
	 * 
	 * @param tipo
	 *            The tipo to validate.
	 * @return true if valid, false if not.
	 */
	public static boolean isValid(String tipo){
//		String upper = tipo.toUpperCase();
//		for (TipoLogradouro t: EnumSet.range
//			(TipoLogradouro.Aeroporto, TipoLogradouro.Vila)){
//			String s = t.name().toUpperCase(); 
//			if (upper.equals(s)) return true;
//		}				
		return false;
	}
	
	/**
	 * Replace tipo parameter by a enum Value, if possible.
	 * 
	 * @param tipo
	 *            The tipo to try
	 * @return A valid enum value or null
	 */
	public static String normalize(String tipo, boolean useShortFormat){
//		String result = null;
//		for (TipoLogradouro t: EnumSet.range
//			(TipoLogradouro.Aeroporto, TipoLogradouro.Vila)){
//			result = t.doNormalize(tipo, useShortFormat);
//			if (result != null) return result;
//		}		
		return null;
	}
	
	private String name;
    private String shortFormat;
	private String regex = null;
	
	/**
	 * Private Constructor.
	 * 
	 * @param shortFormat
	 *            Short Format
	 * @param names
	 *            Possible names
	 */
	private TipoLogradouro(String name, String shortFormat, String regex){
		this.name = name;
		this.shortFormat = shortFormat;
		this.regex = regex;
	}

	/**
	 * Try normalize tipo parameter based on enum value regex.
	 * 
	 * @param tipo
	 *            Tipo to normalize.
	 * @return A valid TipoLogradouro or null.
	 */
	public String doNormalize(String tipo, boolean useShortFormat){
		String upper = tipo.toUpperCase();
		String result = null;
		if (regex != null && upper.matches(regex)) {	
			if (useShortFormat)
				return getShortFormat();
			else
				return name();
		}
		return result;
	}
	
	/**
	 * Returns true/false for using Short Format.
	 * 
	 * @return The Short Format
	 */
	public String getShortFormat() {
		if (shortFormat != null && shortFormat.length() >0)
			return shortFormat;
		else
			return name();
	}
	
	private String name()
	{
		// TODO Auto-generated method stub
		return null;
	}
}
