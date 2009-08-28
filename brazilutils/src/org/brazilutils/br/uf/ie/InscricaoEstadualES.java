/*
 * Created on 07/05/2005
 */
package org.brazilutils.br.uf.ie;

/**
 * Represents the Inscricao Estadual of ESp�rito Santo - ES<br>
 * 
 * <a href="http://www.sintegra.gov.br/Cad_Estados/cad_ES.html">
 * http://www.sintegra.gov.br/Cad_Estados/cad_ES.html</a>
 * 
 * @author Douglas Siviotti
 */
public final class InscricaoEstadualES extends InscricaoEstadual {

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
        return "########-#"; //TODO Verificar m�scara
    }

    /** 
     * @see org.brazilutils.br.uf.ie.InscricaoEstadual#defineCoeficients()
     */
    public void defineCoeficients() {
        setCoeficientList("98765432");
    }

}
