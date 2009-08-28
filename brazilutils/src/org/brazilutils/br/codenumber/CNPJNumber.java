/*
 * Created on 2007/03/03
 *
 */
package org.brazilutils.br.codenumber;

import org.brazilutils.br.codenumber.validation.CNPJValidator;
import org.brazilutils.br.validation.AutoValidatable;

/**
 * Represent a Number in the CNPJ (Cadastro Nacional de Pessoa Juridica)
 * 
 * @author Sergio M. M. Taborda 
 *
 */
public class CNPJNumber extends AbstractCodeNumber implements AutoValidatable{

    
    public CNPJNumber(String code){
        super(code);
    }

    public boolean isValid() {
        return  CNPJValidator.getInstance().isValid(this);
    }

   

   
}
