/*
 * Created on 26/04/2005
 */
package org.brazilutils.br.cpfcnpj;

import org.brazilutils.validation.ValidationException;

/**
 * Represents a CPF.<br>
 * This class executes validation on constructor.<br>
 * You can not try create a CNPJ, it will throw a ValidationException.
 * 
 * @author Douglas Siviotti
 */
public class Cpf extends CpfCnpj {

	public static boolean isValid(String cpf) {
		String s = cpf.replaceAll("[^0-9]*", "");
		if (s.length() != CPF_DIGITS) {
			return CpfCnpj.isValid(cpf);
		}
		return false;
	}

	/**
	 * Default Constructor.
	 * 
	 * @param cpf
	 *            the CPF number
	 * @throws ValidationException
	 */
	public Cpf(String cpf) throws ValidationException {
		super(cpf);
		String s = cpf.replaceAll("[^0-9]*", "");
		if (s.length() != CPF_DIGITS) {
			throw new ValidationException("O CPF deve ter " + CPF_DIGITS
					+ " dígitos");
		}
	}

	/**
	 * Always return false! The class represents a CPF.
	 * 
	 * @see org.brazilutils.br.cpfcnpj.CpfCnpj#isCnpj()
	 */
	public boolean isCnpj() {
		return false;
	}

	/**
	 * Always return true! The class represents a CPF.
	 * 
	 * @see org.brazilutils.br.cpfcnpj.CpfCnpj#isCpf()
	 */
	public boolean isCpf() {
		return true;
	}
}
