
/**
 * LoteNFe.java This file was auto-generated from WSDL by the Apache Axis2
 * version: 1.6.2 Built on : Apr 17, 2012 (05:33:49 IST)
 */

package org.adempierelbr.nfse.sp.api;

/*
 * LoteNFe java interface
 */

public interface LoteNFe
{

	/**
	 * Auto generated method signature
	 * 
	 * @param envioRPSRequest
	 */

	public java.lang.String envioRPS(

	int versaoSchema, java.lang.String mensagemXML) throws java.rmi.RemoteException;

	/**
	 * Auto generated method signature
	 * 
	 * @param consultaCNPJRequest
	 */

	public java.lang.String consultaCNPJ(

	int versaoSchema0, java.lang.String mensagemXML1)
			throws java.rmi.RemoteException;

	/**
	 * Auto generated method signature
	 * 
	 * @param consultaInformacoesLoteRequest
	 */

	public java.lang.String consultaInformacoesLote(

	int versaoSchema3, java.lang.String mensagemXML4)
			throws java.rmi.RemoteException;

	/**
	 * Auto generated method signature
	 * 
	 * @param consultaNFeEmitidasRequest
	 */

	public java.lang.String consultaNFeEmitidas(

	int versaoSchema6, java.lang.String mensagemXML7)
			throws java.rmi.RemoteException;

	/**
	 * Auto generated method signature
	 * 
	 * @param consultaNFeRequest
	 */

	public java.lang.String consultaNFe(

	int versaoSchema9, java.lang.String mensagemXML10)
			throws java.rmi.RemoteException;

	/**
	 * Auto generated method signature
	 * 
	 * @param cancelamentoNFeRequest
	 */

	public java.lang.String cancelamentoNFe(

	int versaoSchema12, java.lang.String mensagemXML13)
			throws java.rmi.RemoteException;

	/**
	 * Auto generated method signature
	 * 
	 * @param testeEnvioLoteRPSRequest
	 */

	public java.lang.String testeEnvioLoteRPS(

	int versaoSchema15, java.lang.String mensagemXML16)
			throws java.rmi.RemoteException;

	/**
	 * Auto generated method signature
	 * 
	 * @param consultaLoteRequest
	 */

	public java.lang.String consultaLote(

	int versaoSchema18, java.lang.String mensagemXML19)
			throws java.rmi.RemoteException;

	/**
	 * Auto generated method signature
	 * 
	 * @param consultaNFeRecebidasRequest
	 */

	public java.lang.String consultaNFeRecebidas(

	int versaoSchema21, java.lang.String mensagemXML22)
			throws java.rmi.RemoteException;

	/**
	 * Auto generated method signature
	 * 
	 * @param envioLoteRPSRequest
	 */

	public java.lang.String envioLoteRPS(

	int versaoSchema24, java.lang.String mensagemXML25)
			throws java.rmi.RemoteException;

	//
}
