/******************************************************************************
 * Copyright (C) 2016 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2016 Ricardo Santana                                         *
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
package org.kenos.apps.form;

import java.awt.BorderLayout;
import java.awt.Cursor;
import java.awt.FlowLayout;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.util.List;
import java.util.logging.Level;

import javax.swing.JScrollPane;
import javax.swing.KeyStroke;
import javax.swing.event.ChangeEvent;
import javax.swing.event.ChangeListener;
import javax.swing.event.TableModelEvent;
import javax.swing.event.TableModelListener;

import org.adempierelbr.model.MLBRNFeEvent;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRPartnerDFe;
import org.compiere.apps.ADialog;
import org.compiere.apps.AEnv;
import org.compiere.apps.AWindow;
import org.compiere.apps.AppsAction;
import org.compiere.apps.ConfirmPanel;
import org.compiere.apps.IProcessParameter;
import org.compiere.apps.ProcessCtl;
import org.compiere.apps.ProcessParameterPanel;
import org.compiere.apps.StatusBar;
import org.compiere.apps.form.FormFrame;
import org.compiere.minigrid.IDColumn;
import org.compiere.minigrid.MiniTable;
import org.compiere.model.MOrg;
import org.compiere.model.MQuery;
import org.compiere.model.MTable;
import org.compiere.plaf.CompiereColor;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.swing.CButton;
import org.compiere.swing.CPanel;
import org.compiere.swing.CTabbedPane;
import org.compiere.swing.CTextPane;
import org.compiere.util.ASyncProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * Generate custom form panel
 * 
 */
public class VNotaFiscalPanel extends CPanel implements ActionListener, ChangeListener, TableModelListener, ASyncProcess
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 8154208229173738517L;

	private NotaFiscal genForm;
	
	/**	Window No			*/
	private int         	m_WindowNo = 0;
	/**	FormFrame			*/
	private FormFrame 		m_frame;

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(VNotaFiscalPanel.class);
	//
	
	private CTabbedPane tabbedPane = new CTabbedPane();
	private CPanel nfeEmitPanel = new CPanel();
	private CPanel selNorthPanelEmit = new CPanel();
	private CPanel selNorthPanelRec = new CPanel();
	private CPanel selNorthPanelInut = new CPanel();
	private BorderLayout emitPanelLayout = new BorderLayout();
	private BorderLayout recPanelLayout = new BorderLayout();
	private BorderLayout inutPanelLayout = new BorderLayout();
	
	private FlowLayout northPanelLayoutEmit = new FlowLayout();
	private FlowLayout northPanelLayoutRec = new FlowLayout();
	private ConfirmPanel confirmPanelEmit = new ConfirmPanel(true, true, false, true, false, true, true);
	private ConfirmPanel confirmPanelRec = new ConfirmPanel(true, true, false, true, false, true, true);
	private ConfirmPanel confirmPanelInut = new ConfirmPanel(true, true, false, false, false, false, true);
	private StatusBar statusBar = new StatusBar();
	private CPanel nfeRecPanel = new CPanel();
	private CPanel nfeInutPanel = new CPanel();
	private CTextPane info = new CTextPane();
	private JScrollPane scrollPaneEmit = new JScrollPane();
	private JScrollPane scrollPaneRec = new JScrollPane();
	private JScrollPane scrollPaneInut = new JScrollPane();
	private MiniTable miniTableEmit = new MiniTable();
	private MiniTable miniTableRec = new MiniTable();
	private MiniTable miniTableInut = new MiniTable();

	private CButton printEmitButton = ConfirmPanel.createPrintButton(false);
	private CButton printRecButton = ConfirmPanel.createPrintButton(false);
	private CButton downloadButton = createButton("Next");
	
	public VNotaFiscalPanel(NotaFiscal genForm, int WindowNo, FormFrame frame)
	{
		log.info("");
		this.genForm = genForm;		
		m_WindowNo = WindowNo;
		m_frame = frame;
		
		try
		{
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
		nfeEmitPanel.setLayout(emitPanelLayout);
		confirmPanelEmit.getCustomizeButton().setToolTipText(Msg.translate (Env.getCtx(), "SelectAll"));
		confirmPanelEmit.addComponent(printEmitButton);
		printEmitButton.addActionListener(this);
		
		confirmPanelRec.getCustomizeButton().setToolTipText(Msg.translate (Env.getCtx(), "SelectAll"));
		downloadButton.setToolTipText("Download XML");
		
		selNorthPanelEmit.setLayout(northPanelLayoutEmit);
		northPanelLayoutEmit.setAlignment(FlowLayout.LEFT);
		tabbedPane.add(nfeEmitPanel, "Notas Fiscais Emitidas");
		nfeEmitPanel.add(selNorthPanelEmit, BorderLayout.NORTH);
		nfeEmitPanel.setName("selPanel");
		nfeEmitPanel.add(confirmPanelEmit, BorderLayout.SOUTH);
		nfeEmitPanel.add(scrollPaneEmit, BorderLayout.CENTER);
		scrollPaneEmit.getViewport().add(miniTableEmit, null);
		confirmPanelEmit.addActionListener(this);
		//
		tabbedPane.add(nfeRecPanel, "Notas Fiscais Recebidas");
		northPanelLayoutRec.setAlignment(FlowLayout.LEFT);
		nfeRecPanel.setLayout(recPanelLayout);
		selNorthPanelRec.setLayout(northPanelLayoutRec);
		nfeRecPanel.add(selNorthPanelRec, BorderLayout.NORTH);
		nfeRecPanel.add(scrollPaneRec, BorderLayout.CENTER);
		nfeRecPanel.add(confirmPanelRec, BorderLayout.SOUTH);
		scrollPaneRec.getViewport().add(miniTableRec, null);
		confirmPanelRec.addActionListener(this);
		confirmPanelRec.addComponent(printRecButton);
		confirmPanelRec.addComponent(downloadButton);
		printRecButton.addActionListener(this);
		downloadButton.addActionListener(this);
		//
		tabbedPane.add(nfeInutPanel, "Notas Fiscais Inutilizadas");
		nfeInutPanel.setLayout(inutPanelLayout);
		nfeInutPanel.add(selNorthPanelInut, BorderLayout.NORTH);
		nfeInutPanel.add(scrollPaneInut, BorderLayout.CENTER);
		nfeInutPanel.add(confirmPanelInut, BorderLayout.SOUTH);
		scrollPaneInut.getViewport().add(miniTableInut, null);
		confirmPanelInut.addActionListener(this);
	}	//	jbInit
	
	/**
	 *	Dynamic Init.
	 *	- Create GridController & Panel
	 *	- AD_Column_ID from C_Order
	 */
	private void dynInit()
	{
		genForm.configureMiniTable(miniTableEmit);
		miniTableEmit.setRowSelectionAllowed(true);
		miniTableEmit.getModel().addTableModelListener(this);
		
		genForm.configureMiniTableRec(miniTableRec);
		miniTableRec.setRowSelectionAllowed(true);
		miniTableRec.getModel().addTableModelListener(this);
		
		genForm.configureMiniTableInut(miniTableInut);
		miniTableInut.setRowSelectionAllowed(false);
		miniTableInut.setColumnReadOnly(0, true);
		
		//	Info
		statusBar.setStatusDB(" ");
		//	Tabbed Pane Listener
		tabbedPane.addChangeListener(this);
	}	//	dynInit
	
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
		
		else if (e.getSource() == confirmPanelEmit.getZoomButton())
		{
			try
			{
				List<Integer> selection = genForm.getSelectedKeys(miniTableEmit);
				if (selection == null || selection.size() == 0)
					return;
				
				//	Generate where
				String where = "LBR_NotaFiscal_ID IN (";
				for (Integer LBR_NotaFiscal_ID : selection)
				{
					where += LBR_NotaFiscal_ID + ", ";
				}
				where += "0)";
				
				int count = DB.getSQLValue(null, "SELECT COUNT('1') FROM LBR_NotaFiscal WHERE IsSOTrx='Y' AND " + where);
				
				//	Open NF Out
				if (count > 0)
				{
					//	Query
					MQuery query = new MQuery(MLBRNotaFiscal.Table_Name);
					query.addRestriction(where);
					
					AWindow frame = new AWindow(null);
					if (!frame.initWindow (1000015, query))
						return;
					
					AEnv.showCenterScreen(frame);
				}
				
				count = DB.getSQLValue(null, "SELECT COUNT('1') FROM LBR_NotaFiscal WHERE IsSOTrx='N' AND " + where);
				
				//	Open NF In
				if (count > 0)
				{
					//	Query
					MQuery query = new MQuery(MLBRNotaFiscal.Table_Name);
					query.addRestriction(where);
					
					AWindow frame = new AWindow(null);
					if (!frame.initWindow (1000019, query))
						return;
					
					AEnv.showCenterScreen(frame);
				}
			}
			catch (Exception ex)
			{
				ADialog.error(m_WindowNo, this, "Error", ex.getLocalizedMessage());
			}
		}
		
		else if (e.getSource() == confirmPanelRec.getZoomButton())
		{
			try
			{				
				List<Integer> selection = genForm.getSelectedKeys(miniTableRec);
				if (selection == null || selection.size() == 0)
					return;
				
				//	Generate where
				String where = "LBR_PartnerDFe_ID IN (";
				for (Integer LBR_PartnerDFe_ID : selection)
				{
					where += LBR_PartnerDFe_ID + ", ";
				}
				where += "0)";
				
				//	Query
				MQuery query = new MQuery(MLBRPartnerDFe.Table_Name);
				query.addRestriction(where);
				
				AWindow frame = new AWindow(null);
				if (!frame.initWindow (MTable.get(Env.getCtx(), MLBRPartnerDFe.Table_Name).getAD_Window_ID(), query))
					return;
				
				AEnv.showCenterScreen(frame);
			}
			catch (Exception ex)
			{
				ADialog.error(m_WindowNo, this, "Error", ex.getLocalizedMessage());
			}
		}
		
		else if (e.getSource() == confirmPanelRec.getRefreshButton())
		{
			ProcessInfoParameter pip = new ProcessInfoParameter (MOrg.COLUMNNAME_AD_Org_ID, genForm.m_AD_Org_ID, null, null, null);
			//
			ProcessInfo pi = startProcess(1120159, m_frame.getTitle(), m_WindowNo, new ProcessInfoParameter[]{pip});
			statusBar.setStatusLine(pi.getSummary(), pi.isError());
			genForm.executeQuery();
		}
		
		else if (e.getSource() == printEmitButton)
		{
			List<Integer> keys = genForm.getSelectedKeys(miniTableEmit);
			if (keys.size() == 0)
				return;
			
			//	Print From XML
			ProcessInfo pi = startProcess(1120040, m_frame.getTitle(), m_WindowNo, MLBRNotaFiscal.Table_ID, keys.get(0), null);
			statusBar.setStatusLine(pi.getSummary(), pi.isError());
		}
		
		else if (e.getSource() == printRecButton)
		{
			List<Integer> keys = genForm.getSelectedKeys(miniTableRec);
			if (keys.size() == 0)
				return;
			
			//	Print From XML
			ProcessInfo pi = startProcess(1120040, m_frame.getTitle(), m_WindowNo, MLBRPartnerDFe.Table_ID, keys.get(0), null);
			statusBar.setStatusLine(pi.getSummary(), pi.isError());
		}
		
		else if (e.getSource() == downloadButton)
		{
			ProcessInfoParameter pip = new ProcessInfoParameter (MLBRPartnerDFe.COLUMNNAME_AD_Org_ID, genForm.m_AD_Org_ID, null, null, null);
			
			//	Download DF-e XML
			ProcessInfo pi = startProcess(1120162, m_frame.getTitle(), m_WindowNo, new ProcessInfoParameter[]{pip});
			statusBar.setStatusLine(pi.getSummary(), pi.isError());
			genForm.executeQuery();
		}
		
		else if (e.getActionCommand().equals(ConfirmPanel.A_REFRESH))
		{
			genForm.executeQuery();
		}
		
		else if (e.getSource() == confirmPanelEmit.getCustomizeButton())
		{
			genForm.selectAll(miniTableEmit);
		}
		
		else if (e.getSource() == confirmPanelRec.getCustomizeButton())
		{
			genForm.selectAll(miniTableRec);
		}
		
		else if (e.getSource() == confirmPanelRec.getOKButton())
		{
			if (MLBRNFeEvent.LBR_EVENTTYPE_OperacaoNaoRealizada.equals(genForm.m_LBR_EventType))
			{
				ADialog.warn(m_WindowNo, this, "LBR_ManifestOpNotCompleted");

				genForm.saveSelection(miniTableRec);
				List<Integer> selection = genForm.getSelection();
				if (selection == null || selection.size() == 0)
					return;
				
				//	Generate where
				String where = "LBR_PartnerDFe_ID IN (";
				for (Integer LBR_PartnerDFe_ID : selection)
				{
					where += LBR_PartnerDFe_ID + ", ";
				}
				where += "0)";
				
				//	Query
				MQuery query = new MQuery(MLBRPartnerDFe.Table_Name);
				query.addRestriction(where);
				
				AWindow frame = new AWindow(null);
				if (!frame.initWindow (MTable.get(Env.getCtx(), MLBRPartnerDFe.Table_Name).getAD_Window_ID(), query))
					return;
				
				AEnv.showCenterScreen(frame);
				
				return;
			}
			
			try
			{
				genForm.saveSelection(miniTableRec);
				List<Integer> selection = genForm.getSelection();
				if (selection == null || selection.size() == 0)
					return;
				
				//	Generate where
				for (Integer LBR_PartnerDFe_ID : selection)
				{
					MLBRPartnerDFe dfe = new MLBRPartnerDFe (Env.getCtx(), LBR_PartnerDFe_ID, null);
					String lastManifest = dfe.getLastManifest();
					
					//	Já num estado de Manifestação Final, portanto ignorar
					if (dfe.isLBR_IsManifested()
							|| MLBRNFeEvent.LBR_EVENTTYPE_ConfirmacaoDaOperacao.equals(lastManifest) 
							|| MLBRNFeEvent.LBR_EVENTTYPE_OperacaoNaoRealizada.equals(lastManifest))
						continue;
					
					//	Estados imcompatíveis
					else if ((MLBRNFeEvent.LBR_EVENTTYPE_CienciaDaOperacao.equals(lastManifest) 
							&& MLBRNFeEvent.LBR_EVENTTYPE_DesconhecimentoDaOperacao.equals(genForm.m_LBR_EventType))
						|| (MLBRNFeEvent.LBR_EVENTTYPE_DesconhecimentoDaOperacao.equals(lastManifest) 
							&& MLBRNFeEvent.LBR_EVENTTYPE_CienciaDaOperacao.equals(genForm.m_LBR_EventType)))
						continue;
					
					ProcessInfoParameter pip = new ProcessInfoParameter (MLBRNFeEvent.COLUMNNAME_LBR_EventType, genForm.m_LBR_EventType, null, null, null); 
					//
					ProcessInfo pi = startProcess (1120161, m_frame.getTitle(), m_WindowNo, MLBRPartnerDFe.Table_ID, LBR_PartnerDFe_ID, new ProcessInfoParameter[]{pip});
					statusBar.setStatusLine(pi.getSummary(), pi.isError());
				}
			}
			catch (Exception ex)
			{
				ADialog.error(m_WindowNo, this, "Error", ex.getLocalizedMessage());
			}
			
			genForm.executeQuery();
		}
	}	//	actionPerformed

	/**
	 *	Change Listener (Tab changed)
	 *  @param e event
	 */
	public void stateChanged (ChangeEvent e)
	{
		int index = tabbedPane.getSelectedIndex();
		genForm.setSelectionActive(index == 0);
	}	//	stateChanged

	/**
	 *  Table Model Listener
	 *  @param e event
	 */
	public void tableChanged(TableModelEvent e)
	{
		int rowsSelected = 0;
		int rows = miniTableEmit.getRowCount();
		for (int i = 0; i < rows; i++)
		{
			IDColumn id = (IDColumn)miniTableEmit.getValueAt(i, 0);     //  ID in column 0
			if (id != null && id.isSelected())
				rowsSelected++;
		}
		statusBar.setStatusDB(" " + rowsSelected + " ");
	}   //  tableChanged
	
	/**
	 *	Save Selection & return selecion Query or ""
	 *  @return where clause like C_Order_ID IN (...)
	 */
	public void saveSelection()
	{
		//  ID selection may be pending
		miniTableEmit.editingStopped(new ChangeEvent(this));
		genForm.saveSelection(miniTableEmit);
	}	//	saveSelection
	
	/**************************************************************************
	 *	Generate Shipments/Invoices
	 */
	public void generate()
	{
		info.setText(genForm.generate());
		ProcessCtl worker = new ProcessCtl(this, Env.getWindowNo(this), genForm.getProcessInfo(), genForm.getTrx());
		worker.start();
		//
	}
	
	/**************************************************************************
	 *  Lock User Interface.
	 *  Called from the Worker before processing
	 *  @param pi process info
	 */
	public void lockUI (ProcessInfo pi)
	{
		setCursor(Cursor.getPredefinedCursor(Cursor.WAIT_CURSOR));
		setEnabled(false);
	}   //  lockUI

	/**
	 *  Unlock User Interface.
	 *  Called from the Worker when processing is done
	 *  @param pi result of execute ASync call
	 */
	public void unlockUI (ProcessInfo pi)
	{
		setEnabled(true);
		setCursor(Cursor.getDefaultCursor());
	}   //  unlockUI

	/**
	 *  Is the UI locked (Internal method)
	 *  @return true, if UI is locked
	 */
	public boolean isUILocked()
	{
		return isEnabled();
	}   //  isUILocked
	
	/**
	 *  Method to be executed async.
	 *  Called from the Worker
	 *  @param pi ProcessInfo
	 */
	public void executeASync (ProcessInfo pi)
	{
	}   //  executeASync
	
	public CPanel getEmitParameterPanel()
	{
		return selNorthPanelEmit;
	}
	
	public CPanel getRecParameterPanel()
	{
		return selNorthPanelRec;
	}
	
	public CPanel getInutParameterPanel()
	{
		return selNorthPanelInut;
	}

	public MiniTable getMiniTableEmit()
	{
		return miniTableEmit;
	}
	
	public MiniTable getMiniTableRec()
	{
		return miniTableRec;
	}
	
	public MiniTable getMiniTableInut()
	{
		return miniTableInut;
	}
	
	public StatusBar getStatusBar()
	{
		return statusBar;
	}
	
	/************************
	 *	Create Button with label text
	 *  @param text text
	 *  @return button
	 */
	public static final CButton createButton (String text)
	{
		AppsAction aa = new AppsAction (text, KeyStroke.getKeyStroke(KeyEvent.VK_F12, 0), text);
		CButton button = (CButton)aa.getButton();
		button.setMargin(new Insets (0, 10, 0, 10));
		return button;
	}	//	createPrintButton

	public ProcessInfo startProcess (int AD_Process_ID, String title, int windowNo, ProcessInfoParameter[] pips)
	{
		return startProcess(AD_Process_ID, title, windowNo, 0, 0, pips);
	}
	
	public ProcessInfo startProcess (int AD_Process_ID, String title, int windowNo, int AD_Table_ID, int Record_ID, ProcessInfoParameter[] pips)
	{
		//  Prepare Process
		ProcessInfo pi = new ProcessInfo (title, AD_Process_ID, AD_Table_ID, Record_ID);
		pi.setAD_User_ID (Env.getAD_User_ID(Env.getCtx()));
		pi.setAD_Client_ID(Env.getAD_Client_ID(Env.getCtx()));
		
		ProcessParameterPanel pp = new ProcessParameterPanel(windowNo, pi);
		pi.setParameter(pips);
		
		//	Execute Process
		ProcessCtl.process (null, windowNo, (IProcessParameter) pp, pi, null);
		return pi;
	}	//	startProcess
}