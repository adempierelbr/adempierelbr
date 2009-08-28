package org.brazilutils.test;

import java.math.BigDecimal;

import org.brazilutils.text.RealToWords;

/**
 * Test RealToWords class.
 * 
 * @author Rafael Fiume
 */
public class _RealToWordsTest {
	
	public static void main(String[] args) {
		
		RealToWords converter = new RealToWords();
		
		System.out.println(converter.toWords(new BigDecimal(-1).setScale(2, BigDecimal.ROUND_HALF_EVEN)));
		System.out.println(converter.toWords(new BigDecimal(896558475).setScale(2, BigDecimal.ROUND_HALF_EVEN)));		
		System.out.println(converter.toWords(new BigDecimal(0.01).setScale(2, BigDecimal.ROUND_HALF_EVEN)));		
		System.out.println(converter.toWords(new BigDecimal(30).setScale(2, BigDecimal.ROUND_HALF_EVEN)));
		System.out.println(converter.toWords(new BigDecimal(0.001).setScale(3, BigDecimal.ROUND_HALF_EVEN)));
		System.out.println(converter.toWords(new BigDecimal(-100.04).setScale(2, BigDecimal.ROUND_HALF_EVEN)));
		System.out.println(converter.toWords(new BigDecimal(120.04).setScale(2, BigDecimal.ROUND_HALF_EVEN)));
		System.out.println(converter.toWords(new BigDecimal(1048.99).setScale(2, BigDecimal.ROUND_HALF_EVEN)));
		System.out.println(converter.toWords("100101.87"));
		System.out.println(converter.toWords("-100101.87"));
		System.out.println(converter.toWords("1001000000.991"));
		System.out.println(converter.toWords(new BigDecimal(12687.013).setScale(3, BigDecimal.ROUND_HALF_EVEN)));
		
		converter.setNegativePrefix("(");
		converter.setNegativeSuffix(")");
		converter.setPositivePrefix("");
		converter.setPositiveSuffix(" positivo ");
		System.out.println(converter.toWords("100000000.00"));		
		System.out.println(converter.toWords("-2000000000.00"));
		
		// Pau aqui!!! Escala diferente de dois ou três.
		//System.out.println(converter.porExtenso(new BigDecimal(0.3).setScale(1, BigDecimal.ROUND_HALF_EVEN)));
		//System.out.println(converter.porExtenso(new BigDecimal(1413.14))); 
		
		// Criar regra para 100001.87.
		// Criar regra para 0.30 (scale == 3) -> Resultado atual: trezentos e milésimos de real
	}
}
