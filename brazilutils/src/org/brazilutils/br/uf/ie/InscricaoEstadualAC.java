/*
 * Created on 10/04/2005
 */
package org.brazilutils.br.uf.ie;

/**
 * Represents the Inscricao Estadual of Acre - AC<br>
 * 
 * <a href="http://www.sintegra.gov.br/Cad_Estados/cad_AC.html">
 * http://www.sintegra.gov.br/Cad_Estados/cad_AC.html</a>
 * 
 * @author Douglas Siviotti
 */
public final class InscricaoEstadualAC extends InscricaoEstadual {
	
    /** 
     * @see org.brazilutils.br.uf.ie.InscricaoEstadual#defaultDigitCount()
     */
    public int defaultDigitCount() {
        return 13;
    }

    /** 
     * @see org.brazilutils.br.uf.ie.InscricaoEstadual#getDvCount()
     */
    public int getDvCount() {
        return 2;
    }

    /** 
     * @see org.brazilutils.br.uf.ie.InscricaoEstadual#getMask()
     */
    public String getMask() {
        return "##.###.###/###-##";
    }

    /** 
     * @see org.brazilutils.br.uf.ie.InscricaoEstadual#defineCoeficients()
     */
    public void defineCoeficients() {
        setCoeficientList("43298765432");
    }
    
    /**<a href="http://www.sintegra.gov.br/Cad_Estados/cad_AC.html">
     * http://www.sintegra.gov.br/Cad_Estados/cad_AC.html</a>    
     * 
     * @see org.brazilutils.br.uf.ie.InscricaoEstadual#isValid()
     */
    public boolean isValid() {
    	int sum1; // Fisrt Sum of Multiply (Digit * Peso)
        int mod1; // Fisrt Module in sum % 11 or sum % 10
        int dv1;  // Fisrt Calculated Chek Digit
        int sum2; // Second Sum of Multiply (Digit * Peso)
        int mod2; // Second Module in sum % 11 or sum % 10
        int dv2;  // Second Calculated Chek Digit
        
        // Necessário para que a validação em cadeia (chain validation) funcione.
    	defineCoeficients();
        
        // If the Digit Count is not correct return false
        if (!isValidDigitCount()) {
        	return false;
        }
        
        //Calculate the First Check Digit
        sum1 = getCalcSum(0, 10, getNumber());
        mod1 = sum1 % 11;
        if ((11-mod1) >= 10)  {
            dv1 = 0; 
        } else {
            dv1 = 11 - mod1;
        }
        
        //Calculate the Second Check Digit
        setCoeficientList("543298765432"); // New Coeficients
        sum2 = getCalcSum(0, 11, getNumber());
        mod2 = sum2 % 11;
        if ((11-mod2) >= 10){
            dv2 = 0; 
        }else {
            dv2 = 11 - mod2;
        }
        
        // Returns Calculated Chek Digit is equal The Check Digit        
        return getDv1() == dv1 && getDv2() == dv2;
    }
	
}