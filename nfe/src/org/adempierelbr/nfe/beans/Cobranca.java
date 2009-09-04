package org.adempierelbr.nfe.beans;

public class Cobranca {
	
	// Dados da Cobran�a
	private CobrancaGrupoFatura fat;
	
	private CobrancaGrupoDuplicata dup;
	public CobrancaGrupoDuplicata getDup() {
		return dup;
	}
	public void setDup(CobrancaGrupoDuplicata dup) {
		this.dup = dup;
	}
	public CobrancaGrupoFatura getFat() {
		return fat;
	}
	public void setFat(CobrancaGrupoFatura fat) {
		this.fat = fat;
	}
	
	
	

}
