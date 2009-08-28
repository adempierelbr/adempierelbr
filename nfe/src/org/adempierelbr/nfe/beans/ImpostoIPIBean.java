package org.adempierelbr.nfe.beans;

public class ImpostoIPIBean {

	// Imposto sobre Produtos Industrializados
	
	private String clEnq;
	private String CNPJProd;
	private String cSelo;
	private String qSelo;
	private String cEnq;
	private ImpostoIPIGrupoBean IPI ;
	
	public String getClEnq() {
		return clEnq;
	}
	public void setClEnq(String clEnq) {
		this.clEnq = clEnq;
	}
	public String getCNPJProd() {
		return CNPJProd;
	}
	public void setCNPJProd(String prod) {
		CNPJProd = prod;
	}
	public String getCSelo() {
		return cSelo;
	}
	public void setCSelo(String selo) {
		cSelo = selo;
	}
	public String getQSelo() {
		return qSelo;
	}
	public void setQSelo(String selo) {
		qSelo = selo;
	}
	public String getCEnq() {
		return cEnq;
	}
	public void setCEnq(String enq) {
		cEnq = enq;
	}
	public ImpostoIPIGrupoBean getIPI() {
		return IPI;
	}
	public void setIPI(ImpostoIPIGrupoBean ipi) {
		IPI = ipi;
	}

}
