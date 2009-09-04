package org.adempierelbr.nfe.beans;

import org.adempierelbr.util.TextUtil;

public class AdicoesDI {

	private String nAdicao;
	private String nDI;
	private String nSeqAdic;
	private String cFabricante;
	private String vDescDI;
	public String getNAdicao() {
		return nAdicao;
	}
	public void setNAdicao(String adicao) {
		nAdicao = adicao;
	}
	public String getNSeqAdic() {
		return nSeqAdic;
	}
	public void setNDI(String nDI) {
		this.nDI = nDI;
	}
	public String getNDI() {
		return nDI;
	}
	public void setNSeqAdic(String seqAdic) {
		nSeqAdic = seqAdic;
	}
	public String getCFabricante() {
		return cFabricante;
	}
	public void setCFabricante(String fabricante) {
		cFabricante = TextUtil.retiraAcentos(fabricante);
	}
	public String getVDescDI() {
		return vDescDI;
	}
	public void setVDescDI(String descDI) {
		vDescDI = descDI;
	}

}
