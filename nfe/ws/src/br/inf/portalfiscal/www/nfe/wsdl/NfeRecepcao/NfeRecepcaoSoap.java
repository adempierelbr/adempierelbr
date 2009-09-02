/**
 * NfeRecepcaoSoap.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package br.inf.portalfiscal.www.nfe.wsdl.NfeRecepcao;

public interface NfeRecepcaoSoap extends java.rmi.Remote {

    /**
     * Transmissão de Lote de NF-e
     */
    public java.lang.String nfeRecepcaoLote(java.lang.String nfeCabecMsg, java.lang.String nfeDadosMsg) throws java.rmi.RemoteException;
}
