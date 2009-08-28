package org.adempierelbr.nfe.beans;

public class TributosInciBean {

	// Tributos Incidentes no Produto ou Servi�o
	
	private ICMSBean ICMS;
	private ImpostoIPIBean IPI;
	private ImpostoDIBean II;
	private PISBean PIS;
	private COFINSBean COFINS;

	public ICMSBean getICMS() {
		return ICMS;
	}

	public void setICMS(ICMSBean icms) {
		ICMS = icms;
	}

	public ImpostoIPIBean getIPI() {
		return IPI;
	}

	public void setIPI(ImpostoIPIBean ipi) {
		IPI = ipi;
	}

	public ImpostoDIBean getII() {
		return II;
	}

	public void setII(ImpostoDIBean ii) {
		II = ii;
	}

	public PISBean getPIS() {
		return PIS;
	}

	public void setPIS(PISBean pis) {
		PIS = pis;
	}

	public COFINSBean getCOFINS() {
		return COFINS;
	}

	public void setCOFINS(COFINSBean cofins) {
		COFINS = cofins;
	}
	
	
}
