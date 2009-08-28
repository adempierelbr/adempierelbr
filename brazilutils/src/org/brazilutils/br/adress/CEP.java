/*
 * Created on 2007/03/03
 *
 */
package org.brazilutils.br.adress;

import org.brazilutils.br.validation.AutoValidatable;

public class CEP extends PostalCode implements AutoValidatable{

    public CEP(String codeNumber) {
        super(codeNumber);
    }

    public boolean isValid() {
        return new PostCodeValidatorForBR().isValid(this);
    }

}
