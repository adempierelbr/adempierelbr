/*
 * Created on 2007/03/03
 *
 */
package org.brazilutils.br.codenumber.validation.ie;

import org.brazilutils.br.CalculationUtils;
import org.brazilutils.br.codenumber.IENumber;

public class IEValidatorForSP extends IEValidator{

    public static final IEType INDUSTRIAL_COMMERCIAL = new IEType(1);
    public static final IEType RURAL = new IEType(2);

    private IEType type = null;

    /**
     * @return the type
     */
    public IEType getType() {
        return type;
    }


    /**
     * @param type the IEType to use while validating.
     */
    public void setType(IEType type) {
        this.type = type;
    }

    /**
     * Failfast implementation
     */
    public boolean isValid(IENumber number) throws ClassCastException {
        if (type==null) {
            // infer from number
            if (number.length()==12){
                type = INDUSTRIAL_COMMERCIAL;
            } else if (number.length()==14){
                type = RURAL;
            } else {
                return false;
            }
        } else {
            if (type.equals(INDUSTRIAL_COMMERCIAL)) {
                if (number.length()!=12) { 
                    return false;
                }
            } else if (type.equals(RURAL)){
                if (number.length()!=14) { 
                    return false;
                }
            }
        }




        int [] digits = number.asDigits();

        if (type.equals(INDUSTRIAL_COMMERCIAL)) {    // *** TYPE 1 ***


            int [] coefficients1 =  new int []{1,3,4,5,6,7,8,10};
            
            //Calculate the First Check Digit
            int sum = CalculationUtils.linearCombination(coefficients1, digits);
            int dv = (sum % 11) % 10; 

            if (digits[digits.length-2]!= dv){
                return false; // failfast
            }
            
            int [] coefficients2 = new int []{3,2,10,9,8,7,6,5,4,3,2};

            //Calculate the Second Check Digit
            sum = CalculationUtils.linearCombination(coefficients2 , digits);
            dv = (sum % 11) % 10; 

            if (digits[digits.length-1]!= dv){
                return false; // failfast
            }       

        } else { // *** TYPE 2 ***
            
            int [] coefficients = new int []{1,3,4,5,6,7,8,10};

            int sum = CalculationUtils.linearCombination(coefficients, digits);
            int dv = (sum % 11) % 10; 

            if (digits[digits.length-1]!= dv){
                return false; 
            }    
                      
        }

        return true;
    }


}
