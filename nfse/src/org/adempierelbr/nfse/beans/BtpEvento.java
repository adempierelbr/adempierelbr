package org.adempierelbr.nfse.beans;

public class BtpEvento
{
	String 			Codigo;
	String 			Descricao;
	BtpChaveNFe 	ChaveNFe;
	BtpChaveRPS 	ChaveRPS;
	
	public String getCodigoEvento()
	{
		return Codigo;
	}
	public void setCodigoEvento(String codigoEvento)
	{
		this.Codigo = codigoEvento;
	}
	public String getDescricaoEvento()
	{
		return Descricao;
	}
	public void setDescricaoEvento(String descricaoEvento)
	{
		this.Descricao = descricaoEvento;
	}
	public BtpChaveNFe getChaveNFe()
	{
		return ChaveNFe;
	}
	public void setChaveNFe(BtpChaveNFe chaveNFe)
	{
		this.ChaveNFe = chaveNFe;
	}
	public BtpChaveRPS getChaveRPS()
	{
		return ChaveRPS;
	}
	public void setChaveRPS(BtpChaveRPS chaveRPS)
	{
		this.ChaveRPS = chaveRPS;
	}
}
