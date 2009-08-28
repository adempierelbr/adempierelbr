/*
 * Created on 26/05/2005
 */
package org.brazilutils.test;

import junit.framework.TestCase;

import org.brazilutils.utilities.conversion.RomanNumbers;

public class TestRomanNumbers extends TestCase {
    public void testIntToRoman(){
        RomanNumbers numbers = RomanNumbers.getInstance();
        
        String converted = numbers.IntToRoman(250);
        assertEquals(converted, "CCL");
        
        converted = numbers.IntToRoman(353);
        assertEquals(converted, "CCCLIII");
        
        converted = numbers.IntToRoman(421);
        assertEquals(converted, "CDXXI");
        
        converted = numbers.IntToRoman(2925);
        assertEquals(converted, "MMCMXXV");
        
        converted = numbers.IntToRoman(3999);
        assertEquals(converted, "MMMCMXCIX");
    }
    
    public void testValidate(){
        RomanNumbers numbers = RomanNumbers.getInstance();
        
        assertTrue(numbers.validate("CCL"));
        
        assertTrue(numbers.validate("MMMCMXCIX"));
        
        assertFalse(numbers.validate("ccl"));
        
        assertFalse(numbers.validate("XMM"));
        
        assertFalse(numbers.validate("ACC"));
    }
    
    public void testRomanToInt(){
        RomanNumbers numbers = RomanNumbers.getInstance();

        assertEquals(numbers.RomanToInt("MMMCMXCIX"), 3999);
        assertEquals(numbers.RomanToInt("MMCMXXV"), 2925);
        assertEquals(numbers.RomanToInt("CDXXI"), 421);
        assertEquals(numbers.RomanToInt("XCIX"), 99);
    }
    
    public void testBothWay(){
        RomanNumbers numbers = RomanNumbers.getInstance();
        for (int i = 0; i < 4000; i++) {
            assertEquals(numbers.RomanToInt(numbers.IntToRoman(i)), i);
            System.out.println(i + " - "+numbers.IntToRoman(i));
        }
    }
}
