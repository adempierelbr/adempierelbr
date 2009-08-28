package org.brazilutils.br.endereco;


/**Default Implementation for EnderecoNormalizer.<P>
 * Executes the simple normalization. Using Upper/Lower case 
 * and the Logradouro Normalization.
 * @author Douglas Siviotti
 */
public class DefaultNormalizer implements EnderecoNormalizer {
	private int charCase = Endereco.UPPERCASE;
	private boolean shortFormat = false;
	private boolean tipoNormalized = true;
	/**
	 * Simple Constructor.
	 */
	public DefaultNormalizer(){
		super();
	}
	/**Parameter Constructor.<P>
	 * @param charCase 0 Normal, 1 Upper or 2 Lower
	 * @param shortFormat
	 * @param tipoNormalized
	 */
	public DefaultNormalizer(int charCase, boolean shortFormat, boolean tipoNormalized) {
		super();
		this.charCase = charCase;
		this.shortFormat = shortFormat;
		this.tipoNormalized = tipoNormalized;
	}

	/**Apply the Char Case (Upper, Lower or Normal)
	 * @param field
	 * @return
	 */
	protected String applyCharCase(String field){
		switch (charCase) {
		case Endereco.LOWERCASE: return field.toLowerCase();
		case Endereco.UPPERCASE: return field.toUpperCase();
		default: return field;
		}
	}

	/**
	 * @see org.brazilutils.br.endereco.EnderecoNormalizer#normalizeBairro(java.lang.String)
	 */
	public String normalizeBairro(String value) {
		return applyCharCase(value);
	}

	/**
	 * @see org.brazilutils.br.endereco.EnderecoNormalizer#normalizeCidade(java.lang.String)
	 */
	public String normalizeCidade(String value) {
		return applyCharCase(value);
	}

	/**
	 * @see org.brazilutils.br.endereco.EnderecoNormalizer#normalizeComplemento(java.lang.String)
	 */
	public String normalizeComplemento(String value) {
		return applyCharCase(value);	
	}

	/**
	 * @see org.brazilutils.br.endereco.EnderecoNormalizer#normalizeLogradouro(org.brazilutils.br.endereco.Logradouro)
	 */
	public Logradouro normalizeLogradouro(Logradouro value) {
		value.setShortFormat(shortFormat);
		value.setTipoNormalized(tipoNormalized);
		value.setCharCase(charCase);
		return value;
	}
	/**
	 * @see org.brazilutils.br.endereco.EnderecoNormalizer#normalizeNumero(java.lang.String)
	 */
	public String normalizeNumero(String value) {
		return applyCharCase(value);	
	}
	/**
	 * @see org.brazilutils.br.endereco.EnderecoNormalizer#normalizePais(java.lang.String)
	 */
	public String normalizePais(String value) {
		return applyCharCase(value);
	}
}
