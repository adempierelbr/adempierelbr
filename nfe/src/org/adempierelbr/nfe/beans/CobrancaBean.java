package org.adempierelbr.nfe.beans;

public class CobrancaBean {
	
	// Dados da Cobran�a
	private CobrancaGrupoFaturaBean fat;
	
	private CobrancaGrupoDuplicataBean dup;
	public CobrancaGrupoDuplicataBean getDup() {
		return dup;
	}
	public void setDup(CobrancaGrupoDuplicataBean dup) {
		this.dup = dup;
	}
	public CobrancaGrupoFaturaBean getFat() {
		return fat;
	}
	public void setFat(CobrancaGrupoFaturaBean fat) {
		this.fat = fat;
	}
	
	
	

}
