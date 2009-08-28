/**
 * 
 */
package org.brazilutils.utilities;

import java.text.ParseException;

import javax.swing.JFormattedTextField;
import javax.swing.text.MaskFormatter;

/**
 * @author Douglas Siviotti
 *
 */
public class NumberComposedMasker {
    private static JFormattedTextField jFormattedTextField = null;
    private static MaskFormatter maskFormatter = null;

	public static String applyMask(String number, String mask){
        try {
			maskFormatter = new MaskFormatter(mask);
	        jFormattedTextField = new JFormattedTextField(maskFormatter);			
		} catch (ParseException e) {
			e.printStackTrace();
			return number;
		}
		jFormattedTextField.setText(number);
		return jFormattedTextField.getText();		
	}
	
    /**Apenas um teste...
	 * @return
	 */
	public static String convertMaskToRegex(String mask){
		String result = "";
		for (int i=0; i < mask.length(); i++){
			if (mask.charAt(i) == '\'') { //Ignore the '
				i++;
				result = result + mask.charAt(i);
				continue;
			}
			switch (mask.charAt(i)) {
			// Mask 
			case '#': result = result + "[0-9]"; break; 
			case '*': result = result + "."; break;			
			case 'U': result = result + "[:upper:]"; break; 
			case 'L': result = result + "[:lower:]"; break;
			case 'A': result = result + "[:alnum:]"; break;
			case '?': result = result + "[:alpha:]"; break;
			case 'H': result = result + "[:xdigit:]"; break;
			// Meta
			case '.': result = result + "\\."; break;
			case '\'': result = result + "\\"; break;
			case '+': result = result + "\\+"; break;
			case '^': result = result + "\\^"; break;
			case '$': result = result + "\\$"; break;
			case '|': result = result + "\\|"; break;
			case '[': result = result + "\\["; break;
			case ']': result = result + "\\]"; break;
			case '{': result = result + "\\{"; break;
			case '}': result = result + "\\}"; break;
			case '(': result = result + "\\("; break;
			case ')': result = result + "\\)"; break;		
			default : result = result + mask.charAt(i);
			}
		}
		return result;
	}
	

}
