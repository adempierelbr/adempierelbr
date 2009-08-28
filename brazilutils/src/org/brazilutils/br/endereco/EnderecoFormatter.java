/**
 * 
 */
package org.brazilutils.br.endereco;

import org.brazilutils.br.uf.UF;


/**Formatted Label<p>
 * Implementation Example:
<pre>
<code> 
class EnderecoFormatterAdapter implements EnderecoFormatter{

	private String bairro;
	private Cep cep;
	private String cidade;
	private String complemento;
	private Logradouro logradouro;
	private String numero;
	private UF uf;

	public void setEndereco(Logradouro logradouro, String numero, String complemento, String bairro, Cep cep, UF uf, String cidade) {
		this.bairro = bairro;
		this.cep = cep;
		this.cidade = cidade;
		this.complemento = complemento;
		this.logradouro = logradouro;
		this.numero = numero;
		this.uf = uf;				
	}

	public String toLabelFormat(String addresseeName) {
		String result = 
		logradouro.toString() + "\n" +
		numero + "  " + complemento + "  " + bairro + "\n" + 
		cep.toString() + "  " + uf.toString() + "  " + cidade;
		if (addresseeName != null)
			result = addresseeName + result;
		return result;			
	}
	
}
</code>
</pre>
 * @author Douglas Siviotti
 *
 */
public interface EnderecoFormatter {
	
	/**Set the fields
	 * @param logradouro
	 * @param numero
	 * @param complemento
	 * @param bairro
	 * @param cep
	 * @param uf
	 * @param cidade
	 */
	public void setEndereco (
			Logradouro logradouro, String numero,
			String complemento, String bairro, 
			Cep cep, UF uf, String cidade);
	/**Returns the formatted endereco.
	 * @param addressee Addressee name
	 * @return Formatted endereco
	 */
	public String getEndereco(String addresseeName);
}
