package org.adempierelbr.nfe.beans;

import org.adempierelbr.util.TextUtil;

public class EnderEmit {

	private String xLgr;
	private String nro;
	private String xCpl;
	private String xBairro;
	private String cMun;
	private String xMun;
	private String UF;
	private String CEP;
	private String cPais;
	private String xPais;
	private String fone;
	public String getXLgr() {
		return xLgr;
	}
	public void setXLgr(String lgr) {
		xLgr = TextUtil.retiraAcentos(lgr);
	}
	public String getNro() {
		return nro;
	}
	public void setNro(String nro) {
		this.nro = nro;
	}
	public String getXCpl() {
		return xCpl;
	}
	public void setXCpl(String cpl) {
		xCpl = TextUtil.retiraAcentos(cpl);
	}
	public String getXBairro() {
		return xBairro;
	}
	public void setXBairro(String bairro) {
		xBairro = TextUtil.retiraAcentos(bairro);
	}
	public String getCMun() {
		return cMun;
	}
	public void setCMun(String mun) {
		cMun = mun;
	}
	public String getUF() {
		return UF;
	}
	public void setUF(String uf) {
		UF = uf;
	}
	public String getCEP() {
		return CEP;
	}
	public void setCEP(String cep) {
		CEP = cep;
	}
	public String getCPais() {
		return cPais;
	}
	public void setCPais(String pais) {
		cPais = pais;
	}
	public String getXPais() {
		return xPais;
	}
	public void setXPais(String pais) {
		xPais = TextUtil.retiraAcentos(pais);
	}
	public String getFone() {
		return fone;
	}
	public void setFone(String fone) {
		this.fone = fone;
	}
	public String getXMun() {
		return xMun;
	}
	public void setXMun(String mun) {
		xMun = TextUtil.retiraAcentos(mun);
	}
}
