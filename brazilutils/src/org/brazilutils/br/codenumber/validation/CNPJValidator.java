/*
 * Created on 2007/03/03
 *
 */
package org.brazilutils.br.codenumber.validation;

import org.brazilutils.br.CalculationUtils;
import org.brazilutils.br.codenumber.CNPJNumber;
import org.brazilutils.br.validation.Validator;

public class CNPJValidator implements Validator{

    private final int CNPJ_MAX_NUMBER_DIGITS = 14;

    private static CNPJValidator me = new CNPJValidator();
    public static Validator getInstance (){
        return me;
    }

    private CNPJValidator(){}

    public boolean isValid(Object object) {
        return isValid((CNPJNumber)object);
    }

    /**
     * Failfast implementation for CNPJ number validation
     * 
     * @param cnpj
     * @return
     */
    public boolean isValid(CNPJNumber cnpj) {
        // tem que ter 14 digitos
        if(cnpj.length() != CNPJ_MAX_NUMBER_DIGITS){
            return false;
        }
        int[] digits = cnpj.asDigits();

        try {
            digits = cnpj.asDigits();
        } catch (NumberFormatException e){
            // tem que ter 14 digitos , apenas digitos
            return false;
        }

   
        final int[] coefficients = {5,4,3,2,9,8,7,6,5,4,3,2};
        int dv = CalculationUtils.straitMod11(coefficients, digits);
        
        if (dv != digits[12]){
            // a combinação linear com os fatores dados tem que ser igual 
            // ao penultimo digito
           return false;
        }
        
        // segundo digito validador
        final int [] coefficients2 = {6,5,4,3,2,9,8,7,6,5,4,3,2};
        dv = CalculationUtils.straitMod11(coefficients2, digits);
        
        if (dv != digits[13]){
            // a combinação linear dcom os fatores dados tem que ser igual 
            // ao ultimo digito
            return false;
        }

        
        return false;
    }
}
