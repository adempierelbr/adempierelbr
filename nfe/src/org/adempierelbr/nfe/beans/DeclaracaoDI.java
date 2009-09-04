package org.adempierelbr.nfe.beans;

import java.util.ArrayList;
import java.util.List;

import org.adempierelbr.util.TextUtil;

public class DeclaracaoDI {
	private String nDI;
	private String dDI;
	private String xLocDesemb;
	private String UFDesemb;
	private String dDesemb;
	private String cExportador;
	private List adi = new ArrayList();
	
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
		xLocDesemb = TextUtil.retiraAcentos(locDesemb);
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
	public List getAdi() {
		return adi;
	}
	public void addAdi(AdicoesDI adi) {
		this.adi.add(adi);
	}

	
}
