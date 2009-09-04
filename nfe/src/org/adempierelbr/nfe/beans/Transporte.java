package org.adempierelbr.nfe.beans;

public class Transporte {

	// Informa��es do Transporte da NF-E
	
	private String modFrete;
	private TransporteGrupo transporta;
	private TransporteRetencao retTransp;
	private TransporteGrupoVeiculos veicTransp;
	private TransporteReboque reboque;
	private TransporteVol vol;
	private TransporteLacres lacres;
	
	
	public String getModFrete() {
		return modFrete;
	}
	public void setModFrete(String modFrete) {
		this.modFrete = modFrete;
	}
	public TransporteGrupo getTransporta() {
		return transporta;
	}
	public void setTransporta(TransporteGrupo transporta) {
		this.transporta = transporta;
	}
	public TransporteRetencao getRetTransp() {
		return retTransp;
	}
	public void setRetTransp(TransporteRetencao retTransp) {
		this.retTransp = retTransp;
	}
	public TransporteGrupoVeiculos getVeicTransp() {
		return veicTransp;
	}
	public void setVeicTransp(TransporteGrupoVeiculos veicTransp) {
		this.veicTransp = veicTransp;
	}
	public TransporteReboque getReboque() {
		return reboque;
	}
	public void setReboque(TransporteReboque reboque) {
		this.reboque = reboque;
	}
	public TransporteVol getVol() {
		return vol;
	}
	public void setVol(TransporteVol vol) {
		this.vol = vol;
	}
	public TransporteLacres getLacres() {
		return lacres;
	}
	public void setLacres(TransporteLacres lacres) {
		this.lacres = lacres;
	}
	
}
