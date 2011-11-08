/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.adempierelbr.util;

public abstract class RemoverAcentos {
	static String acentuado = "çÇáéíóúýÁÉÍÓÚÝàèìòùÀÈÌÒÙãõñäëïöüÿÄËÏÖÜÃÕÑâêîôûÂÊÎÔÛ¹²³ªº";
	static String semAcento = "cCaeiouyAEIOUYaeiouAEIOUaonaeiouyAEIOUAONaeiouAEIOU123ao";
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

	public static StringBuffer remover(final StringBuffer s){
		return new StringBuffer(RemoverAcentos.remover(s.toString()));
	}

	public static String remover(final String s) {
		StringBuffer sb = new StringBuffer();
		if (s == null)
			return "";
		for (int i = 0; i < s.length(); ++i) {
			char ch = s.charAt(i);
			if (ch < 256) {
				sb.append(removeSpecial(tabela[ch]));
			} else {
				sb.append(removeSpecial(ch));
			}
		}
		String retorno = sb.toString();

		retorno = retorno.replaceAll("½", "1/2").replaceAll("¼", "1/4").replaceAll("¾", "3/4");
		retorno = retorno.replaceAll("\"", " ").replaceAll("[œ*ßƒµøπæΩØ]", " ");

		return retorno.trim();
	}
	
	private static String removeSpecial(char value){
		
		if (Character.isLetterOrDigit(value) ||
			String.valueOf(value).matches("[!?$%()--+/;:.,]") ||
			value == ' '){
			return String.valueOf(value);
		}
		
		return "";
	}
	
}