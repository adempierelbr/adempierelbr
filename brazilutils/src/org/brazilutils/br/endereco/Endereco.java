/*
 * Created on 21/04/2005
 */
package org.brazilutils.br.endereco;

import org.brazilutils.br.uf.UF;
import org.brazilutils.validation.Validable;
import org.brazilutils.validation.ValidationException;

/**Represents a Endereco (Address).<P>
 * @author Douglas Siviotti
 */
public class Endereco extends EnderecoFields
	implements Validable, EnderecoFormatter  {
	/** Constant for Normal Case Character*/
	public static final int NORMALCASE = 0;
	/** Constant for Upper Case Character*/
	public static final int UPPERCASE  = 1;
	/** Constant for Lower Case Character*/
	public static final int LOWERCASE  = 2;
	/** Formatter. Implements the output format.*/ 
	private EnderecoFormatter formatter = this;	
	/** Normalizer for Fields. If null, there is no normalization. */
    private EnderecoNormalizer normalizer = null;
	
    /**
     * Constructor
     */
    public Endereco() {
		super();
	}
	/**Formatter Constructor
	 * @param formatter A Formatter
	 */
	public Endereco(EnderecoFormatter formatter){
		super();
		setFormatter(formatter);
	}
	/**Normalizer Constructor
	 * @param normalizer A normalizer
	 */
	public Endereco(EnderecoNormalizer normalizer){
		super();
		setNormalizer(normalizer);
	}
	/**Normalizer and Formatter Constructor
	 * @param normalizer A Normalizer
	 * @param formatter A Formatter
	 */
	public Endereco(EnderecoNormalizer normalizer, EnderecoFormatter formatter){
		super();
		setNormalizer(normalizer);
		setFormatter(formatter);
	}
	/** 
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	public boolean equals(Object obj) {
		return this.toString().equals(obj.toString());
	}
    /**Returns the Formatted Endereco.
	 * @see org.brazilutils.br.endereco.EnderecoFormatter#getEndereco(String...)
	 */
/*	public String getEndereco(String... addresseeName) {
		String result;
		if (formatter == this) {
			result = 
			getLogradouro().toString() + "\n" +
			getNumero() + " " + getComplemento() + " " + getBairro() + "\n" + 
			getCep().toString() + " " + getUf().toString() + " " + getCidade();
			for (int i=0; i < addresseeName.length; i++){
				result = addresseeName[i] + "\n" + result;
			}
			return result;			
		} else {
			return formatter.getEndereco(addresseeName);
		}
	}
*/
	public String getEndereco(String addresseeName) {
		String result;
		if (formatter == this) {
			result = 
			getLogradouro().toString() + "\n" +
			getNumero() + " " + getComplemento() + " " + getBairro() + "\n" + 
			getCep().toString() + " " + getUf().toString() + " " + getCidade();
			result = addresseeName+ "\n" + result;
			return result;			
		} else {
			return formatter.getEndereco(addresseeName);
		}
	}

	/**Returns the Formatter.
	 * @return Returns the formatter.
	 */
	public EnderecoFormatter getFormatter() {
		return formatter;
	}
    /**Returns the NomeLogradouro.<P>
	 * Avenida <b>Rio Branco</b> 156 sala 1010<br>
	 * Centro, Rio de Janeiro, RJ<br>
	 * Cep 20.321-836<br>               
     * @return Returns the nomeLogradouro.
     */
    public String getNomeLogradouro() {
        return getLogradouro().getNome();
    }
    /**Returns the TipoLogradouro.<P>
	 * <b>Avenida</b> Rio Branco 156 sala 1010<br>
	 * Centro, Rio de Janeiro, RJ<br>
	 * Cep 20.321-836<br>               
     * @return Returns the tipoLogradouro.
     */
    public String getTipoLogradouro() {
        return getLogradouro().getTipo();
    }
	/**Determines if the endereco has all required fields<br>
     * The only not required field id Complemento
     * @return True for complete, false for imcomplete
     */
    public boolean isComplete(){
        return 
        getBairro().length() > 0 &&
        getCep().getValue().length() > 0 &&
        getCidade().length() > 0 &&
        getLogradouro().getTipo().length() > 0 &&
		getLogradouro().getNome().length() > 0 &&
        getNumero().length() > 0 &&
        getUf() != null;        
    }
	/**Returns true for enable normalization, false for disable.
	 * @return Returns the isNormalized.
	 */
	public boolean isNormalized() {
		return normalizer != null;
	}
	/** Silent Validation
     * @see org.brazilutils.validation.Validable#isValid()
     * @return true id is valid and false if is not
     */
    public boolean isValid() {
        return 
        	isComplete() &&
        	getCep() != null &&
        	getLogradouro() != null &&
			getUf() != null &&
			getLogradouro().isValid();
    }
	/**The bairro to set.<P>
	 * Avenida Rio Branco 156 sala 1010<br>
	 * <B>Centro</B>, Rio de Janeiro, RJ<br>
	 * Cep 20.321-836<br> 
	 * @param bairro The bairro to set.
	 * @see org.brazilutils.br.endereco.EnderecoFields#setBairro(java.lang.String)
	 */
	public void setBairro(String bairro) {
		if (normalizer != null)
			super.setBairro(normalizer.normalizeBairro(bairro));
		else
			super.setBairro(bairro);
	}
	/**The cidade to set.<P>
	 * Avenida Rio Branco 156 sala 1010<br>
	 * Centro, <b>Rio de Janeiro</b>, RJ<br>
	 * Cep 20.321-836<br> 
	 * @param cidade The cidade to set.
	 * @see org.brazilutils.br.endereco.EnderecoFields#setCidade(java.lang.String)
	 */
	public void setCidade(String cidade) {
		if (normalizer != null)
			super.setCidade(normalizer.normalizeCidade(cidade));
		else
			super.setCidade(cidade);
	}
	/**The complemento to set.<P>
	 * Avenida Rio Branco 156 <b>sala 1010</b><br>
	 * Centro, Rio de Janeiro, RJ<br>
	 * Cep 20.321-836<br> 
	 * @param complemento The complemento to set.
	 * @see org.brazilutils.br.endereco.EnderecoFields#setComplemento(java.lang.String)
	 */
	public void setComplemento(String complemento) {
		if (normalizer != null)
			super.setComplemento(
			normalizer.normalizeComplemento(complemento));
		else
			super.setComplemento(complemento);
	}
	/**Sets the endereco using fields
	 * @see org.brazilutils.br.endereco.EnderecoFormatter#setEndereco(org.brazilutils.br.endereco.Logradouro, java.lang.String, java.lang.String, java.lang.String, org.brazilutils.br.endereco.Cep, org.brazilutils.br.uf.UF, java.lang.String)
	 */
	public void setEndereco (
			Logradouro logradouro, String numero,
			String complemento, String bairro, 
			Cep cep, UF uf, String cidade){
		setBairro(bairro);
		setCep(cep);
		setCidade(cidade);
		setComplemento(complemento);
		setLogradouro(logradouro);
		setNumero(numero);
		setUf(uf);
	}
	/**Sets the Formatter.
	 * @param formatter The formatter to set.
	 */
	public void setFormatter(EnderecoFormatter formatter) {
		if (formatter != null) {
			this.formatter = formatter;
			this.formatter.setEndereco
			(getLogradouro(), getNumero(), getComplemento(),
			getBairro(), getCep(), getUf(), getCidade());
		}
	}
	/**The logradouro to set.<P>
	 * <b>Avenida Rio Branco</b> 156 sala 1010<br>
	 * Centro, Rio de Janeiro, RJ<br>
	 * Cep 20.321-836<br> 
	 * @param logradouro The logradouro to set.
	 * @see org.brazilutils.br.endereco.EnderecoFields#setLogradouro(org.brazilutils.br.endereco.Logradouro)
	 */
	public void setLogradouro(Logradouro logradouro) {
		if (normalizer != null)
			super.setLogradouro(
			normalizer.normalizeLogradouro(logradouro));
		else
			super.setLogradouro(logradouro);
	}
	/**The logradouro to set as String.<P>
	 * <b>Avenida Rio Branco</b> 156 sala 1010<br>
	 * Centro, Rio de Janeiro, RJ<br>
	 * Cep 20.321-836<br> 
	 * @param logradouro The logradouro to set as String.
	 * @see org.brazilutils.br.endereco.EnderecoFields#setLogradouro(java.lang.String)
	 */
	public void setLogradouro(String logradouro) {
		setLogradouro(new Logradouro(logradouro));
	}
	/**The nomeLogradouro to set.<P>
	 * Avenida <b>Rio Branco</b> 156 sala 1010<br>
	 * Centro, Rio de Janeiro, RJ<br>
	 * Cep 20.321-836<br>               
     * @param nomeLogradouro The nomeLogradouro to set.
     */
    public void setNomeLogradouro(String nomeLogradouro) {
        getLogradouro().setNome(nomeLogradouro);
    }
	/**Sets the normalizer and enable the normalization.<p>
	 * If normalizer is null disable the normalization.
	 * @param normalizer The normalizer to set.
	 */
	public void setNormalizer(EnderecoNormalizer normalizer) {
		if (normalizer != null) {
			this.normalizer = normalizer;
			// Normalize the stored fields 
			setBairro(getBairro());
			setCep(getCep());
			setCidade(getCidade());
			setComplemento(getComplemento());
			setLogradouro(getLogradouro());
			setNumero(getNumero());			
		}
	}
	/**The numero to set.<P>
	 * Avenida Rio Branco <b>156</b> sala 1010<br>
	 * entro, Rio de Janeiro, RJ<br>
	 * Cep 20.321-836<br> 
	 * @param numero The numero to set.
	 * @see org.brazilutils.br.endereco.EnderecoFields#setNumero(java.lang.String)
	 */
	public void setNumero(String numero) {
		if (normalizer != null)
			super.setNumero(normalizer.normalizeNumero(numero));
		else
			super.setNumero(numero);
	}
	/**
	 * @see org.brazilutils.br.endereco.EnderecoFields#setPais(java.lang.String)
	 */
	public void setPais(String pais) {
		if (normalizer != null)
			super.setPais(normalizer.normalizePais(pais));
		else
			super.setNumero(pais);
	}
	/**The TipoLogradouro to set.<P>
	 * <b>Avenida</b> Rio Branco 156 sala 1010<br>
	 * Centro, Rio de Janeiro, RJ<br>
	 * Cep 20.321-836<br>               
     * @param tipoLogradouro The tipoLogradouro to set.
     */
    public void setTipoLogradouro(String tipoLogradouro) {
        getLogradouro().setTipo(tipoLogradouro);
    }
	/** 
	 * @see java.lang.Object#toString()
	 */
	public String toString() {
		return getEndereco("").replaceAll("\\n", " ");
	}
	/** Noisy Validation<br>
     * thorws a ValidaException if not valid
     * @see org.brazilutils.validation.Validable#validate()
     */
    public void validate() throws ValidationException {
        if (!isValid()) throw new ValidationException();        
    }
}

