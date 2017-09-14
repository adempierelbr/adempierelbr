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

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.beans.PropertyChangeEvent;
import java.beans.VetoableChangeListener;
import java.util.ArrayList;
import java.util.logging.Level;

import org.compiere.apps.form.FormFrame;
import org.compiere.apps.form.FormPanel;
import org.compiere.grid.ed.VLookup;
import org.compiere.model.MLookup;
import org.compiere.model.MLookupFactory;
import org.compiere.swing.CLabel;
import org.compiere.util.CLogger;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.Language;
import org.compiere.util.Msg;

/**
 * 		Controle das NFs
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 * 	@version $Id: VNotaFiscal.java, v1.0 2016/03/24 17:35:15 PM, ralexsander Exp $]
 */
public class VNotaFiscal extends NotaFiscal implements FormPanel, ActionListener, VetoableChangeListener
{
	private VNotaFiscalPanel panel;
	
	/**	Window No			*/
	private int         	m_WindowNo = 0;
	/**	FormFrame			*/
	private FormFrame 		m_frame;

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(VNotaFiscal.class);

	private CLabel 		lOrg = new CLabel();
	private VLookup 	fOrg;
	private CLabel 		lBPartner = new CLabel();
	private VLookup 	fBPartner;
	private CLabel 		lDocAction = new CLabel();
	private VLookup 	docAction;
	
	private CLabel 		lOrgRec = new CLabel();
	private VLookup 	fOrgRec;
	private CLabel 		lManifest = new CLabel();
	private VLookup 	fManifest;
	
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

		panel = new VNotaFiscalPanel (this, WindowNo, frame);

		try
		{
			super.dynInit();
			dynInit();
			jbInit();
		}
		catch(Exception ex)
		{
			log.log(Level.SEVERE, "init", ex);
		}
	}	//	init
	
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
		lOrg.setLabelFor(fOrg);
		lOrg.setText(Msg.translate(Env.getCtx(), "AD_Org_ID"));
		lBPartner.setLabelFor(fBPartner);
		lBPartner.setText(Msg.translate(Env.getCtx(), "C_BPartner_ID"));
		lDocAction.setLabelFor(docAction);
		lDocAction.setText(Msg.translate(Env.getCtx(), "DocAction"));
		
		panel.getEmitParameterPanel().add(lOrg, null);
		panel.getEmitParameterPanel().add(fOrg, null);
		panel.getEmitParameterPanel().add(lBPartner, null);
		panel.getEmitParameterPanel().add(fBPartner, null);
		panel.getEmitParameterPanel().add(lDocAction, null);
		panel.getEmitParameterPanel().add(docAction, null);
		
		lOrgRec.setLabelFor(fOrgRec);
		lOrgRec.setText(Msg.translate(Env.getCtx(), "AD_Org_ID"));
		lManifest.setLabelFor(fManifest);
		lManifest.setText(Msg.translate(Env.getCtx(), "LBR_EventType"));
		
		panel.getRecParameterPanel().add(lOrgRec, null);
		panel.getRecParameterPanel().add(fOrgRec, null);
		panel.getRecParameterPanel().add(lManifest, null);
		panel.getRecParameterPanel().add(fManifest, null);
	}	//	jbInit
	
	/**
	 *	Fill Picks.
	 *		Column_ID from C_Order
	 *.
	 *  @throws Exception if Lookups cannot be initialized
	 */
	public void dynInit() throws Exception
	{
		MLookup orgL = MLookupFactory.get (Env.getCtx(), m_WindowNo, 0, 2163, DisplayType.TableDir);
		fOrg = new VLookup ("AD_Org_ID", false, false, true, orgL);
		fOrg.addVetoableChangeListener(this);
		fOrgRec = new VLookup ("AD_Org_ID", true, false, true, orgL);
		fOrgRec.setValue(Env.getAD_Org_ID (Env.getCtx ()));
		fOrgRec.addVetoableChangeListener(this);
		
		MLookup docActionL = MLookupFactory.get(Env.getCtx(), m_WindowNo, 3494 /* C_Invoice.DocStatus */, 
				DisplayType.List, Env.getLanguage(Env.getCtx()), "DocAction", 135 /* _Document Action */,
				false, "AD_Ref_List.Value IN ('CO','PR')");
		docAction = new VLookup("DocAction", true, false, true,docActionL);
		docAction.setValue("CO");

		MLookup bpL = MLookupFactory.get (Env.getCtx(), m_WindowNo, 0, 2762, DisplayType.Search);
		fBPartner = new VLookup ("C_BPartner_ID", false, false, true, bpL);
		fBPartner.addVetoableChangeListener(this);
		
		MLookup manifestL = MLookupFactory.get (Env.getCtx(), m_WindowNo, 0, DisplayType.List, Language.getBaseLanguage(), "LBR_EventType", 1120226, false, null);
		fManifest = new VLookup ("LBR_EventType", true, false, true, manifestL);
		fManifest.addVetoableChangeListener(this);
		fManifest.setValue("210210");
		m_LBR_EventType = "210210";
		
        panel.getStatusBar().setStatusLine(" ");
	}	//	fillPicks
	
	public void executeQuery()
	{
		executeQueryEmit (panel.getMiniTableEmit());
		executeQueryRec (panel.getMiniTableRec());
		executeQueryInut (panel.getMiniTableInut());
	}   //  executeQuery
	
	/**
	 *	Action Listener
	 *  @param e event
	 */
	public void actionPerformed(ActionEvent e)
	{
		validate();
	}	//	actionPerformed
	
	public void validate()
	{
		panel.saveSelection();
		
		ArrayList<Integer> selection = getSelection();
		if (selection != null && selection.size() > 0 && isSelectionActive())		
			panel.generate();
		else
			panel.dispose();
	}

	/**
	 *	Vetoable Change Listener - requery
	 *  @param e event
	 */
	public void vetoableChange(PropertyChangeEvent e)
	{
		log.info(e.getPropertyName() + "=" + e.getNewValue());
		if (e.getPropertyName().equals("AD_Org_ID"))
			m_AD_Org_ID = e.getNewValue();
		if (e.getPropertyName().equals("LBR_EventType"))
		{
			m_LBR_EventType = e.getNewValue();
			return;
		}
		if (e.getPropertyName().equals("C_BPartner_ID"))
		{
			m_C_BPartner_ID = e.getNewValue();
			fBPartner.setValue(m_C_BPartner_ID);	//	display value
		}
		executeQuery();
	}	//	vetoableChange
}	// 	VNotaFiscal
