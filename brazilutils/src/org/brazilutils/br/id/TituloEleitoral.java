/**
 * 
 */
package org.brazilutils.br.id;

import org.brazilutils.validation.Validable;
import org.brazilutils.validation.ValidationException;

/**
 * @author Douglas Siviotti
 *
 */
public class TituloEleitoral implements Validable {
    /** Number Digit Count*/
    public static int DIGIT_COUNT = 13;
    /**TituloEleitoral Validation.<P>
     * Returns true if valid or false if invalid.
     * @param tituloEleitoral The TituloEleitoral to validate.
     * @return true if valid or false if invalid.
     */
    public static boolean isValid(String tituloEleitoral){
        if (tituloEleitoral == null) return false;
        String n = tituloEleitoral.replaceAll("[^0-9]*","");
        //boolean isPis = n.length() == PIS_DIGITS;
        //boolean isPasep = n.length() == PASEP_DIGITS;
        // Fill left zeros until the digit count be 13
        for (int k=n.length(); k<DIGIT_COUNT; k++) n='0'+n;
        if (n.length() != DIGIT_COUNT) return false;
        int i;          // just count 
        int[] coeficients = {10,9,8,7,6,5,4,3,2,4,3}; // Coeficients
        int digit;      // A number digit 
        int sum;        // The sum of (Digit * Coeficient)
        int foundDv=0;  // The found Dv (Chek Digit)        
        int aux = Integer.parseInt(""+n.charAt(9)+n.charAt(10));
        int dv = Integer.parseInt(""+n.charAt(11)+n.charAt(12));
        sum = 0;
        for (i = 0; i <= 10 /* DIGIT_COUNT - 2 /*-2 Digits*/; i++){
            digit = Integer.parseInt(String.valueOf(n.charAt(i)));               
            sum = sum + digit * coeficients[i];
            if ( i == 8 || i == 10){ // Pos 8, 9 and 10
                sum = sum % 11;
                if (sum > 1){
                    sum = 11 - sum;
                } else {
                    if (aux <= 2)
                        sum = 1 - sum;
                    else    
                        sum = 0;
                } // if (sum > 1){
                if (i == 8)
                    foundDv = sum * 10;
                else
                    foundDv = foundDv + sum;
                sum = sum * 2;
            }           
        }                
        return dv == foundDv;
    }
    private String number = null;
    private String secao = null;
    
    private String zona = null;
    
	/**Compare the <code>toString()</code> method.<P>
	 * <code>return this.toString().equals(obj.toString());</code>
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
    public boolean equals(Object obj) {
        return this.toString().equals(obj.toString());
    }

    /**
     * @return Returns the secao.
     */
    public String getSecao() {
        return secao;
    }

    /**
     * @return Returns the zona.
     */
    public String getZona() {
        return zona;
    }
    /**
     * @see org.brazilutils.validation.Validable#isValid()
     */
    public boolean isValid() {
        return isValid(number);
    }

    /**
     * @param secao The secao to set.
     */
    public void setSecao(String secao) {
        this.secao = secao;
    }

    /**Sets the TituloEleitoral Number.
     * @param tituloEleitoral
     */
    public void setTituloEleitoral(String tituloEleitoral){
        if (tituloEleitoral != null){
            number = tituloEleitoral;
        } else number = null;
    }

    /**
     * @param zona The zona to set.
     */
    public void setZona(String zona) {
        this.zona = zona;
    }

    /**
     * @see org.brazilutils.validation.Validable#validate()
     */
    public void validate() throws ValidationException {
        if (!isValid()) throw new ValidationException();        
    }

}
