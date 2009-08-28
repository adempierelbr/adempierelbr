/*
 * Created on 08/05/2005
 */
package org.brazilutils.test;

import junit.framework.TestCase;

import org.brazilutils.br.uf.UF;
import org.brazilutils.br.uf.ie.InscricaoEstadual;
import org.brazilutils.br.uf.ie.InscricaoEstadualAC;
import org.brazilutils.br.uf.ie.InscricaoEstadualRJ;
import org.brazilutils.br.uf.ie.InscricaoEstadualTO;

/**
 * @author Douglas Siviotti
 */
public class UFInscricaoEstadualTest extends TestCase {

    public void testUfName() throws Exception {
        UF uf = null;
		//uf = UF.AC; // cria direto ou ...
		uf = UF.valueOf("AC"); // Cria a UF a partir da Sigla
		assertTrue(uf.getUfName().equals("Acre"));
		assertTrue(uf.toString().equals("AC"));
    }

	public void testUfInscricaoEstadual() throws Exception {
        UF uf = null;
		//uf = UF.AC; // cria direto ou ...
		uf = UF.valueOf("AC"); // Cria a UF a partir da Sigla		 
        uf.getInscricaoEstadual().setNumber("01.004.823/001-12");
        assertTrue(uf.getInscricaoEstadual().isValid());
        // SP
        uf = UF.SP;
        InscricaoEstadual ie = uf.getInscricaoEstadual();
        ie.setNumber("110.042.490.114");
        assertTrue(ie.isValid());
        // MG
        ie = UF.MG.getInscricaoEstadual();
        ie.setNumber("062.307.904/0081");
        assertTrue(ie.isValid());
    }
    
	/**
	 * @author Rafael Fiume
	 */
	public void testChainValidator() {		
		InscricaoEstadual ac = new InscricaoEstadualAC();
		InscricaoEstadual rj = new InscricaoEstadualRJ(); 
		InscricaoEstadual to = new InscricaoEstadualTO();
		
		// Ajusta a cadeia: RJ -> TO -> AC
		rj.addValidator(to);
		to.addValidator(ac);
		
		// Qual a IE que queremos validar?
		
		// Primeiro testemos uma IE de MG, que não faz parte da cadeia.
		assertFalse(rj.validate("062.307.904/0081"));
		
		// Agora sim, uma IE que faz parte da cadeia. Do último elo, aliás.
		assertTrue(rj.validate("01.004.823/001-12")); 
	}
}
