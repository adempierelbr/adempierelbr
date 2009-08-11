/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                        *
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
package org.compiere.grid;

import java.awt.event.*;
import java.beans.*;
import java.math.*;
import java.sql.*;
import java.util.*;
import java.util.logging.*;
import javax.swing.table.*;
import org.compiere.model.*;
import org.compiere.util.*;

/**
 *  Create Invoice Transactions from PO Orders or Receipt
 *
 *  @author Jorg Janke
 *  @contributor	Ricardo Santana (Kenos, www.kenos.com.br) - ralexsander
 *  @version  $Id: VCreateFromInvoice.java,v 1.4 2006/07/30 00:51:28 jjanke Exp $
 */
public class VCreateFromInvoice extends VCreateFrom implements VetoableChangeListener
{
	/**
	 *  Protected Constructor
	 *  @param mTab MTab
	 */
	VCreateFromInvoice(GridTab mTab)
	{
		super (mTab);
		log.info(mTab.toString());
	}   //  VCreateFromInvoice

	private boolean 	m_actionActive = false;
	private MInOut		m_inout = null;
	/**  Loaded RMA             */
	private MRMA        m_rma = null;

	/**
	 *  Dynamic Init
	 *  @throws Exception if Lookups cannot be initialized
	 *  @return true if initialized
	 */
	protected boolean dynInit() throws Exception
	{
		log.config("");
		setTitle(Msg.getElement(Env.getCtx(), "C_Invoice_ID", false) + " .. " + Msg.translate(Env.getCtx(), "CreateFrom"));

		parameterBankPanel.setVisible(false);
		invoiceLabel.setVisible(false);
		invoiceField.setVisible(false);
		locatorLabel.setVisible(false);
		locatorField.setVisible(false);
		sameWarehouseCb.setVisible(false);
        
		// RMA Selection option should only be available for AP Credit Memo
		Integer docTypeId = (Integer)p_mTab.getValue("C_DocTypeTarget_ID");
		MDocType docType = MDocType.get(Env.getCtx(), docTypeId);
		if (!MDocType.DOCBASETYPE_APCreditMemo.equals(docType.getDocBaseType()))
		{
		    rmaLabel.setVisible(false);
		    rmaField.setVisible(false);
		}

		initBPartner(true);
		bPartnerField.addVetoableChangeListener(this);
		return true;
	}   //  dynInit

	/**
	 *  Init Details - load receipts not invoiced
	 *  @param C_BPartner_ID BPartner
	 */
	protected void initBPDetails(int C_BPartner_ID)
	{
		initBPShipmentDetails(C_BPartner_ID);
	    initBPRMADetails(C_BPartner_ID);
	}   //  initDetails

	/**
	 * 
	 * @param C_BPartner_ID
	 */
	private void initBPShipmentDetails(int C_BPartner_ID)
	{
		log.config("C_BPartner_ID" + C_BPartner_ID);

		//  load Shipments (Receipts) - Completed, Closed
		shipmentField.removeActionListener(this);
		shipmentField.removeAllItems();
		//	None
		KeyNamePair pp = new KeyNamePair(0,"");
		shipmentField.addItem(pp);
		//	Display
		StringBuffer display = new StringBuffer("s.DocumentNo||' - '||")
			.append(DB.TO_CHAR("s.MovementDate", DisplayType.Date, Env.getAD_Language(Env.getCtx())));
		//
		StringBuffer sql = new StringBuffer("SELECT s.M_InOut_ID,").append(display)
			.append(" FROM M_InOut s "
			+ "WHERE s.C_BPartner_ID=? AND s.IsSOTrx='N' AND s.DocStatus IN ('CL','CO')"
			+ " AND s.M_InOut_ID IN "
				+ "(SELECT sl.M_InOut_ID FROM M_InOutLine sl"
				+ " LEFT OUTER JOIN M_MatchInv mi ON (sl.M_InOutLine_ID=mi.M_InOutLine_ID) "
				+ " JOIN M_InOut s2 ON (sl.M_InOut_ID=s2.M_InOut_ID) "
				+ " WHERE s2.C_BPartner_ID=? AND s2.IsSOTrx='N' AND s2.DocStatus IN ('CL','CO') "
				+ "GROUP BY sl.M_InOut_ID,mi.M_InOutLine_ID,sl.MovementQty "
				+ "HAVING (sl.MovementQty<>SUM(mi.Qty) AND mi.M_InOutLine_ID IS NOT NULL)"
				+ " OR mi.M_InOutLine_ID IS NULL) "
			+ "ORDER BY s.MovementDate");
		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql.toString(), null);
			pstmt.setInt(1, C_BPartner_ID);
			pstmt.setInt(2, C_BPartner_ID);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				pp = new KeyNamePair(rs.getInt(1), rs.getString(2));
				shipmentField.addItem(pp);
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		shipmentField.setSelectedIndex(0);
		shipmentField.addActionListener(this);
	}
	
	/**
	 * Load RMA that are candidates for shipment
	 * @param C_BPartner_ID BPartner
	 */
	private void initBPRMADetails(int C_BPartner_ID)
	{
	    rmaField.removeActionListener(this);
	    rmaField.removeAllItems();
	    //  None
	    KeyNamePair pp = new KeyNamePair(0,"");
	    rmaField.addItem(pp);
	     
	    String sqlStmt = "SELECT r.M_RMA_ID, r.DocumentNo || '-' || r.Amt from M_RMA r "
	                   + "WHERE ISSOTRX='N' AND r.DocStatus in ('CO', 'CL') " 
	                   + "AND r.C_BPartner_ID=? "
	                   + "AND NOT EXISTS (SELECT * FROM C_Invoice inv "
	                   + "WHERE inv.M_RMA_ID=r.M_RMA_ID AND inv.DocStatus IN ('CO', 'CL'))";
	      
	    PreparedStatement pstmt = null;
	    try
	    {
	        pstmt = DB.prepareStatement(sqlStmt, null);
	        pstmt.setInt(1, C_BPartner_ID);
	        ResultSet rs = pstmt.executeQuery();
	        while (rs.next())
	        {
	            pp = new KeyNamePair(rs.getInt(1), rs.getString(2));
	            rmaField.addItem(pp);
	        }
	        rs.close();
	    }
	    catch (SQLException e)
	    {
	        log.log(Level.SEVERE, sqlStmt.toString(), e);
	    }
	    finally
	    {
	        if (pstmt != null)
	        {
	            try
	            {
	                pstmt.close();
	            }
	            catch (Exception ex)
	            {
	                log.severe("Could not close prepared statement");
	            }
	        }
	    }
	    rmaField.setSelectedIndex(0);
	    rmaField.addActionListener(this);
	}
	
	/**
	 *  Action Listener
	 *  @param e event
	 */
	public void actionPerformed(ActionEvent e)
	{
		super.actionPerformed(e);
		if (m_actionActive)
			return;
		m_actionActive = true;
		log.config("Action=" + e.getActionCommand());
		//  Order
		if (e.getSource().equals(orderField))
		{
			KeyNamePair pp = (KeyNamePair)orderField.getSelectedItem();
			int C_Order_ID = 0;
			if (pp != null)
				C_Order_ID = pp.getKey();
			//  set Invoice, RMA and Shipment to Null
			invoiceField.setSelectedIndex(-1);
			rmaField.setSelectedIndex(-1);
			shipmentField.setSelectedIndex(-1);
			loadOrder(C_Order_ID, true);
		}
		//  Shipment
		else if (e.getSource().equals(shipmentField))
		{
			KeyNamePair pp = (KeyNamePair)shipmentField.getSelectedItem();
			int M_InOut_ID = 0;
			if (pp != null)
				M_InOut_ID = pp.getKey();
			//  set Order, RMA and Invoice to Null
			orderField.setSelectedIndex(-1);
			rmaField.setSelectedIndex(-1);
			invoiceField.setSelectedIndex(-1);
			loadShipment(M_InOut_ID);
		}
		//  RMA
		else if (e.getSource().equals(rmaField))
		{
		    KeyNamePair pp = (KeyNamePair)rmaField.getSelectedItem();
		    int M_RMA_ID = 0;
		    if (pp != null)
		        M_RMA_ID = pp.getKey();
		    //  set Order and Invoice to Null
		    orderField.setSelectedIndex(-1);
		    invoiceField.setSelectedIndex(-1);
		    shipmentField.setSelectedIndex(-1);
		    loadRMA(M_RMA_ID);
		}
		m_actionActive = false;
	}   //  actionPerformed

	/**
	 *  Change Listener
	 *  @param e event
	 */
	public void vetoableChange (PropertyChangeEvent e)
	{
		log.config(e.getPropertyName() + "=" + e.getNewValue());

		//  BPartner - load Order/Invoice/Shipment
		if (e.getPropertyName().equals("C_BPartner_ID"))
		{
			int C_BPartner_ID = ((Integer)e.getNewValue()).intValue();
			initBPartnerOIS (C_BPartner_ID, true);
		}
		tableChanged(null);
	}   //  vetoableChange


	/**
	 *  Load Data - Shipment not invoiced
	 *  @param M_InOut_ID InOut
	 */
	private void loadShipment (int M_InOut_ID)
	{
		log.config("M_InOut_ID=" + M_InOut_ID);
		m_inout = new MInOut(Env.getCtx(), M_InOut_ID, null);
		p_order = null;
		if (m_inout.getC_Order_ID() != 0)
			p_order = new MOrder (Env.getCtx(), m_inout.getC_Order_ID(), null);

		//
		Vector<Vector<Object>> data = new Vector<Vector<Object>>();
		StringBuffer sql = new StringBuffer("SELECT "	//	QtyEntered
			+ "l.MovementQty-SUM(NVL(mi.Qty, 0)), l.QtyEntered/l.MovementQty,"
			+ " l.C_UOM_ID, COALESCE(uom.UOMSymbol, uom.Name),"			//  3..4
			+ " l.M_Product_ID, p.Name, po.VendorProductNo, l.M_InOutLine_ID, l.Line,"        //  5..9
			+ " l.C_OrderLine_ID, " //  10
			+ " l.AD_Org_ID, o.Name "									//	11..12 Adicionado ORG
			+ " FROM M_InOutLine l "
			);                             		
		if (Env.isBaseLanguage(Env.getCtx(), "C_UOM"))
			sql.append(" LEFT OUTER JOIN C_UOM uom ON (l.C_UOM_ID=uom.C_UOM_ID)");
		else
			sql.append(" LEFT OUTER JOIN C_UOM_Trl uom ON (l.C_UOM_ID=uom.C_UOM_ID AND uom.AD_Language='")
				.append(Env.getAD_Language(Env.getCtx())).append("')");
		
		sql.append(" LEFT OUTER JOIN M_Product p ON (l.M_Product_ID=p.M_Product_ID)")
			.append(" INNER JOIN M_InOut io ON (l.M_InOut_ID=io.M_InOut_ID)")
			.append(" INNER JOIN AD_Org o ON (l.AD_Org_ID = o.AD_Org_ID)")
			.append(" LEFT OUTER JOIN M_Product_PO po ON (l.M_Product_ID = po.M_Product_ID AND io.C_BPartner_ID = po.C_BPartner_ID)")
			.append(" LEFT OUTER JOIN M_MatchInv mi ON (l.M_InOutLine_ID=mi.M_InOutLine_ID)")
			
			.append(" WHERE l.M_InOut_ID=? AND l.MovementQty<>0 ")
			.append("GROUP BY l.MovementQty, l.QtyEntered/l.MovementQty, "
				+ "l.C_UOM_ID, COALESCE(uom.UOMSymbol, uom.Name), "
				+ "l.M_Product_ID, p.Name, po.VendorProductNo, l.M_InOutLine_ID, l.Line, l.C_OrderLine_ID, " +
				  "l.AD_Org_ID, o.Name ")
			.append("ORDER BY l.Line");

		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql.toString(), null);
			pstmt.setInt(1, M_InOut_ID);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				Vector<Object> line = new Vector<Object>(7);
				line.add(new Boolean(false));           //  0-Selection
				//	Inserida as duas linhas abaixo
				KeyNamePair pp = new KeyNamePair(rs.getInt(11), rs.getString(12)); // 1-AD_Org_ID
				line.add(pp);
				BigDecimal qtyMovement = rs.getBigDecimal(1);
				BigDecimal multiplier = rs.getBigDecimal(2);
				BigDecimal qtyEntered = qtyMovement.multiply(multiplier);
				line.add(new Double(qtyEntered.doubleValue()));  //  2-Qty
				pp = new KeyNamePair(rs.getInt(3), rs.getString(4).trim());
				line.add(pp);                           //  3-UOM
				pp = new KeyNamePair(rs.getInt(5), rs.getString(6));
				line.add(pp);                           //  4-Product
				line.add(rs.getString(7));				// 5-VendorProductNo
				int C_OrderLine_ID = rs.getInt(10);
				if (rs.wasNull())
					line.add(null);                     //  6-Order
				else
					line.add(new KeyNamePair(C_OrderLine_ID,"."));
				pp = new KeyNamePair(rs.getInt(8), rs.getString(9));
				line.add(pp);                           //  7-Ship
				line.add(null);                     	//  8-RMA
				data.add(line);
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		loadTableOIS (data);
	}   //  loadShipment
	
	/**
	 * Load RMA details
	 * @param M_RMA_ID RMA
	 */
	private void loadRMA(int M_RMA_ID)
	{
	    p_order = null;
	        
	    m_rma = new MRMA(Env.getCtx(), M_RMA_ID, null);
	        
	    Vector<Vector> data = new Vector<Vector>();
	    StringBuffer sqlStmt = new StringBuffer();
	    sqlStmt.append("SELECT rl.M_RMALine_ID, rl.line, rl.Qty - rl.QtyDelivered, iol.M_Product_ID, p.Name, uom.C_UOM_ID, COALESCE(uom.UOMSymbol,uom.Name) ");
	    sqlStmt.append("FROM M_RMALine rl INNER JOIN M_InOutLine iol ON rl.M_InOutLine_ID=iol.M_InOutLine_ID ");
	          
	    if (Env.isBaseLanguage(Env.getCtx(), "C_UOM"))
        {
	        sqlStmt.append("LEFT OUTER JOIN C_UOM uom ON (uom.C_UOM_ID=iol.C_UOM_ID) ");
        }
	    else
        {
	        sqlStmt.append("LEFT OUTER JOIN C_UOM_Trl uom ON (uom.C_UOM_ID=iol.C_UOM_ID AND uom.AD_Language='");
	        sqlStmt.append(Env.getAD_Language(Env.getCtx())).append("') ");
        }
	    sqlStmt.append("LEFT OUTER JOIN M_Product p ON p.M_Product_ID=iol.M_Product_ID ");
	    sqlStmt.append("WHERE rl.M_RMA_ID=? ");
	    sqlStmt.append("AND rl.M_INOUTLINE_ID IS NOT NULL");
	           
	    sqlStmt.append(" UNION ");
	            
	    sqlStmt.append("SELECT rl.M_RMALine_ID, rl.line, rl.Qty - rl.QtyDelivered, 0, c.Name, uom.C_UOM_ID, COALESCE(uom.UOMSymbol,uom.Name) ");
	    sqlStmt.append("FROM M_RMALine rl INNER JOIN C_Charge c ON c.C_Charge_ID = rl.C_Charge_ID ");
	    if (Env.isBaseLanguage(Env.getCtx(), "C_UOM"))
        {
	        sqlStmt.append("LEFT OUTER JOIN C_UOM uom ON (uom.C_UOM_ID=100) ");
        }
	    else
        {
	        sqlStmt.append("LEFT OUTER JOIN C_UOM_Trl uom ON (uom.C_UOM_ID=100 AND uom.AD_Language='");
	        sqlStmt.append(Env.getAD_Language(Env.getCtx())).append("') ");
        }
	    sqlStmt.append("WHERE rl.M_RMA_ID=? ");
	    sqlStmt.append("AND rl.C_Charge_ID IS NOT NULL");
	         
	    PreparedStatement pstmt = null;
	            
	    try
	    {
	        pstmt = DB.prepareStatement(sqlStmt.toString(), null);
	        pstmt.setInt(1, M_RMA_ID);
	        pstmt.setInt(2, M_RMA_ID);
	        ResultSet rs = pstmt.executeQuery();
	               
	        while (rs.next())
            {
	            Vector<Object> line = new Vector<Object>(7);
	            line.add(new Boolean(false));   // 0-Selection
	            
	            int AD_Org_ID = Env.getAD_Org_ID(Env.getCtx());
	            MOrg org = new MOrg(Env.getCtx(),AD_Org_ID,null);
	            KeyNamePair pp = new KeyNamePair(AD_Org_ID, org.getName());
	            line.add(pp); // 1-AD_Org_ID
	            line.add(rs.getBigDecimal(3).doubleValue());  // 2-Qty
	            pp = new KeyNamePair(rs.getInt(6), rs.getString(7));
	            line.add(pp); // 3-UOM
	            pp = new KeyNamePair(rs.getInt(4), rs.getString(5));
	            line.add(pp); // 4-Product
	            line.add(null); //5-Vendor Product No
	            line.add(null); //6-Order
	            pp = new KeyNamePair(rs.getInt(1), rs.getString(2));
	            line.add(null);   //7-Ship
	            line.add(pp);   //8-RMA
	            data.add(line);
            }
	        rs.close();
	    }
	    catch (Exception ex)
	    {
	        log.log(Level.SEVERE, sqlStmt.toString(), ex);
	    }
	    finally
	    {
	        if (pstmt != null)
	        {
	            try
	            {
	                pstmt.close();
	            }
	            catch (Exception ex)
	            {
	                log.severe("Could not close prepared statement");
	            }
	        }
	    }
	    loadTableOIS(data);
	}

	/**
	 *  List number of rows selected
	 */
	protected void info()
	{
		TableModel model = dataTable.getModel();
		int rows = model.getRowCount();
		int count = 0;
		for (int i = 0; i < rows; i++)
		{
			if (((Boolean)model.getValueAt(i, 0)).booleanValue())
				count++;
		}
		setStatusLine(count, null);
	}   //  infoInvoice

	/**
	 *  Save - Create Invoice Lines
	 *  @return true if saved
	 */
	protected boolean save()
	{
		log.config("");
		TableModel model = dataTable.getModel();
		int rows = model.getRowCount();
		if (rows == 0)
			return false;

		//  Invoice
		int C_Invoice_ID = ((Integer)p_mTab.getValue("C_Invoice_ID")).intValue();
		MInvoice invoice = new MInvoice (Env.getCtx(), C_Invoice_ID, null);
		log.config(invoice.toString());

		if (p_order != null)
		{
			invoice.setOrder(p_order);	//	overwrite header values
			invoice.save();
		}
		if (m_inout != null && m_inout.getM_InOut_ID() != 0 
			&& m_inout.getC_Invoice_ID() == 0)	//	only first time
		{
			m_inout.setC_Invoice_ID(C_Invoice_ID);
			m_inout.save();
		}


		//  Lines
		for (int i = 0; i < rows; i++)
		{
			if (((Boolean)model.getValueAt(i, 0)).booleanValue())
			{
				//  variable values
				Double d = (Double)model.getValueAt(i, 2);              //  1-Qty
				BigDecimal QtyEntered = new BigDecimal(d.doubleValue());
				KeyNamePair pp = (KeyNamePair)model.getValueAt(i, 3);   //  2-UOM
				int C_UOM_ID = pp.getKey();
				//
				pp = (KeyNamePair)model.getValueAt(i, 4);               //  3-Product
				int M_Product_ID = 0;
				if (pp != null)
					M_Product_ID = pp.getKey();
				int C_Charge_ID = 0;
				//
				int C_OrderLine_ID = 0;
				pp = (KeyNamePair)model.getValueAt(i, 6);               //  5-OrderLine
				if (pp != null)
					C_OrderLine_ID = pp.getKey();
				int M_InOutLine_ID = 0;
				pp = (KeyNamePair)model.getValueAt(i, 7);               //  6-Shipment
				if (pp != null)
					M_InOutLine_ID = pp.getKey();
				//	Adicionado a Organização
				int AD_Org_ID = 0;
				pp = (KeyNamePair)model.getValueAt(i, 1);               //  7-Organization
				if (pp != null)
					AD_Org_ID = pp.getKey();
				//	Precision of Qty UOM
				int precision = 2;
				if (M_Product_ID != 0)
				{
					MProduct product = MProduct.get(Env.getCtx(), M_Product_ID);
					precision = product.getUOMPrecision();
				}
				QtyEntered = QtyEntered.setScale(precision, BigDecimal.ROUND_HALF_DOWN);
				//
				log.fine("Line QtyEntered=" + QtyEntered
					+ ", Product_ID=" + M_Product_ID 
					+ ", OrderLine_ID=" + C_OrderLine_ID + ", InOutLine_ID=" + M_InOutLine_ID);

				//	Create new Invoice Line
				MInvoiceLine invoiceLine = new MInvoiceLine (invoice);
				invoiceLine.setM_Product_ID(M_Product_ID, C_UOM_ID);	//	Line UOM
				invoiceLine.setQty(QtyEntered);	
				//
				if (AD_Org_ID != 0)
					invoiceLine.setAD_Org_ID(AD_Org_ID);
				//  Info
				MOrderLine orderLine = null;
				if (C_OrderLine_ID != 0)
					orderLine = new MOrderLine (Env.getCtx(), C_OrderLine_ID, null);
				MInOutLine inoutLine = null;
				if (M_InOutLine_ID != 0)
				{
					inoutLine = new MInOutLine (Env.getCtx(), M_InOutLine_ID, null);
					if (orderLine == null && inoutLine.getC_OrderLine_ID() != 0)
					{
						C_OrderLine_ID = inoutLine.getC_OrderLine_ID();
						orderLine = new MOrderLine (Env.getCtx(), C_OrderLine_ID, null);
					}
				}
				else
				{
					MInOutLine[] lines = MInOutLine.getOfOrderLine(Env.getCtx(), 
						C_OrderLine_ID, null, null);
					log.fine ("Receipt Lines with OrderLine = #" + lines.length);
					if (lines.length > 0)
					{
						for (int j = 0; j < lines.length; j++)
						{
							MInOutLine line = lines[j];
							if (line.getQtyEntered().compareTo(QtyEntered) == 0)
							{
								inoutLine = line;
								M_InOutLine_ID = inoutLine.getM_InOutLine_ID();
								break;
							}
						}
						if (inoutLine == null)
						{
							inoutLine = lines[0];	//	first as default
							M_InOutLine_ID = inoutLine.getM_InOutLine_ID();
						}
					}
				}	//	get Ship info

				//	Shipment Info
				if (inoutLine != null)
				{
					invoiceLine.setShipLine(inoutLine);		//	overwrites
					if (inoutLine.getQtyEntered().compareTo(inoutLine.getMovementQty()) != 0)
						invoiceLine.setQtyInvoiced(QtyEntered
							.multiply(inoutLine.getMovementQty())
							.divide(inoutLine.getQtyEntered(), 12, BigDecimal.ROUND_HALF_UP));
				}
				else
					log.fine("No Receipt Line");
					
				//	Order Info
				if (orderLine != null)
				{
					invoiceLine.setOrderLine(orderLine);	//	overwrites
					if (orderLine.getQtyEntered().compareTo(orderLine.getQtyOrdered()) != 0)
						invoiceLine.setQtyInvoiced(QtyEntered
							.multiply(orderLine.getQtyOrdered())
							.divide(orderLine.getQtyEntered(), 12, BigDecimal.ROUND_HALF_UP));
				}
				else
				{
					log.fine("No Order Line");
					invoiceLine.setPrice();
					invoiceLine.setTax();
				}
				if (!invoiceLine.save())
					log.log(Level.SEVERE, "Line NOT created #" + i);
			}   //   if selected
		}   //  for all rows

		return true;
	}   //  saveInvoice

	@Override
	protected void loadTableOIS(Vector data) 
	{
	//  Header Info
	    Vector<String> columnNames = new Vector<String>(9);
	    columnNames.add(Msg.getMsg(Env.getCtx(), "Select"));
	    columnNames.add(Msg.translate(Env.getCtx(), "AD_Org_ID"));
	    columnNames.add(Msg.translate(Env.getCtx(), "Quantity"));
	    columnNames.add(Msg.translate(Env.getCtx(), "C_UOM_ID"));
	    columnNames.add(Msg.translate(Env.getCtx(), "M_Product_ID"));
	    columnNames.add(Msg.getElement(Env.getCtx(), "VendorProductNo", false));
	    columnNames.add(Msg.getElement(Env.getCtx(), "C_Order_ID", false));
	    columnNames.add(Msg.getElement(Env.getCtx(), "M_InOut_ID", false));
	    columnNames.add(Msg.getElement(Env.getCtx(), "M_RMA_ID", false));
	    
	    //  Remove previous listeners
	    dataTable.getModel().removeTableModelListener(this);
	    //  Set Model
	    DefaultTableModel model = new DefaultTableModel(data, columnNames);
	    model.addTableModelListener(this);
	    dataTable.setModel(model);
	    //
	    dataTable.setColumnClass(0, Boolean.class, false);      //  0-Selection
	    dataTable.setColumnClass(1, String.class, true);        //  1-AD_Org_ID
	    dataTable.setColumnClass(2, Double.class, true);        //  2-Qty
	    dataTable.setColumnClass(3, String.class, true);        //  3-UOM
	    dataTable.setColumnClass(4, String.class, true);        //  4-Product
	    dataTable.setColumnClass(5, String.class, true);        //  5-VendorProductNo
	    dataTable.setColumnClass(6, String.class, true);        //  6-Order
	    dataTable.setColumnClass(7, String.class, true);        //  7-Ship
	    dataTable.setColumnClass(8, String.class, true);        //  8-RMA
	    //  Table UI
	    dataTable.autoSize();
	}


}   //  VCreateFromInvoice