package org.adempierelbr.nfe.beans;

public class DeclaracaoDIBean {
	private String nDI;
	private String dDI;
	private String xLocDesemb;
	private String UFDesemb;
	private String dDesemb;
	private String cExportador;
	private AdicoesDIBean adi;
	
	public String getNDI() {
		return nDI;
	}
	public void setNDI(String ndi) {
		nDI = ndi;
	}
	public String getDDI() {
		return dDI;
	}
	public void setDDI(String ddi) {
		dDI = ddi;
	}
	public String getXLocDesemb() {
		return xLocDesemb;
	}
	public void setXLocDesemb(String locDesemb) {
		xLocDesemb = locDesemb;
	}
	public String getUFDesemb() {
		return UFDesemb;
	}
	public void setUFDesemb(String desemb) {
		UFDesemb = desemb;
	}
	public String getDDesemb() {
		return dDesemb;
	}
	public void setDDesemb(String desemb) {
		dDesemb = desemb;
	}
	public String getCExportador() {
		return cExportador;
	}
	public void setCExportador(String exportador) {
		cExportador = exportador;
	}
	public AdicoesDIBean getAdi() {
		return adi;
	}
	public void setAdi(AdicoesDIBean adi) {
		this.adi = adi;
	}

	
}
