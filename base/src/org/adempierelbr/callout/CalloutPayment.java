package org.adempierelbr.callout;

import java.math.BigDecimal;
import java.util.Properties;

import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MPayment;
import org.compiere.util.Env;

/**
 * 		Callout Payment
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: CalloutPayment.java, v1.0 2015/07/24 5:10:22 PM, ralexsander Exp $
 */
public class CalloutPayment extends CalloutEngine
{
	/**
	 * 	Usado para manter um campo único para desconto e outro para juros.
	 * 
	 * 	O sistema preenche o campo padrão do Adempiere (juros negativo e desconto posito),
	 *		para que o processo siga as regras padrão do Adempiere.
	 */
	public String interestDiscount (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		if (value == null)
			return "";
		
		BigDecimal discountInterest = (BigDecimal) value;
		
		int multiplier = 1;
		//
		if (("LBR_DiscountAmt").equals(mField.getColumnName()))
		{
			//	Não permitir valores negativos nestes campos
			if (discountInterest.signum() == -1)
			{
				mTab.setValue ("LBR_DiscountAmt", Env.ZERO);
				mTab.setValue ("InterestAmt", discountInterest.abs());
			}
		}
		else if (("InterestAmt").equals(mField.getColumnName()))
		{
			//	Não permitir valores negativos nestes campos
			if (discountInterest.signum() == -1)
			{
				mTab.setValue ("LBR_DiscountAmt", discountInterest.abs());
				mTab.setValue ("InterestAmt", Env.ZERO);
			}
			multiplier = -1;	
		}
		else
			return "";
		
		//	Verifica se é juros ou desconto e ajusta no campo original do Adempiere
		//		para que seja feito o tratamento corretamente, juros negativo, desconto positivo.
		mTab.setValue (MPayment.COLUMNNAME_DiscountAmt, discountInterest.multiply (new BigDecimal (multiplier)));
		
		return "";
	}	//	interestDiscount
}	//	CalloutPayment
