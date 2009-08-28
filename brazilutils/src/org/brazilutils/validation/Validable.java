/*
 * Created on 27/04/2005
 */
package org.brazilutils.validation;

/**Interface for classes with validation<br>
 * All implementing classes have a Silent and a Noisy Validation.
 * The Silent Validation just return true or false.
 * The Noisy Validation throws a Validation Exception if the 
 * object is not valid.
 * @author Douglas Siviotti
 */
public interface Validable {
    
    /** <b>SILENT VALIDATION</b>
     * @return true if is valid, false if is not valid
     */
    public boolean isValid();
    
    /** <b> NOISY VALIDATION </b><br>
     * if the object is not valid throws a Exception<br>
     * often implemented like this:<br>
     * <code>
     * if (!isValid()) throw new ValidationException();
     * </code>     
     * 
     * TODO qual é o uso disto. Existe um caso de uso para este método ?
     * 
     * @throws Exception
     */
    public void validate() throws ValidationException;

}
