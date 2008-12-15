package org.adempierelbr.process;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.callout.CalloutDefineCFOP;
import org.adempierelbr.model.MOtherNF;
import org.adempierelbr.model.MOtherNFLine;
import org.compiere.model.MDocType;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MLocator;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MSequence;
import org.compiere.model.X_LBR_ProcessLink;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;

/**
 *	ProcProcessOtherNF
 *
 *  Process to Process Other NF
 *  
 *	 
 *	@author Alvaro Montenegro
 *  @contributor Mario Grigioni (Kenos, www.kenos.com.br) mgrigioni
 *	@version $Id: ProcProcessOtherNF.java, 29/08/2008 10:38:00 amontenegro
 */
public class ProcProcessOtherNF extends SvrProcess
{
	
	private Properties ctx = null;
	private String     trx = null;
	
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
		
		ctx = getCtx();
		trx = get_TrxName();
				
		boolean isProcessed = false;
		int LBR_OtherNF_ID  = getRecord_ID();
		
		try{
			MOtherNF otherNF = new MOtherNF(ctx,LBR_OtherNF_ID,trx);
		
			isProcessed = ProcessarLinhas(otherNF);
			otherNF.setProcessed(isProcessed);
			otherNF.save(trx);
		}
		catch(Exception e){
			log.log(Level.SEVERE, "", e);
		}
		
		return returnMsg.toString();
	}//doIt
	
	private boolean ProcessarLinhas(MOtherNF otherNF)
	{
		ArrayList<Integer> IDs = otherNF.getLines();
		Map<Integer,Integer> ordersAdded = new HashMap<Integer, Integer>();
		int C_DocTypeTarget_ID = otherNF.getC_DocType_ID();
		boolean processed = false;
		
		for(Integer ID : IDs)
		{
			MOtherNFLine line = new MOtherNFLine(ctx,ID,trx);
			Integer C_OrderLine_ID = 0;
			
			MInvoiceLine invLine = new MInvoiceLine(ctx,line.getC_InvoiceLine_ID(),trx);
			MInvoice inv = new MInvoice(ctx,invLine.getC_Invoice_ID(),trx);
			if(ordersAdded.containsKey(inv.getC_Order_ID()))
			{
				Integer C_Order_ID = ordersAdded.get(inv.getC_Order_ID());
				C_OrderLine_ID = CriaLinha(inv.getC_Order_ID(),C_Order_ID,invLine,line);
			}
			else
			{
				int C_Order_ID = CriaPedido(C_DocTypeTarget_ID,inv);
				C_OrderLine_ID = CriaLinha(inv.getC_Order_ID(),C_Order_ID,invLine,line);
				ordersAdded.put(inv.getC_Order_ID(), C_Order_ID);
			}
			
			if(C_OrderLine_ID != null && C_OrderLine_ID != 0)
			{
				X_LBR_ProcessLink process = new X_LBR_ProcessLink(ctx,0,trx);
				process.setC_InvoiceLine_ID(line.getC_InvoiceLine_ID());
				process.setC_OrderLine_ID(C_OrderLine_ID);
				processed = process.save(trx);
			}
			
			line.setProcessed(processed);
			line.save(trx);
		}
		
		return processed;
	}
	
	private int CriaPedido(int C_DocTypeTarget_ID, MInvoice inv)
	{		
		MOrder oldOrd = new MOrder(ctx,inv.getC_Order_ID(),trx);

		MOrder newOrd = copyFrom(oldOrd, Env.getContextAsDate(ctx, "#Date"), C_DocTypeTarget_ID, true, false, false, trx);
		
		if(newOrd.save(trx))
		{
			return newOrd.get_ID();
		}
		return 0;
	}
	
	private int CriaLinha(int oldC_Order_ID, int newC_Order_ID, MInvoiceLine invLine, MOtherNFLine line)
	{
		MOrderLine oldOrdLine = new MOrderLine(ctx,invLine.getC_OrderLine_ID(),trx);
		MOrderLine newOrdLine = copyLineFrom(oldOrdLine, newC_Order_ID, ctx, trx);
		
		MLocator loc = new MLocator(ctx,line.getM_Locator_ID(),trx);
		
		newOrdLine.setQty(line.getQty());
		newOrdLine.setM_Warehouse_ID(loc.getM_Warehouse_ID());
		newOrdLine.set_ValueOfColumn("M_Locator_ID", loc.getM_Locator_ID());
		
		Integer LBR_CFOP_ID = CalloutDefineCFOP.defineCFOP(ctx, newOrdLine.getM_Product_ID(), new MOrder(ctx,newC_Order_ID,trx), trx);
		newOrdLine.set_ValueOfColumn("LBR_CFOP_ID", LBR_CFOP_ID);
		
		newOrdLine.save(trx);
		
		return newOrdLine.get_ID();
	}
		
	/**
	 * 	Copy Order from another Order
	 *	@param from The source order
	 *	@param dateDoc Document Date
	 *	@param C_DocTypeTarget_ID Target Document Type for the new Order
	 *	@return Newly created line
	 */
	private MOrder copyFrom (MOrder from, Timestamp dateDoc, 
			int C_DocTypeTarget_ID, boolean isSOTrx, boolean counter, boolean copyASI, 
			String trxName)
		{
			MOrder to = new MOrder (from.getCtx(), 0, trxName);
			to.set_TrxName(trxName);
			MOrder.copyValues(from, to);
			to.set_ValueOfColumn("C_Order_ID", new Integer(0));
			to.set_ValueOfColumn("DocumentNo", getDocumentNo(C_DocTypeTarget_ID, from.getCtx(), trxName));
			//
			to.setDocStatus ("DR");		//	Draft
			to.setDocAction("CO");
			//
			to.setC_DocType_ID(0);
			to.setC_DocTypeTarget_ID (C_DocTypeTarget_ID);
			to.setIsSOTrx(isSOTrx);
			//
			to.setIsSelected (false);
			to.setDateOrdered (dateDoc);
			to.setDateAcct (dateDoc);
			to.setDatePromised (dateDoc);	//	assumption
			to.setDatePrinted(null);
			to.setIsPrinted (false);
			//
			to.setIsApproved (false);
			to.setIsCreditApproved(false);
			to.setC_Payment_ID(0);
			to.setC_CashLine_ID(0);
			//	Amounts are updated  when adding lines
			to.setGrandTotal(Env.ZERO);
			to.setTotalLines(Env.ZERO);
			//
			to.setIsDelivered(false);
			to.setIsInvoiced(false);
			to.setIsSelfService(false);
			to.setIsTransferred (false);
			to.setPosted (false);
			to.setProcessed (false);
			if (counter)
				to.setRef_Order_ID(from.getC_Order_ID());
			else
				to.setRef_Order_ID(0);
			//
			if (!to.save(trxName))
				throw new IllegalStateException("Could not create Order");
			if (counter)
				from.setRef_Order_ID(to.getC_Order_ID());
			
			return to;
	}	//	copyFrom
	
	/**
	 * 	Copy Line From other Order Line
	 *	@param otherLine orderLine
	 *	@param C_Order_ID C_Order_ID for the new line
	 *	@return Newly created line
	 */
	public MOrderLine copyLineFrom (MOrderLine otherLine,Integer C_Order_ID , Properties ctx, String trx)
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
		if (newLine.save(trx))
			return newLine;
		else
			return null;
	}	//	copyLinesFrom

	
	/**
	 * 	Get the Document Number for the new Order
	 *	@param C_DocTypeTarget_ID The target document type ID
	 *	@param ctx Context Properties
	 *	@param trx Transaction Name
	 *	@return Newly created line
	 */
	private String getDocumentNo(Integer C_DocTypeTarget_ID,Properties ctx, String trx)
	{
		String DocumentNo = "";
		MDocType docType = new MDocType(ctx,C_DocTypeTarget_ID,trx);
		MSequence Sequence = new MSequence(ctx,docType.getDocNoSequence_ID(),trx);
		if (Sequence.getPrefix() != null) 
			DocumentNo += Sequence.getPrefix();
		
		DocumentNo += ((Integer)Sequence.getNextID()).toString();
		
		if (Sequence.getSuffix() != null) 
			DocumentNo += Sequence.getSuffix();
		
		Sequence.save();
		
		return DocumentNo;
	}//getDocumentNo
}
