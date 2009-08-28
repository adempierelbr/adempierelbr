/*
 * Created on 07/05/2005
 */
package org.brazilutils.br.uf.ie;

/**
 * Represents the Inscricao of Tocantins- TO<br>
 * 
 * <a href="http://www.sintegra.gov.br/Cad_Estados/cad_TO.html">
 * http://www.sintegra.gov.br/Cad_Estados/cad_TO.html</a>
 * 
 * @author Douglas Siviotti
 */
public class InscricaoEstadualTO extends InscricaoEstadual {
	
    public static final int PRODUTOR_RURAL        = 1;
    
    public static final int INDUSTRIA_COMERCIO    = 2;
    
    public static final int EMPRESAS_RUDIMENTARES = 3;
    
    public static final int CADASTRO_ANTIGO       = 99;
    
    public static final String INVALID_SUB_NUMBER =
        "The sub number (2..3) must be 01, 02, 03 or 99";
                
    /** 
     * @see org.brazilutils.br.uf.ie.InscricaoEstadual#defaultDigitCount()
     */
    public int defaultDigitCount() {
        return 11;
    }

    /** 
     * @see org.brazilutils.br.uf.ie.InscricaoEstadual#getDvCount()
     */
    public int getDvCount() {
        return 1;
    }

    /** 
     * @see org.brazilutils.utilities.NumberComposed#getMask()
     */
    public String getMask() {
        return "##.##.######-#";
    }

    /** 
     * @see org.brazilutils.br.uf.ie.InscricaoEstadual#defineCoeficients()
     */
    public void defineCoeficients() {
        setCoeficientList("98765432");
    }

    /** 
     * <a href="http://www.sintegra.gov.br/Cad_Estados/cad_TO.html">
     * http://www.sintegra.gov.br/Cad_Estados/cad_TO.html</a> 
     * @see org.brazilutils.validation.Validable#isValid()
     */
    public boolean isValid() {
        int sum; // Sum of Multiply (Digit * Peso)
        int mod; // Module in sum % 11 or sum % 10
        int dv1; // Fisrt Calculated Chek Digit
        
        // Necessário para que a validação em cadeia (chain validation) funcione.
    	defineCoeficients();
        
        // If the Digit Count is not correct return false
        if (!isValidDigitCount()) {
        	return false;
        }
        
        // State Digits : 0 or 9(pos 2) and 1,2,3 or 9(pos 3)
        if (getType() == 0) {
			setInvalidCause("The two firsts digits must be 01, 02, 03 or 99");
			return false;  
        }
        
        // Calculate the Check Digit
        String digits = 
        	getNumber().substring(0,2) + 
        	getNumber().substring(4);
        sum = getCalcSum(0, 7, digits);
        mod = sum % 11;
        if (mod <= 1) {
            dv1 = 0; 
        } else { 
            dv1 = 11 - mod;
        }        
        
        //Returns Calculated Chek Digit = The Real Check Digit
        return dv1 == getDv1();        
    }
    
    /**Returns the Type based in the Special Digits 
     * (position 2 and3)
     * @return The type of Inscricao Estadual
     */
    public int getType(){
        String special = getSpecialDigits();
        
        if (special.equals("01")){
            return PRODUTOR_RURAL;
        
        } else if (special.equals("02")){
            return INDUSTRIA_COMERCIO;
        
        } else if (special.equals("03")){
            return EMPRESAS_RUDIMENTARES;
        
        } else if (special.equals("99")){
            return CADASTRO_ANTIGO;
        
        } else {
            return 0;
        }
    }
    
    /**Returns the 2 special digits in positin 2 and 3
     * @return The special digits on position 2 and 3
     */
    public String getSpecialDigits(){
        return getNumber().substring(2,4);
    }
    
}
