/*
 * Created on 07/05/2005
 */
package org.brazilutils.br.uf.ie;

/**
 * Represents the Inscricao Estadual of Roraima- RR<br>
 * 
 * <a href="http://www.sintegra.gov.br/Cad_Estados/cad_RR.html">
 * http://www.sintegra.gov.br/Cad_Estados/cad_RR.html</a>
 * 
 * @author Douglas Siviotti
 */
public final class InscricaoEstadualRR extends InscricaoEstadual {

    /** 
     * @see org.brazilutils.br.uf.ie.InscricaoEstadual#defaultDigitCount()
     */
    public int defaultDigitCount() {
        return 9;
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
        return "########-#";
    }

    /** 
     * @see org.brazilutils.br.uf.ie.InscricaoEstadual#defineCoeficients()
     */
    public void defineCoeficients() {
        setCoeficientList("12345678");
    }

    /**
     * <a href="http://www.sintegra.gov.br/Cad_Estados/cad_RR.html">
     * http://www.sintegra.gov.br/Cad_Estados/cad_RR.html</a>
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
        
        // Calculate the Check Digit
        sum = getCalcSum();
        mod = sum % 9;
        dv1 = mod;        
        //Returns Calculated Chek Digit = The Real Check Digit
        return dv1 == getDv1();        
    }

}
