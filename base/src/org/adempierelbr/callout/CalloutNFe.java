package org.adempierelbr.callout;

import java.math.BigDecimal;
import java.util.Properties;

import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalDocRef;
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
 * @version $Id: CalloutNFe.java, v1.0 2015/11/30 11:03:01, rfeitosa Exp $
 */
public class CalloutNFe extends CalloutEngine
{
	
	public String NFeReferenced (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		// Verificar se o Campo NF-e Referenciada foi preenchido
		if ("".equals(mTab.get_ValueAsString(MLBRNotaFiscalDocRef.COLUMNNAME_LBR_NFeReferenced_ID))
				|| "0".equals(mTab.get_ValueAsString(MLBRNotaFiscalDocRef.COLUMNNAME_LBR_NFeReferenced_ID)))
			return "";
				
		BigDecimal nfeid = new BigDecimal(mTab.get_ValueAsString(MLBRNotaFiscalDocRef.COLUMNNAME_LBR_NFeReferenced_ID));
		
		if (nfeid == null || nfeid.equals(BigDecimal.ZERO))
			return "";
		
		MLBRNotaFiscal nf = new MLBRNotaFiscal(Env.getCtx(), nfeid.intValue(), null);
		
		return mTab.setValue(MLBRNotaFiscalDocRef.COLUMNNAME_lbr_NFeID, nf.getlbr_NFeID());
	}	//	NFeReferenced

	/**
	 * 		Fill NF-e
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 */
	public String EventFillNFeID (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		//	Preenche o valor da chave da NF-e
		if (mField.getColumnName().equals(MLBRNotaFiscal.COLUMNNAME_LBR_NotaFiscal_ID) && value != null)
		{
			MLBRNotaFiscal nf = new MLBRNotaFiscal (ctx, (Integer) value, null);
			if (nf == null || nf.getlbr_NFeID() == null)
				return "";
			//
			mTab.setValue (MLBRNotaFiscal.COLUMNNAME_LBR_NotaFiscal_ID, nf.getlbr_NFeID());
		}
		return "";
	}	//	EventFillNFeID
}	//	CalloutNFe
