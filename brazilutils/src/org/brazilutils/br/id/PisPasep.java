/**
 * 
 */
package org.brazilutils.br.id;

import org.brazilutils.validation.Validable;
import org.brazilutils.validation.ValidationException;

/**Represents a PIS or PASEP number (Social Security).<P>
 * PIS - Private  
 * 
 * @author Douglas Siviotti
 */
public class PisPasep implements Validable {
    /** PIS/PASEP Digit Count*/
    public static final int DIGIT_COUNT = 11;
    /**PIS/PASEP Mask */
    public static final String MASK = "###.#####.##-#";
    /**PIS/PASEP Validation.<P>
     * Returns true if valid or false if invalid.
     * @param pisOrPasep The PIS/PASEP to validate.
     * @return true if valid or false if invalid.
     */
    public static boolean isValid(String pisOrPasep){
        if (pisOrPasep == null) return false;
        String n = pisOrPasep.replaceAll("[^0-9]*","");
        //boolean isPis = n.length() == PIS_DIGITS;
        //boolean isPasep = n.length() == PASEP_DIGITS;
        if (n.length() != DIGIT_COUNT) return false;
        int i;          // just count 
        int digit;      // A number digit
        int coeficient; // A coeficient  
        int sum;        // The sum of (Digit * Coeficient)
        int foundDv;    // The found Dv (Chek Digit)
        int dv = Integer.parseInt(String.valueOf(n.charAt(n.length()-1)));      
        sum = 0;
        coeficient = 2;
        for (i = n.length() - 2; i >= 0 ; i--){
            digit = Integer.parseInt(String.valueOf(n.charAt(i)));               
            sum += digit * coeficient;
            coeficient ++;
            if (coeficient > 9) coeficient = 2;                
        }                
        foundDv = 11 - sum % 11;
        if (foundDv >= 10) foundDv = 0;        
        return dv == foundDv;
    }
    
    private String number = null;
    
    /**
     * Default Constructor.
     */
    public PisPasep(){
        super();
    }
    
    /**Parameter Constructor.
     * @param pisPasep The PIS/PASEP to set.
     */
    public PisPasep(String pisPasep){
        super();
        setPisPasep(pisPasep);
    }
	/**Compare the <code>toString()</code> method.<P>
	 * <code>return this.toString().equals(obj.toString());</code>
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
    public boolean equals(Object obj) {
        return this.toString().equals(obj.toString());
    }
    /**
     * @return The formatted PIS/PASEP number
     */
    public String getPisPasep(){
        if (number != null) {
            return number.replaceAll
            ("([0-9]{3})([0-9]{5})([0-9]{2})([0-9])",
             "$1\\.$2\\.$3\\-$4");           
        } else return null;
    }
    /**
     * @see org.brazilutils.validation.Validable#isValid()
     */
    public boolean isValid() {
        return isValid(number);
    }
    /**Sets the PIS/PASEP.
     * @param pisPasep The PIS/PASEP to set.
     */
    public void setPisPasep(String pisPasep){
        if (pisPasep != null){
            number = pisPasep.replaceAll("[^0-9]*","");
        } else number = null;
    }

    /**
     * @see java.lang.Object#toString()
     */
    @Override
    public String toString() {
        return null;
    }
    /**
     * @see org.brazilutils.validation.Validable#validate()
     */
    public void validate() throws ValidationException {
        if (!isValid()) throw new ValidationException();        
    }
}