/*
 * Created on 2007/03/03
 *
 */
package org.brazilutils.br.adress;

import org.brazilutils.br.validation.Validator;

public class PostCodeValidatorForBR implements Validator {

    public static final int CEP_LENGTH = 8;
    
    public final boolean isValid(Object object) throws ClassCastException {
        return isValid((PostalCode)object);
    }
    
    public boolean isValid(PostalCode postCode) {
        return postCode.length()==CEP_LENGTH;
    }

}
