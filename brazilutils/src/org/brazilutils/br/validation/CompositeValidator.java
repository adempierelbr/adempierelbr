/*
 * Created on 2007/03/03
 *
 */
package org.brazilutils.br.validation;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/**
 * Composite Pattern applied to validation. 
 * You can compose a validator by attaching several <code>Validator</code>s.
 * 
 * 
 * @author Sergio M. M. Taborda 
 *
 */
public class CompositeValidator implements Validator{

    private Set validators = new HashSet();
    
    public void addValidator(Validator other){
        validators.add(other);
    }
    
    public void removeValidator(Validator other){
        validators.remove(other);
    }
 
    public boolean isValid(Object object) {
        boolean valid = true;
        // precorre todos os validadores 
        // enquanto o objecto for válido.
        for (Iterator it = validators.iterator();valid && it.hasNext();){
            valid = valid & ((Validator)it.next()).isValid(object);
        }
        return valid;
    }

}
