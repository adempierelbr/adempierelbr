/*
 * Created on 07/05/2005
 */
package org.brazilutils.br.uf.ie;

/**
 * Represents the Inscricao Estadual of Goi�s - GO<br>
 * 
 * <a href="http://www.sintegra.gov.br/Cad_Estados/cad_GO.html">
 * http://www.sintegra.gov.br/Cad_Estados/cad_GO.html</a>
 * 
 * @author Douglas Siviotti
 */
public final class InscricaoEstadualGO extends InscricaoEstadual {

    /** 
     * @see org.brazilutils.br.uf.ie.InscricaoEstadual#defaultDigitCount()
     */
    public int defaultDigitCount() {
        return 9;
    }

    /** 
     * @see org.brazilutils.br.uf.ie.InscricaoEstadual#getDvCount()
     */
    public int getDvCount() {
        return 1;
    }

    /** 
     * @see org.brazilutils.utilities.NumberComposed#getMask()
     */
    public String getMask() {
        return "##.###.###-#";
    }

    /** 
     * @see org.brazilutils.br.uf.ie.InscricaoEstadual#defineCoeficients()
     */
    public void defineCoeficients() {
        setCoeficientList("98765432");
    }

    /**
     * <a href="http://www.sintegra.gov.br/Cad_Estados/cad_GO.html">
     * http://www.sintegra.gov.br/Cad_Estados/cad_GO.html</a>
     * @see org.brazilutils.validation.Validable#isValid()
     */
    public boolean isValid() {
        int sum; // Sum of Multiply (Digit * Peso)
        int mod; // Module in sum % 11 or sum % 10
        int dv1; // Fisrt Calculated Chek Digit
        long number; // The InscricaoEstadual number
        
        // Necessário para que a validação em cadeia (chain validation) funcione.
    	defineCoeficients();
        
        // If the Digit Count is not correct return false
        if (!isValidDigitCount()) return false;
        
        // State Digits : 1(pos 0) and 0,1 or 5(pos 1)
        if (isFixDigitCorrect(0, '1')) return false;
        if (getDigitValue(1)!=0 &&
            getDigitValue(1)!=1 &&
            getDigitValue(1)!=5 ) return false;        
        
        // Calculate the Check Digit
        number = toLong();
        sum = getCalcSum();
        mod = sum % 11;
        
        if (number == 11094402) {
            dv1 = 0; // or dv1 = 1; TODO Verificar essa doideira
        } else if (mod == 0) {
            dv1 = 0;            
        } else if (mod == 1) {
            if (number >= 10103105 && number <= 10119997){
                dv1 = 1;
            } else {
                dv1 = 0;
            }          
    	}else { 
            dv1 = 11 - mod;
        }        
        
        //Returns Calculated Chek Digit = The Real Check Digit
        return dv1 == getDv1();        
    }
    
}
