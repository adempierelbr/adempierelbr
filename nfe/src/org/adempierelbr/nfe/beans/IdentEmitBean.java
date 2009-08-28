package org.adempierelbr.nfe.beans;

public class IdentEmitBean {

	// Identifica��o do Emitente da Nota Fiscal
	
	private String emit;
	private String CNPJ;
	private String CPF;
	private String xNome;
	private String xFant;
	private EnderEmitBean enderEmit;

	private String IE;
	private String IEST;
	private String IM;
	private String CNAE;

	
	
	public String getEmit() {
		return emit;
	}
	public void setEmit(String emit) {
		this.emit = emit;
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
	public String getXFant() {
		return xFant;
	}
	public void setXFant(String fant) {
		xFant = fant;
	}
	public EnderEmitBean getEnderEmit() {
		return enderEmit;
	}
	public void setEnderEmit(EnderEmitBean enderEmit) {
		this.enderEmit = enderEmit;
	}
	public String getIE() {
		return IE;
	}
	public void setIE(String ie) {
		IE = ie;
	}
	public String getIEST() {
		return IEST;
	}
	public void setIEST(String iest) {
		IEST = iest;
	}
	public String getIM() {
		return IM;
	}
	public void setIM(String im) {
		IM = im;
	}
	public String getCNAE() {
		return CNAE;
	}
	public void setCNAE(String cnae) {
		CNAE = cnae;
	}

	
	
}
