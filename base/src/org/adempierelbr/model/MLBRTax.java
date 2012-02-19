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
import java.util.List;
import java.util.Map;
import java.util.Properties;

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

	/**	SISCOMEX		*/
	public static final String SISCOMEX 	= "SISCOMEX";
	
	/**	Freight			*/
	public static final String FREIGHT 		= "FREIGHT";
	
	/**	Insurance		*/
	public static final String INSURANCE 	= "INSURANCE";
	
	/**	Amount			*/
	public static final String AMT 			= "AMT";

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
					taxBaseAdd = evalFormula (taxFormula.getLBR_FormulaAdd().getlbr_Formula(), params);
				
				//	Valor base para ínicio do cálculo
				if (taxFormula.getLBR_FormulaBase_ID() > 0)
					amountBase = evalFormula (taxFormula.getLBR_FormulaBase().getlbr_Formula(), params);
				
				//	Caso não tenha sido parametrizado, utilizar apenas o valor do documento
				else
					amountBase = params.get(AMT);
				
				//	Marca se o imposto está incluso no preço
				taxLine.setIsTaxIncluded(taxFormula.isTaxIncluded());
			}
			//	Caso não tenha uma fórmula atribuida, considerar o flag da Lista de Preços
			else
				taxLine.setIsTaxIncluded(isTaxIncludedPriceList);
			//
			BigDecimal taxBase = taxBaseAdd.add(factor.multiply(amountBase)).multiply(Env.ONE.setScale(4)
					.subtract(taxLine.getlbr_TaxBase().divide(Env.ONEHUNDRED, BigDecimal.ROUND_HALF_UP))).setScale(2, BigDecimal.ROUND_HALF_UP);
			BigDecimal taxAmt = taxBase.multiply(taxLine.getlbr_TaxRate()).divide(Env.ONEHUNDRED, BigDecimal.ROUND_HALF_UP).setScale(2, BigDecimal.ROUND_HALF_UP);
			
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
	 * 	To String
	 */
	public String toString ()
	{
		return "MLBRTax [ID=" + get_ID() + ", Taxes=" + (getDescription() == null ? "" : getDescription()) + "]";
	}	//	toString
}	//	MLBRTax