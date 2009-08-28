/*
 * Created on 2007/03/03
 *
 */
package org.brazilutils.br.codenumber;

import org.brazilutils.br.codenumber.validation.ie.IEValidator;
import org.brazilutils.territory.TU;

public class IENumber extends AbstractCodeNumber {

     
    public IENumber(String codeNumber) {
        super(codeNumber);
    }

    protected String unformat(String formattedCode) {
        return formattedCode.replaceAll("[^0-9]*", "");
    }

    
    public boolean isValidFor(TU unit){
        return IEValidator.getInstance(unit).isValid(this);
    }
}
