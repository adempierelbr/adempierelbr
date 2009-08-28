/*
 * Created on 28/04/2005
 */
package org.brazilutils.validation;

/** Generic Validator.<br>
 * Has a Noisy Validation implemented and determines 
 * the method for receive the object to validate. 
 * @author Douglas Siviotti
 */
public abstract class GenericValidator implements Validable{

    /** Standard implementation for the validation method<br>
     * <code>
     *  if (!isValid()) throw new ValidationException();
     * </code><br>
     * if is not valid throw a ValidationException
     * @see org.brazilutils.validation.Validable#validate()
     */
    public void validate() throws ValidationException {
        if (!isValid()) throw new ValidationException();        
    }
    
    /**The default method for pass a validation object to a
     * Validator.
     * @param object
     */
    public abstract void setValidateObject(Object object);

}
