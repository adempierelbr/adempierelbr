package org.adempierelbr.nfse.beans;

import java.math.BigDecimal;
import java.sql.Timestamp;

import org.adempierelbr.util.TextUtil;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

public class BtpInformacoesLote
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(BtpInformacoesLote.class);
	
	String NumeroLote;
	String InscricaoPrestador;
	BtpCPFCNPJ CPFCNPJRemetente;
	String DataEnvioLote;
	String QtdNotas;
	String TempoProcessamento;
	String ValorTotalServicos;
	String ValorTotalDeducoes;
	
	public String getNumeroLote()
	{
		return NumeroLote;
	}
	/**
	 * @param tpNumero the tpNumero to set
	 */
	public void setNumeroLote(String numeroLote)
	{
		numeroLote = TextUtil.toNumeric(numeroLote);
		//
		if (numeroLote.length() < 1 || numeroLote.length() > 12)
		{
			log.warning("NumeroLote deve ter entre 1 e 12 digitos");
			numeroLote = numeroLote.substring(0, 12);
		}
		//
		this.NumeroLote = numeroLote;
	}
	
	/**
	 * @param tpNumero the tpNumero to set
	 */
	public void setNumeroLote(BigDecimal tpNumeroLote)
	{
		if (tpNumeroLote == null)
		{
			log.warning("Numero invalido.");
			tpNumeroLote = Env.ZERO;
		}
		//
		setNumeroLote(tpNumeroLote.setScale(0, BigDecimal.ROUND_HALF_UP).toString());
	}
	public String getInscricaoPrestador()
	{
		return InscricaoPrestador;
	}
	public void setInscricaoPrestador(String inscricaoPrestador)
	{
		inscricaoPrestador = TextUtil.toNumeric(inscricaoPrestador);
		//
		if (inscricaoPrestador.length() != 8)
			log.warning("InscricaoPrestador deve ter 8 digitos");
		//
		InscricaoPrestador = inscricaoPrestador;
	}
	public BtpCPFCNPJ getCPFCNPJRemetente()
	{
		return CPFCNPJRemetente;
	}
	public void setCPFCNPJRemetente(BtpCPFCNPJ cPFCNPJRemetente)
	{
		CPFCNPJRemetente = cPFCNPJRemetente;
	}
	public String getDataEnvioLote()
	{
		return DataEnvioLote;
	}
	public void setDataEnvioLote(String dataEnvioLote)
	{
		DataEnvioLote = dataEnvioLote;
	}
	
	public void setDataEnvioLote(Timestamp dataEnvioLote)
	{
		DataEnvioLote = TextUtil.timeToString(dataEnvioLote, "yyyy-MM-dd'T'HH:mm:ss");
	}
	public String getQtdNotas()
	{
		return QtdNotas;
	}
	
	/**
	 * @param numero the tpNumero to set
	 */
	public void setQtdNotas(String qtdNotas)
	{
		qtdNotas = TextUtil.toNumeric(qtdNotas);
		//
		if (qtdNotas.length() < 1 || qtdNotas.length() > 15)
			log.warning("QtdNotas deve ter entre 1 e 15 digitos");
		//
		QtdNotas = qtdNotas;
	}
	
	public void setQtdNotas(BigDecimal qtdNotas)
	{
		if (qtdNotas == null)
		{
			log.warning("QtdNotas invalido.");
			qtdNotas = Env.ZERO;
		}
		//
		setQtdNotas(qtdNotas);
	}
	
	public String getTempoProcessamento()
	{
		return TempoProcessamento;
	}
	
	public void setTempoProcessamento(String tempoProcessamento)
	{
		tempoProcessamento = TextUtil.toNumeric(tempoProcessamento);
		//
		if (tempoProcessamento.length() < 1 || tempoProcessamento.length() > 15)
			log.warning("TempoProcessamento deve ter entre 1 e 15 digitos");
		//
		TempoProcessamento = tempoProcessamento;
	}
	
	public String getValorTotalServicos()
	{
		return ValorTotalServicos;
	}
	
	public void setValorTotalServicos(String valorTotalServicos)
	{
		if (valorTotalServicos == null || valorTotalServicos.length() > 15)
			log.warning("ValorTotalServicos deve ter no máximo 15 digitos");
		//
		ValorTotalServicos = valorTotalServicos;
	}
	
	public void setValorTotalServicos(BigDecimal valorTotalServicos)
	{
		if (valorTotalServicos == null)
		{
			log.warning("ValorTotalServicos invalido.");
			valorTotalServicos = Env.ZERO;
		}
		//
		setValorTotalServicos (valorTotalServicos.abs().setScale(2, BigDecimal.ROUND_HALF_UP).toString());
	}
	
	public String getValorTotalDeducoes()
	{
		return ValorTotalDeducoes;
	}
	
	public void setValorTotalDeducoes(String valorTotalDeducoes)
	{
		if (valorTotalDeducoes.length() > 15)
			log.warning("ValorTotalServicos deve ter no máximo 15 digitos");
		//
		ValorTotalDeducoes = valorTotalDeducoes;
	}
	
	public void setValorTotalDeducoes(BigDecimal valorTotalDeducoes)
	{
		if (valorTotalDeducoes == null)
			;
		else
			setValorTotalDeducoes (valorTotalDeducoes.abs().setScale(2, BigDecimal.ROUND_HALF_UP).toString());
	}
}
