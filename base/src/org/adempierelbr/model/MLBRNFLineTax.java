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
import java.util.Map;
import java.util.Properties;

import org.adempierelbr.util.ImpostoBR;
import org.adempierelbr.util.TaxBR;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MInvoiceTax;
import org.compiere.model.MTax;
import org.compiere.util.CLogger;

/**
 *	MLBRNFLineTax
 *
 *	Model for X_LBR_NFLineTax
 *
 *	@author Mario Grigioni
 *	@version $Id: MLBRNFLineTax.java, 18/02/2010 09:58:00 mgrigioni
 */
public class MLBRNFLineTax extends X_LBR_NFLineTax {
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MLBRNFLineTax.class);

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNFLineTax(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNFLineTax (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}
	
	/**
	 * Constructor
	 * @param ctx
	 * @param LBR_TaxGroup_ID
	 * @param LBR_NotaFiscalLine_ID
	 * @param lbr_TaxBaseAmt
	 * @param lbr_TaxAmt
	 * @param lbr_TaxRate
	 * @param lbr_TaxBase
	 * @param description
	 * @param trx
	 */
	public MLBRNFLineTax(Properties ctx, int LBR_TaxGroup_ID, int LBR_NotaFiscalLine_ID,
			BigDecimal lbr_TaxBaseAmt, BigDecimal lbr_TaxAmt, BigDecimal lbr_TaxRate,
			BigDecimal lbr_TaxBase, String description, int AD_Org_ID, String trx){
		super(ctx,0,trx);
		setAD_Org_ID(AD_Org_ID);
		setLBR_TaxGroup_ID(LBR_TaxGroup_ID);
		setLBR_NotaFiscalLine_ID(LBR_NotaFiscalLine_ID);
		setlbr_TaxBaseAmt(lbr_TaxBaseAmt.setScale(TaxBR.SCALE, TaxBR.ROUND));
		setlbr_TaxAmt(lbr_TaxAmt.setScale(TaxBR.SCALE, TaxBR.ROUND));
		setlbr_TaxRate(lbr_TaxRate.setScale(TaxBR.SCALE, TaxBR.ROUND));
		setlbr_TaxBase(lbr_TaxBase.setScale(TaxBR.SCALE, TaxBR.ROUND));
		setDescription(description);
	}
	
	/**
	 * Cria registros na tabela LBR_NFLineTax
	 * @param ctx
	 * @param C_InvoiceLine_ID
	 * @param LBR_NotaFiscalLine_ID
	 * @param trx
	 */
	public static boolean createLBR_NFLineTax(Properties ctx, int C_InvoiceLine_ID, int LBR_NotaFiscalLine_ID, int AD_Org_ID, String trx){

		MInvoiceLine iLine = new MInvoiceLine(ctx,C_InvoiceLine_ID,trx);
		
		X_LBR_TaxName[] taxesName = ImpostoBR.getLBR_TaxName(ctx, C_InvoiceLine_ID, false, trx);
		Map<Integer,X_LBR_TaxLine> lTaxes = MLBRTax.getLines(ctx, iLine.get_ValueAsInt("LBR_Tax_ID"), trx);

		for (X_LBR_TaxName taxName : taxesName){

			if (lTaxes.containsKey(taxName.get_ID())){

				X_LBR_TaxLine taxLine = lTaxes.get(taxName.get_ID());
				int C_Tax_ID = MLBRTax.getC_Tax_ID(iLine.getC_Tax_ID(), taxName.get_ID(), trx);
				if (C_Tax_ID > 0 && taxLine.islbr_PostTax()){

					MTax tax = new MTax(ctx,C_Tax_ID,trx);
					int LBR_TaxGroup_ID = tax.get_ValueAsInt("LBR_TaxGroup_ID");
					
					MInvoiceTax iTax = TaxBR.getMInvoiceTax(ctx,iLine.getC_Invoice_ID(),tax.get_ID(),trx);
					
					if (LBR_TaxGroup_ID > 0 && iTax.getTaxAmt().signum() != 0) {
						MLBRNFLineTax nfLineTax = 
							new MLBRNFLineTax(ctx,LBR_TaxGroup_ID,LBR_NotaFiscalLine_ID,taxLine.getlbr_TaxBaseAmt(),
								taxLine.getlbr_TaxAmt().multiply(new BigDecimal(iTax.getTaxAmt().signum())),
								taxLine.getlbr_TaxRate(), taxLine.getlbr_TaxBase(), null, AD_Org_ID, trx);
						if (!nfLineTax.save(trx)){
							log.severe("Erro ao salvar LBR_NFLineTax." +
									   " LBR_NotaFiscalLine_ID = " + LBR_NotaFiscalLine_ID +
									   " LBR_TaxGroup_ID = " + LBR_TaxGroup_ID);
							return false;
						}
					} //if TaxGroup

				} //if PostTax/C_Tax_ID

			} //if TaxName

		}//loop TaxName
		
		return true;
	} //createLBR_NFLineTax
	
	/**
	 * Quando atualizar a LBR_NFLineTax, atualizar também a LBR_NFTax
	 */
	protected boolean afterSave(boolean newRecord, boolean success){
		
		if (newRecord || !success)
			return true;
		
		MLBRNotaFiscalLine nfLine = new MLBRNotaFiscalLine(getCtx(),getLBR_NotaFiscalLine_ID(),get_TrxName());
		if (!MLBRNFTax.createLBR_NFTax(getCtx(), nfLine.getLBR_NotaFiscal_ID(), nfLine.getAD_Org_ID(), get_TrxName())){
			return false;
		}
		
		return true;
	}

} //MLBRNFLineTax