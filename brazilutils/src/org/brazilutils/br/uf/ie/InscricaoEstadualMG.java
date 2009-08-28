/*
 * Created on 07/05/2005
 */
package org.brazilutils.br.uf.ie;

/**
 * Represents the Inscricao Estadual of Minas Gerais - MG<br>
 * 
 * <a href="http://www.sintegra.gov.br/Cad_Estados/cad_MG.html">
 * http://www.sintegra.gov.br/Cad_Estados/cad_MG.html</a>
 * 
 * @author Douglas Siviotti
 */
public final class InscricaoEstadualMG extends InscricaoEstadual {

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
     * @see org.brazilutils.utilities.NumberComposed#getMask()
     */
    public String getMask() {
        return "###.###.###/####";
    }

    /** 
     * @see org.brazilutils.br.uf.ie.InscricaoEstadual#defineCoeficients()
     */
    public void defineCoeficients() {
        clearCoeficients();
        addCoeficient(3);
        addCoeficient(2);
        addCoeficient(11);
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
     * <a href="http://www.sintegra.gov.br/Cad_Estados/cad_MG.html">
     * http://www.sintegra.gov.br/Cad_Estados/cad_MG.html</a>
     * @see org.brazilutils.validation.Validable#isValid()
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
        String s = getNumber().substring(0, 3) + "0" +
        	getNumber().substring(3, 11);
        String alg = "";
        
        for (int i=0; i < s.length(); i++){
            short x = Short.parseShort(String.valueOf(s.charAt(i)));
            if ( i % 2 == 0) {
                alg = alg + String.valueOf(x);                
            } else {
                alg = alg + String.valueOf(x * 2);
            }
        }
        
        sum1 = 0;        
        for (int j=0; j < alg.length(); j++){
            sum1 = sum1 + Integer.parseInt(String.valueOf(alg.charAt(j)));
        }
        
        int d = sum1;
        for (int k = 0; d % 10 > 0; k++) d++;
        
        dv1 = d - sum1;
        
        //Calculate the Second Check Digit
        sum2 = getCalcSum(0, 11, getNumber());
        mod2 = sum2 % 11;
        
        if (mod2 <= 1){
            dv2 = 0; 
        }else {
            dv2 = 11 - mod2;
        }
        
        // Returns Calculated Chek Digit is equal The Check Digit        
        return (getDv1() == dv1) && (getDv2() == dv2);
    }
    
}
