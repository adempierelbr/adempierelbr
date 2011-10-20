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

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Component;
import java.awt.Dimension;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseEvent;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyVetoException;
import java.util.logging.Level;

import javax.swing.JComponent;
import javax.swing.JPopupMenu;
import javax.swing.JTextField;
import javax.swing.LookAndFeel;
import javax.swing.SwingUtilities;

import org.adempiere.plaf.AdempierePLAF;
import org.adempierelbr.model.MLBRTax;
import org.adempierelbr.model.MLBRTaxesLookup;
import org.compiere.apps.FieldRecordInfo;
import org.compiere.grid.ed.VEditor;
import org.compiere.grid.ed.VLookup;
import org.compiere.model.GridField;
import org.compiere.swing.CButton;
import org.compiere.swing.CMenuItem;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 *	VTaxes
 *
 *	lbr_Taxes Type
 *	
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: VTaxes.java, 14/11/2007 13:39:00 mgrigioni
 */
public class VTaxes extends JComponent
	implements VEditor, ActionListener
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 *	Mouse Listener for Popup Menu
	 */
	final class VTaxes_mouseAdapter extends java.awt.event.MouseAdapter
	{
		/**
		 *	Constructor
		 *  @param adaptee adaptee
		 */
		VTaxes_mouseAdapter(VTaxes adaptee)
		{
			this.adaptee = adaptee;
		}	//	VLookup_mouseAdapter

		private VTaxes adaptee;

		/**
		 *	Mouse Listener
		 *  @param e MouseEvent
		 */
		public void mouseClicked(MouseEvent e)
		{
			//	popup menu
			if (SwingUtilities.isRightMouseButton(e))
				adaptee.popupMenu.show((Component)e.getSource(), e.getX(), e.getY());
		}	//	mouse Clicked

	}	//	VTaxes_mouseAdapter

	/**
	 *	Constructor
	 *
	 * 	@param columnName column name
	 * 	@param mandatory mandatory
	 * 	@param isReadOnly read only
	 * 	@param isUpdateable updateable
	 * 	@param mLocation location model
	 */
	public VTaxes(String columnName, boolean mandatory, boolean isReadOnly, boolean isUpdateable,
		MLBRTaxesLookup mTax)
	{
		super();
		super.setName(columnName);
		m_columnName = columnName;
		m_mTaxes = mTax;
		//
		LookAndFeel.installBorder(this, "TextField.border");
		this.setLayout(new BorderLayout());
		//  Size
		this.setPreferredSize(m_text.getPreferredSize());		//	causes r/o to be the same length
		int height = m_text.getPreferredSize().height;

		//  Button
		m_button.setIcon(Env.getImageIcon("Register16.gif"));
		m_button.setMargin(new Insets(0,0,0,0));
		m_button.setPreferredSize(new Dimension(height, height));
		m_button.addActionListener(this);
		this.add(m_button, BorderLayout.EAST);
		//	***	Button & Text	***
		m_text.setBorder(null);
		m_text.setEditable(false);
		m_text.setFocusable(false);
		m_text.setFont(AdempierePLAF.getFont_Field());
		m_text.setForeground(AdempierePLAF.getTextColor_Normal());
		m_text.addMouseListener(new VTaxes_mouseAdapter(this));
		this.add(m_text, BorderLayout.CENTER);

		//	Editable
		if (isReadOnly || !isUpdateable)
			setReadWrite (false);
		else
			setReadWrite (true);
		setMandatory (mandatory);
		//

	}	//	VTaxes

	/**
	 *  Dispose
	 */
	public void dispose()
	{
		m_text = null;
		m_button = null;
		m_mTaxes = null;
	}   //  dispose

	/** The Text Field                  */
	private JTextField			m_text = new JTextField(VLookup.DISPLAY_LENGTH);
	/** The Button                      */
	private CButton				m_button = new CButton();

	private MLBRTaxesLookup		m_mTaxes;
	private MLBRTax			    m_value;

	private String				m_columnName;
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(VTaxes.class);

	//	Popup
	JPopupMenu 					popupMenu = new JPopupMenu();
	private CMenuItem 			mDelete;

	/** The Grid Field * */
	private GridField m_GridField; // added for processCallout
	
	/**
	 *	Enable/disable
	 *  @param value true if ReadWrite
	 */
	public void setReadWrite (boolean value)
	{
		m_button.setReadWrite (value);
		if (m_button.isVisible() != value)
			m_button.setVisible (value);
		setBackground(false);
	}	//	setReadWrite

	/**
	 *	IsReadWrite
	 *  @return value true if ReadWrite
	 */
	public boolean isReadWrite()
	{
		return m_button.isReadWrite();
	}	//	isReadWrite

	/**
	 *	Set Mandatory (and back bolor)
	 *  @param mandatory true if mandatory
	 */
	public void setMandatory (boolean mandatory)
	{
		m_button.setMandatory(mandatory);
		setBackground(false);
	}	//	setMandatory

	/**
	 *	Is it mandatory
	 *  @return true if mandatory
	 */
	public boolean isMandatory()
	{
		return m_button.isMandatory();
	}	//	isMandatory

	/**
	 *	Set Background
	 *  @param color color
	 */
	public void setBackground (Color color)
	{
		if (!color.equals(m_text.getBackground()))
			m_text.setBackground(color);
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
		m_text.setForeground(fg);
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
			m_text.setText(null);
		}
		else
		{
			m_value = m_mTaxes.getTax(value, null);
			if (m_value == null)
				m_text.setText("<" + value + ">");
			else
				m_text.setText(m_value.toString());
		}
	}	//	setValue

	/**
	 * 	Request Focus
	 */
	public void requestFocus ()
	{
		m_text.requestFocus ();
	}	//	requestFocus

	/**
	 *  Property Change Listener
	 *  @param evt PropertyChangeEvent
	 */
	public void propertyChange (PropertyChangeEvent evt)
	{
		if (evt.getPropertyName().equals(org.compiere.model.GridField.PROPERTY))
			setValue(evt.getNewValue());
	}   //  propertyChange

	/**
	 *	Return Editor value
	 *  @return value
	 */
	public Object getValue()
	{
		if (m_value == null)
			return null;
		return new Integer(m_value.getLBR_Tax_ID());
	}	//	getValue

	/**
	 *	Return Editor value
	 *  @return value
	 */
	public int getLBR_Tax_ID()
	{
		if (m_value == null)
			return 0;
		return m_value.getLBR_Tax_ID();
	}	//	getC_Location_ID

	/**
	 *  Return Display Value
	 *  @return display value
	 */
	public String getDisplay()
	{
		return m_text.getText();
	}   //  getDisplay

	/**
	 *	ActionListener - Button - Start Dialog
	 *  @param e ActionEvent
	 */
	public void actionPerformed(ActionEvent e)
	{
		if (e.getActionCommand().equals(FieldRecordInfo.CHANGE_LOG_COMMAND))
		{
			FieldRecordInfo.start(m_GridField);
			return;
		}
		
		if (e.getSource() == mDelete)
			m_value = null;        //  create new
		//
		log.config( "actionPerformed - " + m_value);
		VTaxesDialog ld = new VTaxesDialog(Env.getFrame(this),
			Msg.getMsg(Env.getCtx(), "LBR_Tax_ID"), m_value);
		ld.setVisible(true);
		m_value = ld.getValue();
		//
		if (e.getSource() == mDelete)
			;
		else if (!ld.isChanged())
			return;

		//	Data Binding
		try
		{
			int LBR_Tax_ID = 0;
			if (m_value != null)
				LBR_Tax_ID = m_value.getLBR_Tax_ID();
			Integer ii = new Integer(LBR_Tax_ID);
	
			//  force Change - user does not realize that embedded object is already saved.
			fireVetoableChange(m_columnName, null, null);
			fireVetoableChange(m_columnName, null, ii);
			
			setValue(ii);
		}
		catch (PropertyVetoException pve)
		{
			log.log(Level.SEVERE, "VTaxes.actionPerformed", pve);
		}

	}	//	actionPerformed

	/**
	 *  Action Listener Interface
	 *  @param listener listener
	 */
	public void addActionListener(ActionListener listener)
	{
		m_text.addActionListener(listener);
	}   //  addActionListener

	//	Field for Value Preference
	private GridField          m_mField = null;
	/**
	 *  Set Field/WindowNo for ValuePreference (NOP)
	 *  @param mField Model Field
	 */
	public void setField (org.compiere.model.GridField mField)
	{
		m_GridField = mField;
		if (m_GridField != null)
			FieldRecordInfo.addMenu(this, popupMenu);
	}   //  setField

	@Override
	public GridField getField() {
		return m_mField;
	}
	
}	//	VTaxes