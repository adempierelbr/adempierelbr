package org.adempierelbr.nfe.beans;

public class DetailsNFEBean
{

	// Detalhamento de Produtos e Servi�os da NF-E

	private ProdutosNFEBean prod;
	private TributosInciBean imposto;
	private String infAdProd;
	private int nItem;

	/**
	 * 
	 * @param prod
	 * @param tributos
	 * @param nItem
	 */
	public DetailsNFEBean(ProdutosNFEBean prod, TributosInciBean tributos, int nItem)
	{
		this.imposto = tributos;
		this.prod = prod;
		this.nItem = nItem;
	}	//	DetailsNFEBean

	/**
	 * 
	 * @param prod
	 * @param tributos
	 * @param nItem
	 * @param inf
	 */
	public DetailsNFEBean (ProdutosNFEBean prod, TributosInciBean tributos,
			int nItem, String inf)
	{
		this.imposto = tributos;
		this.prod = prod;
		this.nItem = nItem;
		this.infAdProd = inf;
	}	//	DetailsNFEBean
}	//	DetailsNFEBean
