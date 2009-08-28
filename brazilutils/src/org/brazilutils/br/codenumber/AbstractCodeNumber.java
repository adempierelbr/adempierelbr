/*
 * Created on 2007/03/03
 *
 */
package org.brazilutils.br.codenumber;

public abstract class AbstractCodeNumber implements CodeNumber {

    
    private String codeNumber;
    
    public AbstractCodeNumber(String codeNumber){
        this.codeNumber = unformat(codeNumber);
    }
    
    public int digitAt(int pos){
        char c = codeNumber.charAt(pos);
        if (Character.isDigit(c)){
            return Character.digit(c, 10);
        } else {
            return -1;
        }
    }
  
    /**
     * Utility to transform a sequence of digits to an array of int
     * @return
     * @throws NumberFormatException
     */
    public int[] asDigits() throws NumberFormatException{
        int[] digitos = new int[this.codeNumber.length()];
        int i;
        for (i =0; i < digitos.length;i++){
            digitos[i] = Integer.parseInt(Character.toString(this.codeNumber.charAt(i)));
        }
        return digitos;
    }
    
 
    protected String unformat(String formattedCode) {
        StringBuffer buffer = new StringBuffer();
        for (int i =0; i < formattedCode.length(); i++){
            if (Character.isDigit(formattedCode.charAt(i))){
                buffer.append(formattedCode.charAt(i));
            }
        }
        return buffer.toString();
    }
    
    public char charAt(int pos){
        return codeNumber.charAt(pos); 
    }

    public int length() {
        return this.codeNumber.length();
    }

    public CharSequence subSequence(int beginIndex, int endIndex) {
        return this.codeNumber.subSequence(beginIndex, endIndex);
    }

}
