/*
 * Created on 07/05/2005
 */
package org.brazilutils.br.uf.ie;

/**
 * Represents the Inscricao Estadual of Amap� - AP<br>
 * 
 * <a href="http://www.sintegra.gov.br/Cad_Estados/cad_AP.html">
 * http://www.sintegra.gov.br/Cad_Estados/cad_AP.html</a>
 * 
 * @author Douglas Siviotti
 */
public final class InscricaoEstadualAP extends InscricaoEstadual {
	
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
        return "########-#";// TODO verificar m�scara
    }

    /** 
     * @see org.brazilutils.br.uf.ie.InscricaoEstadual#defineCoeficients()
     */
    public void defineCoeficients() {
        setCoeficientList("98765432");
    }

    /** 
     * <a href="http://www.sintegra.gov.br/Cad_Estados/cad_AP.html">
     * http://www.sintegra.gov.br/Cad_Estados/cad_AP.html</a>
      * @see org.brazilutils.validation.Validable#isValid()
     */
    public boolean isValid() {
        int sum; // Sum of Multiply (Digit * Peso)
        int mod; // Module in sum % 11 or sum % 10
        int dv1; // Fisrt Calculated Chek Digit
        
        // Necessário para que a validação em cadeia (chain validation) funcione.
    	defineCoeficients();
        
        // If the Digit Count is not correct return false
        if (!isValidDigitCount()) return false;
        
        // State Digits : 0(pos 0) and 3(pos 1)
        if (!isFixDigitCorrect(0, '0')) return false;
        if (!isFixDigitCorrect(1, '3')) return false;
        
        // Calculate the Check Digit
        int p; int d;
        long num = toLong();
        if (num >= 3000001 || num <= 3017000) {
            p = 5; d = 0;
        } else if ( num >= 3017001 || num <= 3019022) {
            p = 9; d = 1;
        } else {
            p = 0; d = 0; 
        }       
        sum = p + getCalcSum();
        mod = sum % 11;
        if (mod == 10) { 
            dv1 = 0; 
        } else if (mod == 11){
            dv1 = d;
        } else {
            dv1 = 11 - mod;
        }
        
        //Returns Calculated Chek Digit = The Real Check Digit
        return dv1 == getDv1();              
    }

}
