package org.adempierelbr.gia.util;

/**
 * Estados Brasileiros - GIA
 * 
 * @author Mario Grigioni
 * @contributor Ricardo Santana
 * @version $Id: EstadoBR.java, 17/06/2010, 16:21, mgrigioni
 */
public class EstadoBR
{
	
	/**	Estados Brasileiros - GIA		*/
	private static EstadoBR AC = new EstadoBR("01","AC", "ACRE", 				true);
	private static EstadoBR AL = new EstadoBR("02","AL", "ALAGOAS", 			false);
	private static EstadoBR AP = new EstadoBR("03","AP", "AMAPÁ", 				true);
	private static EstadoBR AM = new EstadoBR("04","AM", "AMAZONAS", 			true);
	private static EstadoBR BA = new EstadoBR("05","BA", "BAHIA", 				false);
	private static EstadoBR CE = new EstadoBR("06","CE", "CEARÁ", 				false);
	private static EstadoBR DF = new EstadoBR("07","DF", "DISTRITO FEDERAL", 	false);
	private static EstadoBR ES = new EstadoBR("08","ES", "ESPÍRITO SANTO", 		false);
	private static EstadoBR GO = new EstadoBR("10","GO", "GOIÁS",		 		false);
	private static EstadoBR MA = new EstadoBR("12","MA", "MARANHÃO", 			false);
	private static EstadoBR MT = new EstadoBR("13","MT", "MATO GROSSO", 		false);
	private static EstadoBR MS = new EstadoBR("28","MS", "MATO GROSSO DO SUL", 	false);
	private static EstadoBR MG = new EstadoBR("14","MG", "MINAS GERAIS", 		false);
	private static EstadoBR PA = new EstadoBR("15","PA", "PARÁ", 				false);
	private static EstadoBR PB = new EstadoBR("16","PB", "PARAÍBA", 			false);
	private static EstadoBR PR = new EstadoBR("17","PR", "PARANÁ", 				false);
	private static EstadoBR PE = new EstadoBR("18","PE", "PERNAMBUCO", 			false);
	private static EstadoBR PI = new EstadoBR("19","PI", "PIAUÍ", 				false);
	private static EstadoBR RJ = new EstadoBR("22","RJ", "RIO DE JANEIRO", 		false);
	private static EstadoBR RN = new EstadoBR("20","RN", "RIO GRANDE DO NORTE",	false);
	private static EstadoBR RS = new EstadoBR("21","RS", "RIO GRANDE DO SUL", 	false);
	private static EstadoBR RO = new EstadoBR("23","RO", "RONDÔNIA", 			true);
	private static EstadoBR RR = new EstadoBR("24","RR", "RORAIMA", 			true);
	private static EstadoBR SC = new EstadoBR("25","SC", "SANTA CATARINA", 		false);
	private static EstadoBR SP = new EstadoBR("26","SP", "SÃO PAULO",		 	false);
	private static EstadoBR SE = new EstadoBR("27","SE", "SERGIPE", 			false);
	private static EstadoBR TO = new EstadoBR("29","TO", "TOCANTINS", 			false);
	
	String  CODIGO;
	String 	UF;
	String  NOME;
	boolean ZFM_ALC;
	
	/**
	 * 	Constructor
	 * 
	 * @param codigo
	 * @param uf
	 * @param nome
	 * @param zfm_alc
	 */
	private EstadoBR (String codigo, String uf, String nome, boolean zfm_alc) {
		this.CODIGO	 = codigo;
		this.UF		 = uf;
		this.NOME	 = nome;
		this.ZFM_ALC = zfm_alc;
	}	//	EstadoBR
		
	/**
	 * 	Retorna o Codigo do Estado
	 * 
	 * @return	Codigo do Estado
	 */
	public String getCodigo(){
		return this.CODIGO;
	}
	
	/**
	 * 	Retorna o estado brasileiro
	 * 
	 * @param uf
	 * @return
	 */
	public static EstadoBR getEstadoBR (String uf)
	{
		if 		(uf == null)		return null;
		else if (uf.equals("AC")) 	return AC;
		else if (uf.equals("AL")) 	return AL;
		else if (uf.equals("AP")) 	return AP;
		else if (uf.equals("AM")) 	return AM;
		else if (uf.equals("BA")) 	return BA;
		else if (uf.equals("CE")) 	return CE;
		else if (uf.equals("DF")) 	return DF;
		else if (uf.equals("ES")) 	return ES;
		else if (uf.equals("GO")) 	return GO;
		else if (uf.equals("MA")) 	return MA;
		else if (uf.equals("MT")) 	return MT;
		else if (uf.equals("MS")) 	return MS;
		else if (uf.equals("MG")) 	return MG;
		else if (uf.equals("PA")) 	return PA;
		else if (uf.equals("PB")) 	return PB;
		else if (uf.equals("PR")) 	return PR;
		else if (uf.equals("PE")) 	return PE;
		else if (uf.equals("PI")) 	return PI;
		else if (uf.equals("RJ")) 	return RJ;
		else if (uf.equals("RN")) 	return RN;
		else if (uf.equals("RS")) 	return RS;
		else if (uf.equals("RO")) 	return RO;
		else if (uf.equals("RR")) 	return RR;
		else if (uf.equals("SC")) 	return SC;
		else if (uf.equals("SP")) 	return SP;
		else if (uf.equals("SE")) 	return SE;
		else if (uf.equals("TO")) 	return TO;
		else 						return null;
	}	//	getEstadoBR
		
}//	EstadoBR