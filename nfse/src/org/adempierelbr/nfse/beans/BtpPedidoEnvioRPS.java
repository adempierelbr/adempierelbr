package org.adempierelbr.nfse.beans;

import java.util.ArrayList;
import java.util.List;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
import com.thoughtworks.xstream.annotations.XStreamImplicit;


/**
 * 	
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: BtpPedidoEnvioRPS.java, v1.0 2013/06/25 7:27:52 PM, ralexsander Exp $
 */
public class BtpPedidoEnvioRPS
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
	
	@XStreamImplicit
	List<BtpRPS> RPS = new ArrayList<BtpRPS>();
	
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
		if (RPS.size() > 0)
			return RPS.get(0);
		return null;
	}
	public void setRPS(BtpRPS pRPS)
	{
		RPS = new ArrayList<BtpRPS>();
		RPS.add (pRPS);
	}
	public void addRPS(BtpRPS pRPS)
	{
		RPS.add (pRPS);
	}
}	//	BtpPedidoEnvioRPS
