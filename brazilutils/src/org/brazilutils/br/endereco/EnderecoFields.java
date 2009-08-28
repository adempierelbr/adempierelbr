/**
 * 
 */
package org.brazilutils.br.endereco;

import org.brazilutils.br.uf.UF;

/**Represents the Endereco simple fields.<P> 
 * @author Douglas Siviotti
 *
 */
class EnderecoFields {
	// FIELDS
	private String bairro = null;
    private Cep cep = null;
    private String cidade = null;    
    private String complemento = null;
    private Logradouro logradouro = null;
	private String numero = null;
	private String pais = null;
	private UF uf = null;
	/**Compare the <code>toString()</code> method.<P>
	 * <code>return this.toString().equals(obj.toString());</code>
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	public boolean equals(Object obj) {
		return this.toString().equals(obj.toString());
	}
	/**Returs the Bairro.<p>
	 * Avenida Rio Branco 156 sala 1010<br>
	 * <B>Centro</B>, Rio de Janeiro, RJ<br>
	 * Cep 20.321-836<br>
	 * @return Returns the bairro.
	 */
	public String getBairro() {
		return bairro;
	}
	/**Returns the CEP.<P>
	 * Avenida Rio Branco 156 sala 1010<br>
	 * Centro, Rio de Janeiro, RJ<br>
	 * Cep <b>20.321-836</b><br> 
	 * @return Returns the cep.
	 */
	public Cep getCep() {
		return cep;
	}
	/**Returns the Cidade.<P>
	 * Avenida Rio Branco 156 sala 1010<br>
	 * Centro, <b>Rio de Janeiro</b>, RJ<br>
	 * Cep 20.321-836<br> 
	 * @return Returns the cidade.
	 */
	public String getCidade() {
		return cidade;
	}
	/**Returns the Complemento.<P>
	 * Avenida Rio Branco 156 <b>sala 1010</b><br>
	 * Centro, Rio de Janeiro, RJ<br>
	 * Cep 20.321-836<br> 
	 * @return Returns the complemento.
	 */
	public String getComplemento() {
		return complemento;
	}
	/**Returns the Logradouro.<P>
	 * <b>Avenida Rio Branco</b> 156 sala 1010<br>
	 * Centro, Rio de Janeiro, RJ<br>
	 * Cep 20.321-836<br> 
	 * @return Returns the logradouro.
	 */
	public Logradouro getLogradouro() {
		return logradouro;
	}
	/**Returns the Numero.<P>
	 * Avenida Rio Branco <b>156</b> sala 1010<br>
	 * entro, Rio de Janeiro, RJ<br>
	 * Cep 20.321-836<br> 
	 * @return Returns the numero.
	 */
	public String getNumero() {
		return numero;
	}
	/**Returns the Pais.<P>
	 * @return Returns the pais.
	 */
	public String getPais() {
		return pais;
	}
	/**Returns the UF.<P>
	 * Avenida Rio Branco 156 sala 1010<br>
	 * Centro, Rio de Janeiro, <b>RJ</b><br>
	 * Cep 20.321-836<br> 
	 * @return Returns the getUf().
	 */
	public UF getUf() {
		return uf;
	}
	/**The bairro to set.<P>
	 * Avenida Rio Branco 156 sala 1010<br>
	 * <B>Centro</B>, Rio de Janeiro, RJ<br>
	 * Cep 20.321-836<br> 
	 * @param bairro The bairro to set.
	 */
	public void setBairro(String bairro) {
		this.bairro = bairro;
	}
	/**The cep to set.<P>
	 * Avenida Rio Branco 156 sala 1010<br>
	 * Centro, Rio de Janeiro, RJ<br>
	 * Cep <b>20.321-836</b><br> 
	 * @param cep The cep to set.
	 */
	public void setCep(Cep cep) {
		this.cep = cep;
	}
	/**The cep to set as String.<P>
	 * Avenida Rio Branco 156 sala 1010<br>
	 * Centro, Rio de Janeiro, RJ<br>
	 * Cep <b>20.321-836</b><br> 
	 * @param cep The cep to set as String.
	 */
	public void setCep(String cep){
		this.cep = new Cep(cep);
	}
	/**The cidade to set.<P>
	 * Avenida Rio Branco 156 sala 1010<br>
	 * Centro, <b>Rio de Janeiro</b>, RJ<br>
	 * Cep 20.321-836<br> 
	 * @param cidade The cidade to set.
	 */
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	/**The complemento to set.<P>
	 * Avenida Rio Branco 156 <b>sala 1010</b><br>
	 * Centro, Rio de Janeiro, RJ<br>
	 * Cep 20.321-836<br> 
	 * @param complemento The complemento to set.
	 */
	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}
	/**Set all fields.<P>
	 * @param fields All fields
	 */
	public void setFields(EnderecoFields fields){
		logradouro = fields.getLogradouro();
		numero = fields.getNumero();
		complemento = fields.getComplemento();
		bairro = fields.getBairro();
		cidade = fields.getCidade();
		uf = fields.getUf();
		cep = fields.getCep();
	}
	/**The logradouro to set.<P>
	 * <b>Avenida Rio Branco</b> 156 sala 1010<br>
	 * Centro, Rio de Janeiro, RJ<br>
	 * Cep 20.321-836<br> 
	 * @param logradouro The logradouro to set.
	 */
	public void setLogradouro(Logradouro logradouro) {
		this.logradouro = logradouro;
	}
	/**The logradouro to set as String.<P>
	 * <b>Avenida Rio Branco</b> 156 sala 1010<br>
	 * Centro, Rio de Janeiro, RJ<br>
	 * Cep 20.321-836<br> 
	 * @param logradouro The logradouro to set as String.
	 */
	public void setLogradouro(String logradouro){
		this.logradouro = new Logradouro(logradouro);
	}
	/**The numero to set.<P>
	 * Avenida Rio Branco <b>156</b> sala 1010<br>
	 * entro, Rio de Janeiro, RJ<br>
	 * Cep 20.321-836<br> 
	 * @param numero The numero to set.
	 */
	public void setNumero(String numero) {
		this.numero = numero;
	}
	/**The pais to set.<P>
	 * @param pais The pais to set.
	 */
	public void setPais(String pais) {
		this.pais = pais;
	}
	/**The uf to set as String.<P>
	 * Avenida Rio Branco 156 sala 1010<br>
	 * Centro, Rio de Janeiro, <b>RJ</b><br>
	 * Cep 20.321-836<br> 
	 * @param uf The uf to set as String.
	 */
	public void setUf(String uf){
		this.uf = UF.valueOf(uf);
	}
	/**The uf to set.<P>
	 * Avenida Rio Branco 156 sala 1010<br>
	 * Centro, Rio de Janeiro, <b>RJ</b><br>
	 * Cep 20.321-836<br> 
	 * @param uf The uf to set.
	 */
	public void setUf(UF uf) {
		this.uf = uf;
	}
	/**
	 * @see java.lang.Object#toString()
	 */
	public String toString() {
		return 
		logradouro.toString() + " " + 
		numero + " " +
		complemento + " " +
		bairro + " " +
		cidade + " " +
		uf.toString() + " " + 
		cep.toString();
	}
}
