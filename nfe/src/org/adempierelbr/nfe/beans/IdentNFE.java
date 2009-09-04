package org.adempierelbr.nfe.beans;

import java.util.Date;

import org.adempierelbr.util.TextUtil;

public class IdentNFE {

	// Identifica��o da Nota Fiscal Eletronica
	
	private String cUF;
	private String cNF;
	private String natOp;
	private String indPag;
	private String mod;
	private String serie;
	private String nNF;
	private String dEmi;
	private String dSaiEnt;
	private String tpNF;
	private String cMunFG;
	private String tpImp;
	private String tpEmis;
	private String cDV;
	private String tpAmb;
	private String finNFe;
	private String procEmi;
	private String verProc;
	
	private NFERefenciadaBean NFref;

	
	public String getCUF() {
		return cUF;
	}
	public void setCUF(String cuf) {
		cUF = cuf;
	}
	public String getCNF() {
		return cNF;
	}
	public void setCNF(String cnf) {
		cNF = cnf;
	}
	public String getNatOp() {
		return natOp;
	}
	public void setNatOp(String natOp) {
		this.natOp = TextUtil.retiraAcentos(natOp);
	}
	public String getIndPag() {
		return indPag;
	}
	public void setIndPag(String indPag) {
		this.indPag = indPag;
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

	
	public String getDSaiEnt() {
		return dSaiEnt;
	}
	public void setDSaiEnt(String saiEnt) {
		dSaiEnt = saiEnt;
	}
	public String getTpNF() {
		return tpNF;
	}
	public void setTpNF(String tpNF) {
		this.tpNF = tpNF;
	}
	public String getCMunFG() {
		return cMunFG;
	}
	public void setCMunFG(String munFG) {
		cMunFG = munFG;
	}
	public NFERefenciadaBean getNFref() {
		return NFref;
	}
	public void setNFref(NFERefenciadaBean fref) {
		NFref = fref;
	}
	public String getTpImp() {
		return tpImp;
	}
	public void setTpImp(String tpImp) {
		this.tpImp = tpImp;
	}
	public String getTpEmis() {
		return tpEmis;
	}
	public void setTpEmis(String tpEmis) {
		this.tpEmis = tpEmis;
	}
	public String getCDV() {
		return cDV;
	}
	public void setCDV(String cdv) {
		cDV = cdv;
	}
	public String getTpAmb() {
		return tpAmb;
	}
	public void setTpAmb(String tpAmb) {
		this.tpAmb = tpAmb;
	}
	public String getFinNFe() {
		return finNFe;
	}
	public void setFinNFe(String finNFe) {
		this.finNFe = finNFe;
	}
	public String getProcEmi() {
		return procEmi;
	}
	public void setProcEmi(String procEmi) {
		this.procEmi = procEmi;
	}
	public String getVerProc() {
		return verProc;
	}
	public void setVerProc(String verProc) {
		this.verProc = verProc;
	}
	public String getDEmi() {
		return dEmi;
	}
	public void setDEmi(String emi) {
		dEmi = emi;
	}
	
	
}
