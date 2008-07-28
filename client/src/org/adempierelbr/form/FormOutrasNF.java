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
package org.adempierelbr.form;

import java.awt.BorderLayout;
import java.awt.Cursor;
import java.awt.Dimension;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.beans.PropertyChangeEvent;
import java.beans.VetoableChangeListener;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;

import javax.swing.JButton;
import javax.swing.JScrollPane;
import javax.swing.event.ChangeEvent;
import javax.swing.event.ChangeListener;
import javax.swing.event.TableModelEvent;
import javax.swing.event.TableModelListener;

import org.compiere.apps.ADialog;
import org.compiere.apps.ConfirmPanel;
import org.compiere.apps.StatusBar;
import org.compiere.apps.form.FormFrame;
import org.compiere.apps.form.FormPanel;
import org.compiere.grid.ed.VLookup;
import org.compiere.minigrid.IDColumn;
import org.compiere.minigrid.MiniTable;
import org.compiere.model.MLookup;
import org.compiere.model.MLookupFactory;
import org.compiere.plaf.CompiereColor;
import org.compiere.process.ProcessInfo;
import org.compiere.swing.CLabel;
import org.compiere.swing.CPanel;
import org.compiere.swing.CTabbedPane;
import org.compiere.util.ASyncProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;

/**
 * FormOutrasNF
 * 
 * Form to Copy Line From
 * 
 * @author Mario Grigioni, mgrigioni (Kenos, www.kenos.com.br) 
 * @version $Id: FormOutrasNF.java, 23/07/2008 17:52:00 mgrigioni
 */
public class FormOutrasNF extends CPanel
	implements FormPanel, ActionListener, VetoableChangeListener, ChangeListener, TableModelListener, ASyncProcess
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 *	Initialize Panel
	 *  @param WindowNo window
	 *  @param frame frame
	 */
	public void init (int WindowNo, FormFrame frame)
	{
		log.info("");
		m_WindowNo = WindowNo;
		m_frame = frame;
		Env.setContext(Env.getCtx(), m_WindowNo, "IsSOTrx", "Y");
		try
		{
			fillPicks();
			jbInit();
			dynInit();
			frame.getContentPane().add(tabbedPane, BorderLayout.CENTER);
			frame.getContentPane().add(statusBar, BorderLayout.SOUTH);
		}
		catch(Exception ex)
		{
			log.log(Level.SEVERE, "init", ex);
		}
	}	//	init

	/**	Window No			*/
	private int         	m_WindowNo = 0;
	/**	FormFrame			*/
	private FormFrame 		m_frame;

	private boolean			m_selectionActive      = true;
	private String          m_whereClause;
	private Object          m_C_BPartner_ID        = null;
	private boolean         m_mark = true;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(FormOutrasNF.class);
	//
	private CTabbedPane tabbedPane = new CTabbedPane();
	private CPanel selPanel = new CPanel();
	private CPanel selNorthPanel = new CPanel();
	private BorderLayout selPanelLayout = new BorderLayout();
	private CLabel lBPartner = new CLabel();
	private VLookup fBPartner;
	private CLabel lLocator = new CLabel();
	private VLookup fLocator;
	private GridBagLayout northPanelLayout = new GridBagLayout();
	private ConfirmPanel confirmPanelSel = new ConfirmPanel(true);
	private StatusBar statusBar = new StatusBar();
	private JScrollPane scrollPane = new JScrollPane();
	private MiniTable miniTable = new MiniTable();
	
	private JButton markButton = new JButton();

	/**
	 *	Static Init.
	 *  <pre>
	 *  selPanel (tabbed)
	 *      fOrg, fBPartner
	 *      scrollPane & miniTable
	 *  genPanel
	 *      info
	 *  </pre>
	 *  @throws Exception
	 */
	void jbInit() throws Exception
	{
		CompiereColor.setBackground(this);
		//
		
		confirmPanelSel.addButton(markButton);
		
		selPanel.setLayout(selPanelLayout);
		selPanel.setPreferredSize(new Dimension(1024,450));
		
		lBPartner.setLabelFor(fBPartner);
		lBPartner.setText(Msg.translate(Env.getCtx(), "C_BPartner_ID"));
		
		lLocator.setLabelFor(fLocator);
		lLocator.setText(Msg.translate(Env.getCtx(), "M_Locator_ID"));
		
		selNorthPanel.setLayout(northPanelLayout);
		tabbedPane.add(selPanel, Msg.getMsg(Env.getCtx(), "Select"));
		selPanel.add(selNorthPanel, BorderLayout.NORTH);

		selNorthPanel.add(lBPartner, new GridBagConstraints(0, 0, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		selNorthPanel.add(fBPartner, new GridBagConstraints(1, 0, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		
		selPanel.setName("selPanel");
		selPanel.add(confirmPanelSel, BorderLayout.SOUTH);
		selPanel.add(scrollPane, BorderLayout.CENTER);
		scrollPane.getViewport().add(miniTable, null);
		
		confirmPanelSel.addActionListener(this);
		
		markButton.setText("Todos");
		markButton.addActionListener(this);
		
	}	//	jbInit

	/**
	 *	Fill Picks
	 *		Column_ID from C_Order
	 *  @throws Exception if Lookups cannot be initialized
	 */
	private void fillPicks() throws Exception
	{
		MLookup BPartnerL = MLookupFactory.get (Env.getCtx(), m_WindowNo, 0, 2893, DisplayType.Search);
		fBPartner = new VLookup ("C_BPartner_ID", false, false, true, BPartnerL);
		fBPartner.addVetoableChangeListener(this);
		
		MLookup LocatorL = MLookupFactory.get (Env.getCtx(), m_WindowNo, 0, 1979, DisplayType.Search);
		fLocator = new VLookup ("M_Locator_ID", false, false, true, LocatorL);
		//fLocator.addVetoableChangeListener(this);	
		//
	}	//	fillPicks

	/**
	 *	Dynamic Init.
	 *	- Create GridController & Panel
	 *	- AD_Column_ID from C_Order
	 */
	private void dynInit()
	{
		//  create Columns
		miniTable.addColumn("C_OrderLine_ID"); //0
		miniTable.addColumn("C_Order_ID"); //1
		miniTable.addColumn("Line"); //2
		miniTable.addColumn("M_Product_ID"); //3
		miniTable.addColumn("M_Locator_ID"); //4
		miniTable.addColumn("Qty"); //5
		//
		miniTable.setMultiSelection(true);
		miniTable.setRowSelectionAllowed(true);
		//  set details
		miniTable.setColumnClass(0, IDColumn.class, false, " ");
		miniTable.setColumnClass(1, String.class, true, Msg.translate(Env.getCtx(), "C_Order_ID"));
		miniTable.setColumnClass(2, String.class, true, Msg.translate(Env.getCtx(), "Line"));
		miniTable.setColumnClass(3, String.class, true, Msg.translate(Env.getCtx(), "M_Product_ID"));
		miniTable.setColumnClass(4, fLocator, DisplayType.Search, false, Msg.translate(Env.getCtx(), "M_Locator_ID"));
		miniTable.setColumnClass(5, BigDecimal.class, false, Msg.translate(Env.getCtx(), "Qty"));
		//
		miniTable.autoSize();
		miniTable.getModel().addTableModelListener(this);
		//	Info
		statusBar.setStatusLine(Msg.getMsg(Env.getCtx(), "InvGenerateSel"));
		statusBar.setStatusDB(" ");
		//	Tabbed Pane Listener
		tabbedPane.addChangeListener(this);
		
		executeQuery();
	}	//	dynInit

	/**
	 *  Query Info
	 */
	private void executeQuery()
	{
		log.info("");
		int AD_Client_ID = Env.getAD_Client_ID(Env.getCtx());
		//  Create SQL
		
		StringBuffer sql = new StringBuffer(
				"SELECT il.C_InvoiceLine_ID, i.DocumentNo, il.Line, " +
			    "p.Value || ' - ' || p.Name, l.M_Locator_ID, l.Value, il.QtyEntered " +
			    "FROM C_Invoice i " +
			    "INNER JOIN C_Order o ON i.C_Order_ID = o.C_Order_ID " +
			    "INNER JOIN C_DocType dt ON o.C_DocTypeTarget_ID = dt.C_DocType_ID " +
			    //"INNER JOIN LBR_OtherNFLink onf ON dt.C_DocType_ID = onf.C_DocType_ID " +
			    "INNER JOIN C_InvoiceLine il ON i.C_Invoice_ID = il.C_Invoice_ID " +
			    "INNER JOIN M_Product p ON il.M_Product_ID = p.M_Product_ID " +
			    "LEFT JOIN M_Locator l ON p.M_Locator_ID = l.M_Locator_ID " +
				"WHERE i.AD_Client_ID = ? ");
				//"AND onf.C_DocTypeTarget_ID = ? ");
		
				if (m_C_BPartner_ID != null){
					sql.append("AND o.C_BPartner_ID=? ");
				}
				else
					return;
				
				sql.append("ORDER BY i.DocumentNo, il.Line");

		//  reset table
		int row = 0;
		miniTable.setRowCount(row);
		//  Execute
		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql.toString(), null);
			pstmt.setInt(1, AD_Client_ID);
			pstmt.setInt(2, (Integer)m_C_BPartner_ID);
			ResultSet rs = pstmt.executeQuery();
			//
			while (rs.next())
			{
				//  extend table
				miniTable.setRowCount(row+1);
				//  set values
				miniTable.setValueAt(new IDColumn(rs.getInt(1)), row, 0);   //  C_OrderLine_ID
				miniTable.setValueAt(rs.getString(2), row, 1);              //  C_Order_ID
				miniTable.setValueAt(rs.getString(3), row, 2);              //  Line
				miniTable.setValueAt(rs.getString(4), row, 3);              //  M_Product_ID
				miniTable.setValueAt(new KeyNamePair(rs.getInt(5),rs.getString(6)), row, 4);          //  M_Locator_ID
				miniTable.setValueAt(rs.getBigDecimal(6), row, 5);          //  Qty
				//  prepare next
				row++;
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		//
		miniTable.autoSize();
		statusBar.setStatusDB(String.valueOf(miniTable.getRowCount()));
	}   //  executeQuery

	/**
	 * 	Dispose
	 */
	public void dispose()
	{
		if (m_frame != null)
			m_frame.dispose();
		m_frame = null;
	}	//	dispose

	/**
	 *	Action Listener
	 *  @param e event
	 */
	public void actionPerformed (ActionEvent e)
	{
		log.info("Cmd=" + e.getActionCommand());
		//

		if (e.getActionCommand().equals(ConfirmPanel.A_CANCEL))
		{
			dispose();
			return;
		}
		//
		
		if (e.getSource().equals(markButton))
		{
			markAll();
			return;
		}
		
		m_whereClause = saveSelection();
		
		if (m_whereClause.length() > 0 && m_selectionActive){

			Properties ctx = Env.getCtx();
			//Trx transaction = Trx.get(Trx.createTrxName(), true);
			//String trx = transaction.getTrxName();
			
			m_mark = true;
			executeQuery();
		
		}
		else{
			String msg = "Selecionar Pedidos";
			statusBar.setStatusLine(msg);	
			ADialog.info(m_WindowNo, this, msg);
			return;	
		}
	}	//	actionPerformed

	/**
	 *	Vetoable Change Listener - requery
	 *  @param e event
	 */
	public void vetoableChange(PropertyChangeEvent e)
	{
		log.info(e.getPropertyName() + "=" + e.getNewValue());
		
		int i = 0;
		
		if (e.getPropertyName().equals("C_BPartner_ID"))
		{
			m_C_BPartner_ID = e.getNewValue();
			fBPartner.setValue(m_C_BPartner_ID);	//	display value
			if (m_C_BPartner_ID != null) i = 1;
		}
		
		if (i != 0) executeQuery();
	}	//	vetoableChange

	/**
	 *	Change Listener (Tab changed)
	 *  @param e event
	 */
	public void stateChanged (ChangeEvent e)
	{
		int index = tabbedPane.getSelectedIndex();
		m_selectionActive = (index == 0);
	}	//	stateChanged

	/**
	 *  Table Model Listener
	 *  @param e event
	 */
	public void tableChanged(TableModelEvent e)
	{
		int rowsSelected = 0;
		int rows = miniTable.getRowCount();
		for (int i = 0; i < rows; i++)
		{
			IDColumn id = (IDColumn)miniTable.getValueAt(i, 0);     //  ID in column 0
			if (id != null && id.isSelected())
				rowsSelected++;
		}
		statusBar.setStatusDB(" " + rowsSelected + " ");
	}   //  tableChanged
	
	/**
	 *	markAll
	 */
	private void markAll()
	{
		log.info("");
		//  ID selection may be pending
		miniTable.editingStopped(new ChangeEvent(this));
			
		//	Get selected entries
		int rows = miniTable.getRowCount();
		for (int i = 0; i < rows; i++)
		{
			IDColumn id = (IDColumn)miniTable.getValueAt(i, 0);     //  ID in column 0
			id.setSelected(m_mark);
			miniTable.setValueAt(id, i, 0);
		}
		
		if (m_mark == false) m_mark = true;
		else if (m_mark == true) m_mark = false;
	}

	/**
	 *	Save Selection & return selecion Query or ""
	 *  @return where clause like C_Order_ID IN (...)
	 */
	private String saveSelection()
	{
		log.info("");
		//  ID selection may be pending
		miniTable.editingStopped(new ChangeEvent(this));
		//  Array of Integers
		ArrayList<Integer> results = new ArrayList<Integer>();

		//	Get selected entries
		int rows = miniTable.getRowCount();
		for (int i = 0; i < rows; i++)
		{
			IDColumn id = (IDColumn)miniTable.getValueAt(i, 0);     //  ID in column 0
		//	log.fine( "Row=" + i + " - " + id);
			if (id != null && id.isSelected())
				results.add(id.getRecord_ID());
		}

		if (results.size() == 0)
			return "";

		//	Query String
		String keyColumn = "C_OrderLine_ID";
		StringBuffer sb = new StringBuffer(keyColumn);
		if (results.size() > 1)
			sb.append(" IN (");
		else
			sb.append("=");
		//	Add elements
		for (int i = 0; i < results.size(); i++)
		{
			if (i > 0)
				sb.append(",");
			if (keyColumn.endsWith("_ID"))
				sb.append(results.get(i).toString());
			else
				sb.append("'").append(results.get(i).toString());
		}

		if (results.size() > 1)
			sb.append(")");
		//
		log.config(sb.toString());
		return sb.toString();
	}	//	saveSelection
	
	/**
	 *	Save Selection & return Array
	 *  @return Integer[]
	 */
	private Integer[] getSelection()
	{
		log.info("");
		//  ID selection may be pending
		miniTable.editingStopped(new ChangeEvent(this));
		//  Array of Integers
		ArrayList<Integer> results = new ArrayList<Integer>();

		//	Get selected entries
		int rows = miniTable.getRowCount();
		for (int i = 0; i < rows; i++)
		{
			IDColumn id = (IDColumn)miniTable.getValueAt(i, 0);     //  ID in column 0
		//	log.fine( "Row=" + i + " - " + id);
			if (id != null && id.isSelected())
				results.add(id.getRecord_ID());
		}
		
		Integer[] lines = new Integer[results.size ()];
		results.toArray (lines);
		return lines;
		
	}	//	saveSelection

	/**************************************************************************
	 *  Lock User Interface.
	 *  Called from the Worker before processing
	 *  @param pi process info
	 */
	public void lockUI (ProcessInfo pi)
	{
		this.setCursor(Cursor.getPredefinedCursor(Cursor.WAIT_CURSOR));
		this.setEnabled(false);
	}   //  lockUI

	/**
	 *  Unlock User Interface.
	 *  Called from the Worker when processing is done
	 *  @param pi result of execute ASync call
	 */
	public void unlockUI (ProcessInfo pi)
	{
		this.setEnabled(true);
		this.setCursor(Cursor.getDefaultCursor());
	}   //  unlockUI

	/**
	 *  Is the UI locked (Internal method)
	 *  @return true, if UI is locked
	 */
	public boolean isUILocked()
	{
		return this.isEnabled();
	}   //  isUILocked

	/**
	 *  Method to be executed async.
	 *  Called from the Worker
	 *  @param pi ProcessInfo
	 */
	public void executeASync (ProcessInfo pi)
	{
	}   //  executeASync
	
}	//	FormBoleto