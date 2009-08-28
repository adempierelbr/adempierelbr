/*
 * Created on 07/05/2005
 */
package org.brazilutils.br.uf.ie;

/**
 * Represents the Inscricao of S�o Paulo- SP<br>
 * 
 * <a href="http://www.sintegra.gov.br/Cad_Estados/cad_SP.html">
 * http://www.sintegra.gov.br/Cad_Estados/cad_SP.html</a>
 * 
 * @author Douglas Siviotti
 */
public class InscricaoEstadualSP extends InscricaoEstadual {
	
    /** Type 1*/
    public static final int TYPE1             = 1;
    
    /** Type 2*/
    public static final int TYPE2             = 2;
    
    /** Type 2 Characters Length*/
    public static final int TYPE2_CHAR_LENGTH = 13;
    
    /** Literal Char for Type 2 */
    public static final char LITERAL_CHAR     = 'P';    
    
    /** Type 1 Mask */
    public static final String TYPE1_MASK     = "###.###.###.###"; 
    
    /** Type 2 Mask */
    public static final String TYPE2_MASK 	  = "P-########.#/###"; 
    
    /** Literal Char - the fisrt char */
    private char literalChar = ' ';
    
    /** 
     * @see org.brazilutils.br.uf.ie.InscricaoEstadual#defaultDigitCount()
     */
    public int defaultDigitCount() {
        return 12;
    }

    /** 
     * @see org.brazilutils.br.uf.ie.InscricaoEstadual#getDvCount()
     */
    public int getDvCount() {
        return 2;
    }

    /** 
     * @see org.brazilutils.utilities.NumberComposed#getMask()
     */
    public String getMask() {
        if (isType2()) {
            return TYPE2_MASK;
        } else {
            return TYPE1_MASK;
        }
    }

    /**
     * <a href="http://www.sintegra.gov.br/Cad_Estados/cad_SP.html">
     * http://www.sintegra.gov.br/Cad_Estados/cad_SP.html</a>
     * @see org.brazilutils.br.uf.ie.InscricaoEstadual#defineCoeficients()
     */
    public void defineCoeficients() {
        setCoeficientsDv1();
    }        

    /** 
     * @see org.brazilutils.validation.Validable#isValid()
     */
    public boolean isValid() {
        int sum1=0; // Fisrt Sum of Multiply (Digit * Peso)
        int mod1=0; // Fisrt Module in sum % 11 or sum % 10
        int dv1=0;  // Fisrt Calculated Chek Digit
        int sum2=0; // Second Sum of Multiply (Digit * Peso)
        int mod2=0; // Second Module in sum % 11 or sum % 10
        int dv2=0;  // Second Calculated Chek Digit
        
        // Necessário para que a validação em cadeia (chain validation) funcione.
    	defineCoeficients();
        
        // If the Digit Count is not correct return false
        if (!isValidDigitCount()) {
        	return false;
        }
        
        if (!isType2()) {    // *** TYPE 1 ***
            //Calculate the First Check Digit
            String digits = getNumber().substring(0, 8);
            sum1 = getCalcSum(0, 7, digits);
            mod1 = sum1 % 11;
            dv1 = mod1 % 10; 
            //Calculate the Second Check Digit
            setCoeficientsDv2(); // Change the coeficients
            sum2 = getCalcSum(0, 10, getNumber());
            mod2 = sum2 % 11;
            dv2 = mod2 % 10;            
        
        } else {                            // *** TYPE 2 ***  
            String digits = getNumber().substring(0, 8);
            sum1 = getCalcSum(0, 7, digits);
            mod1 = sum1 % 11;
            dv1 = mod1 % 10;             
        }
        
        // Returns Calculated Chek Digit is equal The Check Digit        
        return getDv1() == dv1 && getDv2() == dv2;
    }

    /**The fisrt digit position in the number<br> 
     * @see org.brazilutils.br.uf.ie.InscricaoEstadual#getDv1Position()
     */
    public int getDv1Position() {
        return 8;
    }
    /**
     * Sets the coeficients to calculate Dv1
     */
    protected void setCoeficientsDv1() {
        clearCoeficients();
        if (!isType2()) {      
            addCoeficient(1);
            addCoeficient(3);
            addCoeficient(4);
            addCoeficient(5);
            addCoeficient(6);
            addCoeficient(7);
            addCoeficient(8);
            addCoeficient(10);            
        } 
    }
    
    /**
     * Sets the coeficients to calculate Dv2
     */
    protected void setCoeficientsDv2() {
        clearCoeficients();
        addCoeficient(3);
        addCoeficient(2);
        addCoeficient(10);
        addCoeficient(9);
        addCoeficient(8);
        addCoeficient(7);
        addCoeficient(6);
        addCoeficient(5);
        addCoeficient(4);
        addCoeficient(3);
        addCoeficient(2);
    }
    
    /**
     * @return The Inscricao Estadual type 1 or 2.
     */
    public boolean isType2(){
        return literalChar == LITERAL_CHAR;
    }
    
    /**
     * Sets the number and determines the type. 
     * 
     * @see org.brazilutils.br.uf.ie.InscricaoEstadual#setNumber(java.lang.String)
     */
    public void setNumber(String number) {
        number.toUpperCase();      
        if ( number != null &&
             number.charAt(0) == 'P' &&
             number.length() == TYPE2_CHAR_LENGTH) {
            literalChar = LITERAL_CHAR;
        }
        super.setNumber(number);
    }
    
    public String getValue() {
        return super.getValue();
    }
    	
}
