/**
 * NfeRecepcaoLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package br.sp.h.inf.portalfiscal.www.nfe.wsdl.NfeRecepcao;

public class NfeRecepcaoLocator extends org.apache.axis.client.Service implements br.sp.h.inf.portalfiscal.www.nfe.wsdl.NfeRecepcao.NfeRecepcao {

/**
 * Serviço destinado à recepção de mensagens de lote de NF-e
 */

    public NfeRecepcaoLocator() {
    }


    public NfeRecepcaoLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public NfeRecepcaoLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for NfeRecepcaoSoap
    private java.lang.String NfeRecepcaoSoap_address = "https://homologacao.nfe.fazenda.sp.gov.br/nfeWEB/services/NfeRecepcao.asmx";

    public java.lang.String getNfeRecepcaoSoapAddress() {
        return NfeRecepcaoSoap_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String NfeRecepcaoSoapWSDDServiceName = "NfeRecepcaoSoap";

    public java.lang.String getNfeRecepcaoSoapWSDDServiceName() {
        return NfeRecepcaoSoapWSDDServiceName;
    }

    public void setNfeRecepcaoSoapWSDDServiceName(java.lang.String name) {
        NfeRecepcaoSoapWSDDServiceName = name;
    }

    public br.sp.h.inf.portalfiscal.www.nfe.wsdl.NfeRecepcao.NfeRecepcaoSoap getNfeRecepcaoSoap() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(NfeRecepcaoSoap_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getNfeRecepcaoSoap(endpoint);
    }

    public br.sp.h.inf.portalfiscal.www.nfe.wsdl.NfeRecepcao.NfeRecepcaoSoap getNfeRecepcaoSoap(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            br.sp.h.inf.portalfiscal.www.nfe.wsdl.NfeRecepcao.NfeRecepcaoSoapStub _stub = new br.sp.h.inf.portalfiscal.www.nfe.wsdl.NfeRecepcao.NfeRecepcaoSoapStub(portAddress, this);
            _stub.setPortName(getNfeRecepcaoSoapWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setNfeRecepcaoSoapEndpointAddress(java.lang.String address) {
        NfeRecepcaoSoap_address = address;
    }


    // Use to get a proxy class for NfeRecepcaoSoap12
    private java.lang.String NfeRecepcaoSoap12_address = "https://homologacao.nfe.fazenda.sp.gov.br/nfeWEB/services/NfeRecepcao.asmx";

    public java.lang.String getNfeRecepcaoSoap12Address() {
        return NfeRecepcaoSoap12_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String NfeRecepcaoSoap12WSDDServiceName = "NfeRecepcaoSoap12";

    public java.lang.String getNfeRecepcaoSoap12WSDDServiceName() {
        return NfeRecepcaoSoap12WSDDServiceName;
    }

    public void setNfeRecepcaoSoap12WSDDServiceName(java.lang.String name) {
        NfeRecepcaoSoap12WSDDServiceName = name;
    }

    public br.sp.h.inf.portalfiscal.www.nfe.wsdl.NfeRecepcao.NfeRecepcaoSoap getNfeRecepcaoSoap12() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(NfeRecepcaoSoap12_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getNfeRecepcaoSoap12(endpoint);
    }

    public br.sp.h.inf.portalfiscal.www.nfe.wsdl.NfeRecepcao.NfeRecepcaoSoap getNfeRecepcaoSoap12(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            br.sp.h.inf.portalfiscal.www.nfe.wsdl.NfeRecepcao.NfeRecepcaoSoap12Stub _stub = new br.sp.h.inf.portalfiscal.www.nfe.wsdl.NfeRecepcao.NfeRecepcaoSoap12Stub(portAddress, this);
            _stub.setPortName(getNfeRecepcaoSoap12WSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setNfeRecepcaoSoap12EndpointAddress(java.lang.String address) {
        NfeRecepcaoSoap12_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     * This service has multiple ports for a given interface;
     * the proxy implementation returned may be indeterminate.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (br.sp.h.inf.portalfiscal.www.nfe.wsdl.NfeRecepcao.NfeRecepcaoSoap.class.isAssignableFrom(serviceEndpointInterface)) {
                br.sp.h.inf.portalfiscal.www.nfe.wsdl.NfeRecepcao.NfeRecepcaoSoapStub _stub = new br.sp.h.inf.portalfiscal.www.nfe.wsdl.NfeRecepcao.NfeRecepcaoSoapStub(new java.net.URL(NfeRecepcaoSoap_address), this);
                _stub.setPortName(getNfeRecepcaoSoapWSDDServiceName());
                return _stub;
            }
            if (br.sp.h.inf.portalfiscal.www.nfe.wsdl.NfeRecepcao.NfeRecepcaoSoap.class.isAssignableFrom(serviceEndpointInterface)) {
                br.sp.h.inf.portalfiscal.www.nfe.wsdl.NfeRecepcao.NfeRecepcaoSoap12Stub _stub = new br.sp.h.inf.portalfiscal.www.nfe.wsdl.NfeRecepcao.NfeRecepcaoSoap12Stub(new java.net.URL(NfeRecepcaoSoap12_address), this);
                _stub.setPortName(getNfeRecepcaoSoap12WSDDServiceName());
                return _stub;
            }
        }
        catch (java.lang.Throwable t) {
            throw new javax.xml.rpc.ServiceException(t);
        }
        throw new javax.xml.rpc.ServiceException("There is no stub implementation for the interface:  " + (serviceEndpointInterface == null ? "null" : serviceEndpointInterface.getName()));
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(javax.xml.namespace.QName portName, Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        if (portName == null) {
            return getPort(serviceEndpointInterface);
        }
        java.lang.String inputPortName = portName.getLocalPart();
        if ("NfeRecepcaoSoap".equals(inputPortName)) {
            return getNfeRecepcaoSoap();
        }
        else if ("NfeRecepcaoSoap12".equals(inputPortName)) {
            return getNfeRecepcaoSoap12();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://www.portalfiscal.inf.br/nfe/wsdl/NfeRecepcao", "NfeRecepcao");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://www.portalfiscal.inf.br/nfe/wsdl/NfeRecepcao", "NfeRecepcaoSoap"));
            ports.add(new javax.xml.namespace.QName("http://www.portalfiscal.inf.br/nfe/wsdl/NfeRecepcao", "NfeRecepcaoSoap12"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("NfeRecepcaoSoap".equals(portName)) {
            setNfeRecepcaoSoapEndpointAddress(address);
        }
        else 
if ("NfeRecepcaoSoap12".equals(portName)) {
            setNfeRecepcaoSoap12EndpointAddress(address);
        }
        else 
{ // Unknown Port Name
            throw new javax.xml.rpc.ServiceException(" Cannot set Endpoint Address for Unknown Port" + portName);
        }
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(javax.xml.namespace.QName portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        setEndpointAddress(portName.getLocalPart(), address);
    }

}
