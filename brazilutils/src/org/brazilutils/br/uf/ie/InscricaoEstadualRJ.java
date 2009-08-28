/*
 * Created on 07/05/2005
 */
package org.brazilutils.br.uf.ie;

/**
 * Represents the Inscricao Estadual of Rio de Janeiro - RJ<br>
 * 
 * <a href="http://www.sintegra.gov.br/Cad_Estados/cad_RJ.html">
 * http://www.sintegra.gov.br/Cad_Estados/cad_RJ.html</a>
 * 
 * @author Douglas Siviotti
 */
public final class InscricaoEstadualRJ extends InscricaoEstadual {
    
    /** 
     * @see org.brazilutils.br.uf.ie.InscricaoEstadual#defaultDigitCount()
     */
    public int defaultDigitCount() {
        return 8;
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
        return "##.###.##-#";
    }

    /** 
     * @see org.brazilutils.br.uf.ie.InscricaoEstadual#defineCoeficients()
     */
    public void defineCoeficients() {
        setCoeficientList("2765432");
    }

}
