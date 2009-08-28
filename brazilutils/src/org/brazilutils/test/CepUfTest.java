package org.brazilutils.test;

import org.brazilutils.br.endereco.Cep;
import org.brazilutils.br.uf.UF;

import junit.framework.TestCase;

public class CepUfTest extends TestCase {
	/**CEP and UF check
	 * @throws Exception
	 */
	public void testUfValidaCep() throws Exception{
		Cep cepSP1 = new Cep("01.234.567"); // SP
		Cep cepSP2 = new Cep("11.234-567"); // SP
		Cep cepRJ = new Cep("21.021-380");  // RJ
		Cep cepRS = new Cep("91.021-380");  // RS
		UF rj = UF.RJ; // first digit 2
		UF sp = UF.SP; // first digit 0|1
		UF rs = UF.RS; // first digit 9
		// RJ 
//		assertFalse(rj.cepMatches(cepSP1.toString()));
//		assertFalse(rj.cepMatches(cepSP2.toString()));
//		assertTrue(rj.cepMatches(cepRJ.toString()));
//		assertFalse(rj.cepMatches(cepRS.toString()));
//		// SP
//		assertTrue(sp.cepMatches(cepSP1.toString()));
//		assertTrue(sp.cepMatches(cepSP2.toString()));
//		assertFalse(sp.cepMatches(cepRJ.toString()));
//		assertFalse(sp.cepMatches(cepRS.toString()));
//		// RS
//		assertFalse(rs.cepMatches(cepSP1.toString()));
//		assertFalse(rs.cepMatches(cepSP2.toString()));
//		assertFalse(rs.cepMatches(cepRJ.toString()));
//		assertTrue(rs.cepMatches(cepRS.toString()));
//		// Generate UF
//		assertTrue(cepSP1.getUf().equals(UF.SP));
//		assertTrue(cepSP2.getUf().equals(UF.SP));
//		assertTrue(cepRJ.getUf().equals(UF.RJ));
//		assertTrue(cepRS.getUf().equals(UF.RS));
	}
	
	/**Broken Ranges
	 * @throws Exception
	 */
	public void testAmDfGoRange() throws Exception{
		// AM = 69000000 to 69299999 and 69400000 to 69899999
		Cep cepAM1 = new Cep("69.295-625"); // AM
		Cep cepAM2 = new Cep("69.355-625"); // RR !!!
		Cep cepAM3 = new Cep("69.455-625"); // AM
		Cep cepAM4 = new Cep("69.955-625"); // AC !!!
//		assertTrue(cepAM1.getUf().equals(UF.AM));
//		assertFalse(cepAM2.getUf().equals(UF.AM));
//		assertTrue(cepAM2.getUf().equals(UF.RR));
//		assertTrue(cepAM3.getUf().equals(UF.AM));
//		assertFalse(cepAM4.getUf().equals(UF.AM));
//		assertTrue(cepAM4.getUf().equals(UF.AC));
		// DF = 70000000 to 72799999 and 73000000 to 73699999
		// GO = 72800000 to 72999999 and 73700000 to 76799999
		Cep cepDF1 = new Cep("70.321.375");
		Cep cepDF2 = new Cep("73.621.375");
		Cep cepGO1 = new Cep("72.821.375");
		Cep cepGO2 = new Cep("73.721.375");
//		assertTrue(cepDF1.getUf().equals(UF.DF));
//		assertTrue(cepDF2.getUf().equals(UF.DF));
//		assertTrue(cepGO1.getUf().equals(UF.GO));
//		assertTrue(cepGO2.getUf().equals(UF.GO));	
	}
}
