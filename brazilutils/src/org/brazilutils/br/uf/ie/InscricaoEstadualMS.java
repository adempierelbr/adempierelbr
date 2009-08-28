/*
 * Created on 07/05/2005
 */
package org.brazilutils.br.uf.ie;

/**
 * Represents the Inscricao Estadual of Mato Grosso do Sul - MS<br>
 * 
 * <a href="http://www.sintegra.gov.br/Cad_Estados/cad_MS.html">
 * http://www.sintegra.gov.br/Cad_Estados/cad_MS.html</a>
 * 
 * @author Douglas Siviotti
 */
public final class InscricaoEstadualMS extends InscricaoEstadual {
    
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
        return "##.###.###-#"; //TODO Verificar M�scara
    }

    /** 
     * @see org.brazilutils.br.uf.ie.InscricaoEstadual#defineCoeficients()
     */
    public void defineCoeficients() {
        setCoeficientList("98765432");
    }

    /** 
     * <a href="http://www.sintegra.gov.br/Cad_Estados/cad_MS.html">
     * http://www.sintegra.gov.br/Cad_Estados/cad_MS.html</a>
     * @see org.brazilutils.validation.Validable#isValid()
     */
    public boolean isValid() {
        // State Digits : 2(pos 0) and 8(pos 1) 
        if (isFixDigitCorrect(0, '2')) return false;
        if (isFixDigitCorrect(1, '8')) return false;        
        
        return isValid();
    }
    
}
