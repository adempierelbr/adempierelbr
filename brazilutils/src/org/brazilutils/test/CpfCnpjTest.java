/*
 * Created on 10/05/2005
 */
package org.brazilutils.test;

import junit.framework.TestCase;

import org.brazilutils.br.Brazil;
import org.brazilutils.br.cpfcnpj.CpfCnpj;

/**
 * @author Douglas Siviotti
 */
public class CpfCnpjTest extends TestCase {

    public void test() throws Exception {
        CpfCnpj c = new CpfCnpj();
        
		c.setCpfCnpj("29520590000165"); //  TODO este cnpj é invalido
        assertTrue(c.isValid()); // CNPJ valid
		assertTrue(c.isCnpj());  // is CNPJ
		assertFalse(c.isCpf());  // is not CPF

		c.setCpfCnpj("12345678911"); 
		assertFalse(c.isValid());// CPF invalid
		assertFalse(c.isCnpj()); // is not CNPJ
		assertTrue(c.isCpf());   // is CPF
		//System.out.println(c.toString());
		assertTrue(c.toString().equals("123.456.789-11"));

		c.setCpfCnpj("123456789"); // number invalid 
		assertFalse(c.isValid());// format invalid
		assertFalse(c.isCnpj()); // is not CNPJ
		assertFalse(c.isCpf());  // is not CPF
		
        assertFalse(Brazil.cnpj("123456789").isValid());
        assertFalse(Brazil.cnpj("12345678911").isValid());
        assertFalse(Brazil.cnpj("29520590000165").isValid());
        assertFalse(Brazil.cnpj("29520590000165").isValid());
        
        assertTrue(Brazil.cnpj("58729997000103").isValid());
        assertTrue(Brazil.cnpj("58729997/0001-03").isValid());
        
    }
}
