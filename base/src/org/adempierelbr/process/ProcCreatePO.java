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

import java.util.logging.*;

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
		
		p_C_Order_ID = getRecord_ID();
		
		MRequisition RC = new MRequisition(getCtx(),p_M_Requisition_ID,get_TrxName());
		MOrder PC = new MOrder(getCtx(),p_C_Order_ID,get_TrxName());
		
		MRequisitionLine[] lines = RC.getLines();
		for(int i=0;i<lines.length;i++){
			
			MOrderLine oLine = new MOrderLine(getCtx(),0,get_TrxName());
			oLine.setC_Order_ID(PC.getC_Order_ID());
			oLine.setC_BPartner_ID(PC.getC_BPartner_ID());
			oLine.setC_BPartner_Location_ID(PC.getC_BPartner_Location_ID());
			oLine.setM_Product_ID(lines[i].getM_Product_ID());
			oLine.setM_AttributeSetInstance_ID(lines[i].getM_AttributeSetInstance_ID());
			oLine.setC_Charge_ID(lines[i].getC_Charge_ID());
			oLine.setQtyEntered(lines[i].getQty());
			oLine.setPriceActual(lines[i].getPriceActual());
			oLine.setDescription(lines[i].getDescription());
			oLine.save(get_TrxName());
			
			lines[i].setC_OrderLine_ID(oLine.getC_OrderLine_ID());
			lines[i].save(get_TrxName());
		
		}
		
		return "ProcCreatePO Process Completed " + "Requisição: " + p_M_Requisition_ID;
	}	//	doIt
	
}	//ProcCreatePO