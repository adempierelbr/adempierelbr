/**
 * NfeRetRecepcao.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package br.inf.portalfiscal.www.nfe.wsdl.NfeRetRecepcao;

public interface NfeRetRecepcao extends javax.xml.rpc.Service {

/**
 * Serviço destinado a retornar o resultado do processamento do lote
 * de NF-e
 */
    public java.lang.String getNfeRetRecepcaoSoapAddress();

    public br.inf.portalfiscal.www.nfe.wsdl.NfeRetRecepcao.NfeRetRecepcaoSoap getNfeRetRecepcaoSoap() throws javax.xml.rpc.ServiceException;

    public br.inf.portalfiscal.www.nfe.wsdl.NfeRetRecepcao.NfeRetRecepcaoSoap getNfeRetRecepcaoSoap(java.net.URL portAddress) throws javax.xml.rpc.ServiceException;
    public java.lang.String getNfeRetRecepcaoSoap12Address();

    public br.inf.portalfiscal.www.nfe.wsdl.NfeRetRecepcao.NfeRetRecepcaoSoap getNfeRetRecepcaoSoap12() throws javax.xml.rpc.ServiceException;

    public br.inf.portalfiscal.www.nfe.wsdl.NfeRetRecepcao.NfeRetRecepcaoSoap getNfeRetRecepcaoSoap12(java.net.URL portAddress) throws javax.xml.rpc.ServiceException;
}
