/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2011 Ricardo Santana                                         *
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
import java.awt.FlowLayout;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;

import javax.swing.JFileChooser;
import javax.swing.JLabel;
import javax.swing.JScrollPane;
import javax.swing.KeyStroke;
import javax.swing.event.TableModelEvent;
import javax.swing.event.TableModelListener;
import javax.swing.table.TableModel;

import org.adempierelbr.util.TextUtil;
import org.compiere.apps.ADialog;
import org.compiere.apps.AppsAction;
import org.compiere.apps.ConfirmPanel;
import org.compiere.apps.form.FormFrame;
import org.compiere.apps.form.FormPanel;
import org.compiere.grid.ed.VComboBox;
import org.compiere.minigrid.IDColumn;
import org.compiere.minigrid.MiniTable;
import org.compiere.model.MBankAccount;
import org.compiere.plaf.CompiereColor;
import org.compiere.process.ProcessInfo;
import org.compiere.swing.CButton;
import org.compiere.swing.CLabel;
import org.compiere.swing.CPanel;
import org.compiere.util.ASyncProcess;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;

/**
 *  	Create Manual Billing CNAB
 *			<li>Based on @see org.compiere.apps.form.PaySelect
 *
 *  @author Ricardo Santana (Kenos, www.kenos.com.br)
 *  @version $Id: VGenBilling.java, v1.0 2012/03/27 11:55:46 AM, ralexsander Exp $
 */
public class VGenCNAB extends GenCNAB implements FormPanel, ActionListener, TableModelListener, ASyncProcess
{
	/** @todo withholding */
	private CPanel panel = new CPanel();

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
		try
		{
			jbInit();
			dynInit();
			loadTableInfo();
			frame.getContentPane().add(commandPanel, BorderLayout.SOUTH);
			frame.getContentPane().add(mainPanel, BorderLayout.CENTER);
		}
		catch(Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
	}	//	init
	
	/**	FormFrame			*/
	private FormFrame 		m_frame;

	//
	private CPanel mainPanel = new CPanel();
	private BorderLayout mainLayout = new BorderLayout();
	private CPanel parameterPanel = new CPanel();
	private CLabel labelBankAccount = new CLabel();
	private VComboBox fieldBankAccount = new VComboBox();
	private GridBagLayout parameterLayout = new GridBagLayout();
	private JLabel dataStatus = new JLabel();
	private JScrollPane dataPane = new JScrollPane();
	private MiniTable miniTable = new MiniTable();
	private CPanel commandPanel = new CPanel();
	private CButton bCancel = ConfirmPanel.createCancelButton(true);
	private CButton bGenerate = ConfirmPanel.createExportButton(true);
	private BorderLayout commandLayout = new BorderLayout();
	private CButton bRefresh = ConfirmPanel.createRefreshButton(true);
	
	/**
	 *  Static Init
	 *  @throws Exception
	 */
	private void jbInit() throws Exception
	{
		CompiereColor.setBackground(panel);
		//
		mainPanel.setLayout(mainLayout);
		parameterPanel.setLayout(parameterLayout);
		//
		labelBankAccount.setText(Msg.translate(Env.getCtx(), "C_BankAccount_ID"));
		fieldBankAccount.addActionListener(this);
		bRefresh.addActionListener(this);
		dataStatus.setText(" ");
		//
		bGenerate.addActionListener(this);
		bCancel.addActionListener(this);
		//
		mainPanel.add(parameterPanel, BorderLayout.NORTH);
		parameterPanel.add(labelBankAccount,  new GridBagConstraints(0, 0, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(fieldBankAccount,   new GridBagConstraints(1, 0, 4, 1, 0.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 5, 5, 5), 0, 0));

		mainPanel.add(dataStatus, BorderLayout.SOUTH);
		mainPanel.add(dataPane, BorderLayout.CENTER);
		dataPane.getViewport().add(miniTable, null);
		//
		CPanel confirmPanel = new CPanel(new FlowLayout(FlowLayout.RIGHT));
		confirmPanel.setOpaque(false);
		confirmPanel.add(bCancel, null);
		confirmPanel.add(bGenerate, null);
		//
		commandPanel.setLayout(commandLayout);
		
		AppsAction selectAllAction = new AppsAction ("SelectAll", KeyStroke.getKeyStroke(KeyEvent.VK_A, java.awt.event.InputEvent.ALT_MASK), null);
    	CButton selectAllButton = (CButton)selectAllAction.getButton();
    	selectAllButton.setMargin(new Insets (0, 10, 0, 10));
    	selectAllButton.setDefaultCapable(true);
    	selectAllButton.addActionListener(this);
		
		CPanel otherPanel = new CPanel(new FlowLayout(FlowLayout.RIGHT));
		otherPanel.setOpaque(false);
		otherPanel.add(selectAllButton);
		otherPanel.add(bRefresh, null);
		commandPanel.add(confirmPanel, BorderLayout.EAST);
		commandPanel.add(otherPanel, BorderLayout.WEST);
	}   //  jbInit

	/**
	 *  Dynamic Init.
	 *  - Load Bank Info
	 *  - Load BPartner
	 *  - Load Document Type
	 *  - Init Table
	 */
	private void dynInit()
	{
		ArrayList<KeyNamePair> bankAccountData = getBankAccountData();
		for (KeyNamePair bi : bankAccountData)
			fieldBankAccount.addItem(bi);

		if (fieldBankAccount.getItemCount() == 0)
			ADialog.error(m_WindowNo, panel, "VPaySelectNoBank");
		else
			fieldBankAccount.setSelectedIndex(0);
		
		prepareTable(miniTable);
		
		miniTable.getModel().addTableModelListener(this);
	}   //  dynInit

	/**
	 *  Query and create TableInfo
	 */
	private void loadTableInfo()
	{
		KeyNamePair bi = (KeyNamePair)fieldBankAccount.getSelectedItem();
		
		MBankAccount bank = new MBankAccount(Env.getCtx(), bi.getKey(), null);
		int org = bank.getAD_Org_ID();
		
		loadTableInfo (org, bi, miniTable);
		
		calculateSelection();
	}   //  loadTableInfo

	/**
	 * 	Dispose
	 */
	public void dispose()
	{
		if (m_frame != null)
			m_frame.dispose();
		m_frame = null;
	}	//	dispose


	/**************************************************************************
	 *  ActionListener
	 *  @param e event
	 */
	public void actionPerformed (ActionEvent e)
	{
		//  Generate PaySelection
		if (e.getSource() == bGenerate)
		{
			genCNAB();
			dispose();
		}

		else if (e.getSource() == bCancel)
			dispose();

		//  Update Open Invoices
		else if (e.getSource() == bRefresh || e.getSource() == fieldBankAccount)
			loadTableInfo();
		
		//	Selct All
		else if (e.getActionCommand().equals("SelectAll"))
		{
			TableModel model = miniTable.getModel();
			int rows = model.getRowCount();
			for (int i = 0; i < rows; i++)
			{
				IDColumn record = (IDColumn) model.getValueAt(i, 0);
				record.setSelected(true);
				model.setValueAt(record, i, 0);
			}
			calculateSelection();
		}
	}   //  actionPerformed

	/**
	 *  Table Model Listener
	 *  @param e event
	 */
	public void tableChanged(TableModelEvent e)
	{
		if (e.getColumn() == 0)
			calculateSelection();
	}   //  valueChanged

	/**
	 *  Calculate selected rows.
	 *  - add up selected rows
	 */
	public void calculateSelection()
	{
		dataStatus.setText(calculateSelection(miniTable));
		//
		bGenerate.setEnabled(m_noSelected != 0);
	}   //  calculateSelection
	
	/**
	 *  Print Billing
	 */
	private void genCNAB ()
	{
		miniTable.stopEditor(true);
		if (miniTable.getRowCount() == 0)
			return;
		miniTable.setRowSelectionInterval(0,0);
		calculateSelection();
		if (m_noSelected == 0)
			return;
		
		String filePath = System.getProperty("java.io.tmpdir") + File.separator + "CNAB_" + TextUtil.timeToString(new Date(), "yyyyMMdd");
		File folder = new File (filePath);
		if (!folder.exists())
			folder.mkdirs();
		
		File file = genCNAB (miniTable, filePath, (KeyNamePair) fieldBankAccount.getSelectedItem());
		
		try
		{
			JFileChooser chooser = new JFileChooser();
			chooser.setDialogType(JFileChooser.SAVE_DIALOG);
			chooser.setDialogTitle(Msg.getMsg(Env.getCtx(), "AttachmentSave"));
			chooser.setSelectedFile(new File(file.getName()));
			//	Show dialog
			int returnVal = chooser.showSaveDialog(mainPanel);
			if (returnVal != JFileChooser.APPROVE_OPTION)
				return;
			File saveFile = chooser.getSelectedFile();
			if (saveFile == null)
				return;

			log.config("Save to " + saveFile.getAbsolutePath());
			file.renameTo(saveFile);
		}
		catch (Exception e)
		{
			ADialog.error(m_WindowNo, panel, "SaveError", "Erro ao exportar o arquivo");
		}
	}   //  printBilling

	/**
	 *  Lock User Interface
	 *  Called from the Worker before processing
	 *  @param pi process info
	 */
	public void lockUI (ProcessInfo pi)
	{
		panel.setEnabled(false);
		m_isLocked = true;
	}   //  lockUI

	/**
	 *  Unlock User Interface.
	 *  Called from the Worker when processing is done
	 *  @param pi process info
	 */
	public void unlockUI (ProcessInfo pi)
	{
		m_isLocked = false;
		this.dispose();
	}   //  unlockUI

	/**
	 *  Is the UI locked (Internal method)
	 *  @return true, if UI is locked
	 */
	public boolean isUILocked()
	{
		return m_isLocked;
	}   //  isLoacked

	/**
	 *  Method to be executed async.
	 *  Called from the ASyncProcess worker
	 *  @param pi process info
	 */
	public void executeASync (ProcessInfo pi)
	{
		log.config("-");
	}   //  executeASync
}   //  VGenCNAB
