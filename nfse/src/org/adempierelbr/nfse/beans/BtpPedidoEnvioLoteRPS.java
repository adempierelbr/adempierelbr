package org.adempierelbr.nfse.beans;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;


/**
 * 	
 * 
 * 
 * 			APAGAR
 * 
 * 
 * 
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: BtpPedidoEnvioRPS.java, v1.0 2013/06/25 7:27:52 PM, ralexsander Exp $
 */
@XStreamAlias ("PedidoEnvioLoteRPS")
public class BtpPedidoEnvioLoteRPS
{	
	@XStreamAsAttribute
	@XStreamAlias ("xmlns:xsi")
	final String xmlns_xsi="http://www.w3.org/2001/XMLSchema-instance";
	
	@XStreamAsAttribute
	@XStreamAlias ("xmlns:xsd")
	final String xmlns_xsd="http://www.w3.org/2001/XMLSchema";
	
	@XStreamAsAttribute
	final String xmlns="http://www.prefeitura.sp.gov.br/nfe";
	
	BtpHeader Cabecalho;
	BtpRPS RPS;
	
	public BtpHeader getCabecalho()
	{
		return Cabecalho;
	}
	public void setCabecalho(BtpHeader cabecalho)
	{
		Cabecalho = cabecalho;
	}
	public BtpRPS getRPS()
	{
		return RPS;
	}
	public void setRPS(BtpRPS rPS)
	{
		RPS = rPS;
	}
}	//	BtpPedidoEnvioRPS
