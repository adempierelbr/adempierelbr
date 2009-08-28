package org.adempierelbr.nfe.beans;

public class DetailsNFEBean{

	// Detalhamento de Produtos e Servi�os da NF-E
	
	private ProdutosNFEBean prod;
	private TributosInciBean imposto;
	private InformacoesBean infAdProd;
	private int nItem; 


	 public DetailsNFEBean(
	    ProdutosNFEBean prod
	  , TributosInciBean tributos
	  , int nItem
) {

		 	this.imposto = tributos;
		 	this.prod = prod;
		 	this.nItem = nItem;
}	
}
