package org.adempierelbr.nfe.beans;

public class IdentDestBean {

	// Identifica��o do Destinat�rio da Nota Fiscal Eletronica
	
	private String dest;
	private String CNPJ;
	private String CPF;
	private String xNome;
	private EnderDestBean enderDest;
	private String IE;
	private String ISUF;

	public String getDest() {
		return dest;
	}
	public void setDest(String dest) {
		this.dest = dest;
	}
	public String getCNPJ() {
		return CNPJ;
	}
	public void setCNPJ(String cnpj) {
		CNPJ = cnpj;
	}
	public String getCPF() {
		return CPF;
	}
	public void setCPF(String cpf) {
		CPF = cpf;
	}
	public String getXNome() {
		return xNome;
	}
	public void setXNome(String nome) {
		xNome = nome;
	}
	public EnderDestBean getEnderDest() {
		return enderDest;
	}
	public void setEnderDest(EnderDestBean enderDest) {
		this.enderDest = enderDest;
	}
	public String getIE() {
		return IE;
	}
	public void setIE(String ie) {
		IE = ie;
	}
	public String getISUF() {
		return ISUF;
	}
	public void setISUF(String isuf) {
		ISUF = isuf;
	}



}
