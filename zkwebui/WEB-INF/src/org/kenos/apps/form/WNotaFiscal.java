/******************************************************************************
 * Copyright (C) 2009 Low Heng Sin                                            *
 * Copyright (C) 2009 Idalica Corporation                                     *
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

import java.util.ArrayList;
import java.util.logging.Level;

import org.adempiere.webui.component.Label;
import org.adempiere.webui.component.Row;
import org.adempiere.webui.editor.WSearchEditor;
import org.adempiere.webui.editor.WTableDirEditor;
import org.adempiere.webui.event.ValueChangeEvent;
import org.adempiere.webui.event.ValueChangeListener;
import org.adempiere.webui.panel.ADForm;
import org.adempiere.webui.panel.IFormController;
import org.compiere.model.MLookup;
import org.compiere.model.MLookupFactory;
import org.compiere.process.DocAction;
import org.compiere.util.CLogger;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.Language;
import org.compiere.util.Msg;
import org.zkoss.zk.ui.WrongValueException;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zul.Space;

/**
 * Generate Invoice (manual) view class
 * @author Rogério Feitosa (Kenos, www.kenos.com.br)
 * 			<li>Alteração Ação Padrão do Documento no Processo Gerar Remessa (Manual) / Fatura (Manual)
 * 			<li>https://adempiere.atlassian.net/browse/LBR-14
 */
public class WNotaFiscal extends NotaFiscal implements IFormController, EventListener, ValueChangeListener
{
	private WNotaFiscalForm form;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(WNotaFiscal.class);
	//
	private Label lOrg = new Label();
	private WTableDirEditor fOrg;
	private Label lOrgRec = new Label();
	private WTableDirEditor fOrgRec;
	private Label lManifest = new Label();
	private WTableDirEditor fManifest;
	private Label lBPartner = new Label();
	private WSearchEditor fBPartner;
	private Label   lDocAction = new Label();
	private WTableDirEditor docAction;
	
	public WNotaFiscal()
	{
		log.info("");
		
		form = new WNotaFiscalForm(this);
		Env.setContext(Env.getCtx(), form.getWindowNo(), "IsSOTrx", "Y");
		
		try
		{
			super.dynInit();
			dynInit();
			zkInit();
			
			form.postQueryEvent();
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
	void zkInit() throws Exception
	{
		lOrg.setText(Msg.translate(Env.getCtx(), "AD_Org_ID"));
		lOrgRec.setText(Msg.translate(Env.getCtx(), "AD_Org_ID"));
		lBPartner.setText(Msg.translate(Env.getCtx(), "C_BPartner_ID"));
		lManifest.setText(Msg.translate(Env.getCtx(), "LBR_EventType"));
		
		Row row = form.getEmitParameterPanel().newRows().newRow();
		row.appendChild(lOrg.rightAlign());
//		fOrg.getComponent().setHflex(fOrg.getComponent(), "true");
		row.appendChild(fOrg.getComponent());
		row.appendChild(lBPartner.rightAlign());
//		fBPartner.getComponent().setHflex(fBPartner.getComponent(), "true");
		row.appendChild(fBPartner.getComponent());
		row.appendChild(lDocAction.rightAlign());
//		docAction.getComponent().setHflex(docAction.getComponent(), "true");
		row.appendChild(docAction.getComponent());
		row.appendChild(new Space());
		
		row = form.getRecParameterPanel().newRows().newRow();
		row.appendChild(lOrgRec.rightAlign());
//		fOrgRec.getComponent().setHflex(fOrgRec.getComponent(), "true");
		row.appendChild(fOrgRec.getComponent());
		row.appendChild(lManifest.rightAlign());
//		fManifest.getComponent().setHflex(fManifest.getComponent(), "true");
		row.appendChild(fManifest.getComponent());
		row.appendChild(new Space());
	}	//	jbInit

	/**
	 *	Fill Picks.
	 *		Column_ID from C_Order
	 *  @throws Exception if Lookups cannot be initialized
	 */
	public void dynInit() throws Exception
	{
		MLookup orgL = MLookupFactory.get (Env.getCtx(), form.getWindowNo(), 0, 2163, DisplayType.TableDir);
		fOrg = new WTableDirEditor ("AD_Org_ID", false, false, true, orgL);
		fOrg.addValueChangeListener(this);
		fOrgRec = new WTableDirEditor ("AD_Org_ID", true, false, true, orgL);
		fOrgRec.addValueChangeListener(this);
		//
		MLookup manifestL = MLookupFactory.get (Env.getCtx(), form.getWindowNo(), 0, DisplayType.List, Language.getBaseLanguage(), "LBR_EventType", 1120226, false, null);
		fManifest = new WTableDirEditor ("LBR_EventType", true, false, true, manifestL);
		fManifest.addValueChangeListener(this);
		fManifest.setValue("210210");
		m_LBR_EventType = "210210";
		//
		MLookup bpL = MLookupFactory.get (Env.getCtx(), form.getWindowNo(), 0, 2762, DisplayType.Search);
		fBPartner = new WSearchEditor ("C_BPartner_ID", false, false, true, bpL);
		fBPartner.addValueChangeListener(this);
		//      Document Action Prepared/ Completed
		lDocAction.setText(Msg.translate(Env.getCtx(), "DocAction"));
		MLookup docActionL = MLookupFactory.get(Env.getCtx(), form.getWindowNo(), 3495 /* C_Invoice.DocAction */,
				DisplayType.List, Env.getLanguage(Env.getCtx()), "DocAction", 135 /* _Document Action */,
				false, "AD_Ref_List.Value IN ('CO','PR')");
		docAction = new WTableDirEditor("DocAction", true, false, true,docActionL);
		docAction.setValue(DocAction.ACTION_Complete);
	}	//	fillPicks
    
	/**
	 *  Query Info
	 */
	public void executeQuery()
	{
		executeQueryEmit (form.getMiniTableEmit());
		executeQueryRec (form.getMiniTableRec());
		executeQueryInut (form.getMiniTableInut());
		
		form.getMiniTableEmit().repaint();
		form.getMiniTableRec().repaint();
		form.getMiniTableInut().repaint();
		form.invalidate();
	}   //  executeQuery

	/**
	 *	Action Listener
	 *  @param e event
	 */
	public void onEvent(Event e)
	{
		validate();
	}	//	actionPerformed
	
	public void validate()
	{
		String docActionSelected = (String)docAction.getValue();
		if ( docActionSelected==null || docActionSelected.isEmpty() )
			throw new WrongValueException(docAction.getComponent(), Msg.translate(Env.getCtx(), "FillMandatory"));

		form.saveSelection();

		ArrayList<Integer> selection = getSelection();
		if (selection != null && selection.size() > 0 && isSelectionActive())
			form.generate();
		else
			form.dispose();
	}

	/**
	 *	Value Change Listener - requery
	 *  @param e event
	 */
	public void valueChange(ValueChangeEvent e)
	{
		if (log.isLoggable(Level.INFO)) log.info(e.getPropertyName() + "=" + e.getNewValue());
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
		form.postQueryEvent();
	}	//	vetoableChange
	
	/**************************************************************************
	 *	Generate Shipments
	 */
	public String generate()
	{
		return null;
	}	//	generateShipments
	
	public ADForm getForm()
	{
		return form;
	}
}