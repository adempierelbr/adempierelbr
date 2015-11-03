
/**
 * ExtensionMapper.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.6.2  Built on : Apr 17, 2012 (05:34:40 IST)
 */

        
            package br.inf.portalfiscal.www.nfe.wsdl.nfedistribuicaodfe;
        
            /**
            *  ExtensionMapper class
            */
            @SuppressWarnings({"unchecked","unused"})
        
        public  class ExtensionMapper{

          public static java.lang.Object getTypeObject(java.lang.String namespaceURI,
                                                       java.lang.String typeName,
                                                       javax.xml.stream.XMLStreamReader reader) throws java.lang.Exception{

              
                  if (
                  "http://www.portalfiscal.inf.br/nfe/wsdl/NFeDistribuicaoDFe".equals(namespaceURI) &&
                  "nfeDadosMsg_type0".equals(typeName)){
                   
                            return  br.inf.portalfiscal.www.nfe.wsdl.nfedistribuicaodfe.NfeDadosMsg_type0.Factory.parse(reader);
                        

                  }

              
                  if (
                  "http://www.portalfiscal.inf.br/nfe/wsdl/NFeDistribuicaoDFe".equals(namespaceURI) &&
                  "nfeDistDFeInteresseResult_type0".equals(typeName)){
                   
                            return  br.inf.portalfiscal.www.nfe.wsdl.nfedistribuicaodfe.NfeDistDFeInteresseResult_type0.Factory.parse(reader);
                        

                  }

              
             throw new org.apache.axis2.databinding.ADBException("Unsupported type " + namespaceURI + " " + typeName);
          }

        }
    