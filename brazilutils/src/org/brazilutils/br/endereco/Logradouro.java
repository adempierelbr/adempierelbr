/*
 * Created on 04/05/2005
 */
package org.brazilutils.br.endereco;

import org.brazilutils.validation.Validable;
import org.brazilutils.validation.ValidationException;

/**Represents a Logradouro (Public Park).<P>
 * <pre>
 * Avenida Rio Branco
 * |_____| |________|
 *    |        |
 *    |        ---------- Nome (Name) -> A String
 *    |
 *    ------------------- Tipo (Kind) -> Enum TipoLogradouro
 * </pre>
 * The Tipo can be a TipoLogradouro enum member.
 * @see org.brazilutils.br.endereco.TipoLogradouro
 * @author Douglas Siviotti
 */
public class Logradouro implements Validable {
	private int charCase = Endereco.NORMALCASE;
	private String nome = "";
	private boolean shortFormat = false;
	private String tipo = "";
	private boolean tipoNormalized = false;
	
    /**
     * Simple Constructor.
     */
    public Logradouro() {
		super();
	}
	
	/**Parameter Constructor.
	 * @param logradouro The logradouro to set.
	 */
	public Logradouro(String logradouro){
		super();
		setLogradouro(logradouro);
	}
	
	/**Apply the Char Case (Upper, Lower or Normal)
	 * @param field
	 * @return
	 */
	public String applyCharCase(String field){
		switch (charCase) {
		case Endereco.LOWERCASE: return field.toLowerCase();
		case Endereco.UPPERCASE: return field.toUpperCase();
		default: return field;
		}
	}
	/**Compare the <code>toString()</code> method.<P>
	 * <code>return this.toString().equals(obj.toString());</code>
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
    public boolean equals(Object obj) {
        return this.toString().equals(obj.toString());
    }
    /**Returns the char case (0 Normal, 1 Upper or 2 Lower);
	 * @return Returns the charCase.
	 */
	public int getCharCase() {
		return charCase;
	}
    /** 
     * Returns the Logradouro as String
     */
    public String getLogradouro() {
        return getTipo() + " " + getNome();
    }

    /** 
     * Returns the Nome
     */
    public String getNome() {
		if (nome != null) {
	        return applyCharCase(nome);
		} else {
			return "";
		}
    }
    /** 
     * Returns the Tipo
     */
    public String getTipo() {
		if (tipo != null) {
			if (isTipoNormalized()) normalizeTipo();
			return applyCharCase(tipo);
		} else {
			return "";
		}
    }
	/**Returns true/false for Short Format.<p>
	 * Long Format : Avenida, Estrada<br>
	 * Short Format: Av, Est<br>
	 * @return boolean value of shortFormat
	 */
	public boolean isShortFormat() {
		return shortFormat;
	}

	/**If tipo is normalized, getTipo() must return a valid
	 * enum TipoLogradouro (Short or Normal Format) or or null. 
	 * If is not, getTipo() can return any string as tipo.
	 * @return Returns the useTipoNormalized.
	 */
	public boolean isTipoNormalized() {
		return tipoNormalized;
	}

	/**Returns true if getTipo() return a valid 
	 * TipoLogradouro (Short or Normal Format).<p>
	 * "Avenida" is valid. "Aven" is invalid.<br>
	 * "Estrada" is valid. "Estra" is invalid.<br>  
	 * @return True if the tipo is valid
	 */
	public boolean isTipoValid(){
		return TipoLogradouro.isValid(tipo);
	}

	/** Silent Validation<br>
     * Chech if Tipo and Nome are not null
     * @see org.brazilutils.validation.Validable#isValid()
     * @return true id is valid and false if is not
     */
    public boolean isValid() {
        return isTipoValid() && getNome().length() > 0;
    }
	
	/**
	 * Executes the "tipo" normalization.<p>
	 * Tipo will be replaced by a valid TipoLogradouro or 
	 * Abbreviature (if in Short Format). 
	 */
	public void normalizeTipo(){
		tipo = TipoLogradouro.normalize(tipo, shortFormat); 
	}

	/**Sets the char Case (0 = Normal, 1 = Upper, 2 - Lower).
	 * @param charCase The charCase to set.
	 */
	public void setCharCase(int charCase) {
		this.charCase = charCase;
		tipo = applyCharCase(tipo);
		nome = applyCharCase(nome);
	}
	
	/** 
     * Sets the Logradouro
     */
    public void setLogradouro(String logradouro) {
        // Tipo
		String tipoTmp = "";
		for (int i=0; i < logradouro.length(); i++){
            if (Character.isSpaceChar(logradouro.charAt(i))){
                break;
            } else {
                tipoTmp = tipoTmp + logradouro.charAt(i); 
            }
        }	
		setTipo(tipoTmp);
		// Nome
		String nomeTmp = "";
        boolean afterSpace = false;
        for (int i=0; i < logradouro.length(); i++){
            if (Character.isSpaceChar(logradouro.charAt(i)) &&
                    !afterSpace){
                afterSpace = true;
            } else if (afterSpace){
                nomeTmp = nomeTmp + logradouro.charAt(i);
            }
        }		
		setNome(nomeTmp);
    }

	/** 
     * Sets the nome
     */
    public void setNome(String nome) {
        this.nome = applyCharCase(nome);
    }

	/**If useShortFormat if true, <code>getTipo()</code>
	 * try returns the TipoLogradouro in Short Format. 
	 * @param useShortFormat The useShortFormat to set.
	 */
	public void setShortFormat(boolean useShortFormat) {
		this.shortFormat = useShortFormat;
	}

	/** 
     * Sets the Tipo.<p>
     * If isTipoNormalized is true, executes the normalization.
     */
    public void setTipo(String tipo) {
        this.tipo = applyCharCase(tipo);
		if (isTipoNormalized()) normalizeTipo();
    }

	/**If tipo is normalized, getTipo() must return a valid
	 * enum TipoLogradouro(Short or Normal Format) or null. 
	 * If is not, getTipo() can return any string as tipo.
	 * @param useTipoNormalized The useTipoNormalized to set.
	 */
	public void setTipoNormalized(boolean useTipoNormalized) {
		this.tipoNormalized = useTipoNormalized;
	}
	/** 
     * @see java.lang.Object#toString()
     */
    public String toString() {
        return getLogradouro();
    }
	/** Noisy Validation<br>
     * thorws a ValidaException if not valid
     * @see org.brazilutils.validation.Validable#validate()
     */
    public void validate() throws ValidationException {
        if (!isValid()) throw new ValidationException();        
    }
}
