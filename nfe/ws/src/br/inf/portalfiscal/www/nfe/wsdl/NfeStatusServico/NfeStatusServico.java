/**
 * NfeStatusServico.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package br.inf.portalfiscal.www.nfe.wsdl.NfeStatusServico;

public interface NfeStatusServico extends javax.xml.rpc.Service {

/**
 * Serviço destinado à consulta do status do serviçoprestado pelo
 * Portal da Secretaria de Fazenda
 */
    public java.lang.String getNfeStatusServicoSoap12Address();

    public br.inf.portalfiscal.www.nfe.wsdl.NfeStatusServico.NfeStatusServicoSoap getNfeStatusServicoSoap12() throws javax.xml.rpc.ServiceException;

    public br.inf.portalfiscal.www.nfe.wsdl.NfeStatusServico.NfeStatusServicoSoap getNfeStatusServicoSoap12(java.net.URL portAddress) throws javax.xml.rpc.ServiceException;
    public java.lang.String getNfeStatusServicoSoapAddress();

    public br.inf.portalfiscal.www.nfe.wsdl.NfeStatusServico.NfeStatusServicoSoap getNfeStatusServicoSoap() throws javax.xml.rpc.ServiceException;

    public br.inf.portalfiscal.www.nfe.wsdl.NfeStatusServico.NfeStatusServicoSoap getNfeStatusServicoSoap(java.net.URL portAddress) throws javax.xml.rpc.ServiceException;
}
