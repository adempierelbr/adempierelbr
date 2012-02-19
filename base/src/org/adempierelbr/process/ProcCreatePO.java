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
import java.util.logging.Level;

import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MProduct;
import org.compiere.model.MRequisition;
import org.compiere.model.MRequisitionLine;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;

/**
 *		Process to Create PO Lines from Requisition
 *	
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@contributor Ricardo Santana (Kenos, www.kenos.com.br)
 *		<li>	Compatibility to new Taxes System
 *	@version $Id: ProcCreatePO.java, v2.0 2008/03/02 1:03:21 AM, mgrigioni Exp $
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
		//
		p_C_Order_ID = getRecord_ID();
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message (clear text)
	 *  @throws Exception if not successful
	 */
	protected String doIt() throws Exception
	{
		log.info("ProcCreatePO Process " + "Requisição: " + p_M_Requisition_ID);
		
		if (p_M_Requisition_ID == 0)
			throw new IllegalArgumentException("Requisição Inválida");
		
		Properties ctx = getCtx();
		String     trx = get_TrxName();
		
		MRequisition requisition = new MRequisition (ctx, p_M_Requisition_ID, trx);
		MOrder order = new MOrder (ctx, p_C_Order_ID, trx);
		
		for(MRequisitionLine line : requisition.getLines())
		{	
			MOrderLine oLine = new MOrderLine(ctx,0,trx);
			MProduct product = new MProduct(ctx,line.getM_Product_ID(),trx);
			//
			oLine.setC_Order_ID(order.getC_Order_ID());
			oLine.setC_BPartner_ID(order.getC_BPartner_ID());
			oLine.setC_BPartner_Location_ID(order.getC_BPartner_Location_ID());
			oLine.setM_Product_ID(product.getM_Product_ID());
			oLine.setM_AttributeSetInstance_ID(line.getM_AttributeSetInstance_ID());
			oLine.setC_Charge_ID(line.getC_Charge_ID());
			oLine.setQty(line.getQty());
			oLine.setPrice(line.getPriceActual());
			oLine.setDescription(line.getDescription());
			oLine.save();
			
			line.setC_OrderLine_ID(oLine.getC_OrderLine_ID());
			line.save();
		}
		
		String description = requisition.getDescription();
		if (description == null)
			description = "";
		
		description = "Pedido No: " + order.getDocumentNo() + " | " + description;
		
		requisition.setDescription(description);
		requisition.save();
		
		return "ProcCreatePO Process Completed " + "Requisição: " + p_M_Requisition_ID;
	}	//	doIt
}	//	ProcCreatePO