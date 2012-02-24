/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2011 Ricardo Santana                                         *
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
import java.sql.Timestamp;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import org.adempiere.model.POWrapper;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.adempierelbr.wrapper.I_W_C_Order;
import org.adempierelbr.wrapper.I_W_C_OrderLine;
import org.adempierelbr.wrapper.I_W_M_Product;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MOrder;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

import bsh.EvalError;
import bsh.Interpreter;

/**
 * 		Model for MLBRTax
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 * 			<li> Sponsored by Soliton, www.soliton.com.br
 *	@version $Id: MLBRTax.java, v1.0 2011/05/05 8:19:03 PM, ralexsander Exp $
 *		
 *		Old Version:
 *	@contributor Mario Grigioni
 *  @contributor Fernando Lucktemberg (Faire, www.faire.com.br)
 */
public class MLBRTax extends X_LBR_Tax 
{
	/** Serial			*/
	private static final long serialVersionUID = 1932340299220283663L;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MLBRTax.class);

	/**	Numereals		*/
	private static final BigDecimal ONE 		= Env.ONE.setScale(17, BigDecimal.ROUND_HALF_UP);
	private static final BigDecimal ONEHUNDRED 	= Env.ONEHUNDRED.setScale(17, BigDecimal.ROUND_HALF_UP);
	
	/**	SISCOMEX		*/
	public static final String SISCOMEX 	= "SISCOMEX";
	
	/**	Freight			*/
	public static final String FREIGHT 		= "FREIGHT";
	
	/**	Insurance		*/
	public static final String INSURANCE 	= "INSURANCE";
	
	/**	Amount			*/
	public static final String AMT 			= "AMT";
	
	/**	ST				*/
	private static boolean hasSubstitution    		= false;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int LBR_Tax_ID (0 create new)
	 *  @param String trx
	 */
	public MLBRTax (Properties ctx, int LBR_Tax_ID, String trx)
	{
		super (ctx, LBR_Tax_ID, trx);
	}	//	MLBRTax

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRTax (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRTax
	
	/**
	 * 	Calculate taxes
	 * @param amt
	 * @param isTaxIncludedPriceList
	 * @param trxType
	 */
	public void calculate (boolean isTaxIncludedPriceList, Timestamp dateDoc, Map<String, BigDecimal> params, String trxType)
	{
		MLBRTaxLine[] taxLines = getLines();
		
		/**
		 * 	Os impostos de ST devem ser calculados por último
		 */
		Arrays.sort (taxLines);
		
		/**
		 * 	Faz o cálculo para todos os impostos
		 */
		for (MLBRTaxLine taxLine : taxLines)
		{
			MLBRTaxName taxName = new MLBRTaxName (Env.getCtx(), taxLine.getLBR_TaxName_ID(), null);
			MLBRTaxFormula taxFormula = taxName.getFormula (trxType, dateDoc);
			//
			log.fine("[MLBRTaxName=" + taxName.getName() + ", MLBRTaxFormula=" + taxFormula + "]");
			//
			BigDecimal taxBaseAdd 	= Env.ZERO;
			BigDecimal amountBase 	= Env.ZERO;
			BigDecimal factor 		= Env.ONE;
			
			if (taxFormula != null)
			{
				//	Fator do imposto
				factor 		= evalFormula (taxFormula.getFormula(isTaxIncludedPriceList), params);
				
				//	Valores adicionais para a BC
				if (taxFormula.getLBR_FormulaAdd_ID() > 0)
					taxBaseAdd = evalFormula (taxFormula.getLBR_FormulaAdd().getlbr_Formula(), params).setScale(17, BigDecimal.ROUND_HALF_UP);
				
				//	Valor base para ínicio do cálculo
				if (taxFormula.getLBR_FormulaBase_ID() > 0)
					amountBase = evalFormula (taxFormula.getLBR_FormulaBase().getlbr_Formula(), params).setScale(17, BigDecimal.ROUND_HALF_UP);
				
				//	Caso não tenha sido parametrizado, utilizar apenas o valor do documento
				else
					amountBase = params.get(AMT).setScale(17, BigDecimal.ROUND_HALF_UP);
				
				//	Marca se o imposto está incluso no preço
				taxLine.setIsTaxIncluded(taxFormula.isTaxIncluded());
			}
			//	Caso não tenha uma fórmula atribuida, considerar o flag da Lista de Preços
			else
				taxLine.setIsTaxIncluded(isTaxIncludedPriceList);
			
			/****************************************
			 *  	 	 Adicional x Fator			*
			 *   Base = -------------------			*
			 *  		1 - (Red. BC / 100)			*
			 ***************************************/
			BigDecimal taxBase = taxBaseAdd.add(factor.multiply(amountBase))
					.multiply(ONE.subtract(taxLine.getlbr_TaxBase().setScale(17, BigDecimal.ROUND_HALF_UP).divide(ONEHUNDRED, 17, BigDecimal.ROUND_HALF_UP))).setScale(2, BigDecimal.ROUND_HALF_UP);
			
			BigDecimal taxAmt = taxBase.multiply(taxLine.getlbr_TaxRate().setScale(17, BigDecimal.ROUND_HALF_UP)).divide(ONEHUNDRED, 17, BigDecimal.ROUND_HALF_UP).setScale(2, BigDecimal.ROUND_HALF_UP);
			
			//	Encontra o valor previamente calculado para ST
			if (MLBRTaxName.LBR_TAXTYPE_Substitution.equals(taxName.getlbr_TaxType())
					&& taxName.getLBR_TaxSubstitution_ID() > 0)
			{
				for (MLBRTaxLine taxLineSubs : taxLines)
				{
					//	Calcula a diferença do imposto
					if (taxLineSubs.getLBR_TaxName_ID() == taxName.getLBR_TaxSubstitution_ID())
					{
						taxAmt = taxAmt.subtract (taxLineSubs.getlbr_TaxAmt());
						break;
					}
				}
			}
			
			//	Inverte o valor dos impostos para os casos de retenção
			if (MLBRTaxName.LBR_TAXTYPE_Service.equals(taxName.getlbr_TaxType())
					&& taxName.isHasWithHold())
				taxAmt = taxAmt.negate();
			
			//	Não postar
			if (!taxLine.islbr_PostTax())
			{
				taxBase = Env.ZERO;
				taxAmt 	= Env.ZERO;
			}
			//
			taxLine.setlbr_TaxBaseAmt(taxBase);
			taxLine.setlbr_TaxAmt(taxAmt);
			taxLine.save();
		}
	}	//	calculate

	/**
	 * 	Get tax factor
	 * @param formula
	 * @return factor
	 */
	public BigDecimal evalFormula (String formula)
	{
		return evalFormula (formula, null);
	}	//	evalFormula
	
	/**
	 * 	Get tax factor
	 * @param formula
	 * @param params
	 * @return factor
	 */
	public BigDecimal evalFormula (String formula, Map<String, BigDecimal> params)
	{
		if (formula == null || formula.length() == 0)
			return Env.ONE;
		//
		Interpreter bsh = new Interpreter ();
		BigDecimal result = Env.ZERO;
		//
		try
		{
			log.finer ("Formula=" + formula);
			
			/**
			 * 	Permite recursividade nas fórmulas
			 */
			formula = MLBRFormula.parseFormulas (formula);
			
			/**
			 * 	Assim o erro de divisão por ZERO é evitado
			 * 		então não implica em ter que criar uma fórmula nova
			 * 		para casos onde alguma alíquota específica é zero.
			 */
			for (MLBRTaxName txName : MLBRTaxName.getTaxNames())
				if (formula.indexOf(txName.getName().trim()) > 0)
				{
					log.finer ("Fill to ZERO, TaxName=" + txName.getName().trim() + "=0");
					bsh.set(txName.getName().trim(), 1/Math.pow (10, 17));
				}
			
			//	Ajusta as alíquotas
			for (MLBRTaxLine tLine : getLines())
			{
				Double amt = tLine.getlbr_TaxRate().setScale(17, BigDecimal.ROUND_HALF_UP)
						.divide(Env.ONEHUNDRED, BigDecimal.ROUND_HALF_UP).doubleValue();
				//
				log.finer ("Set Tax Rate, TaxName=" + tLine.getLBR_TaxName().getName().trim() + "=" + amt);
				bsh.set(tLine.getLBR_TaxName().getName().trim(), amt);
			}
			//	Ajusta os parâmetros opcionais (ex. Frete, SISCOMEX)
			if (params != null) for (String key : params.keySet())
			{				
				log.finer ("Set Parameters, Parameter=" + key + "=" + params.get(key).doubleValue());
				bsh.set(key, params.get(key).doubleValue());
			}
			//
			result = new BigDecimal ((Double) bsh.eval(formula));
		}
		catch (EvalError e)
		{
			e.printStackTrace();
		}
		
		return result;
	}	//	evalFormula

	/**
	 * 	Set Description
	 */
	public void setDescription ()
	{
		String description = "";
		X_LBR_TaxLine[] lines = getLines();
		
		for (X_LBR_TaxLine line : lines)
		{
			MLBRTaxName tax = new MLBRTaxName (getCtx(), line.getLBR_TaxName_ID(), null);
			String name = tax.getName().trim();
			String rate = String.format("%,.2f", line.getlbr_TaxRate());
			description += ", " + name + "-" + rate;
		}

		if (description.startsWith(", ")) 
			description = description.substring(2);
		
		if (description.equals("")) 
			description = null;

		setDescription(description);
	}	//	setDescription

	/**
	 *  Copy the current MTax and return a new copy of the Object
	 *  
	 *  @return MTax newTax
	 */
	public MLBRTax copyTo ()
	{
		MLBRTax newTax = new MLBRTax(getCtx(), 0, get_TrxName());
		newTax.setDescription(getDescription());
		newTax.save(get_TrxName());
		copyLinesTo(newTax);
		//
		return newTax;
	}	//	copyTo

	/**
	 *  Copy lines from the current MTax to the newTax param
	 *  
	 * 	@param MLBRTax newTax
	 */
	public void copyLinesTo (MLBRTax newTax)
	{
		//	Delete old lines
		newTax.deleteLines();

		MLBRTaxLine[] lines = getLines();
		for (int i=0; i<lines.length; i++)
		{
			MLBRTaxLine newLine = new MLBRTaxLine (getCtx(), 0, get_TrxName());
			newLine.setLBR_Tax_ID(newTax.getLBR_Tax_ID());
			newLine.setLBR_TaxName_ID(lines[i].getLBR_TaxName_ID());
			newLine.setlbr_TaxRate(lines[i].getlbr_TaxRate());
			newLine.setlbr_TaxBase(lines[i].getlbr_TaxBase());
			newLine.setlbr_TaxBaseAmt(lines[i].getlbr_TaxBaseAmt());
			newLine.setlbr_TaxAmt(lines[i].getlbr_TaxAmt());
			newLine.setlbr_PostTax(lines[i].islbr_PostTax());
			newLine.setIsTaxIncluded(lines[i].isTaxIncluded());
			newLine.setLBR_LegalMessage_ID(lines[i].getLBR_LegalMessage_ID());
			newLine.setLBR_TaxStatus_ID(lines[i].getLBR_TaxStatus_ID());
			newLine.save(get_TrxName());
		}

		newTax.setDescription();
		newTax.save();
	} 	//	copyLinesTo

	/**
	 *  Copy lines from the current MTax to the newTax param
	 * 	
	 * 	@param LBR_Tax_ID
	 */
	public void copyLinesTo (int LBR_Tax_ID)
	{
		if (LBR_Tax_ID == 0)
			return;

		MLBRTax newTax = new MLBRTax(getCtx(), LBR_Tax_ID, get_TrxName());
		copyLinesTo (newTax);
	} 	//	copyLinesTo

	/**
	 *  	Get Lines
	 *  
	 *  @return MLBRTaxLine[] lines
	 */
	public MLBRTaxLine[] getLines ()
	{
		String whereClause = "LBR_Tax_ID = ?";

		MTable table = MTable.get(getCtx(), X_LBR_TaxLine.Table_Name);
		Query q =  new Query(getCtx(), table, whereClause, get_TrxName());
		q.setParameters(new Object[]{getLBR_Tax_ID()});

		List<MLBRTaxLine> list = q.list();
		MLBRTaxLine[] lines = new MLBRTaxLine[list.size()];
		return list.toArray(lines);
	} 	//	getLines

	/**
	 * 	Apaga as linhas
	 */
	public void deleteLines ()
	{
		String sql = "DELETE FROM LBR_TaxLine " +
        	         "WHERE LBR_Tax_ID=" + getLBR_Tax_ID();
		DB.executeUpdate(sql, get_TrxName());
	}	//	deleteLines

	/**
	 * 	Apaga as Linhas antes de apagar o registro
	 */
	public boolean delete (boolean force, String trxName)
	{
		deleteLines ();
		return super.delete (force, trxName);
	}	//	delete
	
	/**
	 * 		Retorna o registro do imposto baseado na pesquisa
	 * 
	 * 		Não usar este método em Callouts, pois a Callout pode acioná=lo antes que 
	 * 			a linha tenha sido salva.
	 * 
	 * 	@param Order Line
	 * 	@return Object Array (Taxes, Legal Msg, CFOP and CST) 
	 */
	public static Object[] getTaxes (I_W_C_OrderLine ol)
	{
		I_W_C_Order o = POWrapper.create(new MOrder (Env.getCtx(), ol.getC_Order_ID(), null), I_W_C_Order.class);
		I_W_M_Product p = POWrapper.create(new MProduct (Env.getCtx(), ol.getM_Product_ID(), null), I_W_M_Product.class);
		I_W_AD_OrgInfo oi = POWrapper.create(MOrgInfo.get(Env.getCtx(), o.getAD_Org_ID(), null), I_W_AD_OrgInfo.class);
		I_W_C_BPartner bp = POWrapper.create(new MBPartner (Env.getCtx(), o.getC_BPartner_ID(), null), I_W_C_BPartner.class);
		MBPartnerLocation bpLoc = new MBPartnerLocation (Env.getCtx(), o.getBill_Location_ID(), null); 
		//
		return getTaxes (o.getC_DocTypeTarget_ID(), o.isSOTrx(), o.getlbr_TransactionType(), p, oi, bp, bpLoc, o.getDateAcct());
	}	//	getTaxes
	
	/**
	 * 		Retorna o registro do imposto baseado na pesquisa
	 * 
	 * @param Order
	 * @param Order Line
	 * @param Product
	 * @param Organization Info
	 * @param Business Partner
	 * @param Date Acct
	 * @return Object Array (Taxes, Legal Msg, CFOP and CST) 
	 */
	@SuppressWarnings("deprecation")
	public static Object[] getTaxes (int C_DocTypeTarget_ID, boolean isSOTrx, String lbr_TransactionType, I_W_M_Product p, 
			I_W_AD_OrgInfo oi, I_W_C_BPartner bp, MBPartnerLocation bpLoc, Timestamp dateAcct)
	{
		Properties ctx = Env.getCtx();
		//
		Map<Integer, MLBRTaxLine> taxes = new HashMap<Integer, MLBRTaxLine>();
		//
		int LBR_LegalMessage_ID 	= 0;
		int LBR_CFOP_ID				= 0;
		String lbr_TaxStatus 		= "";
		//
		
		/**
		 * 	Organization
		 */
		processTaxes(taxes, oi.getLBR_Tax_ID());
		
		/**
		 * 	NCM
		 *	FIXME: Criar o campo de NCM na OV
		 */
		if (p.getM_Product_ID() > 0 && p.getLBR_NCM_ID() > 0)
		{
			MLBRNCM ncm = new MLBRNCM (Env.getCtx(), p.getLBR_NCM_ID(), null);
			MLBRNCMTax ncmTax = ncm.getLBR_Tax_ID(oi.getAD_Org_ID(), bpLoc.getC_Location().getC_Region_ID(), dateAcct);
			//
			if (ncmTax != null)
			{
				hasSubstitution = ncmTax.islbr_HasSubstitution();
				processTaxes(taxes, ncmTax.getLBR_Tax_ID());
			}
			else
			{
				hasSubstitution = ncm.islbr_HasSubstitution();
				processTaxes(taxes, ncm.getLBR_Tax_ID());	//	Legacy
			}
		}
		
		/**
		 * 	Matriz de ICMS
		 */
		MLBRICMSMatrix mICMS = MLBRICMSMatrix.get (ctx, oi.getAD_Org_ID(), oi.getC_Location().getC_Region_ID(), bpLoc.getC_Location().getC_Region_ID(), dateAcct, null);
		//
		if (mICMS != null && mICMS.getLBR_Tax_ID() > 0)
		{
			processTaxes(taxes, mICMS.getLBR_Tax_ID());
			//
			if (hasSubstitution && mICMS.getLBR_STTax_ID() > 0)
				processTaxes(taxes, mICMS.getLBR_STTax_ID());
		}
		
		/**
		 * 	Matriz de ISS
		 */
		MLBRISSMatrix mISS = MLBRISSMatrix.get (ctx, oi.getAD_Org_ID(), bpLoc.getC_Location().getC_Region_ID(), 
				(bpLoc != null ? bpLoc.getC_Location().getC_City_ID() : 0), p.getM_Product_ID(), dateAcct, null);
		//
		if (MProduct.PRODUCTTYPE_Service.equals(p.getProductType()) && mISS != null && mISS.getLBR_Tax_ID() > 0)
		{
			processTaxes(taxes, mISS.getLBR_Tax_ID());
		}
		
		/**
		 * 	Janela de Configuração de Impostos
		 */
		MLBRTaxConfiguration tc = MLBRTaxConfiguration.get (ctx, oi.getAD_Org_ID(), p.getM_Product_ID(), 
				p.getLBR_FiscalGroup_Product_ID(), isSOTrx, null);
		//
		if (tc != null)
		{
			/**
			 * 	Product Group
			 */
			if (MLBRTaxConfiguration.LBR_EXCEPTIONTYPE_FiscalGroup.equals(tc.getlbr_ExceptionType()))
			{
				MLBRTaxConfigProductGroup tcpg = tc.getTC_ProductGroup (oi.getAD_Org_ID(), dateAcct);
				
				if (tcpg != null)
				{
					processTaxes(taxes, tcpg.getLBR_Tax_ID());
					//
					if (tcpg.getLBR_LegalMessage_ID() > 0)
						LBR_LegalMessage_ID =  tcpg.getLBR_LegalMessage_ID();
					//
					if (tcpg.getlbr_TaxStatus() != null && tcpg.getlbr_TaxStatus().length() > 0)
						lbr_TaxStatus = tcpg.getlbr_TaxStatus() ;
				}
			}

			/**
			 * 	Product
			 */
			else if (MLBRTaxConfiguration.LBR_EXCEPTIONTYPE_Product.equals(tc.getlbr_ExceptionType()))
			{
				MLBRTaxConfigProduct tcp = tc.getTC_Product (oi.getAD_Org_ID(), dateAcct);
				
				if (tcp != null)
				{
					processTaxes(taxes, tcp.getLBR_Tax_ID());
					//
					if (tcp.getLBR_LegalMessage_ID() > 0)
						LBR_LegalMessage_ID =  tcp.getLBR_LegalMessage_ID();
					//
					if (tcp.getlbr_TaxStatus() != null && tcp.getlbr_TaxStatus().length() > 0)
						lbr_TaxStatus = tcp.getlbr_TaxStatus() ;
				}
			}
			
			/**
			 * 	Region
			 */
			MLBRTaxConfigRegion tcr = tc.getTC_Region (oi.getAD_Org_ID(), oi.getC_Location().getC_Region_ID(), (bpLoc != null ? bpLoc.getC_Location().getC_Region_ID() : 0), dateAcct);
			
			if (tcr != null)
			{
				processTaxes(taxes, tcr.getLBR_Tax_ID());
				//
				if (tcr.getLBR_LegalMessage_ID() > 0)
					LBR_LegalMessage_ID =  tcr.getLBR_LegalMessage_ID();
				//
				if (tcr.getlbr_TaxStatus() != null && tcr.getlbr_TaxStatus().length() > 0)
					lbr_TaxStatus = tcr.getlbr_TaxStatus() ;
			}
				
			/**
			 * 	Business Partner Group
			 */
			MLBRTaxConfigBPGroup tcbpg = tc.getTC_BPGroup (oi.getAD_Org_ID(), (isSOTrx ? bp.getLBR_FiscalGroup_Customer_ID() : bp.getLBR_FiscalGroup_Customer_ID()), dateAcct);
			
			if (tcbpg != null)
			{
				processTaxes(taxes, tcbpg.getLBR_Tax_ID());
				//
				if (tcbpg.getLBR_LegalMessage_ID() > 0)
					LBR_LegalMessage_ID =  tcbpg.getLBR_LegalMessage_ID();
				//
				if (tcbpg.getlbr_TaxStatus() != null && tcbpg.getlbr_TaxStatus().length() > 0)
					lbr_TaxStatus = tcbpg.getlbr_TaxStatus() ;
			}

			/**
			 * 	Business Partner
			 */
			MLBRTaxConfigBPartner tcbp = tc.getTC_BPartner (oi.getAD_Org_ID(), bp.getC_BPartner_ID(), dateAcct);
			
			if (tcbp != null)
			{
				processTaxes (taxes, tcbp.getLBR_Tax_ID());
				//
				if (tcbp.getLBR_LegalMessage_ID() > 0)
					LBR_LegalMessage_ID =  tcbp.getLBR_LegalMessage_ID();
				//
				if (tcbp.getlbr_TaxStatus() != null && tcbp.getlbr_TaxStatus().length() > 0)
					lbr_TaxStatus = tcbp.getlbr_TaxStatus();
			}
		}
		
		/**
		 * 	CFOP
		 */
		String lbr_DestionationType = null;
		
		/**
		 * 	No caso de SUFRAMA, definir como Zona Franca - FIXME
		 */
		if (bp.getlbr_Suframa() != null && bp.getlbr_Suframa().length() > 0)
			lbr_DestionationType = X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_ZonaFranca;
		
		/**
		 * 	Importação ou Exportação
		 */
		else if (bpLoc != null && bpLoc.getC_Location().getC_Country_ID() != oi.getC_Location().getC_Country_ID())
			lbr_DestionationType = X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_Estrangeiro;
		
		/**
		 * 	Dentro do Estado
		 */
		else if (bpLoc != null && bpLoc.getC_Location().getC_Region_ID() == oi.getC_Location().getC_Region_ID())
			lbr_DestionationType = X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_EstadosIdenticos;
		
		/**
		 * 	Fora do Estado
		 */
		else 
			lbr_DestionationType = X_LBR_CFOPLine.LBR_DESTIONATIONTYPE_EstadosDiferentes;
		
		MLBRCFOPLine cFOPLine = MLBRCFOP.chooseCFOP (oi.getAD_Org_ID(), C_DocTypeTarget_ID, p.getLBR_ProductCategory_ID(), 
				(isSOTrx ? bp.getLBR_CustomerCategory_ID() : bp.getLBR_VendorCategory_ID()), 
				lbr_TransactionType, lbr_DestionationType, hasSubstitution, p.islbr_IsManufactured(), null);
		//
		if (cFOPLine != null)
		{
			processTaxes (taxes, cFOPLine.getLBR_Tax_ID());
			//
			if (cFOPLine.getLBR_LegalMessage_ID() > 0)
				LBR_LegalMessage_ID =  cFOPLine.getLBR_LegalMessage_ID();
			//
			if (cFOPLine.getlbr_TaxStatus() != null && cFOPLine.getlbr_TaxStatus().length() > 0)
				lbr_TaxStatus = cFOPLine.getlbr_TaxStatus();
			//
			LBR_CFOP_ID = cFOPLine.getLBR_CFOP_ID();
		}
		
		//	Tax Definition
		MLBRTaxDefinition[] taxesDef = MLBRTaxDefinition.get (oi.getAD_Org_ID(), bp.getC_BPartner_ID(), C_DocTypeTarget_ID, 
				oi.getC_Location().getC_Region_ID(), (bpLoc != null ? bpLoc.getC_Location().getC_Region_ID() : 0),
				(isSOTrx ? bp.getLBR_CustomerCategory_ID() : bp.getLBR_VendorCategory_ID()), 
				(isSOTrx ? bp.getLBR_FiscalGroup_Customer_ID() : bp.getLBR_FiscalGroup_Vendor_ID()), p.getLBR_FiscalGroup_Product_ID(), 
				p.getLBR_NCM_ID(),  p.getLBR_ProductCategory_ID(), hasSubstitution, isSOTrx, lbr_TransactionType, dateAcct);
		//
		for (MLBRTaxDefinition td : taxesDef)
		{
			processTaxes (taxes, td.getLBR_Tax_ID());
			//
			if (td.getLBR_LegalMessage_ID() > 0)
				LBR_LegalMessage_ID =  td.getLBR_LegalMessage_ID();
			//
			if (td.getlbr_TaxStatus() != null && td.getlbr_TaxStatus().length() > 0)
				lbr_TaxStatus = td.getlbr_TaxStatus();
			//
//			if (td.getLBR_CFOP_ID() > 0)
//				LBR_CFOP_ID = cFOPLine.getLBR_CFOP_ID();
		}
		
		return new Object[]{taxes, LBR_LegalMessage_ID, LBR_CFOP_ID, lbr_TaxStatus};
	}	//	getTaxes

	/**
	 * 	Ajusta os impostos
	 * 	@param taxes
	 * 	@param tcpg
	 */
	private static void processTaxes (Map<Integer, MLBRTaxLine> taxes, int LBR_Tax_ID)
	{
		if (LBR_Tax_ID < 1 || taxes == null)
			return;
		//
		MLBRTax tax = new MLBRTax (Env.getCtx(), LBR_Tax_ID, null);
		//
		for (MLBRTaxLine tl : tax.getLines())
		{
			if (taxes.containsKey(tl.getLBR_TaxName_ID()))
				taxes.remove(tl.getLBR_TaxName_ID());
			//
			taxes.put (tl.getLBR_TaxName_ID(), tl.copy());
		}
	}	//	processTaxes
	
	/**
	 * 	To String
	 */
	public String toString ()
	{
		return "MLBRTax [ID=" + get_ID() + ", Taxes=" + (getDescription() == null ? "" : getDescription()) + "]";
	}	//	toString
}	//	MLBRTax
