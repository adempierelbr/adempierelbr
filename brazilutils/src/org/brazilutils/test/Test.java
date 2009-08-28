package org.brazilutils.test;

import org.brazilutils.br.endereco.Logradouro;

import junit.framework.TestCase;

public class Test extends TestCase {

	public void test() throws Exception {
		Logradouro l = new Logradouro();
		l.setLogradouro("Av. Teste 123");
		System.out.println(l.getTipo());
		System.out.println(l.getNome());
		System.out.println(l.isTipoValid());
		System.out.println(l.getLogradouro());
	}
	
}
