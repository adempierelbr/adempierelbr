/**
 * NfeRecepcao.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package br.inf.portalfiscal.www.nfe.wsdl.NfeRecepcao;

public interface NfeRecepcao extends javax.xml.rpc.Service {

/**
 * Serviço destinado à recepção de mensagens de lote de NF-e
 */
    public java.lang.String getNfeRecepcaoSoapAddress();

    public br.inf.portalfiscal.www.nfe.wsdl.NfeRecepcao.NfeRecepcaoSoap getNfeRecepcaoSoap() throws javax.xml.rpc.ServiceException;

    public br.inf.portalfiscal.www.nfe.wsdl.NfeRecepcao.NfeRecepcaoSoap getNfeRecepcaoSoap(java.net.URL portAddress) throws javax.xml.rpc.ServiceException;
    public java.lang.String getNfeRecepcaoSoap12Address();

    public br.inf.portalfiscal.www.nfe.wsdl.NfeRecepcao.NfeRecepcaoSoap getNfeRecepcaoSoap12() throws javax.xml.rpc.ServiceException;

    public br.inf.portalfiscal.www.nfe.wsdl.NfeRecepcao.NfeRecepcaoSoap getNfeRecepcaoSoap12(java.net.URL portAddress) throws javax.xml.rpc.ServiceException;
}
