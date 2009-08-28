/*
 * Created on 07/05/2005
 */
package org.brazilutils.br.uf.ie;

/**
 * Represents the Inscricao Estadual of Mato Grosso - MT<br>
 * 
 * <a href="http://www.sintegra.gov.br/Cad_Estados/cad_MT.html">
 * http://www.sintegra.gov.br/Cad_Estados/cad_MT.html</a>
 * 
 * @author Douglas Siviotti
 */
public final class InscricaoEstadualMT extends InscricaoEstadual {

    /** 
     * @see org.brazilutils.br.uf.ie.InscricaoEstadual#defaultDigitCount()
     */
    public int defaultDigitCount() {
        return 11;
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
        return "##########-#"; //TODO Verificar m�scara
    }

    /** 
     * @see org.brazilutils.br.uf.ie.InscricaoEstadual#defineCoeficients()
     */
    public void defineCoeficients() {
        setCoeficientList("3298765432");
    }
    
}
