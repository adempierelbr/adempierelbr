/*
 * Created on 2007/03/03
 *
 */
package org.brazilutils.br.codenumber.validation.ie;

import java.util.HashMap;
import java.util.Map;

import org.brazilutils.br.codenumber.IENumber;
import org.brazilutils.br.validation.Validator;
import org.brazilutils.territory.TU;

/**
 * Singleton factory for <code>IEValidator</code>s
 * Usage:
 *       IEValidator.getInstance(TU.SP).isValid();
 * 
 * @author Sergio M. M. Taborda 
 *
 */
public abstract class IEValidator implements Validator{

    public static IEValidator getInstance(TU unit ) {
        // usa reflection 
        String name = IEValidator.class.getPackage().getName() + ".IEValidatorFor" + unit.getShortCode();

        // n�o podemos fazer cache porque alguns valdiadores podem 
        // ser parameterizados
        try {
            return (IEValidator) Class.forName(name).newInstance();

        } catch (InstantiationException e) {
            // n�o � suposto isto acontecer pq a classes procuradas 
            // est�o no mesmo pacote
            throw new RuntimeException (e);
        } catch (IllegalAccessException e) {
            // n�o � suposto isto acontecer pq a classes procuradas 
            // est�o no mesmo pacote
            throw new RuntimeException (e);
        } catch (ClassNotFoundException e) {
            // n�o � suposto isto acontecer pq a classes procuradas 
            // est�o no mesmo pacote
            throw new RuntimeException (e);
        } 
    }



    public boolean isValid(Object object) throws ClassCastException {
        return isValid((IENumber)object);
    }

    public abstract boolean isValid(IENumber number);
}
