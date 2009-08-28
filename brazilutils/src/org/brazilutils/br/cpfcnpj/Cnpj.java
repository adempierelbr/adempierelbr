/*
 * Created on 27/04/2005
 */
package org.brazilutils.br.cpfcnpj;

import org.brazilutils.validation.ValidationException;

/**Represents a CNPJ.<br>
 * This class executes validation on constructor.<br> 
 * You can not try create a CPF, 
 * it will throw a ValidationException.
 * @author Douglas Siviotti
 */
public class Cnpj extends CpfCnpj {
	
	public static boolean isValid(String cnpj) {
		String s = cnpj.replaceAll("[^0-9]*", "");
		if (s.length() == CNPJ_DIGITS) {
			return CpfCnpj.isValid(cnpj);
		}
		return false;
	}

    /**Default constructor.
     * @param cnpj the CNPJ number
     * @throws ValidationException
     */
    public Cnpj(String cnpj) throws ValidationException {     
        super(cnpj);
        String s = cnpj.replaceAll("[^0-9]*","");
        if (s.length() != CNPJ_DIGITS) {
            throw new ValidationException("O CPF deve ter " 
                    + CNPJ_DIGITS + " dígitos");
        }       
    }
    /**Always return true! The class represents a CNPJ. 
     * @see org.brazilutils.br.cpfcnpj.CpfCnpj#isCnpj()
     */
    public boolean isCnpj() {
        return true;
    }
    /**Always return false! The class represents a CNPJ. 
     * @see org.brazilutils.br.cpfcnpj.CpfCnpj#isCpf()
     */
    public boolean isCpf() {
        return false;
    }

}
