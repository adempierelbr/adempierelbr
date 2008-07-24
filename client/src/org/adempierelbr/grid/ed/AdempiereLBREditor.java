/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                        *
 * Copyright (C) 1999-2006 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.adempierelbr.grid.ed;

import java.awt.Component;
import java.util.EventObject;

import javax.swing.AbstractCellEditor;
import javax.swing.JTable;
import javax.swing.table.TableCellEditor;

import org.compiere.grid.ed.VEditor;
import org.compiere.grid.ed.VLookup;
import org.compiere.util.CLogger;

/**
 * AdempiereLBREditor
 * 
 * @author Mario Grigioni, mgrigioni (Kenos, www.kenos.com.br) 
 * @version $Id: AdempiereLBREditor.java, 24/07/2008 14:50:00 mgrigioni
 */
public final class AdempiereLBREditor extends AbstractCellEditor implements TableCellEditor
{
	/**
	 *	Constructor
	 *  @param find find
	 *  @param valueTo true if it is the "to" value column
	 */
	public AdempiereLBREditor (VLookup lookup)
	{
		super();
		m_lookup = lookup;
	}	//	FindValueEditor

	/** Find Window             */
	private VLookup			m_lookup;
	/**	Editor					*/
	private VEditor			m_editor = null;
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(AdempiereLBREditor.class);
	
	/**
	 *	Get Value
	 *	Need to convert to String
	 *  @return current value
	 */
	public Object getCellEditorValue()
	{
		if (m_editor == null)
			return null;
		Object obj = m_editor.getValue();		//	returns Integer, BidDecimal, String
		log.config("Obj=" + obj);
		return obj;
		/**
		if (obj == null)
			return null;
		//
		String retValue = obj.toString();
		log.config( "FindValueEditor.getCellEditorValue");
		return retValue;
		**/
	}	//	getCellEditorValue

	/**
	 *	Get Editor
	 *
	 *  @param table Table
	 *  @param value Value
	 *  @param isSelected cell is selected
	 *  @param row row
	 *  @param col column
	 *  @return Editor component
	 */
	public Component getTableCellEditorComponent(JTable table, Object value, boolean isSelected, int row, int col)
	{
		//
		m_editor = m_lookup;
		//
		return (Component)m_editor;
	}   //	getTableCellEditorComponent

	/**
	 *  Cell Editable.
	 * 	Called before getTableCellEditorComponent
	 *  @param e event
	 *  @return true if editable
	 */
	public boolean isCellEditable (EventObject e)
	{
	//	log.config( "FindValueEditor.isCellEditable");
		return true;
	}   //  isCellEditable

	/**
	 *  Cell Selectable.
	 * 	Called after getTableCellEditorComponent
	 *  @param e event
	 *  @return true if selectable
	 */
	public boolean shouldSelectCell (EventObject e) 
	{
		return true; 
	}	//	shouldSelectCell

}	//	FindValueEditor
