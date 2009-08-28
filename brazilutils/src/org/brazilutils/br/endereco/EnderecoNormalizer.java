/**
 * 
 */
package org.brazilutils.br.endereco;




/**
 * @author Douglas Siviotti
 *
 */
public interface EnderecoNormalizer {
	
    /**
     * @param value The unnormalized bairro
     * @return Returns the bairro.
     */
    public String normalizeBairro(String value);

    /**
     * @param value The unnormalized cidade.
     * @return Returns the cidade.
     */
    public String normalizeCidade(String value);

    /**Aveniva Rio Branco 156, sala 1010
     *                         ^-------^ 
     * @param value The unnormalized complemento.
     * @return Returns the complemento.
     */
    public String normalizeComplemento(String value);

    /** tipoLogradouro + nomeLogradouro
     *  @param value The unnormalized logradouro.
     *  @return The Complete Logradouro
     */
    public Logradouro normalizeLogradouro(Logradouro value);

    /**Aveniva Rio Branco 156, sala 1010
     *                    ^-^
     * @param value The unnormalized numero
     * @return Returns the numero.
     */
    public String normalizeNumero(String value);
	
	/**
	 * @param value
	 * @return
	 */
	public String normalizePais(String value);

}
