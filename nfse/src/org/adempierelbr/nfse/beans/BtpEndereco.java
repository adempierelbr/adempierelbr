package org.adempierelbr.nfse.beans;

import org.adempierelbr.util.TextUtil;
import org.compiere.util.CLogger;

public class BtpEndereco
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(BtpEndereco.class);
	
	String TipoLogradouro;
	String Logradouro;
	String NumeroEndereco;
	String ComplementoEndereco;
	String Bairro;
	String Cidade;
	String UF;
	String CEP;
	
	public String getTipoLogradouro()
	{
		return TipoLogradouro;
	}
	
	public void setTipoLogradouro(String tipoLogradouro)
	{
		if (tipoLogradouro !=null && tipoLogradouro.length() > 3)
		{
			log.info("TipoLogradouro deve ter no máximo 3 caracteres");
			tipoLogradouro = tipoLogradouro.substring(0, 3);
		}
		//
		TipoLogradouro = tipoLogradouro;
	}
	
	public String getLogradouro()
	{
		return Logradouro;
	}
	public void setLogradouro(String logradouro)
	{
		if (logradouro != null && logradouro.length() > 50)
		{
			log.info("Logradouro deve ter no máximo 50 caracteres");
			logradouro = logradouro.substring(0, 50);
		}
		//
		Logradouro = logradouro;
	}
	public String getNumeroEndereco()
	{
		return NumeroEndereco;
	}
	public void setNumeroEndereco(String numeroEndereco)
	{
		if (numeroEndereco != null && numeroEndereco.length() > 10)
		{
			log.info("NumeroEndereco deve ter no máximo 10 caracteres");
			numeroEndereco = numeroEndereco.substring(0, 10);
		}
		//
		NumeroEndereco = numeroEndereco;
	}
	public String getComplementoEndereco()
	{
		return ComplementoEndereco;
	}
	public void setComplementoEndereco(String complementoEndereco)
	{
		if (complementoEndereco != null && complementoEndereco.length() > 30)
		{
			log.info("ComplementoEndereco deve ter no máximo 30 caracteres");
			complementoEndereco = complementoEndereco.substring(0, 30);
		}
		//
		ComplementoEndereco = complementoEndereco;
	}
	public String getBairro()
	{
		return Bairro;
	}
	public void setBairro(String bairro)
	{
		if (bairro != null && bairro.length() > 30)
		{
			log.info("ComplementoEndereco deve ter no máximo 30 caracteres");
			bairro = bairro.substring(0, 30);
		}
		//
		Bairro = bairro;
	}
	public String getCidade()
	{
		return Cidade;
	}
	public void setCidade(String cidade)
	{
		cidade = TextUtil.toNumeric(cidade);
		//
		if (cidade.length() != 7)
			log.warning("Cidade deve ter 7 digitos");
		//
		Cidade = cidade;
	}
	public String getUF()
	{
		return UF;
	}
	public void setUF(String uF)
	{
		UF = uF;
	}
	public String getCEP()
	{
		return CEP;
	}
	public void setCEP(String cEP)
	{
		cEP = TextUtil.toNumeric(cEP);
		//
		if (cEP.length() < 7 || cEP.length() > 8)
			log.warning("CEP deve ter entre 7 e 8 digitos");
		//
		CEP = cEP;
	}
	
}
