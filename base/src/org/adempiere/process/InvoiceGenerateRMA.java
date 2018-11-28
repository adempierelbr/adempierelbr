/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2006 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/ 

package org.adempiere.process;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MInOut;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MRMA;
import org.compiere.model.MRMALine;
import org.compiere.process.DocAction;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * Generate invoice for Vendor RMA
 * @author  Ashley Ramdass
 * 
 * Based on org.compiere.process.InvoiceGenerate
 */
public class InvoiceGenerateRMA extends SvrProcess
{
	/**	Process Name				*/
	public static final String PROCESS_NAME = org.adempiere.process.InvoiceGenerateRMA.class.getName();
	 /** Manual Selection        */
    private boolean     p_Selection = false;
    /** Invoice Document Action */
    private String      p_docAction = DocAction.ACTION_Complete;
    /** Consolidate				*/
	private boolean		p_ConsolidateDocument = true;
    
    /** Number of Invoices      */
    private int         m_created = 0;
    /** Invoice Date            */
    private Timestamp   m_dateinvoiced = null;
    
    /**	The current Invoice	*/
	private MInvoice 	m_invoice = null;
	
	private String rmaDocumentInfo = null;

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
            else if (name.equals("Selection"))
                p_Selection = "Y".equals(para[i].getParameter());
            else if (name.equals("DocAction"))
                p_docAction = (String)para[i].getParameter();
            else if (name.equals("ConsolidateDocument"))
				p_ConsolidateDocument = "Y".equals(para[i].getParameter());
            else
                log.log(Level.SEVERE, "Unknown Parameter: " + name);
        }
        
        m_dateinvoiced = Env.getContextAsDate(getCtx(), "#Date");
        if (m_dateinvoiced == null)
        {
            m_dateinvoiced = new Timestamp(System.currentTimeMillis());
        }
    }

    protected String doIt() throws Exception
    {
    	// Selection
        if (!p_Selection)
        {
            throw new IllegalStateException("Shipments can only be generated from selection");
        }
        
        //	Select
        String sql = "SELECT rma.M_RMA_ID FROM M_RMA rma, T_Selection "
            + "WHERE rma.DocStatus='CO' AND rma.IsSOTrx='Y' AND rma.AD_Client_ID=? "
            + "AND rma.M_RMA_ID = T_Selection.T_Selection_ID " 
            + "AND T_Selection.AD_PInstance_ID=? ";
        
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try
        {
            pstmt = DB.prepareStatement(sql, get_TrxName());
            pstmt.setInt(1, Env.getAD_Client_ID(getCtx()));
            pstmt.setInt(2, getAD_PInstance_ID());
            rs = pstmt.executeQuery();
            
            // List
            while (rs.next())
            {
            	// RMA
            	MRMA rma = new MRMA(getCtx(), rs.getInt(1), get_TrxName());
            	
            	// Shippment
            	MInOut io = (MInOut) rma.getInOut();
            	
            	// Document Information
            	rmaDocumentInfo = rma.getDocumentInfo();
            	
            	// Complete Invoice
            	if (!p_ConsolidateDocument
            			|| (m_invoice != null 
    					&& m_invoice.getC_BPartner_Location_ID() != io.getC_BPartner_Location_ID())
    					|| (m_invoice != null && m_invoice.getAD_Org_ID() != rma.getAD_Org_ID()))
            		generateInvoice();
            	
            	// Create New Invoice
            	if (m_invoice == null)
            		m_invoice = createInvoice(rma);
            	
            	// Create Lines
            	createInvoiceLine(rma);
            }
            
            // Complete Invoice
            generateInvoice();
        }
        catch (Exception ex)
        {
			throw new AdempiereException(ex);
        }
        finally
        {
            DB.close(rs,pstmt);
            rs = null;pstmt = null;
        }
        StringBuilder msgreturn = new StringBuilder("@Created@ = ").append(m_created);
        return msgreturn.toString();
    }
    
    /**
     * Invoice Document Type Id
     * @param M_RMA_ID
     * @return
     */
    private int getInvoiceDocTypeId(int M_RMA_ID)
    {
        String docTypeSQl = "SELECT dt.C_DocTypeInvoice_ID FROM C_DocType dt "
            + "INNER JOIN M_RMA rma ON dt.C_DocType_ID=rma.C_DocType_ID "
            + "WHERE rma.M_RMA_ID=?";
        
        int docTypeId = DB.getSQLValue(null, docTypeSQl, M_RMA_ID);
        
        return docTypeId;
    }
    
    /**
     * Create Invoice Based on RMA
     * @param rma
     * @return
     */
    private MInvoice createInvoice(MRMA rma)
    {
        int docTypeId = getInvoiceDocTypeId(rma.get_ID());
            
        if (docTypeId == -1)
        {
            throw new IllegalStateException("Could not get invoice document type for Vendor RMA");
        }
        
        MInvoice invoice = new MInvoice(getCtx(), 0, get_TrxName());
        invoice.setRMA(rma);
        
        invoice.setC_DocTypeTarget_ID(docTypeId);
        if (!invoice.save())
        {
            throw new IllegalStateException("Could not create invoice");
        }
        
        return invoice;
    }
    
    /**
     * Create Invoice Line Based on RMA
     * @param rma
     */
    private void createInvoiceLine(MRMA rma)
    {
		MInvoiceLine invoiceLines[] = createInvoiceLines(rma, m_invoice);
		        
        if (invoiceLines.length == 0)
        {
            StringBuilder msglog = new StringBuilder("No invoice lines created: M_RMA_ID=")
                    .append(rma.getM_RMA_ID()).append(", M_Invoice_ID=").append(m_invoice.get_ID());
        	log.log(Level.WARNING, msglog.toString());
        }
    }
    
    /**
     * Create Invoice Line on Invoice
     * @param rma
     * @param invoice
     * @return
     */
    private MInvoiceLine[] createInvoiceLines(MRMA rma, MInvoice invoice)
    {
        ArrayList<MInvoiceLine> invLineList = new ArrayList<MInvoiceLine>();
        
        MRMALine rmaLines[] = rma.getLines(true);
        
        for (MRMALine rmaLine : rmaLines)
        {
            if (rmaLine.getM_InOutLine_ID() == 0 && rmaLine.getC_Charge_ID() == 0)
            {
                StringBuilder msgiste = new StringBuilder("No customer return line - RMA = ") 
                        .append(rma.getDocumentNo()).append(", Line = ").append(rmaLine.getLine());
            	throw new IllegalStateException(msgiste.toString());
            }
            
            MInvoiceLine invLine = new MInvoiceLine(invoice);
            invLine.setRMALine(rmaLine);
            if (rmaLine.getM_InOutLine().getM_AttributeSetInstance_ID() > 0)
            		invLine.setM_AttributeSetInstance_ID(rmaLine.getM_InOutLine().getM_AttributeSetInstance_ID());
            
            if (!invLine.save())
            {
                throw new IllegalStateException("Could not create invoice line");
            }
            
            invLineList.add(invLine);
        }
        
        MInvoiceLine invLines[] = new MInvoiceLine[invLineList.size()];
        invLineList.toArray(invLines);
        
        return invLines;
    }
    
    /**
     * Complete Generate Invoice
     */
    private void generateInvoice()
    {        
        log.info(Msg.getMsg(getCtx(), "Processing") + " " + rmaDocumentInfo);        
        
        StringBuilder processMsg = new StringBuilder().append(m_invoice.getDocumentNo());
        
        if (MRMA.DOCACTION_None.equals(p_docAction))
        	log.log(Level.WARNING, "DoAction None");
        
        else if (!m_invoice.processIt(p_docAction))
        {
            processMsg.append(" (NOT Processed)");
            StringBuilder msg = new StringBuilder("Invoice Processing failed: ").append(m_invoice).append(" - ").append(m_invoice.getProcessMsg());
            log.warning(msg.toString());
            throw new IllegalStateException(msg.toString());
        }
        
        if (!m_invoice.save())
        {
            throw new IllegalStateException("Could not update invoice");
        }
        
        // Add processing information to process log
        String message = Msg.parseTranslation(getCtx(), "@InvoiceProcessed@ " + processMsg.toString()); 
        addLog(m_invoice.getC_Invoice_ID(), m_invoice.getDateInvoiced(), null, processMsg.toString());
        m_created++;
        
        m_invoice = null;
    }
}