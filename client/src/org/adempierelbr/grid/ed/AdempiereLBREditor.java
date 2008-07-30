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
package org.adempierelbr.grid.ed;

import java.awt.Component;

import javax.swing.AbstractCellEditor;
import javax.swing.JTable;
import javax.swing.table.TableCellEditor;

import org.compiere.grid.ed.VEditor;
import org.compiere.grid.ed.VLookup;
import org.compiere.util.CLogger;
import org.compiere.util.KeyNamePair;

/**
 * AdempiereLBREditor
 * 
 * @author Mario Grigioni, mgrigioni (Kenos, www.kenos.com.br) 
 * @version $Id: AdempiereLBREditor.java, 24/07/2008 14:50:00 mgrigioni
 */
public final class AdempiereLBREditor extends AbstractCellEditor implements TableCellEditor
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 *	Constructor
	 *  @param find find
	 *  @param valueTo true if it is the "to" value column
	 */
	public AdempiereLBREditor (VLookup lookup, boolean IsReadOnly)
	{
		super();
		m_lookup   = lookup;
		m_readOnly = IsReadOnly;
	}	//	FindValueEditor

	/** Find Window             */
	private VLookup			m_lookup;
	/** ReadOnly                */
	private boolean         m_readOnly;
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
		Object obj = new KeyNamePair((Integer)m_editor.getValue(),m_lookup.getDisplay());		//	returns Integer, BidDecimal, String
		log.config("Obj=" + obj);
		return obj;
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
		m_editor.setReadWrite(!m_readOnly);
		//
		return (Component)m_editor;
	}   //	getTableCellEditorComponent


}	//	FindValueEditor
