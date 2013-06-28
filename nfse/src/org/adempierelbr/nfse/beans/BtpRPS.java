package org.adempierelbr.nfse.beans;

import java.math.BigDecimal;
import java.sql.Timestamp;

import org.adempierelbr.util.AssinaturaDigital;
import org.adempierelbr.util.TextUtil;
import org.compiere.util.CLogger;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

@XStreamAlias ("RPS")
public class BtpRPS extends RegistroNFSe
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(BtpRPS.class);
	
	@XStreamAsAttribute
	final String xmlns="";
	
	String			Assinatura;
	BtpChaveRPS		ChaveRPS;
	String			TipoRPS;
	String			DataEmissao;
	String			StatusRPS;
	String			TributacaoRPS;
	String			ValorServicos;
	String			ValorDeducoes;
	String			ValorPIS;
	String			ValorCOFINS;
	String			ValorINSS;
	String			ValorIR;
	String			ValorCSLL;
	String			CodigoServico;
	String			AliquotaServicos;
	String			ISSRetido;
	BtpCPFCNPJ		CPFCNPJTomador;
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
	
	public void setAssinatura(int AD_Org_ID)
	{
		StringBuilder ascii = new StringBuilder ("");
		//
		ascii.append(TextUtil.lPad (getChaveRPS().getInscricaoPrestador(), 8));
		ascii.append(TextUtil.rPad (getChaveRPS().getSerieRPS(), 5));
		ascii.append(TextUtil.lPad (getChaveRPS().getNumero(), 12));
		//
		ascii.append(TextUtil.lPad (getDataEmissao(), 8));
		ascii.append(getTributacaoRPS());
		ascii.append(getStatusRPS());
		ascii.append(getISSRetido());
		ascii.append(TextUtil.lPad (getValorServicos(), 15));
		ascii.append(TextUtil.lPad (getValorDeducoes(), 15));
		ascii.append(TextUtil.lPad (getCodigoServicos(), 5));
		ascii.append(getCNPJCPFTomador().getIndicacaoCNPJF());
		ascii.append(TextUtil.lPad (getCNPJCPFTomador().getDoc(), 14));
		//
		setAssinatura (AssinaturaDigital.signASCII (ascii.toString(), AD_Org_ID));
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
	
	/**
	 * 	Tipos de RPS:
	 * 
	 * 		RPS   = Recibo Provisório de Serviços
	 * 		RPS-M = Recibo Provisório de Serviços <BR>
	 * 			proveniente de NF conjugada Mista
	 * 		RPS-C = Cupom
	 * 
	 * @param tipoRPS
	 */
	public void setTipoRPS(String tipoRPS)
	{
		if (tipoRPS == null || tipoRPS.equals(""))
			log.warning("Tipo de RPS obrigatório não foi preenchido");
		else if (  !tipoRPS.equalsIgnoreCase("RPS") 			//	RPS
				&& !tipoRPS.equalsIgnoreCase("RPS-M")			//	RPS de NF Conjugada
				&& !tipoRPS.equalsIgnoreCase("RPS-C"))			//	RPS de Cupom
			log.warning("Tipo de RPS inválido");
		else
			TipoRPS = tipoRPS.toUpperCase();
	}
	
	public String getDataEmissao()
	{
		return DataEmissao;
	}
	
	public void setDataEmissao(String dataEmissao)
	{
		DataEmissao = dataEmissao;
	}
	
	public void setDataEmissao(Timestamp dataEmissao)
	{
		setDataEmissao (TextUtil.timeToString(dataEmissao, "yyyy-MM-dd"));
	}
	
	public String getStatusRPS()
	{
		return StatusRPS;
	}
	
	public void setStatusRPS (String statusRPS)
	{
		if (statusRPS == null || statusRPS.equals(""))
			log.warning("Status de RPS obrigatório não foi preenchido");
		else if (  !statusRPS.equalsIgnoreCase("N") 			//	Normal
				&& !statusRPS.equalsIgnoreCase("C")				//	Cancelada
				&& !statusRPS.equalsIgnoreCase("E"))			//	Extraviada
			log.warning("Status de RPS inválido");
		else
			StatusRPS = statusRPS;
	}
	
	public String getTributacaoRPS()
	{
		return TributacaoRPS;
	}
	
	public void setTributacaoRPS (String tributacaoRPS)
	{
		if (tributacaoRPS == null || tributacaoRPS.equals(""))
			log.warning("Tributacao de RPS obrigatório não foi preenchido");
		else if (  !tributacaoRPS.equalsIgnoreCase("T") 		//	Tributação no município de São Paulo
				&& !tributacaoRPS.equalsIgnoreCase("F")			//	Tributação fora do município de São Paulo
				&& !tributacaoRPS.equalsIgnoreCase("I")			//	Isento;
				&& !tributacaoRPS.equalsIgnoreCase("J"))		//	ISS Suspenso por Decisão Judicial
			log.warning("Tributacao de RPS inválido");
		else
			TributacaoRPS = tributacaoRPS;
	}
	
	public String getValorServicos()
	{
		return ValorServicos;
	}
	
	public void setValorServicos(String valorServicos)
	{
		ValorServicos = tpValor (valorServicos, false);
	}
	
	public void setValorServicos(BigDecimal valorServicos)
	{
		ValorServicos = tpValor (valorServicos, false);
	}
	
	public String getValorDeducoes()
	{
		return ValorDeducoes;
	}
	
	public void setValorDeducoes(String valorDeducoes)
	{
		ValorDeducoes = tpValor (valorDeducoes, true);
	}
	
	public void setValorDeducoes(BigDecimal valorDeducoes)
	{
		ValorDeducoes = tpValor (valorDeducoes, true);
	}
	
	public String getValorPIS()
	{
		return ValorPIS;
	}
	
	public void setValorPIS(String valorPIS)
	{
		ValorPIS = tpValor (valorPIS, true);
	}
	
	public void setValorPIS(BigDecimal valorPIS)
	{
		ValorPIS = tpValor (valorPIS, true);
	}
	
	public String getValorCOFINS()
	{
		return ValorCOFINS;
	}
	
	public void setValorCOFINS(String valorCOFINS)
	{
		ValorCOFINS = tpValor (valorCOFINS, true);
	}
	
	public void setValorCOFINS(BigDecimal valorCOFINS)
	{
		ValorCOFINS = tpValor (valorCOFINS, true);
	}
	
	public String getValorINSS()
	{
		return ValorINSS;
	}
	
	public void setValorINSS(String valorINSS)
	{
		ValorINSS = tpValor (valorINSS, true);
	}
	
	public void setValorINSS(BigDecimal valorINSS)
	{
		ValorINSS = tpValor (valorINSS, true);
	}
	
	public String getValorIR()
	{
		return ValorIR;
	}
	
	public void setValorIR(String valorIR)
	{
		ValorIR = tpValor (valorIR, true);
	}
	
	public void setValorIR(BigDecimal valorIR)
	{
		ValorIR = tpValor (valorIR, true);
	}
	
	public String getValorCSLL()
	{
		return ValorCSLL;
	}
	
	public void setValorCSLL(String valorCSLL)
	{
		ValorCSLL = tpValor (valorCSLL, true);
	}
	
	public void setValorCSLL(BigDecimal valorCSLL)
	{
		ValorCSLL = tpValor (valorCSLL, true);
	}
	
	public String getCodigoServicos()
	{
		return CodigoServico;
	}
	
	public void setCodigoServicos(String codigoServicos)
	{
		CodigoServico = tpCodigoServico (codigoServicos);
	}
	
	public String getAliquotaServicos()
	{
		return AliquotaServicos;
	}
	
	public void setAliquotaServicos(String aliquotaServicos)
	{
		AliquotaServicos = tpAliquota (aliquotaServicos);
	}
	
	public void setAliquotaServicos(BigDecimal aliquotaServicos)
	{
		AliquotaServicos = tpAliquota (aliquotaServicos);
	}
	
	public String getISSRetido()
	{
		return ISSRetido;
	}
	
	public void setISSRetido(String iSSRetido)
	{
		ISSRetido = tpBoolean (iSSRetido);
	}
	
	public void setISSRetido(boolean iSSRetido)
	{
		ISSRetido = tpBoolean (iSSRetido);
	}
	
	public BtpCPFCNPJ getCNPJCPFTomador()
	{
		return CPFCNPJTomador;
	}
	
	public void setCNPJCPFTomador(BtpCPFCNPJ cNPJCPFTomador)
	{
		CPFCNPJTomador = cNPJCPFTomador;
	}
	
	public String getInscricaoMunicipalTomador()
	{
		return InscricaoMunicipalTomador;
	}
	
	public void setInscricaoMunicipalTomador(String inscricaoMunicipalTomador)
	{
		InscricaoMunicipalTomador = tpInscricaoMunicipal (inscricaoMunicipalTomador);
	}
	
	public String getInscricaoEstadualTomador()
	{
		return InscricaoEstadualTomador;
	}
	
	public void setInscricaoEstadualTomador(String inscricaoEstadualTomador)
	{
		InscricaoEstadualTomador = tpInscricaoEstadual (inscricaoEstadualTomador);
	}
	
	public String getRazaoSocialTomador()
	{
		return RazaoSocialTomador;
	}
	
	public void setRazaoSocialTomador(String razaoSocialTomador)
	{
		RazaoSocialTomador = tpRazaoSocial (razaoSocialTomador);
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
		EmailTomador = tpEmail (emailTomador);
	}
	
	public String getDiscriminacao()
	{
		return Discriminacao;
	}
	
	public void setDiscriminacao(String discriminacao)
	{
		Discriminacao = tpDiscriminacao (discriminacao);
	}
}
