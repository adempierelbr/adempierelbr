/*
 * Created on 27/04/2005
 */
package org.brazilutils.validation;

/**The Exception throwed when the Noisy Validation fault.<br>
 * 
 * 
 * @author Douglas Siviotti
 */
public class ValidationException extends Exception {

    /**
     * 
     */
    public ValidationException() {
        super();
    }
    /**
     * @param message
     * @param cause
     */
    public ValidationException(String message, Throwable cause) {
        super(message, cause);
    }
    /**
     * @param cause
     */
    public ValidationException(Throwable cause) {
        super(cause);
    }
    /**
     * @param message
     */
    public ValidationException(String message) {
        super(message);
    }

}
