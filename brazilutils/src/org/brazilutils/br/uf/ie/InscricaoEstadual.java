/*
 * Created on 10/04/2005
 */
package org.brazilutils.br.uf.ie;

import java.util.ArrayList;
import java.util.List;

import org.brazilutils.br.codenumber.validation.ie.IEValidator;
import org.brazilutils.territory.TU;
import org.brazilutils.utilities.NumberComposed;
import org.brazilutils.utilities.NumberComposedMasker;
import org.brazilutils.validation.Validable;
import org.brazilutils.validation.ValidationException;

/**
 * Represents a IE (Inscricao Estadual)<br>
 * Each state implements a IE
 * <p> 
 * The Subclasses must implement:
 * <p>
 * getDigitCount() - Determines how much Digits the IE must have<br>
 * getDvCount() - Determines how much Check Digits the IE must have<br>
 * getMask() - Determines the mask must be applyed in toString() and getValue()
 * methods<br>
 * getPesosList() - the list of Pesos<br>
 * isValid() - the validation method
 * <p>
 * <a href="http://www.sintegra.gov.br/insc_est.html">
 * http://www.sintegra.gov.br/insc_est.html</a>
 * 
 * @author Douglas Siviotti
 */
public abstract class InscricaoEstadual 
implements NumberComposed, Validable, ChainValidator {

    /**
     * @deprecated usado para manter mÈtodo deprecated em UF funcionado
     * @param unit
     * @return
     */
    public static InscricaoEstadual getInstance (TU unit){
        String name = InscricaoEstadual.class.getPackage().getName() + ".InscricaoEstadual" + unit.getShortCode();


        try {
            return (InscricaoEstadual) Class.forName(name).newInstance();

        } catch (InstantiationException e) {
            // n„o È suposto isto acontecer pq a classes procuradas 
            // est„o no mesmo pacote
            throw new RuntimeException (e);
        } catch (IllegalAccessException e) {
            // n„o È suposto isto acontecer pq a classes procuradas 
            // est„o no mesmo pacote
            throw new RuntimeException (e);
        } catch (ClassNotFoundException e) {
            // n„o È suposto isto acontecer pq a classes procuradas 
            // est„o no mesmo pacote
            throw new RuntimeException (e);
        } 

    }


    /** A cause for invalidation: Invalid Digit Count */
    public static final String INVALID_DIGIT_COUNT = "Invalid Digit Count";

    /* The next validator in a chain.*/
    private ChainValidator nextValidator;

    /** Coeficients for Sum calculation. */
    private List/*<Integer>*/ coeficients = new ArrayList/*<Integer>*/();

    /** Last cause to a invalidation created by isValid method. */
    private String invalidCause = null;

    /** Internal number. */
    private String number = null;

    /**	Default Constructor. */
    public InscricaoEstadual() {
        super();
        defineCoeficients();
    }

    /**
     * The digit count the IE must has. <p>
     * @return The number of digits by default.
     */
    public abstract int defaultDigitCount();

    /**
     * The check digits count. <p>
     * @return The number of chek digits.
     */
    public abstract int getDvCount();

    /** The subclasses determine the coeficients. */
    public abstract void defineCoeficients();

    /**
     * Returns the InscricaoEstadual mask. <p>
     * @return The InscricaoEstadual mask.
     */
    public abstract String getMask();

    /** Add a IE validator in a chain of validators. */
    public void addValidator(ChainValidator nextValidator) {
        this.nextValidator = nextValidator;
    }

    /**
     * Validate the IE if possible. If it's not possible, it delegates 
     * to the nextValidator.
     * 
     * @see http://rfiume.blogspot.com/2007/01/chain-of-responsability.html
     * @see http://home.earthlink.net/%7Ehuston2/dp/chain.html
     */
    public boolean validate(String inscricaoEstadual) {		
        setNumber(inscricaoEstadual);		

        if (isValid()) {
            return true;

        } else if (nextValidator == null) {
            return false;
        }

        return nextValidator.validate(inscricaoEstadual);
    }

    /**
     * The Generic Validation
     * <p>
     * Common implementation of isValid() method.<br>
     * This implementatin use one Check Digit and Module 11.<br>
     * <code>
     * sum = getCalcSum();
     * mod = sum % 11;
     * if (mod <= 1) {
     *     dv1 = 0; 
     * } else { 
     *     dv1 = 11 - mod;
     * }
     * </code>
     * 
     * @return True if valid, false if not.
     */
    public boolean isValid() {

        //	Adicionado! Necess√°rio para que a cadeia de valida√ß√£o funcione.
        defineCoeficients();

        int sum; // Sum of Multiply (Digit * Peso)
        int mod; // Module in sum % 11 or sum % 10
        int dv1; // Fisrt Calculated Chek Digit

        // If the Digit Count is not correct, return false
        if (!isValidDigitCount()) {
            return false;
        }

        // Calculate the Check Digit
        sum = getCalcSum();
        mod = sum % 11;
        if (mod <= 1) {
            dv1 = 0;
        } else {
            dv1 = 11 - mod;
        }
        // Returns Calculated Chek Digit = The Real Check Digit
        return dv1 == getDv1();
    }

    /**
     * @throws ValidationException
     * @see org.brazilutils.br.uf.ie.InscricaoEstadual#validate()
     */
    public void validate() throws ValidationException {
        if (!isValid())
            throw new ValidationException();
    }

    /**
     * Returns the InscricaoEstadual Number. <p>
     * 
     * @see org.brazilutils.utilities.NumberComposed#getNumber()
     */
    public String getNumber() {
        return number;
    }

    /**
     * Sets the number of Inscricao Estadual. <p>
     * @param number The number to set. With mask or not.
     */
    public void setNumber(String number) {
        this.number = number.replaceAll("[^0-9]*", "");
    }

    /**
     * Returns the number sequence without Check Digits. <p>
     * @return The Inscricao Estadual without Check Digits.
     */
    public String getBaseNumber() {
        String s = getNumber();
        String result = "";
        for (int i = 0; i < s.length(); i++) {
            if (getDvCount() == 1) { // 1 Digit
                if (i != getDv1Position())
                    result = result + s.charAt(i);
            } else { // 2 Digits
                if (i != getDv1Position() && i != getDv2Position())
                    result = result + s.charAt(i);
            }
        }
        return result;
    }

    /**
     * Returns the InscricaoEstadual Value with mask. <p> 
     * 
     * @see org.brazilutils.utilities.NumberComposed#getValue()
     */
    public String getValue() {
        return NumberComposedMasker.applyMask(number, getMask());
    }

    /**
     * Determines if a Fix Digit is correct. <p>
     * 
     * @param position Fix Digit Position.
     * @param specialDigit Fix Digit Value.
     * @return True if the fix digit is correct, false if not.
     */
    public boolean isFixDigitCorrect(int position, char specialDigit) {
        boolean result = getNumber().charAt(position) == specialDigit;
        if (!result) {
            invalidCause = "The digit on position[" + position + "] must be '"
            + specialDigit + "'";
        }
        return result;
    }	

    /**
     * Check the digit count. <p>
     * @return True if the number has the same count of digitCount.
     */
    public boolean isValidDigitCount() {
        boolean result = defaultDigitCount() == getNumber().length();
        if (!result) {
            invalidCause = "Incorrect Format";
        }
        return result;
    }

    /**
     * Retuns the <b>first</b> cause found for invalidation on method isValid() <p> 
     * @return The Cause for invalidation.
     */
    public String getInvalidCause() {
        return invalidCause;
    }

    /**
     * Convert the InscricaoEstadual number to Long Integer. <p> 
     * 
     * @see org.brazilutils.utilities.NumberComposed#toLong()
     */
    public long toLong() {
        return Long.parseLong(number);
    }

    /**
     * Returns the <code>getValue()</code> method. <p> 
     * 
     * @see java.lang.Object#toString()
     * @see org.brazilutils.br.uf.ie.InscricaoEstadual#getValue()
     */
    public String toString() {
        return getValue();
    }

    /**
     * Compare the <code>toString()</code> method. <p>
     * <code>return this.toString().equals(obj.toString());</code>
     * 
     * @see java.lang.Object#equals(java.lang.Object)
     */
    public boolean equals(Object obj) {
        return this.toString().equals(obj.toString());
    }

    /**
     * The default Digit Calulation Sum. 
     * Starts in 0 use internal number and Coeficients. <p>
     * 
     * @return the Digit Calculation
     * 
     * @see org.brazilutils.br.uf.ie.InscricaoEstadual#getCalcSum(int, int,
     *      java.lang.String) 
     */
    protected int getCalcSum() {
        return getCalcSum(0, coeficients.size() - 1, number);
    }

    /**
     * Returns the sum of multiply resultl of Digits(D) by their respective
     * Coeficients(C)<br>
     * (D1*C1) + (D2*C2) + (D3*C3) ... + (Dn*Cn)
     * <p>
     * Example:<br>
     * Digits : 3852 (The Inscricao Estadual Number, including Check Digits)<br>
     * Coeficients: 7379 (The Coeficients Value List) <br>
     * 
     * <pre>
     *  Digit Caltulation : 
     *  (3*7) + (8*3) + (5*7) + (2*9) = 98
     *    21  +   24  +   35  +   18  = 98
     * </pre>
     * 
     * @param digitBegin
     * @param digitEnd
     * @param digits
     * @return (D1*C1) + (D2*C2) + (D3*C3) ... + (Dn*Cn)
     */
    protected int getCalcSum(int digitBegin, int digitEnd, String digits) {

        int result = 0;
        String dStr;

        if (digits == null || digits.length() < 1) {
            dStr = number;
        } else {
            dStr = digits;
        }

        Integer c, d; // coeficients and digits

        for (int i = digitBegin; i <= digitEnd; i++) {
            c = (Integer) coeficients.get(i);
            d = Integer.valueOf("" + dStr.charAt(i));
            result = result + d.intValue() * c.intValue();
        }

        return result;
    }

    /**
     * Set the coeficiente list as String.
     * <p>
     * The coeficients must be beetwen 0..9 becouse 10 or more will be
     * considered 2 coeficients.<br>
     * For add a coeficiente bigger 9 use <code>addCoeficient()</code> method.
     * 
     * @param coeficients The coefifient list (1 digit only).
     */
    protected void setCoeficientList(String coeficients) {
        this.coeficients.clear();
        String s = "";
        for (int i = 0; i < coeficients.length(); i++) {
            s = String.valueOf(coeficients.charAt(i));
            this.coeficients.add(new Integer(Integer.parseInt(s)));
        }
    }

    /**
     * Add a coeficient.
     * @param coeficient The new Coeficient.
     */
    protected void addCoeficient(int coeficient) {
        coeficients.add(new Integer(coeficient));
    }

    /** Clear the coeficient list. */
    protected void clearCoeficients() {
        coeficients.clear();
    }

    /**
     * Returns a lista of Coeficients in a String<br>
     * <b>If any coeficient is bigger 9 the retunr is null, becouse a two digits
     * coeficient will be interpreted as 2 coeficients</b>
     * 
     * @return The coeficients as String
     */
    protected String getCoeficientList() {
        int i;
        for (i = 0; i < coeficients.size(); i++) {
            if (coeficients.get(i).toString().length() > 1)
                return null;
        }
        String result = "";
        for (i = 0; i < coeficients.size(); i++) {
            result = result + coeficients.get(i).toString();
        }
        return result;
    }

    /**
     * Returns the fisrt check digit value. <p> 
     * @return the fisrt check digit value.
     */
    protected short getDv1() {
        return getDigitValue(getDv1Position());
    }

    /**
     * Returns the First Check Digit Position. <p>	 * 
     * <pre>
     *  12345-67
     *        &circ;
     *        This is the fisrt Check Digit (Dv1)
     *  	     Check Digit = 6
     *        Position = 5 (starts in 0) 
     * </pre>
     * 
     * <p>
     * By default is the last digit -1 (= getDigitCount - 1)
     */
    protected int getDv1Position() {
        if (getDvCount() == 1) {
            return defaultDigitCount() - 1;
        } else {
            return defaultDigitCount() - 2;
        }
    }

    /**
     * Returns the second check digit value.
     * @return the second check digit value.
     */
    protected short getDv2() {
        return getDigitValue(getDv2Position());
    }

    /**
     * <pre>
     *  12345-67
     *         &circ;
     *         This is the Second Check Digit (Dv2) 
     *  	      Check Digite = 7
     *         Position = 6 (starts in 0) 
     * </pre>
     * 
     * <p>
     * By default is the last digit (= getDigitCount)
     * 
     * @return The Second Check Digit Position
     */

    protected int getDv2Position() {
        return defaultDigitCount() - 1;
    }	

    /**
     * Returns the char of the digit requested. <p>
     *  
     * @param digitPosition The digit position.
     * @return the char on digitPosition.
     */
    private char getDigit(int digitPosition) {
        return getNumber().charAt(digitPosition);
    }

    /**
     * Sets the invalidation cause. <p>
     * @param invalidCause The new Invalidation Cause
     */
    protected void setInvalidCause(String invalidCause) {
        this.invalidCause = invalidCause;
    }

    /**
     * Returns the digit value. <p>
     * 
     * @param digitPosition The digit position.
     * @return the the digit value as short.
     */
    protected short getDigitValue(int digitPosition) {
        String s = "" + getDigit(digitPosition);
        return Short.parseShort(s);
    }

}