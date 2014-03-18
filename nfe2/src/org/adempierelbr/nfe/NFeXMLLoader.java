package org.adempierelbr.nfe;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * 		NFe XML Loader
 * 
 * 	@author Rogério Alves Feitosa (Kenos, www.kenos.com.br)
 *	@version $Id: NFeXMLLoader.java, v1.0 2014/MM/DD 12:24:29, rfeitosa Exp $
 */

@XStreamAlias("nfeProc")
public class NFeXMLLoader
{
	@XStreamAlias("NFe")
	NFe nfe = new NFe();
	
	public class NFe
	{
		@XStreamAlias("infNFe")
		infNFe nfes = new infNFe();
		
		@XStreamAlias("Signature")
		Signature assinatura = new Signature();		
	}	
	
	public class infNFe 
	{ 		
		@XStreamAsAttribute
		String Id, versao;
	}
	
	public class Signature
	{		
		String SignatureValue;
	}
			
	public String getinfNFeID()
	{
		if (nfe.nfes.Id == null )
			return null;
		return nfe.nfes.Id;
	}
	
	public String getinfNFeversao()
	{
		if (nfe.nfes.versao == null )			
			return null;
		return nfe.nfes.versao;
	}
	
	
}
