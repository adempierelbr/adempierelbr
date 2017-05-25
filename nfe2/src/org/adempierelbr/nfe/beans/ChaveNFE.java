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
package org.adempierelbr.nfe.beans;

import java.sql.Timestamp;
import java.util.Random;

import org.adempierelbr.util.TextUtil;

/**
 * 		Chave da NF-e
 * 
 * 	@contributor Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ChaveNFE.java, v1.0 2015/02/27 10:33:28 AM, ralexsander Exp $
 */
public class ChaveNFE
{
	/**			Peso			**/
	private static final String PESO = "4329876543298765432987654329876543298765432";

	private String cUF; 	// Codigo da UF do emitente do Documento Fiscal
	private String AAMM; 	// (AAMM) Ano e Mes de emissao da NF-e
	private String CNPJ; 	// CNPJ do emitente
	private String mod; 	// Modelo do Documento Fiscal
	private String serie; 	// Serie do Documento Fiscal
	private String tpEmis; 	// Tipo de Emissão
	private String nNF; 	// Numero do Documento Fiscal
	private String cNF; 	// Codigo Numerico que compoe a Chave de Acesso
	private String digito; 	// Dígito da Chave da NF-e

	/**
	 * 	Representação da Chave da NF-e
	 */
	public String toString ()
	{
		return getCUF()    + getAAMM()  + getCNPJ()
             + getMod()    + getSerie() + getNNF()
             + getTpEmis() + getCNF();
	}	//	toString
	
	/**
	 * 	Dígito da NF-e
	 * 	@return
	 */
	public String getDigito ()
	{
		if (digito == null || digito.isEmpty())
			digito = Integer.toString (gerarDigito());
		//
		return digito;
	}	//	getDigito
	
	/**
	 * 	Retorna o digito na NFe através da chave de acesso.
	 * 
	 * @return	Digito
	 */
	private int gerarDigito ()
	{
		return gerarDigito (toString());
	}	//	gerarDigito
	
	/**
	 * 	Retorna o digito na NFe através da chave de acesso.
	 * 
	 * @param chave
	 * @return	Digito
	 */
	private static int gerarDigito (String chave)
	{
		int x = 0;
		int soma = 0;
		int dv = 0;
		//
		try
		{
			for (int i = 0; i < chave.length(); i++)
			{
				x = Integer.parseInt(chave.substring(i, i + 1))
						* Integer.parseInt(PESO.substring(i, i + 1));
				soma += x;
			}
			
			dv = 11 - (soma % 11);

			if (dv > 9)
			{
				dv = 0;
			}
		}
		catch (Exception e)
		{
			System.out.println("Chave Inválida!");
		}

		return dv;
	}	// gerarDigito
	
	public String getCUF() {
		return cUF;
	}

	public void setCUF(String cuf) {
		cUF = cuf;
	}

	public String getAAMM() {
		return AAMM;
	}

	public void setAAMM(String aamm) {
		AAMM = aamm;
	}

	public void setAAMM(Timestamp ts) {
		AAMM = TextUtil.timeToString(ts, "yyMM");;
	}

	public String getCNPJ() {
		return CNPJ;
	}

	public void setCNPJ(String cnpj) {
		CNPJ = cnpj;
	}

	public String getMod() {
		return mod;
	}

	public void setMod(String mod) {
		this.mod = mod;
	}

	public String getSerie() {
		return serie;
	}

	public void setSerie(String serie) {
		this.serie = TextUtil.lPad (serie, 3);
	}

	public String getNNF() {
		return nNF;
	}

	public void setNNF(String nnf) {
		nNF = nnf;
	}
	
	public String getTpEmis() {
		return tpEmis;
	}
	
	public void setTpEmis(String tpemis){
		tpEmis = tpemis;
	}

	public String getCNF() {
		return cNF;
	}

	public void setCNF(String cnf) {
		cNF = cnf;
		digito = null;
	}

	public void setCNF() {
		cNF = TextUtil.lPad (String.valueOf (new Random ().nextInt (99999999)), 8);
		digito = null;
	}
	
	public static void main (String[] args)
	{
		/**
		 * 1 [ 02 ] UF
		 * 2 [ 04 ] AAMM - Emissão
		 * 3 [ 14 ] CNPJ
		 * 4 [ 02 ] Modelo
		 * 5 [ 03 ] Série
		 * 6 [ 09 ] Número
		 * 7 [ 01 ] Forma de Emissão
		 * 8 [ 08 ] Random
		 * 9 [ 01 ] DV
		 */
		String chave = "11222233333333333333445556666666667888888889";
		//
		System.out.println(chave);
		System.out.println("Tamanho: " + chave.length ());
		System.out.println("CNPJ: " + chave.substring (6, 20));
		System.out.println("Modelo: " + chave.substring (20, 22));
		System.out.println("Série: " + chave.substring (22, 25));
		System.out.println("Número: " + chave.substring (25, 34));
		System.out.println("Random: " + chave.substring (35, 43));
	}
}	//	ChaveNFE
