/*
 * Created on 26/04/2005
 */
package org.brazilutils.br.endereco;

import java.util.EnumSet;

import org.brazilutils.br.uf.UF;
import org.brazilutils.utilities.NumberComposed;
import org.brazilutils.utilities.NumberComposedMasker;
import org.brazilutils.validation.Validable;
import org.brazilutils.validation.ValidationException;

/**Represents a Cep - Brazilian Postal Code<br>
 * The CEP is composed by 8 digits like 12.345-678
 *<pre> 
 * 12.345-678
 * || ||| |||
 * || ||| ||+-- Distribution Id
 * || ||| |+--- Distribution Id
 * || ||| +---- Distribution Id
 * || ||+------ Sub-Sector division
 * || |+------- Sub-Sector
 * || + ------- Sector 
 * |+---------- Sub-Region
 * +----------- Region
 *</pre>
 * see <a href="http://www.correios.com.br/servicos/cep/cep_estrutura.cfm">
 * http://www.correios.com.br/servicos/cep/cep_estrutura.cfm</a>
 * 
 * @author Douglas Siviotti
 */
public class Cep implements NumberComposed, Validable{
    /** Valid numeric digits count  */
    public static final int DIGIT_COUNT = 8;   
    /** Cep mask  */
    public static final String MASK = "##.###-###";
    /** Internal NumberComposed  */
    private String number = null;
	/**
     * Simple Constructor
     */
    public Cep() {
        super();
    }
	
	/**Parameter Constructor.<br>
	 * Cep c = new Cep("12.345-678");<br>
	 * Or<br>
	 * Cep c = new Cep("12345678");<br>
	 * @param cep The Cep Number
	 */
	public Cep(String cep){
		super();
		setCep(cep);
	}
	/**Compare the <code>toString()</code> method.<P>
	 * <code>return this.toString().equals(obj.toString());</code>
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
    public boolean equals(Object obj) {
        return this.toString().equals(obj.toString());
    }
    
    /** 
     * @see org.brazilutils.utilities.NumberComposed#getMask()
     */
    public String getMask() {
        return Cep.MASK;
    }

    /** 
     * @see org.brazilutils.utilities.NumberComposed#getNumber()
     */
    public String getNumber() {
        return number;
    }

    /** Return 12345678 like 12.345-567 applying the CEP_MASK
     * @see org.brazilutils.utilities.NumberComposed#getValue()
     */
    public String getValue() {
        return NumberComposedMasker.applyMask(number, MASK);
    }
    
    /**
     * @see org.brazilutils.validation.Validable#isValid()
     */
    public boolean isValid(){		
        return number != null && number.length() == DIGIT_COUNT;
    }

    /** Set the cep by String <br>
     *  Can set literal caracters <br>
     * <pre>
     *   object.setCep("20123444");
     *   ... or ...
     *   object.setCep("20.123-444");
     * </pre>
     * @param cep - formated or not
     */
    public void setCep(String cep){
        number = cep.replaceAll("[^0-9]*", "");
    }
    /** 
     * @see org.brazilutils.utilities.NumberComposed#toNumeric()
     */
    public long toLong() {
        return Long.parseLong(number);
    }

	/**The Formatted Cep.<br>
	 * @return Cep - the same of getValue()
     * @see java.lang.Object#toString()
     */
    public String toString() {
        return getValue();
    }
	/**
     * @see org.brazilutils.validation.Validable#validate()
     */
    public void validate() throws ValidationException{
        if (!isValid()) throw new ValidationException();
    }
	
	
}
