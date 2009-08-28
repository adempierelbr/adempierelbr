/**
 * 
 */
package org.brazilutils.br.id;

import java.util.EnumSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.brazilutils.br.uf.UF;
import org.brazilutils.validation.Validable;
import org.brazilutils.validation.ValidationException;

/**
 * @author Douglas Siviotti
 *
 */
public class Placa implements Validable{
	

	/** Text Mask */
	public static final String MASK = "UUU-####";
	
	private String letters = "";
	private String numbers = "";
	
	/**
	 * 
	 */
	public Placa(){
		super();
	}
	
	/**
	 * @param placa 
	 */
	public Placa(String placa){
		super();
		setPlaca(placa);
	}
	
	/**Compare the <code>toString()</code> method.<P>
	 * <code>return this.toString().equals(obj.toString());</code>
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
    public boolean equals(Object obj) {
        return this.toString().equals(obj.toString());
    }


	/**Returns the 3 letters.<br>
	 * @return Returns the letters.
	 */
	public String getLetters() {
		return letters;
	}

	/**Returns the 4 numbers.
	 * @return Returns the numbers.
	 */
	public String getNumbers() {
		return numbers;
	}

	/**Returns the Placa as UUU-####
	 * @return
	 */
	public String getPlaca(){
		return letters + "-" + numbers;
	}

//	/**Returns the UF correspondent.<br>
//	 * @return
//	 */
//	public UF getUf(){
//		for (UF u: EnumSet.range(UF.AC, UF.TO)){
//			if (u.placaMatches(this.toString())) return u;
//		}					
//		return null;		
//	}
	
	/**
	 * @see org.brazilutils.validation.Validable#isValid()
	 */
	public boolean isValid() {
		return 
		letters != null && letters.length() == 3 &&
        Character.isLetter(letters.charAt(0)) &&
        Character.isLetter(letters.charAt(1)) &&
        Character.isLetter(letters.charAt(2)) &&        
		numbers != null && numbers.length() == 4 &&
        Character.isDigit(numbers.charAt(0)) &&
        Character.isDigit(numbers.charAt(1)) &&
        Character.isDigit(numbers.charAt(2)) &&
        Character.isDigit(numbers.charAt(3))  ;
	}

//	/**Validate based on UF.<P>
//	 * @param uf The UF to set
//	 * @return
//	 */
//	public boolean isValid(UF uf){
//		return isValid() && getUf().equals(uf);
//	}

	/**
	 * @param letters The letters to set.
	 */
	public void setLetters(String letters) {
        if (letters != null) {
            letters = letters.toUpperCase();
            Pattern p = Pattern.compile("[A-Z]{3}");
            Matcher m = p.matcher(letters);
            if (m.find()) {
                this.letters = m.group();
            } else {
                this.letters = "";
            }            
        } else this.letters = "";
	}

	/**
	 * @param numbers The numbers to set.
	 */
	public void setNumbers(String numbers) {
        if (numbers != null){
            Pattern p = Pattern.compile("[0-9]{4}");
            Matcher m = p.matcher(numbers);
            if (m.find()) {
                this.numbers = m.group();
            } else {
                this.numbers = "";
            }            
        } else this.numbers = "";
	}

	/**Sets the placa value
	 * @param placa
	 */
	public void setPlaca(String placa){
		setLetters(placa);
		setNumbers(placa);
	}
	
	/**Returns the placa like UUU####, without "-" 
	 * @return
	 */
	public String toNoMask(){
		return letters + numbers;
	}
	
	/**
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return getPlaca();
	}
	/**
	 * @see org.brazilutils.validation.Validable#validate()
	 */
	public void validate() throws ValidationException {
		// TODO Auto-generated method stub
		
	}
}