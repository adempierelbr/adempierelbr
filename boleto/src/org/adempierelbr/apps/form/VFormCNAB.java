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
package org.adempierelbr.apps.form;

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
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;

import javax.swing.JButton;
import javax.swing.JScrollPane;
import javax.swing.event.ChangeEvent;
import javax.swing.event.ChangeListener;
import javax.swing.event.TableModelEvent;
import javax.swing.event.TableModelListener;

import org.adempierelbr.model.MLBRCNAB;
import org.adempierelbr.model.X_LBR_Bank;
import org.adempierelbr.util.AdempiereLBR;
import org.compiere.apps.ADialog;
import org.compiere.apps.ConfirmPanel;
import org.compiere.apps.StatusBar;
import org.compiere.apps.form.FormFrame;
import org.compiere.apps.form.FormPanel;
import org.compiere.grid.ed.VFile;
import org.compiere.grid.ed.VLookup;
import org.compiere.minigrid.IDColumn;
import org.compiere.minigrid.MiniTable;
import org.compiere.model.MBank;
import org.compiere.model.MBankAccount;
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
import org.compiere.util.Msg;

/**
 * FormCNAB
 * 
 * Form to Generate CNAB Files
 * 
 * @author Mario Grigioni, mgrigioni (Kenos, www.kenos.com.br) 
 * @version $Id: FormCNAB.java, 04/06/2008 16:25:00 mgrigioni
 */
public class VFormCNAB extends CPanel
	implements FormPanel, ActionListener, VetoableChangeListener, ChangeListener, TableModelListener, ASyncProcess
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private BigDecimal GrandTotal   = Env.ZERO;
	private int        rowsSelected = 0;

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
	private Object          m_C_BankAccount_ID = null;
	private Object          m_FileName      = null;
	private boolean         m_mark = true;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(VFormCNAB.class);
	//
	private CTabbedPane tabbedPane = new CTabbedPane();
	private CPanel selPanel = new CPanel();
	private CPanel selNorthPanel = new CPanel();
	private BorderLayout selPanelLayout = new BorderLayout();
	private CLabel lBankAccount = new CLabel();
	private VLookup fBankAccount;
	private CLabel lFileName = new CLabel();
	private VFile fFileName = new VFile("File_Directory",true,false,true,20,false);
	private GridBagLayout northPanelLayout = new GridBagLayout();
	private ConfirmPanel confirmPanelSel = new ConfirmPanel(true,true);
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
		
		lBankAccount.setLabelFor(fBankAccount);
		lBankAccount.setText(Msg.translate(Env.getCtx(), "C_BankAccount_ID"));
		
		lFileName.setLabelFor(fFileName);
		lFileName.setText(Msg.translate(Env.getCtx(), "File_Directory"));
		
		selNorthPanel.setLayout(northPanelLayout);
		tabbedPane.add(selPanel, Msg.getMsg(Env.getCtx(), "Select"));
		selPanel.add(selNorthPanel, BorderLayout.NORTH);

		selNorthPanel.add(lBankAccount, new GridBagConstraints(0, 0, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		selNorthPanel.add(fBankAccount, new GridBagConstraints(1, 0, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));
		
		selNorthPanel.add(lFileName, new GridBagConstraints(2, 0, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		selNorthPanel.add(fFileName, new GridBagConstraints(3, 0, 1, 1, 0.0, 0.0
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
		MLookup BankL = MLookupFactory.get (Env.getCtx(), m_WindowNo, 0, 3077, DisplayType.Search);
		fBankAccount = new VLookup ("C_BankAccount_ID", true, false, true, BankL);
		fBankAccount.addVetoableChangeListener(this);
	}	//	fillPicks

	/**
	 *	Dynamic Init.
	 *	- Create GridController & Panel
	 *	- AD_Column_ID from C_Order
	 */
	private void dynInit()
	{
		//  create Columns
		miniTable.addColumn("LBR_CNAB_ID");
		miniTable.addColumn("LBR_Boleto_ID");
		miniTable.addColumn("C_Order_ID");
		miniTable.addColumn("C_Invoice_ID");
		miniTable.addColumn("C_BPartner_ID");
		miniTable.addColumn("GrandTotal");
		miniTable.addColumn("DateInvoiced");
		//
		miniTable.setMultiSelection(true);
		miniTable.setRowSelectionAllowed(true);
		//  set details
		miniTable.setColumnClass(0, IDColumn.class, false, " ");
		miniTable.setColumnClass(1, String.class, true, Msg.translate(Env.getCtx(), "LBR_Boleto_ID"));
		miniTable.setColumnClass(2, String.class, true, Msg.translate(Env.getCtx(), "C_Order_ID"));
		miniTable.setColumnClass(3, String.class, true, Msg.translate(Env.getCtx(), "C_Invoice_ID"));
		miniTable.setColumnClass(4, String.class, true, Msg.translate(Env.getCtx(), "C_BPartner_ID"));
		miniTable.setColumnClass(5, BigDecimal.class, true, Msg.translate(Env.getCtx(), "GrandTotal"));
		miniTable.setColumnClass(6, Timestamp.class, true, Msg.translate(Env.getCtx(), "DateInvoiced"));
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

		StringBuffer sql = new StringBuffer(
				"SELECT distinct cnab.LBR_CNAB_ID, b.DocumentNo, o.DocumentNo, i.DocumentNo, bp.Name, b.GrandTotal, i.DateInvoiced " +
				"FROM LBR_CNAB cnab " +
				"INNER JOIN LBR_Boleto b ON cnab.LBR_Boleto_ID=b.LBR_Boleto_ID " +
				"INNER JOIN C_Invoice i ON b.C_Invoice_ID=i.C_Invoice_ID " +
				"INNER JOIN C_BPartner bp ON i.C_BPartner_ID=bp.C_BPartner_ID " +
				"LEFT JOIN C_Order o ON o.C_Order_ID = i.C_Order_ID " +
				"WHERE cnab.IsRegistered = 'N' AND cnab.lbr_IsCancelled = 'N' " +
				"AND i.AD_Client_ID=? " +
				"AND cnab.C_BankAccount_ID = ? ");
		
				sql.append("ORDER BY cnab.LBR_CNAB_ID");

		//  reset table
		int row = 0;
		miniTable.setRowCount(row);
		//  Execute
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), null);
			pstmt.setInt(1, AD_Client_ID);
			if (m_C_BankAccount_ID == null)
				pstmt.setInt(2, 0);
			else
				pstmt.setInt(2, (Integer)m_C_BankAccount_ID);
			
			rs = pstmt.executeQuery();
			//
			while (rs.next())
			{
				//  extend table
				miniTable.setRowCount(row+1);
				//  set values
				miniTable.setValueAt(new IDColumn(rs.getInt(1)), row, 0);   //  LBR_CNAB_ID
				miniTable.setValueAt(rs.getString(2), row, 1);              //  Boleto
				miniTable.setValueAt(rs.getString(3), row, 2);              //  Order
				miniTable.setValueAt(rs.getString(4), row, 3);              //  Invoice
				miniTable.setValueAt(rs.getString(5), row, 4);              //  BPartner
				miniTable.setValueAt(rs.getBigDecimal(6), row, 5);          //  GrandTotal
				miniTable.setValueAt(rs.getTimestamp(7), row, 6);           //  DateInvoiced
				//  prepare next
				row++;
			}
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally{
		       DB.close(rs, pstmt);
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
		
		if (e.getActionCommand().equals(ConfirmPanel.A_REFRESH))
		{
			executeQuery();
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

			if (m_C_BankAccount_ID == null || (Integer)m_C_BankAccount_ID == 0){
					String msg = "Selecionar Conta para Geração do CNAB";
					statusBar.setStatusLine(msg);	
					ADialog.info(m_WindowNo, this, msg);
					return;
			}
			
			m_FileName = fFileName.getValue();
			
			if (m_FileName == null || ((String)m_FileName).equals("")){
				String msg = "Selecionar diretório onde o Arquivo será gravado";
				statusBar.setStatusLine(msg);	
				ADialog.info(m_WindowNo, this, msg);
				return;
			}
			
			Properties ctx = Env.getCtx();

			Integer[] selection = getSelection();
			for (int i=0;i<selection.length;i++){
				MLBRCNAB cnab = new MLBRCNAB(ctx,selection[i],null);
				cnab.setIsSelected(true);
				cnab.save();
			}
			
			//PROCESS
			MBankAccount BankA     = new MBankAccount(ctx,(Integer)m_C_BankAccount_ID,null);
			MBank        Bank      = new MBank(ctx,BankA.getC_Bank_ID(),null);
			X_LBR_Bank   bBank     = new X_LBR_Bank(ctx,(Integer)Bank.get_Value("LBR_Bank_ID"),null);
			
			String       fileName  = (String)m_FileName;
			
			int bNum = Integer.parseInt(bBank.getlbr_jBoletoNo());
			
		    if (!(fileName.endsWith(AdempiereLBR.getFileSeparator()))) 
		    	fileName += AdempiereLBR.getFileSeparator();
		    
		    fileName += MLBRCNAB.prefix + MLBRCNAB.getSystemDate(ctx) + MLBRCNAB.ext;
		    
		    boolean answer = ADialog.ask(m_WindowNo, this, 
		    		                     "Títulos Selecionados: " + rowsSelected + 
		    		                     " - Valor Total: " + GrandTotal.setScale(2, BigDecimal.ROUND_HALF_UP));
		    if (answer){
		    	try {
		    		MLBRCNAB.generateFile(bNum,fileName,null,null,BankA,null);
		    	} catch (IOException e1) {
		    		log.log(Level.SEVERE,"Erro ao gerar arquivo CNAB", e1);
		    	}
			
		    	m_mark = true;
		    	executeQuery();
		    }
		    else
		    	return;
		
		}
		else{
			String msg = "Selecionar Boletos para Geração do CNAB";
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

		if (e.getPropertyName().equals("C_BankAccount_ID"))
		{
			m_C_BankAccount_ID = e.getNewValue();
			fBankAccount.setValue(m_C_BankAccount_ID);	//	display value
			i = 1;
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
		int rows = miniTable.getRowCount();
		
		GrandTotal   = Env.ZERO;
		rowsSelected = 0;
		
		for (int i = 0; i < rows; i++)
		{
			IDColumn id = (IDColumn)miniTable.getValueAt(i, 0);     //  ID in column 0
			if (id != null && id.isSelected()){
				rowsSelected++;
				GrandTotal = GrandTotal.add((BigDecimal)miniTable.getValueAt(i, 5));
			}
		}
		statusBar.setStatusDB(" " + rowsSelected + " - Valor Total: " + GrandTotal.setScale(2, BigDecimal.ROUND_HALF_UP));
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
		String keyColumn = "LBR_CNAB_ID";
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
	
}	//	FormCNAB