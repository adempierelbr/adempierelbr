/**
 * NfeInutilizacao.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package br.inf.portalfiscal.www.nfe.wsdl.NfeInutilizacao;

public interface NfeInutilizacao extends javax.xml.rpc.Service {

/**
 * Serviço destinado ao atendimento de solicitações de inutilização
 * de numeração.
 */
    public java.lang.String getNfeInutilizacaoSoap12Address();

    public br.inf.portalfiscal.www.nfe.wsdl.NfeInutilizacao.NfeInutilizacaoSoap getNfeInutilizacaoSoap12() throws javax.xml.rpc.ServiceException;

    public br.inf.portalfiscal.www.nfe.wsdl.NfeInutilizacao.NfeInutilizacaoSoap getNfeInutilizacaoSoap12(java.net.URL portAddress) throws javax.xml.rpc.ServiceException;
    public java.lang.String getNfeInutilizacaoSoapAddress();

    public br.inf.portalfiscal.www.nfe.wsdl.NfeInutilizacao.NfeInutilizacaoSoap getNfeInutilizacaoSoap() throws javax.xml.rpc.ServiceException;

    public br.inf.portalfiscal.www.nfe.wsdl.NfeInutilizacao.NfeInutilizacaoSoap getNfeInutilizacaoSoap(java.net.URL portAddress) throws javax.xml.rpc.ServiceException;
}
