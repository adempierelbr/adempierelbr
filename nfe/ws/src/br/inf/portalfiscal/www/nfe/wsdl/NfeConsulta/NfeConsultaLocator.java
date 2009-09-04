/**
 * NfeConsultaLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package br.inf.portalfiscal.www.nfe.wsdl.NfeConsulta;

public class NfeConsultaLocator extends org.apache.axis.client.Service implements br.inf.portalfiscal.www.nfe.wsdl.NfeConsulta.NfeConsulta {

/**
 * Serviço destinado ao atendimento de solicitações de consulta da
 * situação atual da NF-e na Base de Dados do Portal sa Secretaria de
 * Fazenda Estatual.
 */

    public NfeConsultaLocator() {
    }

    public final String PRODUCAO 	= "1";
    public final String HOMOLOGACAO = "2";
    //
    private static String ambiente 		= "2";
    
    public NfeConsultaLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public NfeConsultaLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for NfeConsultaSoap
    private java.lang.String NfeConsultaSoap_address = ambiente.equals(PRODUCAO) 	?
    	"https://nfe.fazenda.sp.gov.br/nfeWEB/services/NfeConsulta.asmx"			:
    	"https://homologacao.nfe.fazenda.sp.gov.br/nfeWEB/services/NfeConsulta.asmx";

    public java.lang.String getNfeConsultaSoapAddress() {
        return NfeConsultaSoap_address;
    }
    
    public void setNfeConsultaSoapAddress() {
    	NfeConsultaSoap_address = ambiente.equals(PRODUCAO) 	?
	    	"https://nfe.fazenda.sp.gov.br/nfeWEB/services/NfeConsulta.asmx"			:
	    	"https://homologacao.nfe.fazenda.sp.gov.br/nfeWEB/services/NfeConsulta.asmx";
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String NfeConsultaSoapWSDDServiceName = "NfeConsultaSoap";

    public java.lang.String getNfeConsultaSoapWSDDServiceName() {
        return NfeConsultaSoapWSDDServiceName;
    }

    public void setNfeConsultaSoapWSDDServiceName(java.lang.String name) {
        NfeConsultaSoapWSDDServiceName = name;
    }

    public br.inf.portalfiscal.www.nfe.wsdl.NfeConsulta.NfeConsultaSoap getNfeConsultaSoap() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(NfeConsultaSoap_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getNfeConsultaSoap(endpoint);
    }

    public br.inf.portalfiscal.www.nfe.wsdl.NfeConsulta.NfeConsultaSoap getNfeConsultaSoap(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            br.inf.portalfiscal.www.nfe.wsdl.NfeConsulta.NfeConsultaSoapStub _stub = new br.inf.portalfiscal.www.nfe.wsdl.NfeConsulta.NfeConsultaSoapStub(portAddress, this);
            _stub.setPortName(getNfeConsultaSoapWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setNfeConsultaSoapEndpointAddress(java.lang.String address) {
        NfeConsultaSoap_address = address;
    }


    // Use to get a proxy class for NfeConsultaSoap12
    private java.lang.String NfeConsultaSoap12_address = ambiente.equals(PRODUCAO) 	?
        	"https://nfe.fazenda.sp.gov.br/nfeWEB/services/NfeConsulta.asmx"			:
            "https://homologacao.nfe.fazenda.sp.gov.br/nfeWEB/services/NfeConsulta.asmx";

    public java.lang.String getNfeConsultaSoap12Address() {
        return NfeConsultaSoap12_address;
    }
    
    public void setNfeConsultaSoap12Address() {
    	NfeConsultaSoap12_address = ambiente.equals(PRODUCAO) 	?
            	"https://nfe.fazenda.sp.gov.br/nfeWEB/services/NfeConsulta.asmx"			:
                "https://homologacao.nfe.fazenda.sp.gov.br/nfeWEB/services/NfeConsulta.asmx";
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String NfeConsultaSoap12WSDDServiceName = "NfeConsultaSoap12";

    public java.lang.String getNfeConsultaSoap12WSDDServiceName() {
        return NfeConsultaSoap12WSDDServiceName;
    }

    public void setNfeConsultaSoap12WSDDServiceName(java.lang.String name) {
        NfeConsultaSoap12WSDDServiceName = name;
    }

    public br.inf.portalfiscal.www.nfe.wsdl.NfeConsulta.NfeConsultaSoap getNfeConsultaSoap12() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(NfeConsultaSoap12_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getNfeConsultaSoap12(endpoint);
    }

    public br.inf.portalfiscal.www.nfe.wsdl.NfeConsulta.NfeConsultaSoap getNfeConsultaSoap12(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            br.inf.portalfiscal.www.nfe.wsdl.NfeConsulta.NfeConsultaSoap12Stub _stub = new br.inf.portalfiscal.www.nfe.wsdl.NfeConsulta.NfeConsultaSoap12Stub(portAddress, this);
            _stub.setPortName(getNfeConsultaSoap12WSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setNfeConsultaSoap12EndpointAddress(java.lang.String address) {
        NfeConsultaSoap12_address = address;
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
            if (br.inf.portalfiscal.www.nfe.wsdl.NfeConsulta.NfeConsultaSoap.class.isAssignableFrom(serviceEndpointInterface)) {
                br.inf.portalfiscal.www.nfe.wsdl.NfeConsulta.NfeConsultaSoapStub _stub = new br.inf.portalfiscal.www.nfe.wsdl.NfeConsulta.NfeConsultaSoapStub(new java.net.URL(NfeConsultaSoap_address), this);
                _stub.setPortName(getNfeConsultaSoapWSDDServiceName());
                return _stub;
            }
            if (br.inf.portalfiscal.www.nfe.wsdl.NfeConsulta.NfeConsultaSoap.class.isAssignableFrom(serviceEndpointInterface)) {
                br.inf.portalfiscal.www.nfe.wsdl.NfeConsulta.NfeConsultaSoap12Stub _stub = new br.inf.portalfiscal.www.nfe.wsdl.NfeConsulta.NfeConsultaSoap12Stub(new java.net.URL(NfeConsultaSoap12_address), this);
                _stub.setPortName(getNfeConsultaSoap12WSDDServiceName());
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
        if ("NfeConsultaSoap".equals(inputPortName)) {
            return getNfeConsultaSoap();
        }
        else if ("NfeConsultaSoap12".equals(inputPortName)) {
            return getNfeConsultaSoap12();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://www.portalfiscal.inf.br/nfe/wsdl/NfeConsulta", "NfeConsulta");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://www.portalfiscal.inf.br/nfe/wsdl/NfeConsulta", "NfeConsultaSoap"));
            ports.add(new javax.xml.namespace.QName("http://www.portalfiscal.inf.br/nfe/wsdl/NfeConsulta", "NfeConsultaSoap12"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("NfeConsultaSoap".equals(portName)) {
            setNfeConsultaSoapEndpointAddress(address);
        }
        else 
if ("NfeConsultaSoap12".equals(portName)) {
            setNfeConsultaSoap12EndpointAddress(address);
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
