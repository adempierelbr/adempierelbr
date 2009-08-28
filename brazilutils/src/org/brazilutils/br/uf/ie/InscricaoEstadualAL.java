/*
 * Created on 07/05/2005
 */
package org.brazilutils.br.uf.ie;

/**
 * Represents the Inscricao Estadual of Alagoas - AL<br>
 * 
 * <a href="http://www.sintegra.gov.br/Cad_Estados/cad_AL.html">
 * http://www.sintegra.gov.br/Cad_Estados/cad_AL.html</a>
 * 
 * @author Douglas Siviotti
 */
public final class InscricaoEstadualAL extends InscricaoEstadual {

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
		return "24.###.###-#"; // TODO Verificar máscara
	}

	/**
	 * @see org.brazilutils.br.uf.ie.InscricaoEstadual#defineCoeficients()
	 */
	public void defineCoeficients() {
		setCoeficientList("98765432");
	}

	/**
	 * <a href="http://www.sintegra.gov.br/Cad_Estados/cad_AL.html">
	 * http://www.sintegra.gov.br/Cad_Estados/cad_AL.html</a>
	 * 
	 * @see org.brazilutils.validation.Validable#isValid()
	 */
	public boolean isValid() {
		int sum; // Sum of Multiply (Digit * Peso)
		int mod; // Module in sum % 11 or sum % 10
		int dv1; // Fisrt Calculated Chek Digit

		// Necessário para que a validação em cadeia (chain validation)
		// funcione.
		defineCoeficients();

		// If the Digit Count is not correct return false
		if (!isValidDigitCount())
			return false;
		// State Digits : 2(pos 0) and 4(pos 1)
		if (!isFixDigitCorrect(0, '2'))
			return false;
		if (!isFixDigitCorrect(1, '4'))
			return false;
		// Calculate the Check Digit
		sum = getCalcSum() * 10;
		mod = sum - (sum / 11) * 11;
		if (mod == 10) {
			dv1 = 0;
		} else {
			dv1 = mod;
		}
		// Returns Calculated Chek Digit = The Real Check Digit
		System.out.println(sum + " : 11 = " + mod + " dv1 = " + dv1);
		return dv1 == getDv1();
	}

}
