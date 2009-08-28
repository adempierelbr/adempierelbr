/*
 * Created on 2007/03/03
 *
 */
package org.brazilutils.br.adress;

import java.text.FieldPosition;
import java.text.Format;
import java.text.ParsePosition;

public abstract class AdressFormat extends Format {

    
  
    public StringBuffer format(Object adress, StringBuffer buffer, FieldPosition pos) {
        buffer =  format((Adress)adress, buffer);
        pos.setEndIndex(buffer.length());
        return buffer;
    }
    
    public abstract StringBuffer format(Adress adress, StringBuffer buffer);

    
    public Object parseObject(String arg0, ParsePosition arg1) {
        throw new UnsupportedOperationException("Adress parsing is not supported");
    }

}
