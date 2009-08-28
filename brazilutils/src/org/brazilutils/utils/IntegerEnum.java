/*
 * Created on 2007/03/03
 *
 */
package org.brazilutils.utils;

/**
 * Enum pattern for jdk 1.4
 * 
 * @author Sergio M. M. Taborda 
 *
 */
public class IntegerEnum {

    
    private int value;
    protected IntegerEnum(int value){
        this.value = value;
    }
    
    public boolean equals(Object other){
        return other instanceof IntegerEnum  && this.value == ((IntegerEnum)other).value;
    }
    
    public int hashCode(){
        return value;
    }
}
