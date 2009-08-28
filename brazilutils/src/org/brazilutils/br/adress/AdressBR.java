/*
 * Created on 2007/03/03
 *
 */
package org.brazilutils.br.adress;

import org.brazilutils.br.uf.UF;
import org.brazilutils.territory.Country;

public class AdressBR extends AbstractAdress{

    public AdressBR() {
        super(Country.getInstance("BR"));
    }

    protected CountryPart buildAdressStructure(Country country) {
        SimpleCountryPart p = new AbstractAdress.SimpleCountryPart(country);

        p.add("uf")
        .add("cidade")
        .add("bairro")
        .add("logradouro")
        .add("numero")
        .add("complemento");

        return p;
    }

    public AdressBR setUF(UF uf){
        this.getPart("uf").setContent(uf);
        return this;
    }
    public UF getUF(){
        return (UF)this.getPart("uf").getContent();
    }

    public AdressBR setLogradouro(String logradouro){
        this.getPart("logradouro").setContent(logradouro);
        return this;
    }
    public String getLogradouro(){
        return (String)this.getPart("logradouro").getContent();
    }

    public AdressBR setBairro(String bairro){
        this.getPart("bairro").setContent(bairro);
        return this;
    }
    public String getBairro(){
        return (String)this.getPart("bairro").getContent();
    }

    public AdressBR setCidade(String cidade){
        this.getPart("cidade").setContent(cidade);
        return this;
    }

    public String getCidade(){
        return (String)this.getPart("cidade").getContent();
    }


    public AdressBR setComplemento(String complemento){
        this.getPart("complemento").setContent(complemento);
        return this;
    }
    public String getComplemento(){
        return (String)this.getPart("complemento").getContent();
    }

    public AdressBR setNumero(String numero){
        this.getPart("numero").setContent(numero);
        return this;
    }
    public String getNumero(){
        return (String)this.getPart("numero").getContent();
    }






}
