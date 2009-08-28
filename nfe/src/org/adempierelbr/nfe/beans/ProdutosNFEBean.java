package org.adempierelbr.nfe.beans;

public class ProdutosNFEBean {

	// Produtos e Servi�os da NF-E
	
	private String prod;
	private String cProd;
	private String cEAN;

	private String xProd;
	private String NCM;
	private String CFOP;
	private String uCom;
	private String qCom;
	private String vUnCom;
	private String vProd;
	private String cEANTrib;

	private String uTrib;
	private String qTrib;
	private String vUnTrib;
//	private int nItem;
//	private TributosInciBean imposto;
	public String getProd() {
		return prod;
	}
	public void setProd(String prod) {
		this.prod = prod;
	}
	public String getCProd() {
		return cProd;
	}
	public void setCProd(String prod) {
		cProd = prod;
	}
	public String getXProd() {
		return xProd;
	}
	public void setXProd(String prod) {
		xProd = prod;
	}
	public String getNCM() {
		return NCM;
	}
	public void setNCM(String ncm) {
		NCM = ncm;
	}
	public String getCFOP() {
		return CFOP;
	}
	public void setCFOP(String cfop) {
		CFOP = cfop;
	}
	public String getUCom() {
		return uCom;
	}
	public void setUCom(String com) {
		uCom = com;
	}
	public String getQCom() {
		return qCom;
	}
	public void setQCom(String com) {
		qCom = com;
	}
	public String getVUnCom() {
		return vUnCom;
	}
	public void setVUnCom(String unCom) {
		vUnCom = unCom;
	}
	public String getVProd() {
		return vProd;
	}
	public void setVProd(String prod) {
		vProd = prod;
	}
	public String getUTrib() {
		return uTrib;
	}
	public void setUTrib(String trib) {
		uTrib = trib;
	}
	public String getQTrib() {
		return qTrib;
	}
	public void setQTrib(String trib) {
		qTrib = trib;
	}
	public String getVUnTrib() {
		return vUnTrib;
	}
	public void setVUnTrib(String unTrib) {
		vUnTrib = unTrib;
	}
	public String getCEAN() {
		return cEAN;
	}
	public void setCEAN(String cean) {
		cEAN = cean;
	}
	public String getCEANTrib() {
		return cEANTrib;
	}
	public void setCEANTrib(String trib) {
		cEANTrib = trib;
	}
	
	/* public ProdutosNFEBean(
			 			    String cProd
			 			  , String xProd
			 			  , String NCM
			 			  , String CFOP
			 			  , String uCom
			 			  , String qCom
			 			  , String vUnCom
			 			  , String vProd
			 			  , String uTrib
			 			  , String vUnTrib
			 			  , int nItem
			 			  , TributosInciBean tributos
	 ) {
		 
		 this.cProd = cProd;
		 this.xProd = xProd;
		 this.NCM = NCM;
		 this.CFOP = CFOP;
		 this.uCom = uCom;
		 this.qCom = qCom;
		 this.vUnCom = vUnCom;
		 this.vProd = vProd;
		 this.uTrib = uTrib;
		 this.vUnTrib = vUnTrib;
		 this.nItem = nItem;
		 this.imposto = tributos;
	 }

*/

}
