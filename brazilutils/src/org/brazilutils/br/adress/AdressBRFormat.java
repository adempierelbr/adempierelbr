/*
 * Created on 2007/03/03
 *
 */
package org.brazilutils.br.adress;


public class AdressBRFormat extends AdressFormat{


    public StringBuffer format(Adress adress, StringBuffer buffer) {
        AdressBR br = (AdressBR)adress;
        
        buffer.append(br.getLogradouro().toString()).append(" ")
        .append(br.getNumero()).append(" ").append( br.getComplemento())
        .append("\n")
        .append(br.getBairro()).append(" ")
        .append(br.getCidade()).append(br.getUF().getShortCode())
        .append("CEP ").append(br.getPostalCode().toString());
        
        return buffer;
    }

}
