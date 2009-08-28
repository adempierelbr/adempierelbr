package org.brazilutils.text;

import java.math.BigDecimal;

/**
 * RealToWords class converts brazilian currency monetary value (R$) 
 * to words.
 * 
 * @author Rafael Fiume
 * @version 1.0
 * @see http://www.rgagnon.com/javadetails/java-0426.html
 */
public class RealToWords {

	/** The prefix of the positive monetary value to words. */
	private String positivePrefix = "";

	/** The suffix of the positive monetary value to words. */
	private String positiveSuffix = "";

	/** The prefix of the negative monetary value to words. */
	private String negativePrefix = "";

	/** The suffix of the negative monetary value to words. */
	private String negativeSuffix = "";

	/* Detecting whether the monetary value is positive or negative. */
	private boolean isPositive = true;

	/* Cents: centavo (singular) or centavos (plural). */
	private String cents = "";

	/* Currency: real (singular) or reais (plural). */
	private String moeda = "";

	private static final String REAL = "real";

	private static final String REAIS = "reais";

	private static final String CENTAVO = "centavo";

	private static final String CENTAVOS = "centavos";

	private static final String MILESIMO = "milésimo de real";

	private static final String MILESIMOS = "milésimos de real";

	/* Represents big nums, in your singular form. */
	private static final String[] gNuns = { "", "mil ", "milhão ", "bilhão ",
			"trilhão ", "quatrilhão " };

	/* Represents big nums, in your plural form. */
	private static final String[] gNunsPlural = { "", "mil ", "milhões ",
			"bilhões ", "trilhões ", "quatrilhões " };

	/* Represents hundred nums. */
	private static final String[] centenas = { "", "cento e ", "duzentos ",
			"trezentos ", "quatrocentos ", "quinhentos ", "seiscentos ",
			"setecentos ", "oitocentos ", "novecentos " };

	/* Represents tens nums. */
	private static final String[] dezenas = { "", "dez ", "vinte ", "trinta ",
			"quarenta ", "cinqüenta ", "sessenta ", "setenta ", "oitenta ",
			"noventa " };

	/* Represents the first nineteen numbers. */
	private static final String[] numeros = { "", "um ", "dois ", "três ",
			"quatro ", "cinco ", "seis ", "sete ", "oito ", "nove ", "dez ",
			"onze ", "doze ", "treze ", "quatorze ", "quinze ", "dezesseis ",
			"dezessete ", "dezoito ", "dezenove " };

	/**
	 * @return Returns the positivePrefix.
	 */
	public String getPositivePrefix() {
		return positivePrefix;
	}

	/**
	 * @param positivePrefix
	 *            The positivePrefix to set.
	 */
	public void setPositivePrefix(final String prefix) {
		this.positivePrefix = prefix;
	}

	/**
	 * @return Returns the positiveSuffix.
	 */
	public String getPositiveSuffix() {
		return positiveSuffix;
	}

	/**
	 * @param positiveSuffix
	 *            The positiveSuffix to set.
	 */
	public void setPositiveSuffix(final String suffix) {
		this.positiveSuffix = suffix;
	}

	/**
	 * @return Returns the negativePrefix.
	 */
	public String getNegativePrefix() {
		return negativePrefix;
	}

	/**
	 * @param negativePrefix
	 *            The negativePrefix to set.
	 */
	public void setNegativePrefix(final String negativePrefix) {
		this.negativePrefix = negativePrefix;
	}

	/**
	 * @return Returns the negativeSuffix.
	 */
	public String getNegativeSuffix() {
		return negativeSuffix;
	}

	/**
	 * @param negativeSuffix
	 *            The negativeSuffix to set.
	 */
	public void setNegativeSuffix(final String negativeSuffix) {
		this.negativeSuffix = negativeSuffix;
	}

	/*
	 * Returns the monetary value to words.
	 * 
	 * @param currency The monetary value.
	 * @returns The monetary value to words. 
	 * 
	 * @throws ArithmeticException if the number scale is lower than two, or greater
	 * than three.
	 */
	public String toWords(final String currency) {
		return toWords(new BigDecimal(currency));
	}

	/*
	 * Returns the monetary value to words.
	 * 
	 * @param currency The monetary value.
	 * @returns The monetary value to words. 
	 * 
	 * @throws ArithmeticException if the number scale is lower than two, or greater
	 * than three.
	 */
	public String toWords(final BigDecimal currency) {

		final int scale = currency.scale();

		if ((scale != 2) && (scale != 3)) {
			throw new ArithmeticException(
					"a escala deve ser igual a dois ou três.");
		}

		final StringBuffer valueToWords = new StringBuffer();
		StringBuffer inteiroToWords;
		StringBuffer decimalToWords;

		final BigDecimal[] result = divideAndRemainder(currency);
		final BigDecimal parteInteira = result[0];
		final BigDecimal parteDecimal = result[1];

		setCents(result[1], scale);

		inteiroToWords = convertInteger(parteInteira.intValue());
		decimalToWords = convertCents(parteDecimal.intValue());

		if ((!(inteiroToWords.length() == 0)) && (!(decimalToWords.length() == 0))) {
			valueToWords.append(inteiroToWords)
                           .append(" e ")
                           .append(decimalToWords);

		} else {
			valueToWords.append(inteiroToWords)
                           .append(decimalToWords);			
		}

		if (isPositive) {
			return valueToWords.insert(0, positivePrefix)
			                      .append(positiveSuffix).toString();
		}

		return valueToWords.insert(0, negativePrefix)
		                      .append(negativeSuffix).toString();
	}

	/*
	 * Separates the integer part of the monetary value from its decimal part.
	 * 
	 * @param currency The monetary value. 
	 * @return a two element BigDecimal array: the integer part (the initial element) 
	 * and the decimal part (the final element). 
	 * 
	 * @author Eduardo Machado de Oliveira
	 */
	private BigDecimal[] divideAndRemainder(final BigDecimal currency) {

		BigDecimal[] result = new BigDecimal[2];

		result[0] = currency.setScale(0, BigDecimal.ROUND_DOWN);
		result[1] = currency.subtract(result[0]).movePointRight(currency.scale());
		return result;
	}

	/*
	 * Converts the integer part of the monetary value to words.
	 * 
	 * @param number The integer part of the monetary value. 
	 * @return The integer part of the monetary value to words. 
	 */
	private StringBuffer convertInteger(int number) {

		if (number == 0) {
			return new StringBuffer("");
		}

		if (number < 0) {
			number = -number;
			isPositive = false;

		} else {
			isPositive = true;
		}

		StringBuffer intToWords;
		moeda = ((number == 1) ? REAL : ((number == 0) ? "" : REAIS));

		intToWords = convertGreaterOrEqualThanOneThousand(number);

		if (isSpecialCase(intToWords)) {
			moeda = "de " + moeda;
		}

		return intToWords.append(moeda);
	}

	/*
	 * Converts the decimal part of the monetary value to words.
	 * 
	 * @param numero The decimal part of the monetary value.
	 * @return The decimal part of the monetary value to words.
	 */
	private StringBuffer convertCents(int decimal) {

		if (decimal == 0) {
			return new StringBuffer("");
		}

		if (decimal < 0) {
			decimal = -decimal;
			isPositive = false;

		} else {
			isPositive = true;
		}

		StringBuffer centsToWords = 
			convertGreaterOrEqualThanOneThousand(decimal);

		return centsToWords.append(cents);
	}

	/*
	 * Converts numbers greater than or equal one thousand to words.
	 * 
	 * @param number Number equal or greater than one thousand. 
	 * @return The number to words. 
	 * 
	 * @throws IllegalArgumentException if number is lower than onde thousand.
	 */
	private StringBuffer convertGreaterOrEqualThanOneThousand(int number) {

		StringBuffer numToWords = new StringBuffer("");

		if (number < 0) {
			throw new IllegalArgumentException(
					"numero deve ser maior ou igual a zero.");
		}

		int casa_milhar = 0;

		do {
			final int n = number % 1000;

			if (n != 0) {
				final StringBuffer s = convertLessThanOneThousand(n);

				if (isSingular(n)) {
					numToWords = s.append(gNuns[casa_milhar]).append(numToWords);

				} else {
					numToWords = s.append(gNunsPlural[casa_milhar]).append(numToWords);
				}
			}

			casa_milhar++;
			number /= 1000;

		} while (number > 0);

		return numToWords;
	}

	/*
	 * Converts numbers lower than one thousand to words.
	 * 
	 * @param number Number lower than one thousand. 
	 * @return The number to words. 
	 * 
	 * @throws IllegalArgumentException if number is lower than zero.
	 */
	private StringBuffer convertLessThanOneThousand(int number) {

		final StringBuffer numToWords = new StringBuffer("");

		if (number < 0) {
			throw new IllegalArgumentException(
					"numero deve ser maior ou igual a zero.");
		}

		if (number == 0) {
			return numToWords;
		}

		if (number == 100) {
			return numToWords.append("cem ");
		}

		if (number % 100 < 20) {
			numToWords.append(numeros[number % 100]);
			number /= 100;

		} else {
			numToWords.append(numeros[number % 10]);

			if ((number % 10) != 0) {
				numToWords.insert(0, "e ");
			}

			number /= 10;

			numToWords.insert(0, dezenas[number % 10]);
			number /= 10;
		}

		if ((number > 0) && ((number != 1))) {
			numToWords.insert(0, "e ");
		}

		return numToWords.insert(0, centenas[number]);
	}

	/*
	 * Assures that "centavos" or "milhares" is correctly shown, as the decimal
	 * part of the monetary value has, respectively, scale two or three.
	 * 
	 * @param currency The monetary value.
	 */
	private void setCents(final BigDecimal decimal, final int scale) {

		if (scale == 3) {
			cents = ((decimal.intValue() == 1) ? MILESIMO : 
				((decimal.intValue() == 0) ? "" : MILESIMOS));

			return;
		}

		cents = ((decimal.intValue() == 1) ? CENTAVO :
				((decimal.intValue() == 0) ? "" : CENTAVOS));
	}

	/*
	 * Assures that "centavo" or "centavos", or still "milhar" or "milhares" is
	 * correctly shown, in accordance with the nominal agreement of the number.
	 * 
	 * Ex: "um milhão", instead of "um milhões"; "dois bilhões", instead of
	 * "dois bilhão".
	 * 
	 * @param number The number wich it wants to verify. 
	 * @return 
	 * 		true, if the  nominal agreement is in the singular; 
	 * 		false, if it's in the plural.
	 */
	private boolean isSingular(final int number) {

		final String num = String.valueOf(number);

		if ((number / 1000) > 0) {
			return num.endsWith("001");
		}

		if (number < 11) {
			return num.endsWith("1");
		}

		return false;
	}

	/*
	 * Assures that number like 1.000.000, 2.000.000, 5.000.000.000 has the "de"
	 * preposition before de currency.
	 * 
	 * Ex: "um milhão <strong>de</strong> reais", "dois milhões <strong>de</strong>
	 * reais", "cinco bilhões <strong>de</strong> reais" and thus for ahead.
	 * 
	 * @param numberToWords The number wich it wants to verify if it's necessary
	 * the "de" preposition, so that it's developed representation can be
	 * corectly shown in the screen 
	 * @return 
	 * 		true, if the "de" preposition is necessary; 
	 * 		false, contrary case.
	 */
	private boolean isSpecialCase(final StringBuffer numberToWords) {

		final String numToWords = numberToWords.toString();

		for (int a = 1; a < gNuns.length; a++) {
			if (numToWords.endsWith(gNuns[a])) {
				return true;
			}
		}

		for (int b = 1; b < gNuns.length; b++) {
			if (numToWords.endsWith(gNunsPlural[b])) {
				return true;
			}
		}

		return false;
	}

}