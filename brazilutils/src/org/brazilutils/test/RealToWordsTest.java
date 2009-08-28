package org.brazilutils.test;

import java.math.BigDecimal;

import junit.framework.TestCase;

import org.brazilutils.text.RealToWords;

public class RealToWordsTest extends TestCase {

	RealToWords conversor = new RealToWords();

	public void testConversionWithNegativeValue() {
		assertEquals("um real", conversor.toWords(new BigDecimal(-1)
				.setScale(2, BigDecimal.ROUND_HALF_EVEN)));
	}

	public void testConversionWithLowerValue() {
		assertEquals("trinta reais", conversor.toWords(new BigDecimal(30)
				.setScale(2, BigDecimal.ROUND_HALF_EVEN)));
	}
	
	public void testConversionWithHugeValue() {
		assertEquals(
				"oitocentos e noventa e seis milhões quinhentos e cinqüenta e oito mil quatrocentos e setenta e cinco reais",
				conversor.toWords(new BigDecimal(896558475).setScale(2,
						BigDecimal.ROUND_HALF_EVEN)));
	}
	
	public void testConversionWithHugeValue2() {
		assertEquals(
				"um bilhão um milhão de reais e novecentos e noventa e um milésimos de real",
				conversor.toWords(new BigDecimal(1001000000.991).setScale(3,
						BigDecimal.ROUND_HALF_EVEN)));
	}

	public void testConversionWithDecimalValue() {
		assertEquals("um milésimo de real", conversor
				.toWords(new BigDecimal(0.001).setScale(3,
						BigDecimal.ROUND_HALF_EVEN)));
	}

	public void testConversionWithDecimalValue2() {
		assertEquals(
				"doze mil seiscentos e oitenta e sete reais e treze milésimos de real",
				conversor.toWords(new BigDecimal(12687.013).setScale(3,
						BigDecimal.ROUND_HALF_EVEN)));
	}
	
	public void testConversionWithDecimalValue3() {
		assertEquals(
				"um centavo", // Note que a escala DEVE SER IGUAL a 2.
				conversor.toWords(new BigDecimal(0.01).setScale(2,
						BigDecimal.ROUND_HALF_EVEN)));
	}

	public void testConversionWithDecimalValue4() {
		assertEquals(
				"cem reais e quatro centavos",
				conversor.toWords(new BigDecimal(100.04).setScale(2,
						BigDecimal.ROUND_HALF_EVEN)));
	}
	
	public void testConversionWithDecimalValue5() {
		assertEquals(
				"cento e vinte reais e quatro centavos",
				conversor.toWords(new BigDecimal(120.04).setScale(2,
						BigDecimal.ROUND_HALF_EVEN)));
	}
	
	public void testConversionWithDecimalValue6() {
		assertEquals(
				"um mil quarenta e oito reais e noventa e nove centavos",
				conversor.toWords(new BigDecimal(1048.99).setScale(2,
						BigDecimal.ROUND_HALF_EVEN)));
	}
	
	public void testConversionWithDecimalValue7() {
		assertEquals(
				"cem mil cento e um reais e oitenta e sete centavos",
				conversor.toWords(new BigDecimal(100101.87).setScale(2,
						BigDecimal.ROUND_HALF_EVEN)));
	}
	
	public void testPositiveSuffix() {
		conversor.setPositiveSuffix(" positivo");
		assertEquals(
				"cem milhões de reais positivo", //Note que escala é igual a 3.
				conversor.toWords(new BigDecimal(100000000).setScale(3,
						BigDecimal.ROUND_HALF_EVEN)));
	}
	
	public void testNegativePrefixAndSuffix() {
		conversor.setNegativePrefix("(");
		conversor.setNegativeSuffix(")");
		assertEquals(
				"(dois bilhões de reais)",
				conversor.toWords(new BigDecimal(-2000000000).setScale(2,
						BigDecimal.ROUND_HALF_EVEN)));
	}
	
	public void testIfObjectIsNull() {
		assertNotNull("O objeto está com valor null!!!", conversor);
	}

}
