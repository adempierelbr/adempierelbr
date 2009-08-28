package org.adempierelbr.nfe.beans;

public class ValoresBean {

		// Valores Totais da NF-E
	
	private ValoresICMSBean ICMSTot;
	private ValoresISSQNBean ISSQNot;
	private ValoresRetTribBean retTrib;
	
	public ValoresICMSBean getICMSTot() {
		return ICMSTot;
	}
	public void setICMSTot(ValoresICMSBean tot) {
		ICMSTot = tot;
	}
	public ValoresISSQNBean getISSQNot() {
		return ISSQNot;
	}
	public void setISSQNot(ValoresISSQNBean not) {
		ISSQNot = not;
	}
	public ValoresRetTribBean getRetTrib() {
		return retTrib;
	}
	public void setRetTrib(ValoresRetTribBean retTrib) {
		this.retTrib = retTrib;
	}
	
	
	
				
}
