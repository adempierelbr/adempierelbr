/**
 * NfeConsultaSoap.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package br.sp.h.inf.portalfiscal.www.nfe.wsdl.NfeConsulta;

public interface NfeConsultaSoap extends java.rmi.Remote {

    /**
     * Consulta situação atual da NF-e
     */
    public java.lang.String nfeConsultaNF(java.lang.String nfeCabecMsg, java.lang.String nfeDadosMsg) throws java.rmi.RemoteException;
}
