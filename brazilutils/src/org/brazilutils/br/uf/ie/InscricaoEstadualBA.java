/*
 * Created on 07/05/2005
 */
package org.brazilutils.br.uf.ie;

/**
 * Represents the Inscricao Estadual of Bahia - BA<br>
 * 
 * <a href="http://www.sintegra.gov.br/Cad_Estados/cad_BA.html">
 * http://www.sintegra.gov.br/Cad_Estados/cad_BA.html</a>
 * 
 * @author Douglas Siviotti
 */
public final class InscricaoEstadualBA extends InscricaoEstadual {
	
    /** 
     * @see org.brazilutils.br.uf.ie.InscricaoEstadual#defaultDigitCount()
     */
    public int defaultDigitCount() {
        return 8;
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
        return "######-##";
    }

    /** 
     * @see org.brazilutils.br.uf.ie.InscricaoEstadual#defineCoeficients()
     */
    public void defineCoeficients() {
        setCoeficientList("765432");
    }

    /**
     * <a href="http://www.sintegra.gov.br/Cad_Estados/cad_BA.html">
     * http://www.sintegra.gov.br/Cad_Estados/cad_BA.html</a>
     * @see org.brazilutils.validation.Validable#isValid()
     */
    public boolean isValid() {
        int sum1; // Fisrt Sum of Multiply (Digit * Peso)
        int mod1; // Fisrt Module in sum % 11 or sum % 10
        int dv1;  // Fisrt Calculated Chek Digit
        int sum2; // Second Sum of Multiply (Digit * Peso)
        int mod2; // Second Module in sum % 11 or sum % 10
        int dv2;  // Second Calculated Chek Digit
        int module; // 11 or 10
        
        // Necessário para que a validação em cadeia (chain validation) funcione.
    	defineCoeficients();
        
        // If the Digit Count is not correct return false
        if (!isValidDigitCount()) {
        	return false;
        }
        
        // Define the Module
        if (useModule10()) {
        	module = 10;  
        } else {
        	module = 11;
        }
        
        //Calculate the Second Check Digit (inverse)
        sum2 = getCalcSum(0, 5, getNumber());
        mod2 = sum2 % module;
        if (mod2 == 0) {
            dv2 = 0; // Atention: this is the Dv2
        } else {
            dv2 = module - mod2; // Atention: this is the Dv2
        }      
        
        //Calculate the Fisrt Check Digit
        setCoeficientList("8765432"); // New Coeficients
        sum1 = getCalcSum(0, 6, getBaseNumber()+dv2);
        mod1 = sum1 % module;
        dv1 = module - mod1; // Atention: this is the Dv1
                   
        //Returns Calculated Chek Digit is equal The Check Digit        
        return getDv1() == dv1 && getDv2() == dv2;
    }
    
    /**Determines if use or not the Module 10 based in the first digit<br>
     * 0,1,2,3,4,5 or 8 - use Module 10<br>
     * 6,7 or 9 - use Module 11<br>
     * @return True if the number begins 0,1,2,3,4,5 or 8 False for 6,7 or 9 
     */
    public boolean useModule10(){       
        short i = getDigitValue(0);
        return i<=5 || i==8;
    }
    
}
