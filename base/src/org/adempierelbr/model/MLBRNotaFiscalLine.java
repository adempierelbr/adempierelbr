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
package org.adempierelbr.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_C_InvoiceLine;
import org.adempierelbr.wrapper.I_W_C_OrderLine;
import org.adempierelbr.wrapper.I_W_C_Tax;
import org.adempierelbr.wrapper.I_W_M_Product;
import org.compiere.model.MCharge;
import org.compiere.model.MConversionRate;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrderLine;
import org.compiere.model.MProduct;
import org.compiere.model.MSysConfig;
import org.compiere.model.MTable;
import org.compiere.model.MTax;
import org.compiere.model.MUOM;
import org.compiere.model.Query;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *	MNotaFiscalLine
 *
 *	Model for X_LBR_NotaFiscalLine
 *
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: MNotaFiscalLine.java, 08/01/2008 11:01:00 mgrigioni
 *
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRNotaFiscalLine.java, v2.0 2011/10/15 2:52:22 AM, ralexsander Exp $
 */
public class MLBRNotaFiscalLine extends X_LBR_NotaFiscalLine {

	/**
	 *	Serial
	 */
	private static final long serialVersionUID = 1L;

	/** Parent					*/
	private MLBRNotaFiscal			m_parent = null;
	
	/**	Process Message */
	private String		m_processMsg = null;

	public String getProcessMsg() {

		if (m_processMsg == null)
			m_processMsg = "";

		return m_processMsg;
	}

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNotaFiscalLine (Properties ctx, int ID, String trx)
	{
		super(ctx, ID, trx);
	}	//	MLBRNotaFiscalLine

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNotaFiscalLine (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//	MLBRNotaFiscalLine
	
	/**
	 *  Constructor
	 *  @param nf Nota Fiscal
	 */
	public MLBRNotaFiscalLine (MLBRNotaFiscal nf)
	{
		super(nf.getCtx(), 0, nf.get_TrxName());
		setLBR_NotaFiscal_ID(nf.getLBR_NotaFiscal_ID());
		//
		m_parent = nf;
	}	//	MLBRNotaFiscalLine

	/**************************************************************************
	 *  selbr_ServiceTaxes
	 *  Geração de String com Impostos da Linha (Serviço)
	 */
	public void setlbr_ServiceTaxes(){

		X_LBR_NFLineTax[] taxes = getTaxes();
		String serviceString = "IMPOSTOS: ";
		for(int i=0;i<taxes.length;i++){
			X_LBR_TaxGroup taxGroup = new X_LBR_TaxGroup(getCtx(),taxes[i].getLBR_TaxGroup_ID(),get_TrxName());
			serviceString += taxGroup.getName() + ":" +
							 taxes[i].getlbr_TaxRate() + "% R$" +
							 taxes[i].getlbr_TaxAmt() + ", ";
		}

		serviceString = TextUtil.retiraPontoFinal(serviceString);

		if (taxes.length > 0)
			setlbr_ServiceTaxes("\n" + serviceString);
		else
			setlbr_ServiceTaxes("");

	} //setlbr_ServiceTaxes

	

	@Deprecated
	public BigDecimal getFreightAmt(BigDecimal totalLinesAmt, BigDecimal totalFreightAmt){

//		BigDecimal lineAmt = getLineTotalAmt();
//		BigDecimal freightAmt = lineAmt.divide(totalLinesAmt, TaxBR.MCROUND);
//		           freightAmt = totalFreightAmt.multiply(freightAmt);

		
		//	FIXME: O valor deve ser gravado em um campo criado na janela de NF
		if (getC_InvoiceLine_ID() > 0)
		{
			I_W_C_InvoiceLine ilW = POWrapper.create(new MInvoiceLine (Env.getCtx(), getC_InvoiceLine_ID(), get_TrxName()), I_W_C_InvoiceLine.class);
			
			if (ilW.getFreightAmt() != null)
				return ilW.getFreightAmt();
		}
		return Env.ZERO;// freightAmt.setScale(TaxBR.SCALE, TaxBR.ROUND);
	} //getFreightAmt

	@Deprecated
	public BigDecimal getInsuranceAmt(BigDecimal totalLinesAmt, BigDecimal totalInsuranceAmt){

//		BigDecimal lineAmt = getLineTotalAmt();
//		BigDecimal insuranceAmt = lineAmt.divide(totalLinesAmt, TaxBR.MCROUND);
//		           insuranceAmt = totalInsuranceAmt.multiply(insuranceAmt);

//		FIXME: O valor deve ser gravado em um campo criado na janela de NF
			if (getC_InvoiceLine_ID() > 0)
			{
				I_W_C_InvoiceLine ilW = POWrapper.create(new MInvoiceLine (Env.getCtx(), getC_InvoiceLine_ID(), get_TrxName()), I_W_C_InvoiceLine.class);
				
				if (ilW.getlbr_InsuranceAmt() != null)
					return ilW.getlbr_InsuranceAmt();
			}
		return Env.ZERO;//insuranceAmt.setScale(TaxBR.SCALE, TaxBR.ROUND);
	} //getInsuranceAmt


	/**
	 * Retorna o valor do Imposto
	 *
	 * @return BigDecimal amt
	 */
	public BigDecimal getTaxAmt(String taxIndicator){

		if (taxIndicator == null)
			return Env.ZERO;

		String sql = "SELECT SUM(lbr_TaxAmt) FROM LBR_NFLineTax " +
		             "WHERE LBR_NotaFiscalLine_ID = ? AND LBR_TaxGroup_ID IN " +
		             "(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?)";
		//
		BigDecimal result = DB.getSQLValueBD(get_TrxName(), sql, new Object[]{getLBR_NotaFiscalLine_ID(),taxIndicator.toUpperCase()});
		return result == null ? Env.ZERO : result;
	} //getTaxAmt

	/**
	 * Retorna a Base de Cálculo do Imposto
	 *
	 * @return BigDecimal amt
	 */
	public BigDecimal getTaxBaseAmt(String taxIndicator){

		if (taxIndicator == null)
			return Env.ZERO;

		String sql = "SELECT SUM(lbr_TaxBaseAmt) FROM LBR_NFLineTax " +
		             "WHERE LBR_NotaFiscalLine_ID = ? AND LBR_TaxGroup_ID IN " +
		             "(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?)";
		//
		BigDecimal result = DB.getSQLValueBD(get_TrxName(), sql, new Object[]{getLBR_NotaFiscalLine_ID(),taxIndicator.toUpperCase()});
		return result == null ? Env.ZERO : result;
	} //getTaxBase

	/**
	 * Retorna a redução da Base de Cálculo
	 *
	 * @return BigDecimal amt
	 */
	public BigDecimal getTaxBaseReduction(String taxIndicator){

		if (taxIndicator == null)
			return Env.ZERO;

		String sql = "SELECT AVG(lbr_TaxBase) FROM LBR_NFLineTax " +
		             "WHERE LBR_NotaFiscalLine_ID = ? AND LBR_TaxGroup_ID IN " +
		             "(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?)";
		//
		BigDecimal result = DB.getSQLValueBD(get_TrxName(), sql, new Object[]{getLBR_NotaFiscalLine_ID(),taxIndicator.toUpperCase()});
		return result == null ? Env.ZERO : result;
	} //getTaxBaseReduction

	/**
	 * Retorna a Alíquota do Imposto
	 *
	 * @return BigDecimal amt
	 */
	public BigDecimal getTaxRate(String taxIndicator){

		if (taxIndicator == null)
			return Env.ZERO;

		String sql = "SELECT AVG(lbr_TaxRate) FROM LBR_NFLineTax " +
		             "WHERE LBR_NotaFiscalLine_ID = ? AND LBR_TaxGroup_ID IN " +
		             "(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?)";
		//

		BigDecimal result = DB.getSQLValueBD(get_TrxName(), sql, new Object[]{getLBR_NotaFiscalLine_ID(),taxIndicator.toUpperCase()});
		return result == null ? Env.ZERO : result;
	} //getTaxRate

	/**
	 *  Retorno a LBR_NFLineTax
	 *
	 *  @return	LBR_NFLineTax
	 */
	public X_LBR_NFLineTax getTax(String taxIndicator)
	{

		if (taxIndicator == null)
			return null;

		String whereClause = "LBR_NotaFiscalLine_ID = ? AND LBR_TaxGroup_ID IN " +
				             "(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?)";

		MTable table = MTable.get(getCtx(), X_LBR_NFLineTax.Table_Name);
		Query query =  new Query(getCtx(), table, whereClause, get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_NotaFiscalLine_ID(),taxIndicator.toUpperCase()});

		List<X_LBR_NFLineTax> list = query.list();
		if (list.size() == 1)
			return (list.toArray(new X_LBR_NFLineTax[list.size()]))[0];

		return null;
	}	//	getICMSTax


	/**
	 *  Retorno o valor da Base de ICMSST
	 *
	 *  @return	BigDecimal	Base ICMSST
	 */
	public BigDecimal getICMSSTBase()
	{
		return getTaxBaseAmt("ICMSST");
	}	//	getICMSSTBase
	

	/**
	 *  Retorno a LBR_NFLineTax do ICMS
	 *
	 *  @return	LBR_NFLineTax
	 */
	public X_LBR_NFLineTax getICMSTax()
	{
		return getTax("ICMS");
	}	//	getICMSTax
	
	/**
	 *  Retorno a LBR_NFLineTax do ICMS
	 *
	 *  @return	LBR_NFLineTax
	 */
	public X_LBR_NFLineTax getICMSSTTax()
	{
		return getTax("ICMSST");
	}	//	getICMSTax

	/**
	 *  Retorno o valor do ICMS
	 *
	 *  @return	BigDecimal	Valor ICMS
	 */
	public BigDecimal getICMSAmt()
	{
		return getTaxAmt("ICMS");
	}	//	getICMSAmt

	/**
	 *  Retorno o valor da Base de ICMS
	 *
	 *  @return	BigDecimal	Base ICMS
	 */
	public BigDecimal getICMSBase()
	{
		return getTaxBaseAmt("ICMS");
	}	//	getICMSBase

	/**
	 *  Retorno o valor da Redução da Base de ICMS
	 *
	 *  @return	BigDecimal	Redução da Base de ICMS
	 */
	public BigDecimal getICMSBaseReduction()
	{
		return getTaxBaseReduction("ICMS");
	}	//	getICMSBaseReduction

	/**
	 *  Retorno a alíquota de ICMS
	 *
	 *  @return	BigDecimal	Alíquota ICMS
	 */
	public BigDecimal getICMSRate()
	{
		return getTaxRate("ICMS");
	}	//	getICMSRate

	/**
	 *  Retorno a LBR_NFLineTax do IPI
	 *
	 *  @return	LBR_NFLineTax
	 */
	public X_LBR_NFLineTax getIPITax()
	{
		return getTax("IPI");
	}	//	getIPITax

	/**
	 *  Retorno a LBR_NFLineTax do II
	 *
	 *  @return	LBR_NFLineTax
	 */
	public X_LBR_NFLineTax getIITax()
	{
		return getTax("II");
	}	//	getIITax

	/**
	 *  Retorno a LBR_NFLineTax do PIS
	 *
	 *  @return	LBR_NFLineTax
	 */
	public X_LBR_NFLineTax getPISTax()
	{
		return getTax("PIS");
	}	//	getPISTax

	/**
	 *  Retorno a LBR_NFLineTax do COFINS
	 *
	 *  @return	LBR_NFLineTax
	 */
	public X_LBR_NFLineTax getCOFINSTax()
	{
		return getTax("COFINS");
	}	//	getCOFINSTax

	/**
	 *  Retorno o valor do IPI
	 *
	 *  @return	BigDecimal	Valor IPI
	 */
	public BigDecimal getIPIAmt()
	{
		return getTaxAmt("IPI");
	}	//	getIPIAmt

	/**
	 *  Retorno o valor da Base de IPI
	 *
	 *  @return	BigDecimal	Base IPI
	 */
	public BigDecimal getIPIBase()
	{
		return getTaxBaseAmt("IPI");
	}	//	getIPIBase

	/**
	 *  Retorno a alíquota de IPI
	 *
	 *  @return	BigDecimal	Alíquota IPI
	 */
	public BigDecimal getIPIRate()
	{
		return getTaxRate("IPI");
	}	//	getIPIRate
	
	
	
	/***	New Class	***/
	
	
	/**
	 * 		Define os valores referentes a Linha da Fatura
	 * 	
	 * 	@param iLine
	 */
	public void setInvoiceLine (MInvoiceLine iLine)
	{
		I_W_C_InvoiceLine iLineW = POWrapper.create (iLine, I_W_C_InvoiceLine.class);
		
		//	IDs
		setC_InvoiceLine_ID(iLine.getC_InvoiceLine_ID());
		if (iLine.getC_Charge_ID()>0)
			setProduct ((MCharge)iLine.getC_Charge());
		else
			setProduct (iLine.getProduct());
		
		//  Seguro
		setlbr_InsuranceAmt(iLineW.getlbr_InsuranceAmt());
		
		//	Frete
		setFreightAmt(iLineW.getFreightAmt());
		
		//  Outras Despesas Acessórias
		setLBR_OtherChargesAmt(iLineW.getLBR_OtherChargesAmt());
		
		if (iLineW.getLBR_ADILine_ID() > 0)
		{
			MLBRADILine adil = new MLBRADILine (getCtx(), iLineW.getLBR_ADILine_ID(), get_TrxName());
			MLBRDI di = adil.getParent().getParent();
			//
			X_LBR_NFDI nfdi = new Query (getCtx(), X_LBR_NFDI.Table_Name, "LBR_NotaFiscal_ID=? AND LBR_DI=?", get_TrxName())
				.setParameters(getLBR_NotaFiscal_ID(), TextUtil.toNumeric(di.getDocumentNo())).first();
			
			if (nfdi == null)
			{
				nfdi = new X_LBR_NFDI (getCtx(), 0, get_TrxName());
				nfdi.setLBR_NotaFiscal_ID(getLBR_NotaFiscal_ID());
				nfdi.setlbr_DI(TextUtil.toNumeric (di.getDocumentNo()));
				nfdi.setDateTrx(di.getDateTrx());
				nfdi.setlbr_DataDesemb(di.getDateDoc());
				nfdi.setlbr_LocDesemb(di.getlbr_CustomSite());
				if (di.getC_Region_ID() > 0)
					nfdi.setlbr_BPRegion(di.getC_Region().getName());
				nfdi.setlbr_CodExportador(di.getBPartnerValue());
				nfdi.save();
			}
			setLBR_NFDI_ID(nfdi.getLBR_NFDI_ID());
			setManufacturer(di.getBPartnerValue());
			setlbr_NumAdicao(adil.getParent().getSeqNo());
			setlbr_NumSeqItem(adil.getSeqNo());
		}
		
		//	Valores
		setQty(iLine.getQtyEntered());
		setPrice(iLine.getParent().getC_Currency_ID(), iLine.getPriceEntered(), iLine.getPriceList());
		
		setC_UOM_ID(iLine.getC_UOM_ID());
		setLBR_CFOP_ID(iLineW.getLBR_CFOP_ID());
		
		//	Número de Série
		if (iLine.getM_AttributeSetInstance_ID()>0 && (MSysConfig.getBooleanValue("LBR_PRINT_SERIALNUMBER_NF", true, getAD_Client_ID())))
			setDescription(iLine.getM_AttributeSetInstance().getDescription());
		
		//	Impostos
		MLBRTax tax = new MLBRTax (getCtx(), iLineW.getLBR_Tax_ID(), get_TrxName());
				
		for (MLBRTaxLine tl : tax.getLines())
		{
			int Child_Tax_ID = tl.getChild_Tax_ID (iLineW.getC_Tax_ID());
			//
			if (!tl.islbr_PostTax() || Child_Tax_ID < 1)
				continue;
			
			I_W_C_Tax taxAD = POWrapper.create(new MTax (getCtx(), Child_Tax_ID, get_TrxName()), I_W_C_Tax.class);
			
			if (taxAD.getLBR_TaxGroup_ID() < 1)
				continue;
			
			MLBRNFLineTax nfLineTax = new MLBRNFLineTax (this);
			nfLineTax.setTaxes (tl);
			nfLineTax.setLBR_TaxGroup_ID(taxAD.getLBR_TaxGroup_ID());
			nfLineTax.save();
		}
	}	//	setInvoiceLine
	
	/**
	 * 		Define os valores referentes a Linha da Fatura
	 * 	
	 * 	@param oLine
	 */
	public void setOrderLine (MOrderLine oLine, boolean isDescription)
	{
		I_W_C_OrderLine oLineW = POWrapper.create (oLine, I_W_C_OrderLine.class);
		
		//	IDs
		if (get_ColumnIndex(MOrderLine.COLUMNNAME_C_OrderLine_ID) > 0)
			set_CustomColumn(MOrderLine.COLUMNNAME_C_OrderLine_ID, oLine.getC_OrderLine_ID());	//	FIXME: Manter compatibilidade com LBRK, mudar quando criar todos os campos
		setProduct (oLine.getProduct());
		
		if (!isDescription)
		{
			//	Valores
			setQty(oLine.getQtyEntered());
			setPrice(oLine.getParent().getC_Currency_ID(), oLine.getPriceEntered(), oLine.getPriceList());
			
			setC_UOM_ID(oLine.getC_UOM_ID());
			setLBR_CFOP_ID(oLineW.getLBR_CFOP_ID());
			
			//  Seguro
			setlbr_InsuranceAmt(oLineW.getlbr_InsuranceAmt());
			
			//	Frete
			setFreightAmt(oLineW.getFreightAmt());
			
		    //  Outras Despesas Acessórias
			setLBR_OtherChargesAmt(oLineW.getLBR_OtherChargesAmt());
			
			if (oLineW.getLBR_ADILine_ID() > 0)
			{
				MLBRADILine adil = new MLBRADILine (getCtx(), oLineW.getLBR_ADILine_ID(), get_TrxName());
				MLBRDI di = adil.getParent().getParent();
				//
				X_LBR_NFDI nfdi = new Query (getCtx(), X_LBR_NFDI.Table_Name, "LBR_NotaFiscal_ID=? AND LBR_DI=?", get_TrxName())
					.setParameters(getLBR_NotaFiscal_ID(), di.getDocumentNo()).first();
				
				if (nfdi == null)
				{
					nfdi = new X_LBR_NFDI (getCtx(), 0, get_TrxName());
					nfdi.setLBR_NotaFiscal_ID(getLBR_NotaFiscal_ID());
					nfdi.setlbr_DI(di.getDocumentNo());
					nfdi.setDateTrx(di.getDateTrx());
					nfdi.setlbr_DataDesemb(di.getDateDoc());
					nfdi.setlbr_LocDesemb(di.getlbr_CustomSite());
					if (di.getC_Region_ID() > 0)
						nfdi.setlbr_BPRegion(di.getC_Region().getName());
					nfdi.setlbr_CodExportador(di.getBPartnerValue());
					nfdi.save();
				}
				setLBR_NFDI_ID(nfdi.getLBR_NFDI_ID());
				setManufacturer(di.getBPartnerValue());
				setlbr_NumAdicao(adil.getParent().getSeqNo());
				setlbr_NumSeqItem(adil.getSeqNo());
			}
			
			//	FCI
			if (getlbr_CFOPName() != null && getlbr_CFOPName().length() > 1
					//	2 - Entrada de fora do Estado
					//	3 - Entrada Estrangeira
					//	6 - Saída para fora do Estado
					//	7 - Saída para o Estrageiro
					&& "2367".indexOf (getlbr_CFOPName().substring (0, 1)) != -1
					//	3 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 40% e inferior ou igual a 70%
					//	5 - Nacional, mercadoria ou bem com Conteúdo de Importação inferior ou igual a 40%
					//	8 - Nacional, mercadoria ou bem com Conteúdo de Importação superior a 70%
					&& "358".indexOf (getlbr_ProductSource()) != -1)
				setFCI();
		}
	}	//	setOrderLine

	/**
	 * 		Define os preços
	 * 		Define o valor do Desconto
	 * 
	 * 	@param 	Price
	 * 	@param	Price List
	 */
	public void setPrice (int C_Currency_ID, BigDecimal price, BigDecimal priceList)
	{
		//	Conversão
		if (C_Currency_ID != MLBRNotaFiscal.CURRENCY_BRL)
		{
			price = MConversionRate.convert(Env.getCtx(), price, 
					C_Currency_ID, MLBRNotaFiscal.CURRENCY_BRL, getAD_Client_ID(), getAD_Org_ID());
			priceList = MConversionRate.convert(Env.getCtx(), priceList, 
					C_Currency_ID, MLBRNotaFiscal.CURRENCY_BRL, getAD_Client_ID(), getAD_Org_ID());
		}
		
		//	Verifica o preço após a conversão para BRL
		if (price == null || priceList == null)
			throw new AdempiereException ("Impossível converter o valor fatura para Real (BRL) na geração da NF");
		//
		super.setPriceListAmt(priceList);
		
		if (getParent().isDiscountPrinted() && priceList.compareTo(price)==1)
		{
		    //  Desconto por Linha
			setDiscount(price, priceList);
			super.setPrice(priceList);	
		}
		else
			super.setPrice(price);
		//
		super.setLineTotalAmt(getPrice().multiply(getQty()));
	}	//	setPrice
	
	/**
	 * 	Define o desconto por Linha da Nota Fiscal
	 */
	private void setDiscount(BigDecimal price, BigDecimal priceList)
	{	
		if (getParent().isDiscountPrinted())
			setDiscountAmt(priceList.subtract(price).multiply(getQty()));
		else
			setDiscountAmt(Env.ZERO);
	}	//	setDiscount
	
	/**
	 * 		Define qual é o produto
	 * 	@param Product
	 */
	public void setProduct (MProduct product)
	{
		if (product == null)
		{
			setlbr_IsService(true);
			return;
		}
		//
		I_W_M_Product productW = POWrapper.create(product, I_W_M_Product.class);
		//
		setM_Product_ID (product.getM_Product_ID());
		
		if (productW.getLBR_LegalProductDescription()!=null)
			setProductName (productW.getLBR_LegalProductDescription());
		else
			setProductName (product.getName());
		
		setProductValue (product.getValue());
		setVendorProductNo(AdempiereLBR.getVendorProductNo(product.getM_Product_ID(), getParent().getC_BPartner_ID(), get_TrxName()));
		setlbr_IsService(MProduct.PRODUCTTYPE_Service.equals(productW.getProductType()));
		//
		setLBR_NCM_ID(productW.getLBR_NCM_ID());
		setLBR_CEST_ID(productW.getLBR_CEST_ID());
		//
		setlbr_ProductSource(productW.getlbr_ProductSource());
	}	//	setProduct
	
	public void setProduct(MCharge charge)
	{
		
		setlbr_IsService(true);
		//
		setProductName (charge.getName());
		setProductValue (charge.getName());
	}	//	setProduct
	
	/**	
	 * 	Ajusta a Unidade de Medida
	 */
	public void setC_UOM_ID (int C_UOM_ID)
	{
		if (C_UOM_ID > 0)
		{
			MUOM uom = MUOM.get(getCtx(), C_UOM_ID);
			setlbr_UOMName(uom.get_Translation(MUOM.COLUMNNAME_UOMSymbol));
		}
		else
			setlbr_UOMName(null);
		//
		super.setC_UOM_ID(C_UOM_ID);
	}	//	setC_UOM_ID
	
	/**	
	 * 	Ajusta a NCM
	 */
	public void setLBR_NCM_ID (int LBR_NCM_ID)
	{
		if (LBR_NCM_ID > 0)
		{
			MLBRNCM ncm = new MLBRNCM (getCtx(), LBR_NCM_ID, get_TrxName());
			setlbr_NCMName(ncm.getValue());
		}
		else
			setlbr_NCMName(null);
		//
		super.setLBR_NCM_ID(LBR_NCM_ID);
	}	//	setLBR_NCM_ID
	
	/**	
	 * 	Ajusta o CFOP
	 */
	public void setLBR_CFOP_ID (int LBR_CFOP_ID)
	{
		if (LBR_CFOP_ID > 0)
		{
			MLBRCFOP cfop = new MLBRCFOP (getCtx(), LBR_CFOP_ID, get_TrxName());
			setlbr_CFOPName(cfop.getValue());
		}
		else
			setlbr_CFOPName(null);
		//
		super.setLBR_CFOP_ID(LBR_CFOP_ID);
	}	//	setLBR_CFOP_ID
	
	/**
	 * 	Ajusta o valor do CEST
	 */
	@Override
	public void setLBR_CEST_ID (int LBR_CEST_ID)
	{
		if (LBR_CEST_ID > 0)
		{
			X_LBR_CEST cest = new X_LBR_CEST (getCtx(), LBR_CEST_ID, get_TrxName());
			setLBR_CESTName(cest.getValue());
		}
		else
			setLBR_CESTName(null);
		//
		super.setLBR_CEST_ID(LBR_CEST_ID);
	}	//	setLBR_CEST_ID
	
	/**
	 * 	Necessário para ajustar a precisão
	 * 		de casas decimais
	 */
	public void setPrice (BigDecimal Price)
	{
		if (Price == null)
			Price = Env.ZERO;
		//
		super.setPrice(Price.setScale(10, BigDecimal.ROUND_HALF_UP));
	}	//	setPrice
	
	/**
	 * 	Necessário para ajustar a precisão
	 * 		de casas decimais
	 */
	public void setQty (BigDecimal Qty)
	{
		if (Qty == null)
			Qty = Env.ZERO;
		//
		super.setQty(Qty.setScale(4, BigDecimal.ROUND_HALF_UP));
	}	//	setQty
	
	/**
	 * 	Executed before Delete operation.
	 *	@return true if record can be deleted
	 */
	protected boolean beforeDelete()
	{
		for (MLBRNFLineTax nflt : getTaxes())
		{
			nflt.deleteEx(true);
		}
		return true;
	}	//	beforeDelete
	
	/**
	 * 	Called before Save for Pre-Save Operation
	 * 	@param newRecord new record
	 *	@return true if record can be saved
	 */
	@Override
	protected boolean beforeSave(boolean newRecord)
	{
		//	Ajusta o valor do CFOP
		if ((newRecord || is_ValueChanged(COLUMNNAME_LBR_CFOP_ID)))
			setlbr_CFOPName(getLBR_CFOP_ID() > 0 ? getLBR_CFOP().getValue() : null);
		
		//	Ajusta o valor do NCM
		if ((newRecord || is_ValueChanged(COLUMNNAME_LBR_NCM_ID)))
			setlbr_NCMName(getLBR_NCM_ID() > 0 ? getLBR_NCM().getValue() : null);
		
		//	Ajusta o valor do CEST
		if ((newRecord || is_ValueChanged(COLUMNNAME_LBR_CEST_ID)))
			setLBR_CESTName(getLBR_CEST_ID() > 0 ? getLBR_CEST().getValue() : null);
		
		//	Ajusta o valor da UDM
		if ((newRecord || is_ValueChanged(COLUMNNAME_C_UOM_ID)))
		{
			if (getC_UOM_ID() > 0)
			{
				MUOM uom = MUOM.get(getCtx(), getC_UOM_ID());
				setlbr_UOMName(uom.get_Translation(MUOM.COLUMNNAME_UOMSymbol));
			}
			else
				setlbr_UOMName(null);
		}	
		return true;
	}	//	beforeSave
	
	/**
	 * 	Get NF Line Taxes
	 * 	@return MLBRNFLineTax[]
	 */
	public MLBRNFLineTax[] getTaxes()
	{
		MTable table = MTable.get(getCtx(), MLBRNFLineTax.Table_Name);
		Query query =  new Query(getCtx(), table, "LBR_NotaFiscalLine_ID=?", get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_NotaFiscalLine_ID()});

		List<MLBRNFLineTax> list = query.list();

		return list.toArray(new MLBRNFLineTax[list.size()]);
	}	//	getTaxes
	
	/**
	 * 	Is Sales Transaction
	 * 	@return
	 */
	public boolean isSOTrx ()
	{
		if (getParent() != null)
			return getParent().isSOTrx();
		//
		return true;
	}	//	isSOTrx
	
	/**
	 * 	Set FCI if exists
	 */
	public void setFCI ()
	{
		MLBRProductFCI fci = MLBRProductFCI.getActual (getM_Product_ID(), getAD_Org_ID(), getParent().getDateDoc(), get_TrxName());
		if (fci != null)
			setLBR_FCIValue (fci.getValue().toUpperCase());
	}	//	setFCI
	
	/**
	 * 	Get Parent
	 *	@return parent
	 */
	public MLBRNotaFiscal getParent()
	{
		if (m_parent == null)
			m_parent = new MLBRNotaFiscal (getCtx(), getLBR_NotaFiscal_ID(), get_TrxName());
		return m_parent;
	}	//	getParent
}	//	MLBRNotaFiscalLine
