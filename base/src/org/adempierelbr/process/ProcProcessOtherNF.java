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

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.logging.Level;

import javax.sql.rowset.CachedRowSet;

import org.adempierelbr.callout.CalloutDefineCFOP;
import org.adempierelbr.model.MLBROtherNF;
import org.adempierelbr.model.MLBROtherNFLine;
import org.adempierelbr.util.AdempiereLBR;
import org.compiere.model.MBPartner;
import org.compiere.model.MDocType;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;

import com.sun.rowset.CachedRowSetImpl;

/**
 *	ProcProcessOtherNF
 *
 *  Process to Process Other NF
 *  
 *	 
 *	@author Alvaro Montenegro
 *	@version $Id: ProcProcessOtherNF.java, 29/08/2008 10:38:00 amontenegro
 */
public class ProcProcessOtherNF extends SvrProcess
{
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
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
	}//prepare
	
	
	/**
	 *  Perform process.
	 *  @return Message
	 *  @throws Exception if not successful
	 */
	protected String doIt() throws Exception
	{
		StringBuffer returnMsg = new StringBuffer();
		
		Properties ctx = getCtx();
		String trx = get_TrxName();
		int LBR_OtherNF_ID = getRecord_ID();
		
		MLBROtherNF otherNF = new MLBROtherNF(ctx,LBR_OtherNF_ID,trx);
		
		if(ProcessarLinhas(otherNF,returnMsg))
			otherNF.setProcessed(true);
		otherNF.save(trx);
		
		return returnMsg.toString();
	}//doIt
	
	private boolean ProcessarLinhas(MLBROtherNF otherNF, StringBuffer returnMsg)
	{	
		Map<Integer,Integer> ordersAdded = new HashMap<Integer, Integer>();
		Integer C_DocTypeTarget_ID = 0;
		
		Properties ctx = getCtx();
		String trx = get_TrxName();
		
		if(!precheck(otherNF,returnMsg))
			return false;
		
		//Verifica se é um retorno ou venda de consignação. MR = Material Return
		if(otherNF.getlbr_OtherNF_RequestType().equalsIgnoreCase("MR"))
			C_DocTypeTarget_ID = (Integer)otherNF.getC_DocType_ID();
		else
			C_DocTypeTarget_ID = (Integer)otherNF.getC_DocTypeTarget_ID();
		
		for(MLBROtherNFLine line : otherNF.getLines(null, null))
		{
			
			MInvoiceLine refInvLine = new MInvoiceLine(ctx,line.getC_InvoiceLine_ID(),trx);
			MInvoice refInv = new MInvoice(ctx,refInvLine.getC_Invoice_ID(),trx);
			
			if(ordersAdded.containsKey(refInv.getC_Order_ID()))
			{
				Integer C_Order_ID = ordersAdded.get(refInv.getC_Order_ID());
				CriaLinha(refInv.getC_Order_ID(),C_Order_ID,refInvLine,line,otherNF.getM_Warehouse_ID());
			}
			else
			{
				int C_Order_ID = CriaPedido(C_DocTypeTarget_ID,refInv.getC_Order_ID(),otherNF.getM_Warehouse_ID());
				CriaLinha(refInv.getC_Order_ID(),C_Order_ID,refInvLine,line,otherNF.getM_Warehouse_ID());
				ordersAdded.put(refInv.getC_Order_ID(), C_Order_ID);
			}
			
			line.setProcessed(true);
			line.save(trx);
		}
		
		for(Integer C_Order_ID : ordersAdded.values())
		{
			MOrder order = new MOrder(ctx,C_Order_ID,trx);
			if(order.getLines().length > 0)
			{
				order.setDocAction(MOrder.ACTION_Complete);
				if (order.processIt(MOrder.ACTION_Complete)){
					order.save(trx);
				}
				else{
					log.severe(order.getDocumentNo() + ": Error " + order.getProcessMsg());
				}
			}
		}
		return true;
	}
	
	private int CriaPedido(int C_DocTypeTarget_ID, int OldC_Order_ID, int M_Warehouse_ID)
	{
		Properties ctx = getCtx();
		String trx = get_TrxName();
		
		MOrder oldOrd = new MOrder(ctx,OldC_Order_ID,trx);
		
		MOrder newOrd = MOrder.copyFrom(oldOrd, new Timestamp(System.currentTimeMillis()), C_DocTypeTarget_ID, true, false, false, trx);
		newOrd.setC_DocTypeTarget_ID(C_DocTypeTarget_ID);
		newOrd.setDescription(null);
		newOrd.set_ValueOfColumn("Ref_Order_ID", null);
		newOrd.setM_Warehouse_ID(M_Warehouse_ID);
		
		//The copyFrom method also copied the lines, we don't want that. 
		for(MOrderLine line : newOrd.getLines())
		{
			line.delete(true, trx);
		}
		
		if(newOrd.save(trx))
		{
			return newOrd.get_ID();
		}
		return 0;
	}
	
	private int CriaLinha(int oldC_Order_ID, int newC_Order_ID, MInvoiceLine invLine, MLBROtherNFLine line, int M_Warehouse_ID)
	{
		Properties ctx = getCtx();
		String trx = get_TrxName();
		MOrderLine oldOrdLine = new MOrderLine(ctx,invLine.getC_OrderLine_ID(),trx);
		MOrderLine newOrdLine = copyLineFrom(oldOrdLine, oldC_Order_ID, ctx, trx);
		
		newOrdLine.setQty(line.getQty());
		newOrdLine.setM_Warehouse_ID(M_Warehouse_ID);
		newOrdLine.set_ValueOfColumn("M_Locator_ID", line.getM_Locator_ID());
		newOrdLine.setC_Order_ID(newC_Order_ID);
		newOrdLine.set_ValueOfColumn("lbr_Ref_C_InvoiceLine_ID", invLine.getC_InvoiceLine_ID()); 
		
		Integer cfopID = CalloutDefineCFOP.defineCFOP(ctx, newOrdLine.getM_Product_ID(), 
				new MOrder(ctx,newC_Order_ID,trx), trx);
		newOrdLine.set_ValueOfColumn("LBR_CFOP_ID", cfopID);
		
		newOrdLine.save(trx);
		
		return newOrdLine.get_ID();
	}
	
	
	private boolean precheck(MLBROtherNF otherNF,StringBuffer returnMsg)
	{
		boolean returnValue = false;
		PreparedStatement pstmt = null;
		String trx = get_TrxName();
				
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT ");
				sql.append("p.name,l.value,  ");
				if(otherNF.getlbr_OtherNF_RequestType().equalsIgnoreCase("MR"))
				{
					MDocType dt = new MDocType(getCtx(),otherNF.getC_DocType_ID(),trx);
					MDocType shpDT = new MDocType(getCtx(),dt.getC_DocTypeShipment_ID(),trx);
					MBPartner bp = new MBPartner(getCtx(),otherNF.getC_BPartner_ID(),trx);
					sql.append("(select sum(qtyonhand) from m_storage where m_locator_id = " + AdempiereLBR.getM_Locator_ID((Integer)shpDT.get_Value("M_Warehouse_ID"),bp, trx) + " and m_product_id = nfl.m_product_id) - qty ");
				}
				else
					sql.append("(select sum(qtyonhand) from m_storage where m_locator_id = nfl.m_locator_id and m_product_id = nfl.m_product_id) - qty ");
				sql.append("FROM ");
				sql.append("lbr_othernfline nfl ");
				sql.append("inner join m_product p on nfl.m_product_id = p.m_product_id ");
				sql.append("inner join m_locator l on nfl.m_locator_id = l.m_locator_id ");
				sql.append("where nfl.processed = 'N' and nfl.lbr_othernf_id = ? ");
		
		ResultSet rs = null;
		CachedRowSet crs = null;
		try
		{
			crs = new CachedRowSetImpl();
			pstmt = DB.prepareStatement(sql.toString(), trx);
			pstmt.setInt(1, otherNF.getLBR_OtherNF_ID());
			rs = pstmt.executeQuery();
			crs.populate(rs);
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally{
		       DB.close(rs, pstmt);
		       rs = null; pstmt = null;
		}
		
		try
		{
			while(crs.next())
			{
				if(crs.getBigDecimal(3).signum() == -1)
				{
					returnMsg.append(org.compiere.util.Msg.translate(getCtx(), "@NoQtyAvailable@") + " " + crs.getString(1) + " - " + crs.getString(2));
					returnValue = false;
					break;
				}
				else
					returnValue = true;
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		
		return returnValue;
	}
	
	
	/**
	 * 	Copy Line From other Order Line
	 *	@param otherLine orderLine
	 *	@param C_Order_ID C_Order_ID for the new line
	 *	@return Newly created line
	 */
	private MOrderLine copyLineFrom (MOrderLine otherLine,Integer C_Order_ID , Properties ctx, String trx)
	{
		MOrderLine newLine = new MOrderLine (ctx,0,trx);
		MOrderLine.copyValues(otherLine, newLine);
		newLine.setC_Order_ID(C_Order_ID);
		newLine.set_ValueOfColumn ("C_OrderLine_ID", new Integer(0));	//	new
		newLine.setM_AttributeSetInstance_ID(0);
		newLine.setS_ResourceAssignment_ID(0);
		newLine.setRef_OrderLine_ID(0);
		newLine.setQtyDelivered(Env.ZERO);
		newLine.setQtyInvoiced(Env.ZERO);
		newLine.setQtyReserved(Env.ZERO);
		newLine.setDateDelivered(null);
		newLine.setDateInvoiced(null);
		newLine.setProcessed(false);
		newLine.set_ValueOfColumn("lbr_Ref_C_InvoiceLine_ID", null);   //OtherNF Reference
		
		if (newLine.save(trx))
			return newLine;
		else
			return null;
	}	//	copyLinesFrom

//	private ArrayList<Integer> PegaLinhas(int LBR_OtherNF_ID)
//	{
//		ArrayList<Integer> lineIds = new ArrayList<Integer>();
//		PreparedStatement pstmt = null;
//		String trx = get_TrxName();
//		
//		StringBuffer sql = new StringBuffer("SELECT lbr_othernfline_id FROM lbr_othernfline WHERE lbr_othernf_id = ?");
//		
//		ResultSet rs = null;
//		try
//		{
//			pstmt = DB.prepareStatement(sql.toString(), trx);
//			pstmt.setInt(1, LBR_OtherNF_ID);
//			rs = pstmt.executeQuery();
//			while (rs.next())
//			{
//				lineIds.add(rs.getInt(1));
//			}
//		}
//		catch (Exception e)
//		{
//			log.log(Level.SEVERE, sql.toString(), e);
//		}
//		finally{
//		       DB.close(rs, pstmt);
//		}
//		
//		return lineIds;
//	}
	
//	/**
//	 * 	Get the Document Number for the new Order
//	 *	@param C_DocTypeTarget_ID The target document type ID
//	 *	@param ctx Context Properties
//	 *	@param trx Transaction Name
//	 *	@return Newly created line
//	 */
//	private String getDocumentNo(Integer C_DocTypeTarget_ID,Properties ctx, String trx)
//	{
//		String DocumentNo = "";
//		MDocType docType = new MDocType(ctx,C_DocTypeTarget_ID,trx);
//		MSequence Sequence = new MSequence(ctx,docType.getDocNoSequence_ID(),trx);
//		if (Sequence.getPrefix() != null) 
//			DocumentNo += Sequence.getPrefix();
//		
//		DocumentNo += ((Integer)Sequence.getNextID()).toString();
//		
//		if (Sequence.getSuffix() != null) 
//			DocumentNo += Sequence.getSuffix();
//		
//		Sequence.save();
//		
//		return DocumentNo;
//	}//getDocumentNo
}
