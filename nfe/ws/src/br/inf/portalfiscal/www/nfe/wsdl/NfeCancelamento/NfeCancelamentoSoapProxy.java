package br.inf.portalfiscal.www.nfe.wsdl.NfeCancelamento;

public class NfeCancelamentoSoapProxy implements br.inf.portalfiscal.www.nfe.wsdl.NfeCancelamento.NfeCancelamentoSoap {
  private String _endpoint = null;
  private br.inf.portalfiscal.www.nfe.wsdl.NfeCancelamento.NfeCancelamentoSoap nfeCancelamentoSoap = null;
  
  public NfeCancelamentoSoapProxy() {
    _initNfeCancelamentoSoapProxy();
  }
  
  public NfeCancelamentoSoapProxy(String endpoint) {
    _endpoint = endpoint;
    _initNfeCancelamentoSoapProxy();
  }
  
  private void _initNfeCancelamentoSoapProxy() {
    try {
      nfeCancelamentoSoap = (new br.inf.portalfiscal.www.nfe.wsdl.NfeCancelamento.NfeCancelamentoLocator()).getNfeCancelamentoSoap();
      if (nfeCancelamentoSoap != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)nfeCancelamentoSoap)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)nfeCancelamentoSoap)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (nfeCancelamentoSoap != null)
      ((javax.xml.rpc.Stub)nfeCancelamentoSoap)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public br.inf.portalfiscal.www.nfe.wsdl.NfeCancelamento.NfeCancelamentoSoap getNfeCancelamentoSoap() {
    if (nfeCancelamentoSoap == null)
      _initNfeCancelamentoSoapProxy();
    return nfeCancelamentoSoap;
  }
  
  public java.lang.String nfeCancelamentoNF(java.lang.String nfeCabecMsg, java.lang.String nfeDadosMsg) throws java.rmi.RemoteException{
    if (nfeCancelamentoSoap == null)
      _initNfeCancelamentoSoapProxy();
    return nfeCancelamentoSoap.nfeCancelamentoNF(nfeCabecMsg, nfeDadosMsg);
  }
  
  
}