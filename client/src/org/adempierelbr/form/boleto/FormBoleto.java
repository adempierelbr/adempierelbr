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
package org.adempierelbr.form.boleto;

import java.awt.*;
import java.awt.event.*;
import java.awt.print.PrinterException;
import java.beans.*;
import java.io.IOException;
import java.math.*;
import java.sql.*;
import java.util.*;
import java.util.logging.*;

import javax.swing.*;
import javax.swing.event.*;

import org.adempierelbr.model.boleto.MBoleto;
import org.adempierelbr.util.POLBR;
import org.compiere.apps.*;
import org.compiere.apps.form.FormFrame;
import org.compiere.apps.form.FormPanel;
import org.compiere.grid.ed.*;
import org.compiere.minigrid.*;
import org.compiere.model.*;
import org.compiere.plaf.*;
import org.compiere.print.CPrinter;
import org.compiere.process.*;
import org.compiere.swing.*;
import org.compiere.util.*;

/**
 * FormBoleto
 * 
 * Form to Generate Bills (Boletos)
 * 
 * @author Mario Grigioni, mgrigioni (Kenos, www.kenos.com.br) 
 * @contributor Jone Luis, jd15k (Ruston, www.fantastico.com.br)
 * @version $Id: MBoleto.java, 08/11/2007 10:43:02 mgrigioni
 */
public class FormBoleto extends CPanel
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
			executeQuery();
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

	private boolean			m_selectionActive = true;
	private String          m_whereClause;
	private Object          m_DateInvoiced     = null;
	private Object          m_C_BankAccount_ID = null;
	private Object          m_C_BPartner_ID    = null;
	private Object          m_PrinterName      = null;
	private boolean         m_mark = true;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(FormBoleto.class);
	//
	private CTabbedPane tabbedPane = new CTabbedPane();
	private CPanel selPanel = new CPanel();
	private CPanel selNorthPanel = new CPanel();
	private BorderLayout selPanelLayout = new BorderLayout();
	private CLabel lDateInvoiced = new CLabel();
	private VDate fDateInvoiced = new VDate("DateInvoiced", false, false, true, 15, "");
	private CLabel lBankAccount = new CLabel();
	private VLookup fBankAccount;
	private CLabel lBPartner = new CLabel();
	private VLookup fBPartner;
	private CLabel lPrinterName = new CLabel();
	private CPrinter fPrinterName = new CPrinter();
	private JCheckBox printedBill = new JCheckBox();
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
		confirmPanelSel.add(printedBill);
		
		selPanel.setLayout(selPanelLayout);
		selPanel.setPreferredSize(new Dimension(1024,450));
		
		lDateInvoiced.setLabelFor(fDateInvoiced);
		lDateInvoiced.setText(Msg.translate(Env.getCtx(), "DateInvoiced"));
		
		lBPartner.setLabelFor(fBPartner);
		lBPartner.setText(Msg.translate(Env.getCtx(), "C_BPartner_ID"));
		
		lBankAccount.setLabelFor(fBankAccount);
		lBankAccount.setText(Msg.translate(Env.getCtx(), "C_BankAccount_ID"));
		
		lPrinterName.setLabelFor(fPrinterName);
		lPrinterName.setText(Msg.translate(Env.getCtx(), "PrinterName"));
		
		printedBill.setText(Msg.translate(Env.getCtx(), "IsPrinted"));
		printedBill.addActionListener(this);
		
		selNorthPanel.setLayout(northPanelLayout);
		tabbedPane.add(selPanel, Msg.getMsg(Env.getCtx(), "Select"));
		selPanel.add(selNorthPanel, BorderLayout.NORTH);

		selNorthPanel.add(lDateInvoiced, new GridBagConstraints(0, 0, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		selNorthPanel.add(fDateInvoiced, new GridBagConstraints(1, 0, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		
		selNorthPanel.add(lBPartner, new GridBagConstraints(2, 0, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		selNorthPanel.add(fBPartner, new GridBagConstraints(3, 0, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		
		selNorthPanel.add(lBankAccount, new GridBagConstraints(4, 0, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		selNorthPanel.add(fBankAccount, new GridBagConstraints(5, 0, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		
		selNorthPanel.add(lPrinterName, new GridBagConstraints(0, 1, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		selNorthPanel.add(fPrinterName, new GridBagConstraints(1, 1, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		
		selPanel.setName("selPanel");
		selPanel.add(confirmPanelSel, BorderLayout.SOUTH);
		selPanel.add(scrollPane, BorderLayout.CENTER);
		scrollPane.getViewport().add(miniTable, null);
		
		confirmPanelSel.addActionListener(this);
		
		markButton.setText("Todos");
		markButton.addActionListener(this);
		
		fDateInvoiced.addVetoableChangeListener(this);
		
	}	//	jbInit

	/**
	 *	Fill Picks
	 *		Column_ID from C_Order
	 *  @throws Exception if Lookups cannot be initialized
	 */
	private void fillPicks() throws Exception
	{
		MLookup BankL = MLookupFactory.get (Env.getCtx(), m_WindowNo, 0, 3077, DisplayType.Search);
		fBankAccount = new VLookup ("C_BankAccount_ID", true, false, true, BankL);
		fBankAccount.addVetoableChangeListener(this);
		
		MLookup BPartnerL = MLookupFactory.get (Env.getCtx(), m_WindowNo, 0, 2893, DisplayType.Search);
		fBPartner = new VLookup ("C_BPartner_ID", false, false, true, BPartnerL);
		fBPartner.addVetoableChangeListener(this);	
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
		miniTable.addColumn("C_Invoice_ID");
		miniTable.addColumn("AD_Org_ID");
		miniTable.addColumn("DocumentNo");
		miniTable.addColumn("C_BPartner_ID");
		miniTable.addColumn("C_PaymentTerm_ID");
		miniTable.addColumn("DateInvoiced");
		miniTable.addColumn("DueDate");
		miniTable.addColumn("TotalLines");
		//
		miniTable.setMultiSelection(true);
		miniTable.setRowSelectionAllowed(true);
		//  set details
		miniTable.setColumnClass(0, IDColumn.class, false, " ");
		miniTable.setColumnClass(1, String.class, true, Msg.translate(Env.getCtx(), "AD_Org_ID"));
		miniTable.setColumnClass(2, String.class, true, Msg.translate(Env.getCtx(), "DocumentNo"));
		miniTable.setColumnClass(3, String.class, true, Msg.translate(Env.getCtx(), "C_BPartner_ID"));
		miniTable.setColumnClass(4, String.class, true, Msg.translate(Env.getCtx(), "C_PaymentTerm_ID"));
		miniTable.setColumnClass(5, Timestamp.class, true, Msg.translate(Env.getCtx(), "DateInvoiced"));
		miniTable.setColumnClass(6, Timestamp.class, true, Msg.translate(Env.getCtx(), "DueDate"));
		miniTable.setColumnClass(7, BigDecimal.class, true, Msg.translate(Env.getCtx(), "TotalLines"));
		//
		miniTable.autoSize();
		miniTable.getModel().addTableModelListener(this);
		//	Info
		statusBar.setStatusLine(Msg.getMsg(Env.getCtx(), "InvGenerateSel"));
		statusBar.setStatusDB(" ");
		//	Tabbed Pane Listener
		tabbedPane.addChangeListener(this);
	}	//	dynInit

	/**
	 *  Query Info
	 */
	private void executeQuery()
	{
		log.info("");
		int AD_Client_ID = Env.getAD_Client_ID(Env.getCtx());
		//  Create SQL
		
		int index = 0;

		StringBuffer sql = new StringBuffer(
				"SELECT distinct i.C_Invoice_ID, o.Name, i.DocumentNo, bp.Name, pt.Name, min(op.DateInvoiced) as DateInvoiced, min(op.DueDate) as DueDate, sum(op.OpenAmt) as GrandTotal " +
				"FROM C_Invoice i " +
				"INNER JOIN AD_Org o ON i.AD_Org_ID=o.AD_Org_ID " +
				"INNER JOIN C_DocType d ON i.C_DocTypeTarget_ID=d.C_DocType_ID " +
				"INNER JOIN C_BPartner bp ON i.C_BPartner_ID=bp.C_BPartner_ID " +
				"INNER JOIN RV_OpenItem op ON i.C_Invoice_ID=op.C_Invoice_ID " +
				"INNER JOIN C_PaymentTerm pt ON i.C_PaymentTerm_ID=pt.C_PaymentTerm_ID " +
				"WHERE i.IsSOTrx='Y' " +
				"AND d.lbr_HasOpenItems='Y' AND (i.lbr_PaymentRule IS NULL OR i.lbr_PaymentRule = 'B') " + //mostrar somente faturas boleto ou sem forma de pagamento
				"AND i.AD_Client_ID=? ");
		
				if (printedBill.isSelected()){
					sql.append("AND i.lbr_IsBillPrinted='Y' ");
				}
				else{
					sql.append("AND i.lbr_IsBillPrinted='N' ");
				}
				
				if (m_DateInvoiced != null){
					sql.append("AND i.DateInvoiced=? ");
					index = index + 1;
				}
				
				if (m_C_BPartner_ID != null){
					sql.append("AND i.C_BPartner_ID=? ");
					index = index + 2;
				}
				
				sql.append("GROUP BY i.C_Invoice_ID, o.Name, i.DocumentNo, bp.Name, pt.Name " +
						   "ORDER BY o.Name, bp.Name, DateInvoiced, DueDate");

		//  reset table
		int row = 0;
		miniTable.setRowCount(row);
		//  Execute
		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql.toString(), null);
			pstmt.setInt(1, AD_Client_ID);
			if (index == 1) pstmt.setTimestamp(2, (Timestamp)m_DateInvoiced);
			else if (index == 2) pstmt.setInt(2, (Integer)m_C_BPartner_ID);
			else if (index == 3){
				pstmt.setTimestamp(2, (Timestamp)m_DateInvoiced);
				pstmt.setInt(3, (Integer)m_C_BPartner_ID);
			}
			ResultSet rs = pstmt.executeQuery();
			//
			while (rs.next())
			{
				//  extend table
				miniTable.setRowCount(row+1);
				//  set values
				miniTable.setValueAt(new IDColumn(rs.getInt(1)), row, 0);   //  C_Invoice_ID
				miniTable.setValueAt(rs.getString(2), row, 1);              //  Org
				miniTable.setValueAt(rs.getString(3), row, 2);              //  Doc No
				miniTable.setValueAt(rs.getString(4), row, 3);              //  BPartner
				miniTable.setValueAt(rs.getString(5), row, 4);              //  PaymentTerm
				miniTable.setValueAt(rs.getTimestamp(6), row, 5);           //  DateInvoiced
				miniTable.setValueAt(rs.getTimestamp(7), row, 6);           //  DueDate
				miniTable.setValueAt(rs.getBigDecimal(8), row, 7);          //  TotalLines
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
		
		if (e.getSource().equals(printedBill))
		{
			if (printedBill.isSelected()){
				fBankAccount.setReadWrite(false);
			}
			else{
				fBankAccount.setReadWrite(true);
			}
			executeQuery();
			return;
		}
		
		if (e.getSource().equals(markButton))
		{
			markAll();
			return;
		}
		
		m_whereClause = saveSelection();
		
		if (m_whereClause.length() > 0 && m_selectionActive){

			if (m_C_BankAccount_ID == null || (Integer)m_C_BankAccount_ID == 0){
				if (!printedBill.isSelected()){
					String msg = "Selecionar Conta para Geração de Boletos";
					statusBar.setStatusLine(msg);	
					ADialog.info(m_WindowNo, this, msg);
					return;
				}
			}
			
			m_PrinterName = fPrinterName.getValue();
			
			Properties ctx = Env.getCtx();
			//Trx transaction = Trx.get(Trx.createTrxName(), true);
			//String trx = transaction.getTrxName();
			
			MBankAccount bankA = new MBankAccount(ctx,(Integer)m_C_BankAccount_ID,null);
			if (!POLBR.get_ValueAsBoolean(bankA.get_Value("lbr_IsBillPrinted"))){
				String msg = "Conta não está marcada para Geração de Boletos";
				statusBar.setStatusLine(msg);	
				ADialog.info(m_WindowNo, this, msg);
				return;
			}
			
			Integer[] selection = getSelection();
			for (int i=0;i<selection.length;i++){
				try {
					MBoleto.generateBoleto(ctx, selection[i], (Integer)m_C_BankAccount_ID, null, (String)m_PrinterName, null);
				} catch (IOException e1) {
					e1.printStackTrace();
				} catch (PrinterException e1) {
					e1.printStackTrace();
				}
			}
			m_mark = true;
			executeQuery();
		
		}
		else{
			String msg = "Selecionar Faturas para Geração de Boletos";
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
		
		if (e.getPropertyName().equals("DateInvoiced"))
		{
			m_DateInvoiced = e.getNewValue();
			fDateInvoiced.setValue(m_DateInvoiced);	//	display value
			if (m_DateInvoiced != null) i = 1;
		}
		
		if (e.getPropertyName().equals("C_BPartner_ID"))
		{
			m_C_BPartner_ID = e.getNewValue();
			fBPartner.setValue(m_C_BPartner_ID);	//	display value
			if (m_C_BPartner_ID != null) i = 1;
		}
		
		if (e.getPropertyName().equals("C_BankAccount_ID"))
		{
			m_C_BankAccount_ID = e.getNewValue();
			fBankAccount.setValue(m_C_BankAccount_ID);	//	display value
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
		String keyColumn = "C_Invoice_ID";
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