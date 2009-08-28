package org.brazilutils.test;

import org.brazilutils.br.endereco.Logradouro;
import org.brazilutils.br.endereco.TipoLogradouro;

import junit.framework.TestCase;

public class LogradouroTest extends TestCase {

	public void test1() throws Exception {
		Logradouro l = new Logradouro();
		l.setLogradouro("Avenida Teste"); // valid
		assertTrue(l.isValid());
	}
	public void test2() throws Exception {
		Logradouro l = new Logradouro();
		l.setLogradouro("Nonono Teste"); // invalid
		assertTrue(!l.isValid());
	}
	public void test3() throws Exception {
		Logradouro l = new Logradouro();
		l.setLogradouro("Rua"); // invalid
		assertTrue(!l.isValid());
	}
	public void test4() throws Exception {
		Logradouro l = new Logradouro();
		l.setLogradouro("Avenida Teste");
		// tipo = Avenida
		// Nome = Teste
//		String av = TipoLogradouro.Avenida.toString();
//		assertTrue( l.getTipo().equals(av) && 
//				    l.getNome().equals("Teste") );
	}
	public void test5() throws Exception {
		Logradouro l = new Logradouro();
		l.setLogradouro("Aven Teste");
		l.setTipoNormalized(true);
		// Aven -> Avenida
//		String av = TipoLogradouro.Avenida.toString();
//		assertTrue( l.getTipo().equals(av)); //Avenida
//		l.setLogradouro("Estr. Teste");
//		// Estr -> Estrada
//		String estrada = TipoLogradouro.Estrada.toString();
//		assertTrue( l.getTipo().equals(estrada)); //Estrada		
	}
	
}
