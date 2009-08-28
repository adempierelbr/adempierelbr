/*
 * Created on 01/05/2005
 */
package org.brazilutils.br.telefone;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.brazilutils.utilities.NumberComposed;
import org.brazilutils.validation.Validable;
import org.brazilutils.validation.ValidationException;


/**Represents a Phone Number composed by 1, 2 or 3 members.<p>
 * Like +111(22)3333-3333<br>
 * Member 1: +111 - International Code = DDI<br>
 * Member 2: (22) - Regional Code = DDD<br>
 * Member 3: 3333-3333 - Local Phone Number = BASE<br> 
 * @author Douglas Siviotti
 */
public class Telefone implements Validable, NumberComposed {
	public static final String DDD_TAGS = "\\(.*\\)";
    /**Extract only the valid characters for a Telefone.
     * [0-9] Digits<br>
     * " " Space<br>
     * + DDI signal<br>
     * ( and ) DDD Tags<br>
     * - BASE separator<br>
     * @param tel
     * @return
     */
    public static String extractValidTelChar(String tel){
        return tel.replaceAll("[^0-9,\\+,\\(,\\),\\-, ]", "");
    }
    private String base = null; // the base number
    private boolean canChangeFormat = true;
    private String ddd = null; // the ddd number
    private String ddi = null; // the ddi number
	private TelFormatter formatter = new TelFormatter("");
    private boolean useMask = false;
    /**
     * Simple Constructor
     */
    public Telefone() {
        super();
    }
    /**Number Constructor
     * @param tel The Complete Telefone Number
     */
    public Telefone(String tel) {
        super();
        setTel(tel);
    }
    /**Number and Format Constructor
     * @param tel The Complete Telefone Number
     * @param mask The format based on TelFormat
     * @see org.brazilutils.br.telefone.TelMask
     */
    public Telefone(String tel, String mask) {
        super();
        setTel(tel);
		formatter.setFormat(mask);
		canChangeFormat = false;      
    }    
	/**Format Constructor
     * @param format The format based on TelFormat
     * @see org.brazilutils.br.telefone.TelMask
     */
    public Telefone(TelFormatter formatter) {
        super();
		this.formatter = formatter;
		canChangeFormat = false;      
    }
   
    /**Compare the <code>toString()</code> method.<P>
	 * <code>return this.toString().equals(obj.toString());</code>
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
    public boolean equals(Object obj) {
        return this.toString().equals(obj.toString());
    }
    /**Returns the formatted base number.
     * @return the Base number
     */
    public String getBase() {
        if (useMask) {
			return formatter.formatBase(base);
        }
        else
            return base;
    }

    /**Returns the Base unformatted, only numbers
     * @return the Base unformatted, only numbers
     */    
    public String getBaseNumber(){
        return base;
    }

    /**Returns the formatted DDD number.
     * @return the DDD number
     */
    public String getDdd() {
        if (useMask)
            return formatter.formatDdd(ddd);
        else
            return ddd;
    }

    /**Returns the DDD unformatted, only numbers
     * @return the DDD unformatted, only numbers
     */    
    public String getDddNumber(){
        return ddd;
    }
    /**Returns the formatted DDI number.
     * @return the DDI number
     */
    public String getDdi() {
        if (useMask)
			return formatter.formatDdi(ddi);
        else
            return ddi;
    } 
    /**Returns the DDI unformatted, only numbers
     * @return the DDI unformatted, only numbers
     */
    public String getDdiNumber(){
        return ddi;
    }

    /**
     * @see org.brazilutils.utilities.NumberComposed#getMask()
     */
    public String getMask() {
        return formatter.getMask();
    }
    /** 
     * @see org.brazilutils.utilities.NumberComposed#getNumber()
     */
    public String getNumber() {
        String result = base;
        if (formatter.getMemberCount() > 1) 
            result = ddd + result; 
        if (formatter.getMemberCount() > 2)
            result = ddi + result;
        return result;
    }

    /**Returns the boolean value for useMask.<P>
     * If useMask is false the value of 
     * <code>getValue()</code> is equal <code>getNumber()</code>
     * @return true if use Mask, false if not
     */
    public boolean getUseMask() {
        return useMask;
    }
    /** 
     * @see org.brazilutils.utilities.NumberComposed#getValue()
     */
    public String getValue() {
        String result = getBase();
        if (formatter.getMemberCount() > 1) 
            result = getDdd() + result; 
        if (formatter.getMemberCount() > 2)
            result = getDdi() + result;
        return result;
    }
    /** 
     * @see org.brazilutils.validation.Validable#isValid()
     */
    public boolean isValid() {
		boolean result;
        result = base != null && base.length() > 0;
        if (formatter.getMemberCount() > 1) 
            result = ddd != null && ddd.length() > 0 && result; 
        if (formatter.getMemberCount() > 2)
            result = ddi != null && ddi.length() > 0 && result;
        return result;
    }
        /**Find and extract the members by default members size.
         * @param tel The Complete phone number
         */
        private void separateBySize(String tel){
        	tel = tel.replaceAll("[^0-9]*", "");
            int count = 0;
            int baseCount = formatter.baseCount();
            int dddCount = formatter.dddCount();
        	String [] pt = {"", "", ""};
            for (int i = tel.length()-1; i >= 0; i--){
                count ++;
                if ( count <= baseCount ) { // Base
                    pt[2] = tel.charAt(i) + pt[2];  
                } else if ( count <= baseCount + dddCount) { // DDD 
                    pt[1] = tel.charAt(i) + pt[1];
                } else { // DDI 
                    pt[0] = tel.charAt(i) + pt[0];
                }
            }
            setBase(pt[2]);
            setDdd(pt[1]);
            setDdi(pt[0]);                   
        }
    /**Find and extract the members by tags (regex).
     * @param tel The Complete phone number
     */
    private void separateByTag(String tel){
        Pattern p = Pattern.compile("\\(.+\\)");
        Matcher m = p.matcher(tel);
        // Delimited by ()
        if (m.find()) {
            setDdi(tel.replaceAll("\\(.*", ""));
            setDdd(m.group());
            setBase(tel.replaceAll(".*\\)", ""));
        // Only Base Member
        } else {
            setDdd("");
            setDdi("");
            setBase(base);            
        }  
	}
    /** 
     * The base to Set, must match BASE_REGEX.
     */
    public void setBase(String base) {
        if (base != null)
            this.base = base.replaceAll("[^0-9, ]", "");
        else
            this.base = "";
    }
    /** 
     * The DDD to Set, must match DDD_REGEX.
     */
    public void setDdd(String ddd) {
        if (ddd != null)
            this.ddd = ddd.replaceAll("[^0-9, ]", "");
        else
            this.ddd = "";
    }
	/** 
    * The DDI to Set, must match DDI_REGEX.
    */
   public void setDdi(String ddi) {
    if (ddi != null)
        this.ddi = ddi.replaceAll("[^0-9, ]", "");
    else
        this.ddi = "";
   }
	/**Change the format setting a new mask.
	 * @param mask The new Mask
	 */
	public void setMask(String mask){
		formatter.setFormat(mask);
	}
    /**Set the mask by TelMask enum.
     * @param mask The enum value of TelMask
     */
    public void setMask(TelMask mask){
        formatter.setFormat(mask.toString());
    }
	/** 
     * Sets the complete phone number.<P>
     * This method will call <code>separateByTag()</code> or
     * <code>separateBySize()</code> for find and separate the
     * members.
     */
    public void setTel(String tel) {
        // Extract Only Valid Characters
        tel = extractValidTelChar(tel);
        // Set Format if formatter is null
        if (formatter.getMemberCount() == 0)
            formatter.setFormat(TelFormatter.extractMask(tel));
        // If has mask use it
        useMask = formatter.getMemberCount() > 0;
        // Search the DDD Tags ()
		Pattern p = Pattern.compile(DDD_TAGS);
		Matcher m = p.matcher(tel);	
		if (m.find()) { // "(" and ")" found
			separateByTag(tel);
		} else {        // xxxxxxxxxxxxx
			separateBySize(tel);
		}
    }
	
	/** 
     * Set the telefone members.
     */
    public void setTel(String ddi, String ddd, String base) {
        setBase(base);
        setDdd(ddd);
        setDdi(ddi);
    }
    
    /** 
     *Set the boolean value for useMask. 
     */
    public void setUseMask(boolean useMask) {
        this.useMask = useMask;
    }
    /**
     * Converts xxx-xxxx to xxxx-xxxx if possible.
     */
    public String to8Digits(){
        if (base != null && base.length() == 7) {
            if (getNumber().charAt(0) == '3') {
                return '3' + getNumber();
            } else if (getNumber().charAt(0) == '8') {
                return '8' + getNumber();
            } else if (getNumber().charAt(0) == '9') {
                return '9' + getNumber();
            } else {
                return '2' + getNumber();
            }
        } else return getNumber();
    }
    
    /** 
     * @see org.brazilutils.utilities.NumberComposed#toLong()
     */
    public long toLong() {
        return Long.parseLong(getNumber());
    }
    
    /**Returns the <code>getValue()</code> Method.<br> 
     * @see java.lang.Object#toString()
     * @see org.brazilutils.utilities.NumberComposed#getValue()
     */
    public String toString() {
        return getValue();
    }
    
    /** 
     * @see org.brazilutils.validation.Validable#validate()
     */
    public void validate() throws ValidationException {
        if (!isValid()) throw new ValidationException();        
    }
}
