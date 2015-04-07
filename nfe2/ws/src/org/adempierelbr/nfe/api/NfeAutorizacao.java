

/**
 * NfeAutorizacao.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:33:49 IST)
 */

    package org.adempierelbr.nfe.api;

    /*
     *  NfeAutorizacao java interface
     */

    public interface NfeAutorizacao {
          

        /**
          * Auto generated method signature
          * Transmissão de Lote de NF-e compactado
                    * @param nfeDadosMsgZip
                
                    * @param nfeCabecMsg
                
         */

         
                     public org.apache.axiom.om.OMElement nfeAutorizacaoLoteZip(

                        java.lang.String nfeDadosMsgZip0,br.inf.portalfiscal.www.nfe.wsdl.nfeautorizacao.NfeCabecMsgE nfeCabecMsg)
                        throws java.rmi.RemoteException
             ;

        

        /**
          * Auto generated method signature
          * Transmissão de Lote de NF-e
                    * @param nfeDadosMsg
                
                    * @param nfeCabecMsg2
                
         */

         
                     public org.apache.axiom.om.OMElement nfeAutorizacaoLote(

                        org.apache.axiom.om.OMElement extraElement1,br.inf.portalfiscal.www.nfe.wsdl.nfeautorizacao.NfeCabecMsgE nfeCabecMsg2)
                        throws java.rmi.RemoteException
             ;

        

        
       //
       }
    