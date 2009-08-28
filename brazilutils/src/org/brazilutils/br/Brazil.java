/*
 * Created on 2007/03/03
 *
 */
package org.brazilutils.br;

import org.brazilutils.br.adress.AdressBR;
import org.brazilutils.br.adress.CEP;
import org.brazilutils.br.adress.PostalCode;
import org.brazilutils.br.codenumber.CNPJNumber;
import org.brazilutils.br.codenumber.IENumber;
import org.brazilutils.territory.Country;

/**
 * 
 * @author Sergio M. M. Taborda 
 *
 */
public class Brazil {

    /**
     * Usage:<BR>
     *  <code>
     *  Brasil.cnpj("000-0.00.00").isValid();
     *  <BR>
     *  Brasil.cnpj("00000000").isValid();
     *  </code>
     * @param cnjp a string representing a CNPJ number
     * @return CNPJ object
     */
    public static CNPJNumber cnpj(String number){
        return new CNPJNumber (number);
    }
    
    
    /**
     * Usage:
     *  
     *  Brasil.ie("000-0.00.00").isValidFor(UF.SP);
     *  Brasil.ie("00000000").isValidFor(UF.SP);
     *  
     * @param cnjp a string representing a CNPJ number
     * @return CNPJ object
     */
    public static IENumber ie(String number){
        return new IENumber(number);
    }
    
    /**
     * Usage:
     *  
     *  Brasil.cep("00000-000").isValid(UF.SP);
     *  Brasil.cep("00000000").isValid(UF.SP);
     *  
     * @param cnjp a string representing a CNPJ number
     * @return CNPJ object
     */
    public static CEP cep(String cep){
        return new CEP(cep);
    }
    
    public static AdressBR newAdress(){
        return new AdressBR();
    }
    
    public static Country asCountry(){
        return Country.getInstance("BR");
    }
    
    private Brazil(){}
}
