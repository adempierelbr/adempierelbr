/*
 * Created on 2007/03/03
 *
 */
package org.brazilutils.br;

public class CalculationUtils {

    /**
     * Calculates the internal product of the int arrays
     * The result is obtain as follows
     * 
     *    for each element n in coeficients 
     *       sum +=  coefficient[n] * digits[n]
     * 
     * @param factors
     * @param digits
     * @return
     */
    public static int linearCombination (int[] coefficient , int[] digits){
        int soma = 0;
        for (int i=0; i < coefficient.length; i++){
            soma += coefficient[i] * digits[i];
        }
        return soma;
    }
    
    
    public static int straitMod11 (int[] coefficient , int[] digits){
        int soma = 0;
        for (int i=0; i < coefficient.length; i++){
            soma += coefficient[i] * digits[i];
        }

        soma = 11 - (soma % 11);
        if (soma > 9) {
            soma = 0;
        }
        
        return soma;
    }
}
