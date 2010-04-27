package org.adempierelbr.util;

public class RemoverAcentos {
	static String acentuado = "çÇáéíóúýÁÉÍÓÚÝàèìòùÀÈÌÒÙãõñäëïöüÿÄËÏÖÜÃÕÑâêîôûÂÊÎÔÛº'`-";
	static String semAcento = "cCaeiouyAEIOUYaeiouAEIOUaonaeiouyAEIOUAONaeiouAEIOU    ";
	static char[] tabela;
	static {
		tabela = new char[256];
		for (int i = 0; i < tabela.length; ++i) {
			tabela[i] = (char) i;
		}
		for (int i = 0; i < acentuado.length(); ++i) {
			tabela[acentuado.charAt(i)] = semAcento.charAt(i);
		}
	}

	public static String remover(final String s) {
		StringBuffer sb = new StringBuffer();
		if (s == null)
			return "";
		for (int i = 0; i < s.length(); ++i) {
			char ch = s.charAt(i);
			if (ch < 256) {
				sb.append(tabela[ch]);
			} else {
				sb.append(ch);
			}
		}
		String retorno = sb.toString();
		
		retorno = retorno.replaceAll("\"", " ");
		retorno = retorno.replaceAll("[ªº'`´@&^*#²–|{}œ∑®†¥øπ“‘«ß∂ƒ©˙∆˚¬…æΩ≈√∫µ≤≥÷¡™£¢∞§¶•°”\n]", " ");
		
		return retorno.trim();
	}
}