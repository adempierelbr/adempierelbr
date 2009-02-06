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
package org.adempierelbr.process;

import java.util.Properties;
import java.util.logging.*;

import org.adempierelbr.callout.CalloutDefineCFOP;
import org.adempierelbr.callout.CalloutTax;
import org.adempierelbr.util.TaxesException;
import org.compiere.model.*;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;

/**
 *	ProcCreatePO
 *
 *	Process to Create lines from Requisition
 *	
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: ProcCreatePO.java, 02/03/2008 15:17:00 mgrigioni
 */
public class ProcCreatePO extends SvrProcess
{
	/**	Requisição de Compras	*/
	private int		p_M_Requisition_ID = 0;
	/**	Pedido de Compras	*/
	private int		p_C_Order_ID = 0;

	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals("M_Requisition_ID"))
				p_M_Requisition_ID = para[i].getParameterAsInt();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message (clear text)
	 *  @throws Exception if not successful
	 */
	protected String doIt() throws Exception
	{
		log.info("ProcCreatePO Process " + "Requisição: " + p_M_Requisition_ID);
		
		if (p_M_Requisition_ID == 0){
			throw new IllegalArgumentException("Requisição == 0");
		}
		
		Properties ctx = getCtx();
		String     trx = get_TrxName();
		
		p_C_Order_ID = getRecord_ID();
		
		MRequisition RC = new MRequisition(ctx,p_M_Requisition_ID,trx);
		MOrder PC = new MOrder(ctx,p_C_Order_ID,trx);
		
		MRequisitionLine[] lines = RC.getLines();
		for(int i=0;i<lines.length;i++){
			
			MOrderLine oLine = new MOrderLine(ctx,0,trx);
			MProduct product = new MProduct(ctx,lines[i].getM_Product_ID(),trx);
			
			oLine.setC_Order_ID(PC.getC_Order_ID());
			oLine.setC_BPartner_ID(PC.getC_BPartner_ID());
			oLine.setC_BPartner_Location_ID(PC.getC_BPartner_Location_ID());
			oLine.setM_Product_ID(product.getM_Product_ID());
			oLine.setM_AttributeSetInstance_ID(lines[i].getM_AttributeSetInstance_ID());
			oLine.setC_Charge_ID(lines[i].getC_Charge_ID());
			oLine.setQty(lines[i].getQty());
			oLine.setPrice(lines[i].getPriceActual());
			oLine.setDescription(lines[i].getDescription());
			
			//CFOP
			Integer LBR_CFOP_ID = CalloutDefineCFOP.defineCFOP(ctx, product.getM_Product_ID(), PC, trx);
			oLine.set_ValueOfColumn("LBR_CFOP_ID", LBR_CFOP_ID);
			
			//IMPOSTOS
			CalloutTax cTax = new CalloutTax();
			TaxesException tE = cTax.getException(ctx, PC, product, (Integer)lines[i].get_Value("LBR_Tax_ID"));
			if (tE != null){
				oLine.set_ValueOfColumn("LBR_Tax_ID", tE.getLBR_Tax_ID());
				oLine.set_ValueOfColumn("LBR_LegalMessage_ID", tE.getLBR_LegalMessage_ID());
				oLine.set_ValueOfColumn("lbr_TaxStatus", tE.getlbr_TaxStatus());
			}
			oLine.save(get_TrxName());
			
			lines[i].setC_OrderLine_ID(oLine.getC_OrderLine_ID());
			lines[i].save(get_TrxName());
		
		}
		
		String description = RC.getDescription();
		if (description == null)
			description = "";
		
		description = "Pedido No: " + PC.getDocumentNo() + " | " + description;
		
		RC.setDescription(description);
		RC.save(get_TrxName());
		
		return "ProcCreatePO Process Completed " + "Requisição: " + p_M_Requisition_ID;
	}	//	doIt
	
}	//ProcCreatePO