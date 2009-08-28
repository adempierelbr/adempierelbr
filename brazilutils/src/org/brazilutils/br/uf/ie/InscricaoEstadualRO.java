/*
 * Created on 07/05/2005
 */
package org.brazilutils.br.uf.ie;

/**
 * Represents the Inscricao Estadual of Rond�nia - RO<br>
 * 
 * <a href="http://www.sintegra.gov.br/Cad_Estados/cad_RO.html">
 * http://www.sintegra.gov.br/Cad_Estados/cad_RO.html</a>
 * 
 * @author Douglas Siviotti
 */
public final class InscricaoEstadualRO extends InscricaoEstadual {
    
    public static final int    DIGIT_COUNT = 14;
    public static final int    OLD_DIGIT_COUNT = 9;
    public static final String OLD_MASK = "###.#####-#";
    public static final String MASK = "########.#####-#";
    public static final int    OLD_FORMAT = 0;
    public static final int    NEW_FORMAT = 1;
    
    private int format = NEW_FORMAT; 
    
    public static String convertToNewFormat(String oldNumber) {
    	
        // The oldNUmber must be in the Old Format
        if (oldNumber.length() != OLD_DIGIT_COUNT) {
        	return null;
        }
        
        String result = oldNumber.substring(3);
        System.out.println(oldNumber + " - " + result);
        
        for (int i=result.length() ; i < DIGIT_COUNT; i++){
            result = "0" + result ;
        }
        return result;
    }
    /** 
     * @see org.brazilutils.br.uf.ie.InscricaoEstadual#defaultDigitCount()
     */
    public int defaultDigitCount() {
        if (isOldFormat()) {
            return OLD_DIGIT_COUNT;            
        } else {
            return DIGIT_COUNT;
        }
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
        if (isOldFormat()) {
            return OLD_MASK;
        } else {
            return MASK;
        }
    }

    /** 
     * @see org.brazilutils.br.uf.ie.InscricaoEstadual#defineCoeficients()
     */
    public void defineCoeficients() {
        setCoeficientList("6543298765432");
    }

    /**Deternines if the Inscricao Estadual is in Old Format
     * @return True if the format is OLD_FORMAT
     */
    public boolean isOldFormat(){
        return format == OLD_FORMAT;
    }
    
    /**
     * Converts the number from 101.62521-3 to 0000000062521-3.  
     * Old Format -> New Fotmat
     */
    public void convertToNewFormat(){
        setNumber(convertToNewFormat(getNumber()));
    }
    
}
