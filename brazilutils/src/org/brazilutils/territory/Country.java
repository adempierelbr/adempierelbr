/*
 * Created on 2007/03/03
 *
 */
package org.brazilutils.territory;

public class Country {

    private String code;
    private Country (String code){
        this.code = code;
    }
    
    public static Country getInstance(String isoCountryCode){
        return new Country(isoCountryCode);
    }
    
 
}
