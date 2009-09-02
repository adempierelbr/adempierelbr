package br.inf.portalfiscal.www.nfe.wsdl.CadConsultaCadastro;

public class CadConsultaCadastroSoapProxy implements br.inf.portalfiscal.www.nfe.wsdl.CadConsultaCadastro.CadConsultaCadastroSoap {
  private String _endpoint = null;
  private br.inf.portalfiscal.www.nfe.wsdl.CadConsultaCadastro.CadConsultaCadastroSoap cadConsultaCadastroSoap = null;
  
  public CadConsultaCadastroSoapProxy() {
    _initCadConsultaCadastroSoapProxy();
  }
  
  public CadConsultaCadastroSoapProxy(String endpoint) {
    _endpoint = endpoint;
    _initCadConsultaCadastroSoapProxy();
  }
  
  private void _initCadConsultaCadastroSoapProxy() {
    try {
      cadConsultaCadastroSoap = (new br.inf.portalfiscal.www.nfe.wsdl.CadConsultaCadastro.CadConsultaCadastroLocator()).getCadConsultaCadastroSoap();
      if (cadConsultaCadastroSoap != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)cadConsultaCadastroSoap)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)cadConsultaCadastroSoap)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (cadConsultaCadastroSoap != null)
      ((javax.xml.rpc.Stub)cadConsultaCadastroSoap)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public br.inf.portalfiscal.www.nfe.wsdl.CadConsultaCadastro.CadConsultaCadastroSoap getCadConsultaCadastroSoap() {
    if (cadConsultaCadastroSoap == null)
      _initCadConsultaCadastroSoapProxy();
    return cadConsultaCadastroSoap;
  }
  
  public java.lang.String consultaCadastro(java.lang.String nfeCabecMsg, java.lang.String nfeDadosMsg) throws java.rmi.RemoteException{
    if (cadConsultaCadastroSoap == null)
      _initCadConsultaCadastroSoapProxy();
    return cadConsultaCadastroSoap.consultaCadastro(nfeCabecMsg, nfeDadosMsg);
  }
  
  
}