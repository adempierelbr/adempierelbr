package org.adempierelbr.nfe.beans;

public class ChaveNFE {

	private String cUF; 	// Codigo da UF do emitente do Documento Fiscal
	private String AAMM; 	// (AAMM) Ano e Mes de emissao da NF-e
	private String CNPJ; 	// CNPJ do emitente
	private String mod; 	// Modelo do Documento Fiscal
	private String serie; 	// Serie do Documento Fiscal
	private String nNF; 	// Numero do Documento Fiscal
	private String cNF; 	// Codigo Numerico que compoe a Chave de Acesso

	public String getCUF() {
		return cUF;
	}

	public void setCUF(String cuf) {
		cUF = cuf;
	}

	public String getAAMM() {
		return AAMM;
	}

	public void setAAMM(String aamm) {
		AAMM = aamm;
	}

	public String getCNPJ() {
		return CNPJ;
	}

	public void setCNPJ(String cnpj) {
		CNPJ = cnpj;
	}

	public String getMod() {
		return mod;
	}

	public void setMod(String mod) {
		this.mod = mod;
	}

	public String getSerie() {
		return serie;
	}

	public void setSerie(String serie) {
		this.serie = serie;
	}

	public String getNNF() {
		return nNF;
	}

	public void setNNF(String nnf) {
		nNF = nnf;
	}

	public String getCNF() {
		return cNF;
	}

	public void setCNF(String cnf) {
		cNF = cnf;
	}
}
