/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 2007 Adempiere, Inc. All Rights Reserved.                    *
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
package org.compiere.grid;

import java.awt.event.ActionEvent;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyVetoException;
import java.beans.VetoableChangeListener;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import java.util.logging.Level;

import javax.swing.JLabel;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableModel;

import org.compiere.grid.ed.VLocator;
import org.compiere.model.GridTab;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MRMA;
import org.compiere.model.MRMALine;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;

/**
 * @author Ricardo Santana
 */
public class VCreateFromManufacture extends VCreateFrom implements VetoableChangeListener
{
	/**
	 * 
	 * @param mTab
	 */
    VCreateFromManufacture(GridTab mTab)
    {
        super(mTab);
        log.info(mTab.toString());
    }

    protected boolean dynInit() throws Exception
    {
        log.config("");
        setTitle("Manufacture - Create Lines From");

        parameterBankPanel.setVisible(false);
        
        invoiceLabel.setVisible(false);
        invoiceField.setVisible(false);
        
        locatorLabel.setVisible(false);
        locatorField.setVisible(false);
        
        orderLabel.setVisible(false);
        orderField.setVisible(false);
        
        shipmentLabel.setVisible(false);
        shipmentField.setVisible(false);
        
        sameWarehouseCb.setVisible(false);
               
        rmaLabel.setVisible(false);
        rmaField.setVisible(false);

        initBPartner(true);
        
        bPartnerField.setEnabled(false);
        
        initProduction(false);
        
    	productionField.setEnabled(true);
    	productionField.addVetoableChangeListener(this);
        //int inOutId = Env.getContextAsInt(Env.getCtx(), p_mTab.getWindowNo(), "InOut_ID");
        
        //loadShipment(inOutId);
        
        return true;
    }
    
    /**
     *  Load Order/Invoice/Shipment data into Table
     *  @param data data
     */
    protected void loadTableOIS (Vector data)
    {
        //  Header Info
        Vector<String> columnNames = new Vector<String>(7);
        columnNames.add(Msg.getMsg(Env.getCtx(), "Select"));
        columnNames.add("Plan");
        columnNames.add(Msg.translate(Env.getCtx(), "Line"));
        columnNames.add("M_Product_ID");
        columnNames.add(Msg.translate(Env.getCtx(), "MovementQty"));
        columnNames.add(Msg.getElement(Env.getCtx(), "QtyDelivered", false));
        

        //  Remove previous listeners
        dataTable.getModel().removeTableModelListener(this);
        //  Set Model
        DefaultTableModel model = new DefaultTableModel(data, columnNames);
        model.addTableModelListener(this);
        dataTable.setModel(model);
        //
        dataTable.setColumnClass(0, Boolean.class, false);      //  0-Selection
        dataTable.setColumnClass(1, KeyNamePair.class, true);        //  1-ProductionPlanID > PValue
        dataTable.setColumnClass(2, KeyNamePair.class, true);        //  2-ProductionLineID > Line 
        dataTable.setColumnClass(3, KeyNamePair.class, true);        //  3-PValue || PName > ProductID
        dataTable.setColumnClass(4, BigDecimal.class, true);        //  4-MovementQty
        dataTable.setColumnClass(5, BigDecimal.class, true);        //  5-DeliveredQty
        
        //  Table UI
        dataTable.autoSize();
    }   //  loadOrder
    
    /**
     *  Load Data - Shipment not invoiced
     *  @param M_InOut_ID InOut
     */
    private void loadProduction (int M_InOut_ID)
    {
        int m_rma_id = Env.getContextAsInt(Env.getCtx(), p_WindowNo, "M_RMA_ID");
        log.config("M_InOut_ID=" + M_InOut_ID);
        log.config("M_RMA_ID=" + m_rma_id);
        //
        Vector<Vector<Object>> data = new Vector<Vector<Object>>();
        
        /**
         * 1 M_ProductionPlan_ID
         * 2 ProductValue
         * 3 M_ProductionLine_ID
         * 4 Line
         * 5 M_Product_ID
         * 6 Value || Name
         * 7 MovementQty
         * 8 QtyDelivered
         */
        StringBuffer sqlStmt = new StringBuffer();

        sqlStmt.append("SELECT pp.M_ProductionPlan_ID, ppp.Value, "); 
        sqlStmt.append("pl.M_ProductionLine_ID, pl.Line, "); 
        sqlStmt.append("pl.M_Product_ID, plp.Value ||'-'|| plp.Name, "); 
        sqlStmt.append("pl.MovementQty, pl.QtyDelivered + COALESCE(ol.QtyEntered, 0) "); 
        sqlStmt.append("FROM M_ProductionPlan pp "); 
        sqlStmt.append("INNER JOIN M_Product ppp ON (pp.M_Product_ID=ppp.M_Product_ID) ");
        sqlStmt.append("INNER JOIN M_ProductionLine pl ON (pp.M_ProductionPlan_ID=pl.M_ProductionPlan_ID) ");
        sqlStmt.append("INNER JOIN M_Product plp ON (pl.M_Product_ID=plp.M_Product_ID) ");
        sqlStmt.append(" LEFT JOIN C_OrderLine ol ON (ol.M_ProductionLine_ID=pl.M_ProductionLine_ID AND ol.C_Order_ID=?) ");
        sqlStmt.append("WHERE pp.M_Production_ID=? AND pl.Line<>100");
        
        try
        {
            PreparedStatement pstmt = DB.prepareStatement(sqlStmt.toString(), null);
            pstmt.setInt(1, Env.getContextAsInt(Env.getCtx(), p_WindowNo, "C_Order_ID"));
            pstmt.setInt(2, M_InOut_ID);
//            pstmt.setInt(2, m_rma_id);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next())
            {
                Vector<Object> line = new Vector<Object>(7);
                line.add(new Boolean(false));           //  0-Selection
                
                KeyNamePair keyPair = new KeyNamePair(rs.getInt(1), rs.getString(2)); // 1-ProductionPlanID > PValue
                line.add(keyPair);
                
                keyPair = new KeyNamePair(rs.getInt(3), rs.getString(4)); // 2-ProductionLineID > Line 
                line.add(keyPair);
                
                keyPair = new KeyNamePair(rs.getInt(5), rs.getString(6)); //3-PValue || PName > ProductID
                line.add(keyPair);

                line.add(rs.getBigDecimal(7));  // 4-MovementQty
                line.add(rs.getBigDecimal(8)); // 5-DeliveredQty
                
                data.add(line);
            }
            rs.close();
            pstmt.close();
        }
        catch (SQLException e)
        {
            log.log(Level.SEVERE, sqlStmt.toString(), e);
        }
        loadTableOIS (data);
    }   //  loadShipment

    protected void initBPDetails(int C_BPartner_ID)
    {
        
    }

    protected void info()
    {
        
    }
    
    protected boolean save()
    {
        log.config("");
        int C_Order_ID = Env.getContextAsInt(Env.getCtx(), p_WindowNo, "C_Order_ID");
        TableModel model = dataTable.getModel();
        int rows = model.getRowCount();
        if (rows == 0)
        {
            return false;
        }
        
        MOrder order = new MOrder(Env.getCtx(), C_Order_ID, null);
        
        for (int i = 0; i < rows; i++)
        {
            if (((Boolean)model.getValueAt(i, 0)).booleanValue())
            {
                BigDecimal movementQty = ((BigDecimal) model.getValueAt(i, 4)).abs();
                BigDecimal qtyDelivered = ((BigDecimal) model.getValueAt(i, 5)).abs();
                
                KeyNamePair pp = (KeyNamePair)model.getValueAt(i, 2);   //  2-Line
                int M_ProductionLine_ID = pp.getKey();
                
                pp = (KeyNamePair)model.getValueAt(i, 3);   //  3-Product
                int M_Product_ID = pp.getKey();
                
                BigDecimal qty = movementQty.subtract(qtyDelivered);
                
                // Se a qty a enviar for maior que zero
                if(qty.compareTo(Env.ZERO) == 1)
                {
                	MOrderLine oLine = new MOrderLine(order);
                	oLine.setM_Product_ID(M_Product_ID);
                	oLine.setQty(qty);
                	oLine.setPrice();
                	oLine.setTax();
                	oLine.set_ValueOfColumn("M_ProductionLine_ID", M_ProductionLine_ID);
                	if(!oLine.save())
                		throw new IllegalStateException("Could not create Order Line");
                }
            }
        }
        
        if (!order.save())
            throw new IllegalStateException("Could not update Order");
        
        return true;
    }
    
	/**
	 *  Vetorable Listener
	 *  @param e event
	 */
	public void vetoableChange(PropertyChangeEvent evt)
			throws PropertyVetoException {
		if (evt.getPropertyName().equals("M_Production_ID"))
		{
			int M_Production_ID = ((Integer)evt.getNewValue()).intValue();
			loadProduction(M_Production_ID);
		}
	}
}
