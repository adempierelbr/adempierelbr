

/**
 * NfeDownloadNF.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:33:49 IST)
 */

    package org.adempierelbr.nfe.api;

    /*
     *  NfeDownloadNF java interface
     */

    public interface NfeDownloadNF {
          

        /**
          * Auto generated method signature
          * Serviço destinado ao atendimento de solicitações de download de Notas Fiscais Eletrônicas por seus destinatários.
                    * @param nfeDadosMsg
                
                    * @param nfeCabecMsg
                
         */

         
                     public org.apache.axiom.om.OMElement nfeDownloadNF(

                        org.apache.axiom.om.OMElement extraElement,br.inf.portalfiscal.www.nfe.wsdl.nfedownloadnf.NfeCabecMsgE nfeCabecMsg)
                        throws java.rmi.RemoteException
             ;

        

        
       //
       }
    