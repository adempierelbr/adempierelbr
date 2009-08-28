package org.adempierelbr.nfe.beans;

import java.util.ArrayList;
import java.util.List;

public class DadosNFEBean {

	// Dados da Nota Fiscal Eletronica
	private String versao;
	private String Id;
	private String pk_nitem;	
	private IdentNFEBean ide;
	private IdentEmitBean emit;
	private IdentFiscoBean avulsa;
	private IdentDestBean dest;
	private IdentLocRetiradaBean retirada;
	private IdentLocalEntrega entrega;
	private List det = new ArrayList();
	private ValoresBean total;
	private TransporteBean transp;
	private CobrancaBean cobr;
	private InfAssinaturaBean Signature;
	

	
	
	public String getVersao() {
		return versao;
	}
	public void setVersao(String versao) {
		this.versao = versao;
	}
	public String getPk_nitem() {
		return pk_nitem;
	}
	public void setPk_nitem(String pk_nitem) {
		this.pk_nitem = pk_nitem;
	}
	public IdentNFEBean getIde() {
		return ide;
	}
	public void setIde(IdentNFEBean ide) {
		this.ide = ide;
	}
	public IdentEmitBean getEmit() {
		return emit;
	}
	public void setEmit(IdentEmitBean emit) {
		this.emit = emit;
	}
	public IdentFiscoBean getAvulsa() {
		return avulsa;
	}
	public void setAvulsa(IdentFiscoBean avulsa) {
		this.avulsa = avulsa;
	}
	public IdentDestBean getDest() {
		return dest;
	}
	public void setDest(IdentDestBean dest) {
		this.dest = dest;
	}
	public IdentLocRetiradaBean getRetirada() {
		return retirada;
	}
	public void setRetirada(IdentLocRetiradaBean retirada) {
		this.retirada = retirada;
	}
	public IdentLocalEntrega getEntrega() {
		return entrega;
	}
	public void setEntrega(IdentLocalEntrega entrega) {
		this.entrega = entrega;
	}
	public ValoresBean getTotal() {
		return total;
	}
	public void setTotal(ValoresBean total) {
		this.total = total;
	}
	public TransporteBean getTransp() {
		return transp;
	}
	public void setTransp(TransporteBean transp) {
		this.transp = transp;
	}
	public CobrancaBean getCobr() {
		return cobr;
	}
	public void setCobr(CobrancaBean cobr) {
		this.cobr = cobr;
	}
	public InfAssinaturaBean getSignature() {
		return Signature;
	}
	public void setSignature(InfAssinaturaBean signature) {
		Signature = signature;
	}
	public String getId() {
		return Id;
	}
	public void setId(String id) {
		Id = id;
	}
	public void add(DetailsNFEBean detailsNFEBean) {
        det.add(detailsNFEBean);
}

	public List getContent() {
        return det;
}

}
