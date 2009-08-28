/*
 * Created on 2007/03/03
 *
 */
package org.brazilutils.br.adress;

import java.util.HashMap;
import java.util.Map;

import org.brazilutils.territory.Country;

public abstract class AbstractAdress implements Adress{

    private final Map partMap = new HashMap();
    
    private PostalCode postalcode;
    final private Country country;
    final protected CountryPart countryPart;
    
    public AbstractAdress(Country country){
        this.country = country;
        this.countryPart = this.buildAdressStructure(country);
        partMap.put("country", countryPart);
    }

    public PostalCode getPostalCode(){
        return postalcode;
    }
    
    protected Adress.Part getPart(String name){
        return (Adress.Part)partMap.get(name);
    }
    
    protected abstract Adress.CountryPart buildAdressStructure(Country country);
    
    public PostalCode getCode() {
        return postalcode;
    }

    public CountryPart getCountryPart() {
        return countryPart;
    }

    protected class SimpleCountryPart extends SimplePart implements Adress.CountryPart{

        public SimpleCountryPart(Country country) {
            super("country");
        }

        public Country getCountry() {
            return country;
        }

    }
    
    protected class SimplePart implements Adress.Part {

        private Object content;
        private String name;
        private Part next;
        private Part previous;
        
        public SimplePart(String name){
            this.name = name;
        }
        
        public SimplePart add(String name ){
            SimplePart next = new SimplePart(name);
            next.previous = this;
            this.next = next;
            partMap.put(next.getName(),next);
            return next;
        }
        
        public Object getContent() {
            return content;
        }

        public void setContent(Object content) {
            this.content = content;
        }
        
        public String getName() {
            return name;
        }

        public Part next() {
            return next;
        }

        public Part previous() {
            return previous;
        }

        
    }

  
}
