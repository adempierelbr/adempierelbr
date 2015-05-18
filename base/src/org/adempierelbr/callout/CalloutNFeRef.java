package org.adempierelbr.callout;

import java.math.BigDecimal;
import java.util.Properties;

import org.adempierelbr.model.MLBRNotaFiscal;
import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.util.Env;

/**
 * CalloutNFeRef
 * 
 * Preenche o Campo NFeID com o ID da Nota Fiscal Selecionada
 * 
 * @author rfeitosa (Kenos, www.kenos.com.br)
 * @version $Id: CalloutNFeRef.java, v1.0 2015/MM/DD 11:03:01, rfeitosa Exp $
 *
 */
public class CalloutNFeRef extends CalloutEngine
{
	
	public String NFeReferenced (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		
		if (mTab.get_ValueAsString("LBR_NFeReferenced").equals(""))
			return "";
				
		BigDecimal nfeid = new BigDecimal(mTab.get_ValueAsString("LBR_NFeReferenced"));
		
		if (nfeid == null || nfeid == BigDecimal.ZERO)
			return "";
		
		MLBRNotaFiscal nf = new MLBRNotaFiscal(Env.getCtx(), nfeid.intValue(), null);
		
		if (nf == null || nf.getLBR_NotaFiscal_ID() == 0)
			return "";
		
		return mTab.setValue("LBR_NFeID", nf.getlbr_NFeID());
	}

}
