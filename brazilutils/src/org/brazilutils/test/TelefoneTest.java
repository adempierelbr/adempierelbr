package org.brazilutils.test;

import junit.framework.TestCase;

import org.brazilutils.br.telefone.TelMask;
import org.brazilutils.br.telefone.Telefone;

public class TelefoneTest extends TestCase {
	
	public static final String outTel = "+55(21)2270-5855";
	
    public void testSimpleTel() throws Exception {
        Telefone t = new Telefone();
        
        // Set the Tel Number
        t.setTel("+55(21)2270-5855");
        assertTrue(t.getBase().equals("2270-5855"));
        assertTrue(t.getDdd().equals("(21)"));
        assertTrue(t.getDdi().equals("+55"));
        assertTrue(t.getBaseNumber().equals("22705855"));
        assertTrue(t.getDddNumber().equals("21"));
        assertTrue(t.getDdiNumber().equals("55"));
        assertTrue(t.toString().equals("+55(21)2270-5855"));
        assertTrue(t.getNumber().equals("552122705855"));

        // Set the members
        t.setDdi("+32");
        t.setDdd("(14)");
        t.setBase("3838-4343");
        assertTrue(t.getBase().equals("3838-4343"));
        assertTrue(t.getDdd().equals("(14)"));
        assertTrue(t.getDdi().equals("+32"));
        assertTrue(t.toString().equals("+32(14)3838-4343"));

        Telefone t2 = new Telefone();
        t2.setTel("55(21)22705855");
        assertTrue(t2.getBase().equals("22705855"));
        assertTrue(t2.getDdd().equals("(21)"));
        assertTrue(t2.getDdi().equals("55"));

        Telefone t3 = new Telefone();
        t3.setTel("22705855");
        assertTrue(t3.getBase().equals("22705855"));
        assertTrue(t3.getDdd().equals("")); // is not null
        assertTrue(t3.getDdi().equals("")); // is not null
        
    }
    
    public void testExplicitMask() throws Exception {
        Telefone t = new Telefone(); 
        t.setTel("(21)2270-5855"); 
        
        // String Mask - No DDD
        t.setMask("####-####"); 
        assertTrue(t.equals("2270-5855"));// ignore (21)
        
        // Enum Mask - Use DDD
        t.setMask(TelMask.BrazilianDDD); // (##)####-####  
        assertTrue(t.equals("(21)2270-5855"));// use (21)
        
        // Unformatted number       
        Telefone t2 = new Telefone();
        t2.setMask("+##(##)####-####");
        t2.setTel("552122705855"); // no tags
        assertTrue(t2.getBase().equals("2270-5855"));
        assertTrue(t2.getDdd().equals("(21)"));
        assertTrue(t2.getDdi().equals("+55"));
        assertTrue(t2.toString().equals("+55(21)2270-5855"));
    }
    
	public void testDynamicMask() throws Exception {
		String input = "+55(21)2270-5855"; 
        
		Telefone t = new Telefone(); // no mask parameter
        
        // The first input define the Mask
		t.setTel(input); // mask = +##(##)####-####
        
        String output = t.toString();
		assertTrue(input.equals(output));
        
        // This is the dynamic mask genered:
        assertTrue(t.getMask().equals("+##(##)####-####"));
        
        // Second input do not change the mask
        t.setTel("2270-5855"); // do not change to ####-####
        // The mask is the same
        assertTrue(t.getMask().equals("+##(##)####-####"));
        // The toString use the old mask
        assertTrue(t.toString().equals("+  (  )2270-5855"));
        // White Spaces                  ^^ ^^
        // Now the mask only change with setMask() method
	}

    public void testDynamicMaskSpecialChar() throws Exception {
        String input = "+ 55( 21) 270-5855";
        // White Spaces: ^   ^   ^
        // Will become * in the mask, any char
        // A White Space is a opitional digit
        
        Telefone t = new Telefone(); // no mask parameter
        t.setTel(input); // set the phone number
        
        String output = t.toString();
        assertTrue(input.equals(output));
        
        // This is the dynamic mask genered:
        assertTrue(t.getMask().equals("+*##(*##)*###-####"));
        
        // Can use 8 digits base too becouse the *
        t.setBase("2270-5855");
        assertTrue(t.getBase().toString().equals("2270-5855"));
    }
}
