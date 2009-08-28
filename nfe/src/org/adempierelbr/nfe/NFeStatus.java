package org.adempierelbr.nfe;

import java.security.Security;

import br.sp.h.inf.portalfiscal.www.nfe.wsdl.NfeStatusServico.NfeStatusServico;
import br.sp.h.inf.portalfiscal.www.nfe.wsdl.NfeStatusServico.NfeStatusServicoLocator;
import br.sp.h.inf.portalfiscal.www.nfe.wsdl.NfeStatusServico.NfeStatusServicoSoap;

public class NFeStatus
{
	public static void main (String[] args)
	{
		String nfeCabecMsg = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
			+ "<cabecMsg xmlns=\"http://www.portalfiscal.inf.br/nfe\" "
			+ "versao=\"1.02\">" + "<versaoDados>1.07</versaoDados>"
			+ "</cabecMsg>";
		//
		String nfeDadosMsg = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
			+ "<consStatServ " + " versao=\"1.07\""
			+ " xmlns=\"http://www.portalfiscal.inf.br/nfe\">"
			+ "<tpAmb>2</tpAmb>" + "<cUF>43</cUF>"
			+ "<xServ>STATUS</xServ>" + "</consStatServ>";
		//
		System.setProperty("java.protocol.handler.pkgs", "com.sun.net.ssl.internal.www.protocol");
		Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
		//
		System.setProperty("javax.net.ssl.keyStoreType", "PKCS12");
		System.setProperty("javax.net.ssl.keyStore","/Users/ricardo/Clientes/Eltek-Brasil/Certificado/Eltek.pfx");
		System.setProperty("javax.net.ssl.keyStorePassword", "elt05843");
		//
		System.setProperty("javax.net.ssl.trustStoreType", "JKS");
		System.setProperty("javax.net.ssl.trustStore", "/Users/ricardo/Clientes/Eltek-Brasil/Certificado/nfe.keystore");
		//
		NfeStatusServico service = new NfeStatusServicoLocator();
		try 
		{
			NfeStatusServicoSoap nfeStatus = service.getNfeStatusServicoSoap();
			System.out.println(nfeStatus.nfeStatusServicoNF(nfeCabecMsg, nfeDadosMsg));
		} 
		catch (Throwable e1)
		{
			e1.printStackTrace();
		}
	}	//	main
}	//	NFeStatus