package org.adempierelbr.nfe.beans;

import java.util.ArrayList;
import java.util.List;

public class DadosNFE {

	// Dados da Nota Fiscal Eletronica
	private String versao;
	private String Id;
	private String pk_nitem;	
	private IdentNFE ide;
	private IdentEmit emit;
	private IdentFisco avulsa;
	private IdentDest dest;
	private IdentLocRetirada retirada;
	private IdentLocalEntrega entrega;
	private List det = new ArrayList();
	private Valores total;
	private Transporte transp;
	private Cobranca cobr;
	private InfAssinatura Signature;
	

	
	
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
	public IdentNFE getIde() {
		return ide;
	}
	public void setIde(IdentNFE ide) {
		this.ide = ide;
	}
	public IdentEmit getEmit() {
		return emit;
	}
	public void setEmit(IdentEmit emit) {
		this.emit = emit;
	}
	public IdentFisco getAvulsa() {
		return avulsa;
	}
	public void setAvulsa(IdentFisco avulsa) {
		this.avulsa = avulsa;
	}
	public IdentDest getDest() {
		return dest;
	}
	public void setDest(IdentDest dest) {
		this.dest = dest;
	}
	public IdentLocRetirada getRetirada() {
		return retirada;
	}
	public void setRetirada(IdentLocRetirada retirada) {
		this.retirada = retirada;
	}
	public IdentLocalEntrega getEntrega() {
		return entrega;
	}
	public void setEntrega(IdentLocalEntrega entrega) {
		this.entrega = entrega;
	}
	public Valores getTotal() {
		return total;
	}
	public void setTotal(Valores total) {
		this.total = total;
	}
	public Transporte getTransp() {
		return transp;
	}
	public void setTransp(Transporte transp) {
		this.transp = transp;
	}
	public Cobranca getCobr() {
		return cobr;
	}
	public void setCobr(Cobranca cobr) {
		this.cobr = cobr;
	}
	public InfAssinatura getSignature() {
		return Signature;
	}
	public void setSignature(InfAssinatura signature) {
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
