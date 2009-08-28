/*
 * Created on 26/04/2005
 */
package org.brazilutils.utilities;

/** 
 *  Represents String fields composed by numbers and a mask<br>
 *  A NumberComposed can be converted to Integer/Long
 * @author Douglas Siviotti
 */
public interface NumberComposed {

    
    /** Returns the String Field as long
     * @return the integer value 
     */
    public long toLong();
    
    /**Returns only the numbers as String - without mask.
     * @return the integer value as String
     */
    public String getNumber();
    
    /** Returns the mask used.
     * @return The mask
     */
    public String getMask();
    
    /** Returns the value with mask applyed.
     * @return The String value applying the mask
     */
    public String getValue();
      
}
