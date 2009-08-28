/*
 * Created on 2007/03/03
 *
 */
package org.brazilutils.br.adress;

import org.brazilutils.territory.Country;

public interface Adress {

   
    public PostalCode getCode();
    public CountryPart getCountryPart();
    
    public interface Part {
        
        public String getName();
        public Object getContent();
        public void setContent(Object content);
        public Part next();
        public Part previous();
    }
    
    public interface CountryPart extends Part{
        public Country getCountry();
    }
    
    public interface PartType {
        public String getName();
        public Object getContent();
        public void setContent(Object content);
    }
}
