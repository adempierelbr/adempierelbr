/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.adempierelbr.util;

import java.math.BigDecimal;
import java.util.HashMap;

import org.adempierelbr.model.MLBRNFLineTax;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.model.X_LBR_TaxGroup;
import org.compiere.util.Env;

/**
 *	NFeTaxes
 *
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: NFeTaxes.java,v 1.0 2009/08/23 00:51:27 ralexsander Exp $
 */
public class NFeTaxes
{
	private String taxIndicator;

	private BigDecimal vBC;

	private BigDecimal vImposto;

	private BigDecimal pImposto;

	private BigDecimal pRedBC;

	private String CST;

	/**
	 * 	Constructor
	 *
	 * @param taxIndicator
	 * @param vBC
	 * @param vImposto
	 * @param pImposto
	 * @param vRedBC
	 * @param CST
	 */
	public NFeTaxes (String taxIndicator, String CST)
	{
		setTaxIndicator(taxIndicator);
		setvBC(Env.ZERO);
		setvImposto(Env.ZERO);
		setpImposto(Env.ZERO);
		setpRedBC(Env.ZERO);
		setCST(CST);
	}

	/**
	 * 	Constructor
	 *
	 * @param taxIndicator
	 * @param vBC
	 * @param vImposto
	 * @param pImposto
	 * @param vRedBC
	 * @param CST
	 */
	public NFeTaxes (String taxIndicator, BigDecimal vBC, BigDecimal vImposto,
				BigDecimal pImposto, BigDecimal pRedBC, String CST)
	{
		this (taxIndicator, CST);
		setvBC(vBC);
		setvImposto(vImposto);
		setpImposto(pImposto);
		setpRedBC(pRedBC);
	}

	/**
	 * 	Retorna os impostos da NF-e.
	 *
	 * 	Mesmo que a NF-e seja isenta de imposto é necessário
	 * 		retornar os registros de PIS, COFINS e ICMS
	 * 		mesmo que sem valores a destacar.
	 * @return NFeTaxes Taxes
	 */
	public static NFeTaxes[] getTaxes (MLBRNotaFiscalLine nfl)
	{
		HashMap<String, NFeTaxes> txs = new HashMap<String, NFeTaxes>();
		//
		MLBRNFLineTax[] lineTaxes = nfl.getTaxes();
		//
		for (MLBRNFLineTax lt : lineTaxes)
		{
			X_LBR_TaxGroup taxGroup =
				new X_LBR_TaxGroup(Env.getCtx(), lt.getLBR_TaxGroup_ID(), null);
			String taxIndicator = taxGroup.getName();
			//
			NFeTaxes tx = null;
			if (txs.containsKey(taxIndicator))
			{
				tx = txs.get(taxIndicator);
				tx.add (lt.getlbr_TaxBaseAmt(), lt.getlbr_TaxAmt());
			}
			else
			{
				tx = new NFeTaxes (taxIndicator, lt.getlbr_TaxBaseAmt(),
						lt.getlbr_TaxAmt(), lt.getlbr_TaxRate(),
						lt.getlbr_TaxBase(), lt.getTaxStatus(nfl.isSOTrx()));
			}
			//	Inclui os impostos no mapa
			txs.put(taxIndicator, tx);
		}
		//
		if (!txs.containsKey("PIS"))
		{
			NFeTaxes tx = new NFeTaxes ("PIS", nfl.getlbr_TaxStatus());
			txs.put("PIS", tx);
		}
		if (!txs.containsKey("COFINS"))
		{
			NFeTaxes tx = new NFeTaxes ("COFINS", nfl.getlbr_TaxStatus());
			txs.put("COFINS", tx);
		}
		if (!txs.containsKey("ICMS"))
		{
			NFeTaxes tx = new NFeTaxes ("ICMS", nfl.getlbr_TaxStatus());
			txs.put("ICMS", tx);
		}
		//
		NFeTaxes[] list = new NFeTaxes[txs.size()];
		txs.values().toArray(list);
		//
		return list;
	}	//	NFeTaxes

	private void add (BigDecimal vBC, BigDecimal vImposto)
	{
		this.vBC = this.vBC.add(vBC);
		this.vImposto = this.vImposto.add(vImposto);
	}	//	add

	public String getTaxIndicator()
	{
		return taxIndicator;
	}

	public void setTaxIndicator(String taxIndicator)
	{
		this.taxIndicator = taxIndicator;
	}

	public BigDecimal getvBC()
	{
		return vBC;
	}

	public void setvBC(BigDecimal vBC)
	{
		this.vBC = vBC;
	}

	public BigDecimal getvImposto()
	{
		return vImposto;
	}

	public void setvImposto(BigDecimal vImposto)
	{
		this.vImposto = vImposto;
	}

	public BigDecimal getpImposto()
	{
		return pImposto;
	}

	public void setpImposto(BigDecimal pImposto)
	{
		this.pImposto = pImposto;
	}

	public BigDecimal getpRedBC()
	{
		return pRedBC;
	}

	public void setpRedBC(BigDecimal pRedBC)
	{
		this.pRedBC = pRedBC;
	}

	public String getCST()
	{
		return CST;
	}

	public void setCST(String cST)
	{
		CST = cST;
	}
}	//	NFeTaxes
