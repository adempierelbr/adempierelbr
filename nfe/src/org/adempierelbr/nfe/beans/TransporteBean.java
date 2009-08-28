package org.adempierelbr.nfe.beans;

public class TransporteBean {

	// Informa��es do Transporte da NF-E
	
	private String modFrete;
	private TransporteGrupoBean transporta;
	private TransporteRetencaoBean retTransp;
	private TransporteGrupoVeiculos veicTransp;
	private TransporteReboqueBean reboque;
	private TransporteVolBean vol;
	private TransporteLacresBean lacres;
	
	
	public String getModFrete() {
		return modFrete;
	}
	public void setModFrete(String modFrete) {
		this.modFrete = modFrete;
	}
	public TransporteGrupoBean getTransporta() {
		return transporta;
	}
	public void setTransporta(TransporteGrupoBean transporta) {
		this.transporta = transporta;
	}
	public TransporteRetencaoBean getRetTransp() {
		return retTransp;
	}
	public void setRetTransp(TransporteRetencaoBean retTransp) {
		this.retTransp = retTransp;
	}
	public TransporteGrupoVeiculos getVeicTransp() {
		return veicTransp;
	}
	public void setVeicTransp(TransporteGrupoVeiculos veicTransp) {
		this.veicTransp = veicTransp;
	}
	public TransporteReboqueBean getReboque() {
		return reboque;
	}
	public void setReboque(TransporteReboqueBean reboque) {
		this.reboque = reboque;
	}
	public TransporteVolBean getVol() {
		return vol;
	}
	public void setVol(TransporteVolBean vol) {
		this.vol = vol;
	}
	public TransporteLacresBean getLacres() {
		return lacres;
	}
	public void setLacres(TransporteLacresBean lacres) {
		this.lacres = lacres;
	}
	
}
