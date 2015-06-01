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

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;

import javax.swing.table.TableModel;

import org.adempiere.pipo.CreateZipFile;
import org.adempiere.webui.component.Button;
import org.adempiere.webui.component.ConfirmPanel;
import org.adempiere.webui.component.Grid;
import org.adempiere.webui.component.GridFactory;
import org.adempiere.webui.component.Label;
import org.adempiere.webui.component.Listbox;
import org.adempiere.webui.component.ListboxFactory;
import org.adempiere.webui.component.Panel;
import org.adempiere.webui.component.Row;
import org.adempiere.webui.component.Rows;
import org.adempiere.webui.component.WListbox;
import org.adempiere.webui.event.WTableModelEvent;
import org.adempiere.webui.event.WTableModelListener;
import org.adempiere.webui.panel.ADForm;
import org.adempiere.webui.panel.CustomForm;
import org.adempiere.webui.panel.IFormController;
import org.adempiere.webui.session.SessionManager;
import org.adempiere.webui.window.FDialog;
import org.adempierelbr.util.TextUtil;
import org.apache.commons.io.FileUtils;
import org.compiere.minigrid.IDColumn;
import org.compiere.model.MBankAccount;
import org.compiere.process.ProcessInfo;
import org.compiere.util.ASyncProcess;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;
import org.zkoss.util.media.AMedia;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zk.ui.util.Clients;
import org.zkoss.zkex.zul.Borderlayout;
import org.zkoss.zkex.zul.Center;
import org.zkoss.zkex.zul.North;
import org.zkoss.zkex.zul.South;
import org.zkoss.zul.Filedownload;
import org.zkoss.zul.Separator;
import org.zkoss.zul.Space;

/**
 *  	Generate Bills for ZK interface
 *			
 *  @author Ricardo Santana (Kenos, www.kenos.com.br)
 *  @version $Id: WGenBilling.java, v1.0 2012/03/27 6:13:04 PM, ralexsander Exp $
 */

public class WGenCNAB extends GenCNAB
	implements IFormController, EventListener, WTableModelListener, ASyncProcess
{	
	private CustomForm form = new CustomForm();

	private Panel mainPanel = new Panel();
	private Borderlayout mainLayout = new Borderlayout();
	private Panel parameterPanel = new Panel();
	private Label labelBankAccount = new Label();
	private Listbox fieldBankAccount = ListboxFactory.newDropdownListbox();
	private Grid parameterLayout = GridFactory.newGridLayout();
	private Label dataStatus = new Label();
	private WListbox miniTable = ListboxFactory.newDataTable();
	private ConfirmPanel commandPanel = new ConfirmPanel(true, false, false, false, false, false, false);
	private Button bCancel = commandPanel.getButton(ConfirmPanel.A_CANCEL);
	private Button bGenerate = commandPanel.createButton(ConfirmPanel.A_EXPORT);
	private Button bRefresh = commandPanel.createButton(ConfirmPanel.A_REFRESH);
	private Panel southPanel;
	@SuppressWarnings("unused")
	private ProcessInfo m_pi;
	private boolean m_isLock;
	
	/**
	 *	Initialize Panel
	 */
	public WGenCNAB()
	{
		try
		{
			zkInit();
			dynInit();
			loadTableInfo();
			southPanel.appendChild(new Separator());
			southPanel.appendChild(commandPanel);
		}
		catch(Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
	}	//	init

	/**
	 *  Static Init
	 *  @throws Exception
	 */
	private void zkInit() throws Exception
	{
		//
		form.appendChild(mainPanel);
		mainPanel.appendChild(mainLayout);
		mainPanel.setStyle("width: 100%; height: 100%; padding: 0; margin: 0");
		mainLayout.setHeight("100%");
		mainLayout.setWidth("99%");
		parameterPanel.appendChild(parameterLayout);
		//
		labelBankAccount.setText(Msg.translate(Env.getCtx(), "C_BankAccount_ID"));
		fieldBankAccount.addActionListener(this);
		bRefresh.addActionListener(this);
		dataStatus.setText(" ");
		dataStatus.setPre(true);
		//
		bGenerate.addActionListener(this);
		bCancel.addActionListener(this);
		//
		North north = new North();
		north.setStyle("border: none");
		mainLayout.appendChild(north);
		north.appendChild(parameterPanel);
		
		Rows rows = parameterLayout.newRows();
		Row row = rows.newRow();
		row.appendChild(labelBankAccount.rightAlign());
		row.appendChild(fieldBankAccount);
		row.appendChild(new Space());
		row.appendChild(new Space());
		row.appendChild(bRefresh);

		South south = new South();
		south.setStyle("border: none");
		mainLayout.appendChild(south);
		southPanel = new Panel();
		southPanel.appendChild(dataStatus);
		south.appendChild(southPanel);
		Center center = new Center();
		mainLayout.appendChild(center);
		center.appendChild(miniTable);
		//
		commandPanel.addButton(bGenerate);
		commandPanel.getButton(ConfirmPanel.A_OK).setVisible(false);
	}   //  jbInit

	/**
	 *  Dynamic Init.
	 *  - Load Bank Info
	 *  - Load BPartner
	 *  - Init Table
	 */
	private void dynInit()
	{
		ArrayList<KeyNamePair> bankAccountData = getBankAccountData();
		for (KeyNamePair bi : bankAccountData)
			fieldBankAccount.appendItem(bi.toString(), bi);

		if (fieldBankAccount.getItemCount() == 0)
			FDialog.error(m_WindowNo, form, "VPaySelectNoBank");
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
		KeyNamePair bi = (KeyNamePair)fieldBankAccount.getSelectedItem().getValue();
		
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
		SessionManager.getAppDesktop().closeActiveWindow();
	}	//	dispose

	
	/**************************************************************************
	 *  ActionListener
	 *  @param e event
	 */
	public void onEvent (Event e)
	{
		//  Generate PaySelection
		if (e.getTarget() == bGenerate)
		{
			genCNAB ();
			loadTableInfo ();
		}

		else if (e.getTarget() == bCancel)
			dispose();

		//  Update Open Invoices
		else if (e.getTarget() == bRefresh || e.getTarget() == fieldBankAccount)
			loadTableInfo();

		//	Selct All
		else if (e.getTarget().equals("SelectAll"))
		{
			TableModel model = (TableModel) miniTable.getModel();
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
	public void tableChanged(WTableModelEvent e)
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
		if (miniTable.getRowCount() == 0)
			return;
		miniTable.setSelectedIndices(new int[]{0});
		calculateSelection();
		if (m_noSelected == 0)
			return;
		
		String filePath = System.getProperty("java.io.tmpdir") + File.separator + "CNAB_" + TextUtil.timeToString(new Date(), "yyyyMMdd");
		File folder = new File (filePath);
		if (!folder.exists())
			folder.mkdirs();
		//
		deleteDir(folder);
		
		genCNAB (miniTable, filePath, (KeyNamePair) fieldBankAccount.getSelectedItem().getValue());
		
		File zipFile = new File(folder + ".zip");
		if (zipFile.exists())
			zipFile.delete();
		//
		CreateZipFile.zipFolder (folder, zipFile, "**");
		
		try
		{
			AMedia media = new AMedia(zipFile.getName(), null, null, FileUtils.readFileToByteArray(zipFile));
			Filedownload.save(media);
		}
		catch (Exception e)
		{
			FDialog.error(m_WindowNo, form, "SaveError", "Erro ao exportar o arquivo");
		}
	}   //  exportBilling
	
	/**
	 *  Lock User Interface
	 *  Called from the Worker before processing
	 */
	public void lockUI (ProcessInfo pi)
	{
		if (m_isLock) return;
		m_isLock = true;
		Clients.showBusy(null, true);
	}   //  lockUI

	/**
	 *  Unlock User Interface.
	 *  Called from the Worker when processing is done
	 */
	public void unlockUI (ProcessInfo pi)
	{
		if (!m_isLock) return;
		m_isLock = false;
		m_pi = pi;
		Clients.showBusy(null, false);	

		this.dispose();
	}	//	unlockUI

	/**
	 * 	Execute ASync
	 */
	public void executeASync (ProcessInfo pi) 
	{
	}	//	executeASync

	/**
	 * 	Check if User Interface is Unlocked
	 */
	public boolean isUILocked () 
	{
		return m_isLock;
	}	//	isUILocked

	/**
	 * 	Return AD Form for ZK
	 */
	public ADForm getForm () 
	{
		return form;
	}	//	getForm
}   //  WGenBilling
