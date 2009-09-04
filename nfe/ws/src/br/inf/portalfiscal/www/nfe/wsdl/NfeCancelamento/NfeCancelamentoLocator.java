/**
 * NfeCancelamentoLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package br.inf.portalfiscal.www.nfe.wsdl.NfeCancelamento;

public class NfeCancelamentoLocator extends org.apache.axis.client.Service implements br.inf.portalfiscal.www.nfe.wsdl.NfeCancelamento.NfeCancelamento {

/**
 * Serviço destinado ao atendimento de solicitações de cancelamento
 * de notas fiscais eletrônicas
 */

    public NfeCancelamentoLocator() {
    }

    public final String PRODUCAO 	= "1";
    public final String HOMOLOGACAO = "2";
    //
    public static String ambiente 		= "2";

    public NfeCancelamentoLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public NfeCancelamentoLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for NfeCancelamentoSoap
    private java.lang.String NfeCancelamentoSoap_address = ambiente.equals(PRODUCAO) 		?
    		"https://nfe.fazenda.sp.gov.br/nfeWEB/services/NfeCancelamento.asmx" 			:
    		"https://homologacao.nfe.fazenda.sp.gov.br/nfeWEB/services/NfeCancelamento.asmx";

    public java.lang.String getNfeCancelamentoSoapAddress() {
        return NfeCancelamentoSoap_address;
    }
    
    public void setNfeCancelamentoSoapAddress() {
    	NfeCancelamentoSoap_address = ambiente.equals(PRODUCAO) 		?
    		"https://nfe.fazenda.sp.gov.br/nfeWEB/services/NfeCancelamento.asmx" 			:
    		"https://homologacao.nfe.fazenda.sp.gov.br/nfeWEB/services/NfeCancelamento.asmx";
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String NfeCancelamentoSoapWSDDServiceName = "NfeCancelamentoSoap";

    public java.lang.String getNfeCancelamentoSoapWSDDServiceName() {
        return NfeCancelamentoSoapWSDDServiceName;
    }

    public void setNfeCancelamentoSoapWSDDServiceName(java.lang.String name) {
        NfeCancelamentoSoapWSDDServiceName = name;
    }

    public br.inf.portalfiscal.www.nfe.wsdl.NfeCancelamento.NfeCancelamentoSoap getNfeCancelamentoSoap() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(NfeCancelamentoSoap_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getNfeCancelamentoSoap(endpoint);
    }

    public br.inf.portalfiscal.www.nfe.wsdl.NfeCancelamento.NfeCancelamentoSoap getNfeCancelamentoSoap(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            br.inf.portalfiscal.www.nfe.wsdl.NfeCancelamento.NfeCancelamentoSoapStub _stub = new br.inf.portalfiscal.www.nfe.wsdl.NfeCancelamento.NfeCancelamentoSoapStub(portAddress, this);
            _stub.setPortName(getNfeCancelamentoSoapWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setNfeCancelamentoSoapEndpointAddress(java.lang.String address) {
        NfeCancelamentoSoap_address = address;
    }


    // Use to get a proxy class for NfeCancelamentoSoap12
    private java.lang.String NfeCancelamentoSoap12_address = ambiente.equals(PRODUCAO) 		?
    		"https://nfe.fazenda.sp.gov.br/nfeWEB/services/NfeCancelamento.asmx" 			:
        	"https://homologacao.nfe.fazenda.sp.gov.br/nfeWEB/services/NfeCancelamento.asmx";

    public java.lang.String getNfeCancelamentoSoap12Address() {
        return NfeCancelamentoSoap12_address;
    }
    
    public void setNfeCancelamentoSoap12Address() {
    	 NfeCancelamentoSoap12_address = ambiente.equals(PRODUCAO) 		?
    		"https://nfe.fazenda.sp.gov.br/nfeWEB/services/NfeCancelamento.asmx" 			:
        	"https://homologacao.nfe.fazenda.sp.gov.br/nfeWEB/services/NfeCancelamento.asmx";
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String NfeCancelamentoSoap12WSDDServiceName = "NfeCancelamentoSoap12";

    public java.lang.String getNfeCancelamentoSoap12WSDDServiceName() {
        return NfeCancelamentoSoap12WSDDServiceName;
    }

    public void setNfeCancelamentoSoap12WSDDServiceName(java.lang.String name) {
        NfeCancelamentoSoap12WSDDServiceName = name;
    }

    public br.inf.portalfiscal.www.nfe.wsdl.NfeCancelamento.NfeCancelamentoSoap getNfeCancelamentoSoap12() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(NfeCancelamentoSoap12_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getNfeCancelamentoSoap12(endpoint);
    }

    public br.inf.portalfiscal.www.nfe.wsdl.NfeCancelamento.NfeCancelamentoSoap getNfeCancelamentoSoap12(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            br.inf.portalfiscal.www.nfe.wsdl.NfeCancelamento.NfeCancelamentoSoap12Stub _stub = new br.inf.portalfiscal.www.nfe.wsdl.NfeCancelamento.NfeCancelamentoSoap12Stub(portAddress, this);
            _stub.setPortName(getNfeCancelamentoSoap12WSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setNfeCancelamentoSoap12EndpointAddress(java.lang.String address) {
        NfeCancelamentoSoap12_address = address;
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
            if (br.inf.portalfiscal.www.nfe.wsdl.NfeCancelamento.NfeCancelamentoSoap.class.isAssignableFrom(serviceEndpointInterface)) {
                br.inf.portalfiscal.www.nfe.wsdl.NfeCancelamento.NfeCancelamentoSoapStub _stub = new br.inf.portalfiscal.www.nfe.wsdl.NfeCancelamento.NfeCancelamentoSoapStub(new java.net.URL(NfeCancelamentoSoap_address), this);
                _stub.setPortName(getNfeCancelamentoSoapWSDDServiceName());
                return _stub;
            }
            if (br.inf.portalfiscal.www.nfe.wsdl.NfeCancelamento.NfeCancelamentoSoap.class.isAssignableFrom(serviceEndpointInterface)) {
                br.inf.portalfiscal.www.nfe.wsdl.NfeCancelamento.NfeCancelamentoSoap12Stub _stub = new br.inf.portalfiscal.www.nfe.wsdl.NfeCancelamento.NfeCancelamentoSoap12Stub(new java.net.URL(NfeCancelamentoSoap12_address), this);
                _stub.setPortName(getNfeCancelamentoSoap12WSDDServiceName());
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
        if ("NfeCancelamentoSoap".equals(inputPortName)) {
            return getNfeCancelamentoSoap();
        }
        else if ("NfeCancelamentoSoap12".equals(inputPortName)) {
            return getNfeCancelamentoSoap12();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://www.portalfiscal.inf.br/nfe/wsdl/NfeCancelamento", "NfeCancelamento");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://www.portalfiscal.inf.br/nfe/wsdl/NfeCancelamento", "NfeCancelamentoSoap"));
            ports.add(new javax.xml.namespace.QName("http://www.portalfiscal.inf.br/nfe/wsdl/NfeCancelamento", "NfeCancelamentoSoap12"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("NfeCancelamentoSoap".equals(portName)) {
            setNfeCancelamentoSoapEndpointAddress(address);
        }
        else 
if ("NfeCancelamentoSoap12".equals(portName)) {
            setNfeCancelamentoSoap12EndpointAddress(address);
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
