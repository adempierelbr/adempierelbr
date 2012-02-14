/******************************************************************************
 * Copyright (C) 2008 Low Heng Sin  All Rights Reserved.                      *
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
package org.adempierelbr.webui.editor;

import java.awt.Color;

import org.adempiere.plaf.AdempierePLAF;
import org.adempiere.webui.apps.AEnv;
import org.adempiere.webui.editor.WEditor;
import org.adempiere.webui.editor.WEditorPopupMenu;
import org.adempiere.webui.event.ContextMenuEvent;
import org.adempiere.webui.event.ContextMenuListener;
import org.adempiere.webui.event.ValueChangeEvent;
import org.adempiere.webui.window.WFieldRecordInfo;
import org.adempierelbr.model.MLBRTax;
import org.adempierelbr.model.MLBRTaxesLookup;
import org.adempierelbr.webui.component.Taxesbox;
import org.adempierelbr.webui.window.WTaxesDialog;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.Lookup;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.Events;
import org.zkoss.zul.Menuitem;

/**
 *		Brazilian Taxes Dialog
 *
 * 	@author Murilo H.Torquato
 *	@contributor Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: WTaxesEditor.java, v1.0 2011/11/22 00:00:57 AM, ralexsander Exp $
 */
public class WTaxesEditor extends WEditor implements ContextMenuListener
{
	private static final String[] LISTENER_EVENTS = {Events.ON_CLICK, Events.ON_CHANGE, Events.ON_OK};

	private static final CLogger log = CLogger.getCLogger(WTaxesEditor.class);

	private int m_WindowNo;

	private Lookup m_mTaxes;

	private WEditorPopupMenu popupMenu;
	
	private Menuitem mDelete;

	private Object m_value;

	private GridTab m_GridTab;
		
	/**	No Instance Key					*/
	private static Integer		NO_INSTANCE = new Integer(0);

	public WTaxesEditor(GridTab gridTab, GridField gridField)
	{
		super(new Taxesbox(), gridField);
		m_GridTab = gridTab;
		initComponents();
	}

	private void initComponents() 
	{
		getComponent().setButtonImage("WSearchEditor.java");
		getComponent().getTextbox().setReadonly(true);
		getComponent().addEventListener(Events.ON_CLICK, this);
		getComponent().setButtonImage("/images/PickOpen10.png");
		
		m_WindowNo = gridField.getWindowNo();
		m_mTaxes = gridField.getLookup();

		//	Popup
		popupMenu = new WEditorPopupMenu(false, false, false);
		getComponent().getTextbox().setContext(popupMenu.getId());
		if (gridField != null && gridField.getGridTab() != null)
		{
			WFieldRecordInfo.addMenu(popupMenu);
		}
		
		mDelete = new Menuitem(Msg.getMsg(Env.getCtx(), "Delete"));
		popupMenu.appendChild(mDelete);

		getComponent().getTextbox().setReadonly(true);
	}

	@Override
	public WEditorPopupMenu getPopupMenu() {
		return popupMenu;
	}

	@Override
	public Taxesbox getComponent()
	{
		return (Taxesbox) component;
	}

	@Override
	public Object getValue()
	{
		return m_value;
	}

	@Override
	public String getDisplay()
	{
		return getComponent().getText();
	}

	public void onEvent(Event event)
	{
		if (Events.ON_CHANGE.equals(event.getName()) || Events.ON_OK.equals(event.getName()))
		{
			String newText = getComponent().getText();
			String oldText = null;
			if (m_value != null)
			{
				oldText = m_mTaxes.getDisplay(m_value);
			}
			if (oldText != null && newText != null && oldText.equals(newText))
			{
	    	    return;
	    	}
	        if (oldText == null && newText == null)
	        {
	        	return;
	        }
			ValueChangeEvent changeEvent = new ValueChangeEvent(this, this.getColumnName(), oldText, newText);
			fireValueChange(changeEvent);
		}
		else if (Events.ON_CLICK.equals(event.getName()))
		{
			cmd_dialog();
		}
	}

	/**
	 *  Start dialog
	 */
	private void cmd_dialog()
	{
		MLBRTax mTax = (MLBRTax)getValue();
		Integer oldValue = mTax == null ? 0 : mTax.get_ID();
		int oldValueInt = oldValue == null ? 0 : oldValue.intValue ();
		int LBR_Tax_ID = Env.getContextAsInt (Env.getCtx (), m_WindowNo, "LBR_Tax_ID");

		log.config("LBR_Tax_ID=" + LBR_Tax_ID
			+ ", AD_Column_ID=" + gridField.getAD_Column_ID());

		boolean changed = false;

		//
//		if (LBR_Tax_ID == 0)
//		{
//			changed = true;
//			getComponent().setText(null);
//		}
//		else
//		{
			WTaxesDialog td = new WTaxesDialog(Msg.getMsg(Env.getCtx(), "LBR_Tax_ID"),(MLBRTax) m_value,m_WindowNo);
			
			if (td.isChanged())
			{
				getComponent().setText(""+td.getM_tax().getLBR_Tax_ID());
				LBR_Tax_ID = td.getM_tax().get_ID();
				changed = true;
			}
		//}

		//	Set Value
		if (changed)
		{
			log.finest("Changed LBR_Tax_ID=" + LBR_Tax_ID);
			m_value = new Object();				//	force re-query display
			if (LBR_Tax_ID == 0)
				setValue(null);
			else
				setValue(new Integer(LBR_Tax_ID));

			ValueChangeEvent vce = new ValueChangeEvent(this, gridField.getColumnName(), new Object(), LBR_Tax_ID);
			fireValueChange(vce);
			if (LBR_Tax_ID == oldValueInt && m_GridTab != null && gridField != null)
			{
				//  force Change - user does not realize that embedded object is already saved.
				m_GridTab.processFieldChange(gridField);
			}
		}	//	change
				
	}   //  cmd_file

	public String[] getEvents()
    {
        return LISTENER_EVENTS;
    }

	public void onMenu(ContextMenuEvent evt)
	{
		if (WEditorPopupMenu.ZOOM_EVENT.equals(evt.getContextEvent()))
		{
			actionZoom();
		}
		else if (WEditorPopupMenu.CHANGE_LOG_EVENT.equals(evt.getContextEvent()))
		{
			WFieldRecordInfo.start(gridField);
		}
	}

	public void actionZoom()
	{
	   	AEnv.actionZoom(m_mTaxes, getValue());
	}

	/**
	 *	Enable/disable
	 *  @param value true if ReadWrite
	 */
	public void setReadWrite (boolean value)
	{
		getComponent().setEnabled(value);
	}	//	setReadWrite

	/**
	 *	Set Background
	 *  @param color color
	 */
	public void setBackground (Color color)
	{
			this.setBackground(color);
	}	//	setBackground

	/**
	 *  Set Background based on editable / mandatory / error
	 *  @param error if true, set background to error color, otherwise mandatory/editable
	 */
	public void setBackground (boolean error)
	{
		if (error)
			setBackground(AdempierePLAF.getFieldBackground_Error());
		else if (!isReadWrite())
			setBackground(AdempierePLAF.getFieldBackground_Inactive());
		else if (isMandatory())
			setBackground(AdempierePLAF.getFieldBackground_Mandatory());
		else
			setBackground(AdempierePLAF.getFieldBackground_Normal());
	}   //  setBackground

	/**
	 *  Set Foreground
	 *  @param fg color
	 */
	public void setForeground(Color fg)
	{
		this.setForeground(fg);
	}   //  setForeground

	/**
	 *	Set Editor to value
	 *  @param value value
	 */
	public void setValue(Object value)
	{
		if (value == null)
		{
			m_value = null;
			getComponent().setText(null);
		}
		else
		{
			m_value = ((MLBRTaxesLookup)m_mTaxes).getTax(value, null);
			if (m_value == null)
				getComponent().setText("<" + value + ">");
			else
				getComponent().setText(((MLBRTax)m_value).getDescription());
		}
	}	//	setValue

	@Override
	public boolean isReadWrite() 
	{
		// TODO Auto-generated method stub
		return false;
	}
}
