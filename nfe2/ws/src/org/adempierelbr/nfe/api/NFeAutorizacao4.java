

/**
 * NFeAutorizacao4.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:33:49 IST)
 */

    package org.adempierelbr.nfe.api;

    /*
     *  NFeAutorizacao4 java interface
     */

    public interface NFeAutorizacao4 {
          

        /**
          * Auto generated method signature
          * Transmissão de Lote de NF-e
                    * @param nfeDadosMsg
                
         */

         
                     public org.apache.axiom.om.OMElement nfeAutorizacaoLote(

                        org.apache.axiom.om.OMElement extraElement)
                        throws java.rmi.RemoteException
             ;

        

        /**
          * Auto generated method signature
          * Transmissão de Lote de NF-e compactado
                    * @param nfeDadosMsgZip
                
         */

         
                     public org.apache.axiom.om.OMElement nfeAutorizacaoLoteZip(

                        java.lang.String nfeDadosMsgZip1)
                        throws java.rmi.RemoteException
             ;

        

        
       //
       }
    