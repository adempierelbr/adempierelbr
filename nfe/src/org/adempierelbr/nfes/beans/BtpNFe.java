package org.adempierelbr.nfes.beans;

import java.sql.Timestamp;

import org.adempierelbr.util.TextUtil;
import org.compiere.util.CLogger;

/**
 * 	FIXME: Verificar a necessidade de fazer este registro
 * 
 * @author ricardo
 */
public class BtpNFe
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(BtpNFe.class);
	
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
	}
	
	public void setAssinatura(String assinatura)
	{
		Assinatura = assinatura;
	}
	
	public BtpChaveNFe getChaveNFe()
	{
		return ChaveNFe;
	}
	
	public void setChaveNFe(BtpChaveNFe chaveNFe)
	{
		ChaveNFe = chaveNFe;
	}
	
	public String getDataEmissaoNFe()
	{
		return DataEmissaoNFe;
	}
	
	public void setDataEmissaoNFe(String dataEmissaoNFe)
	{
		DataEmissaoNFe = dataEmissaoNFe;
	}
	
	public void setDataEmissaoNFe(Timestamp dataEmissaoNFe)
	{
		if (dataEmissaoNFe != null)
			DataEmissaoNFe = TextUtil.timeToString(dataEmissaoNFe, "yyyy-MM-dd'T'HH:mm:ss");
	}
	
	public String getNumeroLote()
	{
		return NumeroLote;
	}
	
	public void setNumeroLote(String numeroLote)
	{
		NumeroLote = numeroLote;
	}
	
	public BtpChaveRPS getChaveRPS()
	{
		return ChaveRPS;
	}
	
	public void setChaveRPS(BtpChaveRPS chaveRPS)
	{
		ChaveRPS = chaveRPS;
	}
	
	public String getTipoRPS()
	{
		return TipoRPS;
	}
	
	public void setTipoRPS(String tipoRPS)
	{
		TipoRPS = tipoRPS;
	}
	
	public String getDataEmissaoRPS()
	{
		return DataEmissaoRPS;
	}
	
	public void setDataEmissaoRPS(String dataEmissaoRPS)
	{
		DataEmissaoRPS = dataEmissaoRPS;
	}
	
	public BtpCPFCNPJ getCPFCNPJPrestador()
	{
		return CPFCNPJPrestador;
	}
	
	public void setCPFCNPJPrestador(BtpCPFCNPJ cPFCNPJPrestador)
	{
		CPFCNPJPrestador = cPFCNPJPrestador;
	}
	
	public String getRazaoSocialPrestador()
	{
		return RazaoSocialPrestador;
	}
	
	public void setRazaoSocialPrestador(String razaoSocialPrestador)
	{
		RazaoSocialPrestador = razaoSocialPrestador;
	}
	
	public BtpEndereco getEnderecoPrestador()
	{
		return EnderecoPrestador;
	}
	
	public void setEnderecoPrestador(BtpEndereco enderecoPrestador)
	{
		EnderecoPrestador = enderecoPrestador;
	}
	
	public String getEmailPrestador()
	{
		return EmailPrestador;
	}
	
	public void setEmailPrestador(String emailPrestador)
	{
		EmailPrestador = emailPrestador;
	}
	
	public String getStatusNFe()
	{
		return StatusNFe;
	}
	
	public void setStatusNFe(String statusNFe)
	{
		StatusNFe = statusNFe;
	}
	
	public String getOpcaoSimples()
	{
		return OpcaoSimples;
	}
	
	public void setOpcaoSimples(String opcaoSimples)
	{
		OpcaoSimples = opcaoSimples;
	}
	
	public String getNumeroGuia()
	{
		return NumeroGuia;
	}
	
	public void setNumeroGuia(String numeroGuia)
	{
		NumeroGuia = numeroGuia;
	}
	
	public String getDataQuitacaoGuia()
	{
		return DataQuitacaoGuia;
	}
	
	public void setDataQuitacaoGuia(String dataQuitacaoGuia)
	{
		DataQuitacaoGuia = dataQuitacaoGuia;
	}
	
	public String getValorServicos()
	{
		return ValorServicos;
	}
	
	public void setValorServicos(String valorServicos)
	{
		ValorServicos = valorServicos;
	}
	
	public String getValorDeducoes()
	{
		return ValorDeducoes;
	}
	
	public void setValorDeducoes(String valorDeducoes)
	{
		ValorDeducoes = valorDeducoes;
	}
	
	public String getValorPIS()
	{
		return ValorPIS;
	}
	
	public void setValorPIS(String valorPIS)
	{
		ValorPIS = valorPIS;
	}
	
	public String getValorCOFINS()
	{
		return ValorCOFINS;
	}
	
	public void setValorCOFINS(String valorCOFINS)
	{
		ValorCOFINS = valorCOFINS;
	}
	
	public String getValorINSS()
	{
		return ValorINSS;
	}
	
	public void setValorINSS(String valorINSS)
	{
		ValorINSS = valorINSS;
	}
	
	public String getValorIR()
	{
		return ValorIR;
	}
	
	public void setValorIR(String valorIR)
	{
		ValorIR = valorIR;
	}
	
	public String getValorCSLL()
	{
		return ValorCSLL;
	}
	
	public void setValorCSLL(String valorCSLL)
	{
		ValorCSLL = valorCSLL;
	}
	
	public String getCodigoServicos()
	{
		return CodigoServicos;
	}
	
	public void setCodigoServicos(String codigoServicos)
	{
		CodigoServicos = codigoServicos;
	}
	
	public String getAliquotaServicos()
	{
		return AliquotaServicos;
	}
	
	public void setAliquotaServicos(String aliquotaServicos)
	{
		AliquotaServicos = aliquotaServicos;
	}
	
	public String getValorISS()
	{
		return ValorISS;
	}
	
	public void setValorISS(String valorISS)
	{
		ValorISS = valorISS;
	}
	
	public String getValorCredito()
	{
		return ValorCredito;
	}
	
	public void setValorCredito(String valorCredito)
	{
		ValorCredito = valorCredito;
	}
	
	public String getISSRetido()
	{
		return ISSRetido;
	}
	
	public void setISSRetido(String iSSRetido)
	{
		ISSRetido = iSSRetido;
	}
	
	public BtpCPFCNPJ getCNPJCPFTomador()
	{
		return CNPJCPFTomador;
	}
	
	public void setCNPJCPFTomador(BtpCPFCNPJ cNPJCPFTomador)
	{
		CNPJCPFTomador = cNPJCPFTomador;
	}
	
	public String getInscricaoMunicipalTomador()
	{
		return InscricaoMunicipalTomador;
	}
	
	public void setInscricaoMunicipalTomador(String inscricaoMunicipalTomador)
	{
		InscricaoMunicipalTomador = inscricaoMunicipalTomador;
	}
	
	public String getInscricaoEstadualTomador()
	{
		return InscricaoEstadualTomador;
	}
	
	public void setInscricaoEstadualTomador(String inscricaoEstadualTomador)
	{
		InscricaoEstadualTomador = inscricaoEstadualTomador;
	}
	
	public String getRazaoSocialTomador()
	{
		return RazaoSocialTomador;
	}
	
	public void setRazaoSocialTomador(String razaoSocialTomador)
	{
		RazaoSocialTomador = razaoSocialTomador;
	}
	
	public BtpEndereco getEnderecoTomador()
	{
		return EnderecoTomador;
	}
	
	public void setEnderecoTomador(BtpEndereco enderecoTomador)
	{
		EnderecoTomador = enderecoTomador;
	}
	
	public String getEmailTomador()
	{
		return EmailTomador;
	}
	
	public void setEmailTomador(String emailTomador)
	{
		EmailTomador = emailTomador;
	}
	
	public String getDiscriminacao()
	{
		return Discriminacao;
	}
	
	public void setDiscriminacao(String discriminacao)
	{
		Discriminacao = discriminacao;
	}
}
