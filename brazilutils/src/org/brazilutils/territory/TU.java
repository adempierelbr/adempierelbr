/*
 * Created on 2007/03/03
 *
 */
package org.brazilutils.territory;

import java.io.Serializable;

/**
 * Territorial Unit
 * @author Sergio M. M. Taborda 
 *
 */
public class TU implements Serializable{

    protected String code;
    protected String countryCode;
    
    /**
     * @param code
     * @param countryCode
     */
    public TU(String countryCode, String code ) {
        this.code = code.toUpperCase();
        this.countryCode = countryCode.toUpperCase();
    }

    /**
     * @return the countryCode
     */
    public String getCountryCode() {
        return countryCode;
    }
    
    /**
     * 
     * @return ISO representation of territorial unit
     */
    public String getCode() {
        return countryCode + "-" + code;
    }
    
    public String getShortCode() {
        return code;
    }
}
