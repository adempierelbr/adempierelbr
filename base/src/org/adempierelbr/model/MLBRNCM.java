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
import java.util.Properties;

import org.compiere.model.MDocType;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.util.DB;

/**
 *	MNCM
 *
 *	Model for X_LBR_NCM
 *
 *	@author Mario Grigioni
 *	@version $Id: MNCM.java, 01/12/2009 11:14:00 mgrigioni
 */
public class MLBRNCM extends X_LBR_NCM {

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	/**	Logger			*/
	//private static CLogger log = CLogger.getCLogger(MNCM.class);

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNCM(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNCM (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}

	public static int getDefaultNCM(int AD_Client_ID)
	{

		String sql = "SELECT COALESCE(MAX(LBR_NCM_ID),0) FROM LBR_NCM "
			       + "WHERE IsDefault='Y' AND IsActive='Y' AND AD_Client_ID=?";

		int LBR_NCM_ID = DB.getSQLValue(null, sql, AD_Client_ID);

		return LBR_NCM_ID > 0 ? LBR_NCM_ID : 0;
	} //getDefaultNCM
	
	/**
	 * check if NCM has ICMS ST
	 * @param To_Region_ID
	 * @param isSOTrx
	 * @return boolean
	 */
	public boolean hasST(int To_Region_ID,boolean isSOTrx){
		MOrgInfo orgInfo = MOrgInfo.get(getCtx(),getAD_Org_ID(),get_TrxName());
		BigDecimal iva = MLBRNCMIVA.getProfitPercentage(getCtx(),get_ID(),orgInfo.getC_Location().getC_Region_ID(),To_Region_ID,isSOTrx);
		
		return iva.signum() == 	1 ? true : false;
	} //hasST

	public static String validateNCM(MInvoice invoice){

		Properties ctx = invoice.getCtx();
		String     trx = invoice.get_TrxName();
		
		MDocType dt = new MDocType(ctx,invoice.getC_DocTypeTarget_ID(),trx);

		MInvoiceLine[] lines = invoice.getLines();
		for(MInvoiceLine line : lines){

			/* VALIDAÇÃO POR CFOP
			if (line.getM_Product_ID() == 0) //Se produto não verifica
				continue;
			*/
			
			MProduct   product = new MProduct(ctx,line.getM_Product_ID(),trx);
			//if (!product.getProductType().equals(X_M_Product.PRODUCTTYPE_Item))
			//	continue;
			
			int LBR_CFOP_ID = line.get_ValueAsInt("LBR_CFOP_ID");
			MLBRCFOP cfop = new MLBRCFOP(ctx,LBR_CFOP_ID,trx);
			if (!dt.get_ValueAsBoolean("lbr_HasFiscalDocument") || 
				cfop.islbr_IsService() || //Serviço
				line.isDescription())
				continue;

			Integer LBR_NCM_ID = (Integer)line.get_Value("LBR_NCM_ID"); //	NCM da Fatura
			if (LBR_NCM_ID == null || LBR_NCM_ID.intValue() == 0)
				LBR_NCM_ID = (Integer)product.get_Value("LBR_NCM_ID"); //	NCM do Produto
			if (LBR_NCM_ID == null)
				LBR_NCM_ID = 0; //	Sem NCM

			int defaultNCM_ID = MLBRNCM.getDefaultNCM(line.getAD_Client_ID());

			/** Não laçar se o NCM estiver padrão.	*/
			if (LBR_NCM_ID == null || LBR_NCM_ID.intValue() == 0 || LBR_NCM_ID.intValue() == defaultNCM_ID)
			{
				return "Erro: NCM não cadastrado. Linha: " + line.getLine();
			}

		}

		return null;
	}

} //MNCM