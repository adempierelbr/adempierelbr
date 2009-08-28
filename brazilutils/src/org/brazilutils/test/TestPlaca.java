package org.brazilutils.test;

import junit.framework.TestCase;

import org.brazilutils.br.id.Placa;
import org.brazilutils.br.uf.UF;

public class TestPlaca extends TestCase {
	
	/**test formats
	 * @throws Exception
	 */
	public void testPlaca() throws Exception {
		Placa placa = new Placa("ABC-1234");
		assertTrue(placa.toString().equals("ABC-1234"));
		placa.setPlaca("LLL4321");
		assertTrue(placa.toString().equals("LLL-4321"));
		placa.setLetters("mmm"); // lower
		placa.setNumbers("5555");
		assertTrue(placa.toString().equals("MMM-5555"));
	}

	/**Test UF
	 * @throws Exception
	 */
	public void testPlacaUf() throws Exception {
//		Placa placa = new Placa("ABC-1234"); // PR
//		assertTrue(placa.getUf().equals(UF.PR));
//		placa.setPlaca("LLL-2143"); // RJ
//		assertTrue(placa.getUf().equals(UF.RJ));
//		placa.setPlaca("ZZZ-2211"); // invalid - out of range
//		assertTrue(placa.getUf() == null);
//		placa.setPlaca("BEZ-1234"); // LAST PR
//		assertTrue(placa.getUf().equals(UF.PR));
//		placa.setPlaca("BFA-1234"); // FIRST SP
//		assertTrue(placa.getUf().equals(UF.SP));		
	}
}
