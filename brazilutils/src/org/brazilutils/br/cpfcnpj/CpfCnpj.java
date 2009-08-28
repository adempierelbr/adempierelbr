/*
 * Created on 27/04/2005
 */
package org.brazilutils.br.cpfcnpj;

import org.brazilutils.validation.Validable;
import org.brazilutils.validation.ValidationException;

/**Represents a CPF or CNPJ .<br>
 * <pre>
 * CPF: <b>C</B>adastro de <b>P</b>essoas <B>F</b>ísicas
 * it means: National People Registration
 * <br>
 * CNPJ: <B>C</b>adastro <B>N</b>acional de <B>P</b>essoas <B>J</b>urídicas
 * it means: National Enterprises Registration
 * </pre>
 * Based on the setCpfCnpj() method the object will become 
 * CPF or CNPJ depending of the char count.<br>
 * CPF has 11 digits, CNPJ has 14 digits.
 *  
 * @author Douglas Siviotti
 * @version 1.8
 */
public class CpfCnpj implements Validable{
    /** CNPJ digit count */
    public static final int CNPJ_DIGITS = 14;
    /** CNPJ mask */
    public static final String CNPJ_MASK = "##.###.###/####-##";
    /** CPF digit count */
    public static final int CPF_DIGITS = 11;
    /** CPF mask */
    public static final String CPF_MASK = "###.###.###-##";
    
    /**Validate a CPF or CNPJ.<br>
     * @param cpfOrCnpj The CPF or CNPJ to validate
     * @return True if is valid or false if is not
     */
    public static boolean isValid(String cpfOrCnpj){
        if (cpfOrCnpj == null) return false;
		String n = cpfOrCnpj.replaceAll("[^0-9]","");
		boolean isCnpj = n.length() == CNPJ_DIGITS;
		boolean isCpf = n.length() == CPF_DIGITS;
		if (!isCpf && !isCnpj) return false;
        int i; int j;   // just count 
        int digit;      // A number digit
        int coeficient; // A coeficient  
        int sum;        // The sum of (Digit * Coeficient)
		int[] foundDv = {0,0}; // The found Dv1 and Dv2
        int dv1 = Integer.parseInt(String.valueOf(n.charAt(n.length()-2)));
        int dv2 = Integer.parseInt(String.valueOf(n.charAt(n.length()-1)));       
        for (j = 0; j < 2; j++) {
            sum = 0;
            coeficient = 2;
            for (i = n.length() - 3 + j; i >= 0 ; i--){
                digit = Integer.parseInt(String.valueOf(n.charAt(i)));               
                sum += digit * coeficient;
                coeficient ++;
                if (coeficient > 9 && isCnpj) coeficient = 2;                
            }                
            foundDv[j] = 11 - sum % 11;
            if (foundDv[j] >= 10) foundDv[j] = 0;
        }
        return dv1 == foundDv[0] && dv2 == foundDv[1];
	}
    
    /**Returns the check digit by Module 11 calculation
     * @param number A number without Check Digit
     * @param isCpf if true uses special Module 11 calculation
     * @return The Check Digit
     */
    public static char getModule11Dv(String number, boolean isCpf){
        int sum;        // Sum of Multiply (Digit * Peso)
        int digit;      // A number digit
        int coeficient; // A coeficient        
        int dv;         // Calculated Chek Digit
        // Remove literal characters
        String n = number.replaceAll("[^0-9]","");
        // Sum Calculation
        sum = 0;
        coeficient = 2;
        for (int i = n.length() - 1; i >= 0 ; i--){
            digit = Integer.parseInt(String.valueOf(n.charAt(i)));               
            sum += digit * coeficient;
            coeficient ++;
            if (coeficient > 9 && !isCpf) coeficient = 2;                
        }                
        // Module 11
        dv = 11 - sum % 11;
        if (dv >= 10) dv = 0; // must be beetwen 0 and 9             
        return Integer.toString(dv).charAt(0);
    }
    
    /**
     * @param number A imcomplete number (CPF = 9, CNPJ = 12)
     * @return The complete number
     */
    public static String completeDv(String number){
        // Remove literal characters
        if (number != null) {
            String n = number.replaceAll("[^0-9]","");
            boolean isCpf = n.length() == 9; 
            n = n + getModule11Dv(n, isCpf);
            n = n + getModule11Dv(n, isCpf);
            return n;
        } else {
            return null;
        }
    }
    public static String extractDv(String completeNumber){
        if (completeNumber != null){
            String n = completeNumber.replaceAll("[^0-9]","");
            boolean isCpf = n.length() == 9;
            return "" + getModule11Dv(completeNumber, isCpf);
        } else {
            return null;
        }
        
    }
    
    /** The internal mask of CPF or CNPJ */
    private String mask = null;
	/** Internal number */
    private String  number = null;
    /** Determines if executes auto correction on setCpfCnpj()*/
    private boolean autoCorrection = false;
	
	/**
	 * Simple Constructor
	 */
	public CpfCnpj(){
		super();
	}
    
    /**Parameter Constructor.<br>
     * CpfCnpj c = new CpfCnpj("12345678911");<br>
     * Or<br>
     * CpfCnpj c = new CpfCnpj("123.456.789-11");<br>
	 * @param cpfCnpj The Cpf or Cnpj number
	 */
	public CpfCnpj(String cpfCnpj){
		super();
		setCpfCnpj(cpfCnpj);
	}

	/**Compare the <code>toString()</code> method.<P>
	 * <code>return this.toString().equals(obj.toString());</code>
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
    public boolean equals(Object obj) {
        return this.toString().equals(obj.toString()); 
    }

    /**Returns the Mask (CPF Mask or CNPJ Mask).<p>
     * @return the Mask (CPF Mask or CNPJ Mask).
     */
    public String getMask() {
        return mask;
    }

    /**Returns the simple number, without mask.<p>
     * @return the simple number, without mask.<br>
     */
    public String getNumber() {
        return number;
    }
 
    /** Return the formated CPF or CNPJ.<br>
     * @return The formated CPF or CNPJ  
     */
    public String getCpfCnpj() {
        if (number != null){
            return number.replaceAll
            ("([0-9]{3})([0-9]{3})([0-9]{3})([0-9]{2})",
             "$1\\.$2\\.$3-$4");            
        } else return null;
    }

    /**Determines if the object is a CNPJ.
     * @return true if the object is a CNPJ and 
     * False if the object is a CPF or invalid
     */
    public boolean isCnpj() {
        return number != null && number.length() == CNPJ_DIGITS;    
    }
    
    /**Determines if the object is a CPF
     * @return true if the object is a CPF and 
     * False if the object is a CNPJ or invalid
     */ 
    public boolean isCpf() {
		return number != null && number.length() == CPF_DIGITS;    
    }

    /**Determines if the format is valid.<br>
     * The object must be a CPF or a CNPJ.
     * @return True - is Valid, False - is Invalid
     */
    public boolean isFormatValid() {
		return (isCpf() || isCnpj());// Must be CPF or CNPJ
    }

    /**
     * @see org.brazilutils.validation.Validable#isValid()
     * @return true id is valid and false if is not
     */
    public boolean isValid() {
        return isValid(getNumber());
    }
	
    /**Set the CPF or CNPJ number as String<br>
     * You can use "123.456.789-01" or "12345678901"
     * @param cpfCnpj The Cpf or Cnpj number
     */
    public void setCpfCnpj(String cpfCnpj) {
        if (cpfCnpj != null){
            number = cpfCnpj.replaceAll("[^0-9]*", "");
            if (isCpf()) {
                mask = CPF_MASK;
            } else if (isCnpj()){
                mask = CNPJ_MASK;
            }
        } else number = null;
    }
    /**Returns a Long represents the internal number.<br> 
     * @see org.brazilutils.utilities.NumberComposed#toLong()
     */
    public long toLong() {
		if (number != null && number.length() > 0)
			return Long.parseLong(number);
		else
			return 0;
    }
    /**Returns the <code>getValue()</code> Method.<br> 
     * @see java.lang.Object#toString()
     * @see org.brazilutils.utilities.NumberComposed#getCpfCnpj()
     */
    public String toString() {
        return getCpfCnpj();
    }
    
	/**
     * @see org.brazilutils.validation.Validable#validate()
     */
    public void validate() throws ValidationException {
        if (!isValid()) throw new ValidationException();        
    }

    /**Determines if executes auto correction
     * @return
     */
    public boolean isAutoCorrection() {
        return autoCorrection;
    }

    /**
     * @param autoCorrection If true executes correction
     */
    public void setAutoCorrection(boolean autoCorrection) {
        this.autoCorrection = autoCorrection;
    }
}
