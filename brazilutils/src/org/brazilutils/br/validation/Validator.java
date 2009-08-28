/*
 * Created on 2007/03/03
 *
 */
package org.brazilutils.br.validation;

/**
 * Validate an object against a specific rule. 
 * 
 * @author Sergio M. M. Taborda 
 *
 */
public interface Validator {

    /**
     * 
     * @param object object to validate
     * @return <code>true</code> if the object is valid, <code>false</code> otherwise
     * @throws ClassCastException if the object cannot be validate by this validator
     */
    public boolean isValid(Object object) throws ClassCastException ;
}
