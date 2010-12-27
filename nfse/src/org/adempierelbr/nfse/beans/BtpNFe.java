package org.adempierelbr.nfse.beans;

import java.sql.Timestamp;

import org.adempierelbr.util.TextUtil;

/**
 * 		Verificar a necessidade de fazer este registro
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 * 	@version $Id: BtpNFe.java, v1.0 2010/12/23 21:30:21 PM, ralexsander Exp $
 */
public class BtpNFe
{	
	String			Assinatura;
	BtpChaveNFe		ChaveNFe;
	String			DataEmissaoNFe;
	String			NumeroLote;
	BtpChaveRPS		ChaveRPS;
	String			TipoRPS;
	String			DataEmissaoRPS;
	BtpCPFCNPJ		CPFCNPJPrestador;
	String			RazaoSocialPrestador;
	BtpEndereco		EnderecoPrestador;
	String			EmailPrestador;
	String			StatusNFe;
	String			OpcaoSimples;
	String			NumeroGuia;
	String			DataQuitacaoGuia;
	String			ValorServicos;
	String			ValorDeducoes;
	String			ValorPIS;
	String			ValorCOFINS;
	String			ValorINSS;
	String			ValorIR;
	String			ValorCSLL;
	String			CodigoServicos;
	String			AliquotaServicos;
	String			ValorISS;
	String			ValorCredito;
	String			ISSRetido;
	BtpCPFCNPJ		CNPJCPFTomador;
	String			InscricaoMunicipalTomador;
	String			InscricaoEstadualTomador;
	String			RazaoSocialTomador;
	BtpEndereco		EnderecoTomador;
	String			EmailTomador;
	String			Discriminacao;
	
	public String getAssinatura()
	{
		return Assinatura;
	}	//	getAssinatura
	
	public void setAssinatura(String assinatura)
	{
		Assinatura = assinatura;
	}	//	setAssinatura
	
	public BtpChaveNFe getChaveNFe()
	{
		return ChaveNFe;
	}	//	getChaveNFe
	
	public void setChaveNFe(BtpChaveNFe chaveNFe)
	{
		ChaveNFe = chaveNFe;
	}	//	setChaveNFe
	
	public String getDataEmissaoNFe()
	{
		return DataEmissaoNFe;
	}	//	getDataEmissaoNFe
	
	public void setDataEmissaoNFe(String dataEmissaoNFe)
	{
		DataEmissaoNFe = dataEmissaoNFe;
	}	//	setDataEmissaoNFe
	
	public void setDataEmissaoNFe(Timestamp dataEmissaoNFe)
	{
		if (dataEmissaoNFe != null)
			DataEmissaoNFe = TextUtil.timeToString(dataEmissaoNFe, "yyyy-MM-dd'T'HH:mm:ss");
	}	//	setDataEmissaoNFe
	
	public String getNumeroLote()
	{
		return NumeroLote;
	}	//	getNumeroLote
	
	public void setNumeroLote(String numeroLote)
	{
		NumeroLote = numeroLote;
	}	//	setNumeroLote
	
	public BtpChaveRPS getChaveRPS()
	{
		return ChaveRPS;
	}	//	getChaveRPS
	
	public void setChaveRPS(BtpChaveRPS chaveRPS)
	{
		ChaveRPS = chaveRPS;
	}	//	setChaveRPS
	
	public String getTipoRPS()
	{
		return TipoRPS;
	}	//	getTipoRPS
	
	public void setTipoRPS(String tipoRPS)
	{
		TipoRPS = tipoRPS;
	}	//	setTipoRPS
	
	public String getDataEmissaoRPS()
	{
		return DataEmissaoRPS;
	}	//	getDataEmissaoRPS
	
	public void setDataEmissaoRPS(String dataEmissaoRPS)
	{
		DataEmissaoRPS = dataEmissaoRPS;
	}	//	setDataEmissaoRPS
	
	public BtpCPFCNPJ getCPFCNPJPrestador()
	{
		return CPFCNPJPrestador;
	}	//	getCPFCNPJPrestador
	
	public void setCPFCNPJPrestador(BtpCPFCNPJ cPFCNPJPrestador)
	{
		CPFCNPJPrestador = cPFCNPJPrestador;
	}	//	setCPFCNPJPrestador
	
	public String getRazaoSocialPrestador()
	{
		return RazaoSocialPrestador;
	}	//	getRazaoSocialPrestador
	
	public void setRazaoSocialPrestador(String razaoSocialPrestador)
	{
		RazaoSocialPrestador = razaoSocialPrestador;
	}	//	setRazaoSocialPrestador
	
	public BtpEndereco getEnderecoPrestador()
	{
		return EnderecoPrestador;
	}	//	getEnderecoPrestador
	
	public void setEnderecoPrestador(BtpEndereco enderecoPrestador)
	{
		EnderecoPrestador = enderecoPrestador;
	}	//	setEnderecoPrestador
	
	public String getEmailPrestador()
	{
		return EmailPrestador;
	}	//	getEmailPrestador
	
	public void setEmailPrestador(String emailPrestador)
	{
		EmailPrestador = emailPrestador;
	}	//	setEmailPrestador
	
	public String getStatusNFe()
	{
		return StatusNFe;
	}	//	getStatusNFe
	
	public void setStatusNFe(String statusNFe)
	{
		StatusNFe = statusNFe;
	}	//	setStatusNFe
	
	public String getOpcaoSimples()
	{
		return OpcaoSimples;
	}	//	getOpcaoSimples
	
	public void setOpcaoSimples(String opcaoSimples)
	{
		OpcaoSimples = opcaoSimples;
	}	//	setOpcaoSimples
	
	public String getNumeroGuia()
	{
		return NumeroGuia;
	}	//	getNumeroGuia
	
	public void setNumeroGuia(String numeroGuia)
	{
		NumeroGuia = numeroGuia;
	}	//	setNumeroGuia
	
	public String getDataQuitacaoGuia()
	{
		return DataQuitacaoGuia;
	}	//	getDataQuitacaoGuia
	
	public void setDataQuitacaoGuia(String dataQuitacaoGuia)
	{
		DataQuitacaoGuia = dataQuitacaoGuia;
	}	//	setDataQuitacaoGuia
	
	public String getValorServicos()
	{
		return ValorServicos;
	}	//	getValorServicos
	
	public void setValorServicos(String valorServicos)
	{
		ValorServicos = valorServicos;
	}	//	setValorServicos
	
	public String getValorDeducoes()
	{
		return ValorDeducoes;
	}	//	getValorDeducoes
	
	public void setValorDeducoes(String valorDeducoes)
	{
		ValorDeducoes = valorDeducoes;
	}	//	setValorDeducoes
	
	public String getValorPIS()
	{
		return ValorPIS;
	}	//	getValorPIS
	
	public void setValorPIS(String valorPIS)
	{
		ValorPIS = valorPIS;
	}	//	setValorPIS
	
	public String getValorCOFINS()
	{
		return ValorCOFINS;
	}	//	getValorCOFINS
	
	public void setValorCOFINS(String valorCOFINS)
	{
		ValorCOFINS = valorCOFINS;
	}	//	setValorCOFINS
	
	public String getValorINSS()
	{
		return ValorINSS;
	}	//	getValorINSS
	
	public void setValorINSS(String valorINSS)
	{
		ValorINSS = valorINSS;
	}	//	setValorINSS
	
	public String getValorIR()
	{
		return ValorIR;
	}	//	getValorIR
	
	public void setValorIR(String valorIR)
	{
		ValorIR = valorIR;
	}	//	setValorIR
	
	public String getValorCSLL()
	{
		return ValorCSLL;
	}	//	getValorCSLL
	
	public void setValorCSLL(String valorCSLL)
	{
		ValorCSLL = valorCSLL;
	}	//	setValorCSLL
	
	public String getCodigoServicos()
	{
		return CodigoServicos;
	}	//	getCodigoServicos
	
	public void setCodigoServicos(String codigoServicos)
	{
		CodigoServicos = codigoServicos;
	}	//	setCodigoServicos
	
	public String getAliquotaServicos()
	{
		return AliquotaServicos;
	}	//	getAliquotaServicos
	
	public void setAliquotaServicos(String aliquotaServicos)
	{
		AliquotaServicos = aliquotaServicos;
	}	//	setAliquotaServicos
	
	public String getValorISS()
	{
		return ValorISS;
	}	//	getValorISS
	
	public void setValorISS(String valorISS)
	{
		ValorISS = valorISS;
	}	//	setValorISS
	
	public String getValorCredito()
	{
		return ValorCredito;
	}	//	getValorCredito
	
	public void setValorCredito(String valorCredito)
	{
		ValorCredito = valorCredito;
	}	//	setValorCredito
	
	public String getISSRetido()
	{
		return ISSRetido;
	}	//	getISSRetido
	
	public void setISSRetido(String iSSRetido)
	{
		ISSRetido = iSSRetido;
	}	//	setISSRetido
	
	public BtpCPFCNPJ getCNPJCPFTomador()
	{
		return CNPJCPFTomador;
	}	//	getCNPJCPFTomador
	
	public void setCNPJCPFTomador(BtpCPFCNPJ cNPJCPFTomador)
	{
		CNPJCPFTomador = cNPJCPFTomador;
	}	//	setCNPJCPFTomador
	
	public String getInscricaoMunicipalTomador()
	{
		return InscricaoMunicipalTomador;
	}	//	getInscricaoMunicipalTomador
	
	public void setInscricaoMunicipalTomador(String inscricaoMunicipalTomador)
	{
		InscricaoMunicipalTomador = inscricaoMunicipalTomador;
	}	//	setInscricaoMunicipalTomador
	
	public String getInscricaoEstadualTomador()
	{
		return InscricaoEstadualTomador;
	}	//	getInscricaoEstadualTomador
	
	public void setInscricaoEstadualTomador(String inscricaoEstadualTomador)
	{
		InscricaoEstadualTomador = inscricaoEstadualTomador;
	}	//	setInscricaoEstadualTomador
	
	public String getRazaoSocialTomador()
	{
		return RazaoSocialTomador;
	}	//	getRazaoSocialTomador
	
	public void setRazaoSocialTomador(String razaoSocialTomador)
	{
		RazaoSocialTomador = razaoSocialTomador;
	}	//	setRazaoSocialTomador
	
	public BtpEndereco getEnderecoTomador()
	{
		return EnderecoTomador;
	}	//	getEnderecoTomador
	
	public void setEnderecoTomador(BtpEndereco enderecoTomador)
	{
		EnderecoTomador = enderecoTomador;
	}	//	setEnderecoTomador
	
	public String getEmailTomador()
	{
		return EmailTomador;
	}	//	getEmailTomador
	
	public void setEmailTomador(String emailTomador)
	{
		EmailTomador = emailTomador;
	}	//	setEmailTomador
	
	public String getDiscriminacao()
	{
		return Discriminacao;
	}	//	getDiscriminacao
	
	public void setDiscriminacao(String discriminacao)
	{
		Discriminacao = discriminacao;
	}	//	setDiscriminacao
}	//	BtpNFe
