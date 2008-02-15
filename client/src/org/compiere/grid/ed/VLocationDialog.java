/******************************************************************************
 * Product: Compiere ERP & CRM Smart Business Solution                        *
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
package org.compiere.grid.ed;

import java.awt.*;
import java.awt.event.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import java.util.logging.*;

import javax.swing.*;
import org.compiere.apps.*;
import org.compiere.model.*;
import org.compiere.swing.*;
import org.compiere.util.*;

/**
 *	Dialog to enter Location Info (Address)
 *
 *  @author 	Jorg Janke
 *  @version 	$Id: VLocationDialog.java,v 1.2 2006/07/30 00:51:28 jjanke Exp $
 */
public class VLocationDialog extends CDialog implements ActionListener
{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public static String GOOGLE_MAPS_URL_PREFIX = "http://local.google.com/maps?q=";
	
	/**
	 *	Constructor
	 *
	 * @param frame parent
	 * @param title title (field name)
	 * @param location Model Location
	 */
	public VLocationDialog (Frame frame, String title, MLocation location)
	{
		super(frame, title, true);
		try
		{
			jbInit();
		}
		catch(Exception ex)
		{
			log.log(Level.SEVERE, ex.getMessage());
		}
		m_location = location;
		if (m_location == null) {
			m_location = m_tempLocation;
		}
		
		//	Overwrite title	
		if (m_location.getC_Location_ID() == 0)
			setTitle(Msg.getMsg(Env.getCtx(), "LocationNew"));
		else
			setTitle(Msg.getMsg(Env.getCtx(), "LocationUpdate"));
		

		//	Current Country
		MCountry.setDisplayLanguage(Env.getAD_Language(Env.getCtx()));
		fCountry = new CComboBox(MCountry.getCountries(Env.getCtx()));
		fCountry.setSelectedItem(m_location.getCountry());
		m_origCountry_ID = m_location.getC_Country_ID();
		//	Current Region
		fRegion = new CComboBox(MRegion.getRegions(Env.getCtx(), m_origCountry_ID));
		if (m_location.getCountry().isHasRegion())
			lRegion.setText(m_location.getCountry().getRegionName());	//	name for region
		fRegion.setSelectedItem(m_location.getRegion());
		
		// Kenos
		fCity = new CComboBox();
		//
		initLocation();
		fCountry.addActionListener(this);
		// Kenos
		fRegion.addActionListener(this);
		//
		AEnv.positionCenterWindow(frame, this);
	}	//	VLocationDialog

	private boolean 	m_change = false;
	private MLocation	m_location;
	private MLocation	m_tempLocation = new MLocation (Env.getCtx(), 0, null);
	private int			m_origCountry_ID;
	private int			s_oldCountry_ID = 0;
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(VLocationDialog.class);

	private CPanel panel = new CPanel();
	private CPanel mainPanel = new CPanel();
	private CPanel southPanel = new CPanel();
	private BorderLayout panelLayout = new BorderLayout();
	private GridBagLayout gridBagLayout = new GridBagLayout();
	private ConfirmPanel confirmPanel = new ConfirmPanel(true);
	private BorderLayout southLayout = new BorderLayout();
	//
	private CLabel		lAddress1   = new CLabel(Msg.translate(Env.getCtx(), "Address1"));
	private CLabel		lAddress2   = new CLabel(Msg.translate(Env.getCtx(), "Address2"));
	private CLabel		lAddress3   = new CLabel(Msg.translate(Env.getCtx(), "Address3"));
	private CLabel		lAddress4   = new CLabel(Msg.translate(Env.getCtx(), "Address4"));
	private CLabel		lCountry    = new CLabel(Msg.getMsg(Env.getCtx(), "Country"));
	private CLabel		lRegion     = new CLabel(Msg.getMsg(Env.getCtx(), "Region"));
	private CLabel		lCity       = new CLabel(Msg.getMsg(Env.getCtx(), "City"));
	private CLabel		lPostal     = new CLabel(Msg.getMsg(Env.getCtx(), "Postal"));
	private CLabel		lPostalAdd  = new CLabel(Msg.getMsg(Env.getCtx(), "PostalAdd"));
	private CTextField	fAddress1 = new CTextField(20);		//	length=60
	private CTextField	fAddress2 = new CTextField(20);		//	length=60
	private CTextField	fAddress3 = new CTextField(20);		//	length=60
	private CTextField	fAddress4 = new CTextField(20);		//	length=60
	private CTextField	fPostal = new CTextField(10);		//	length=10
	private CTextField	fPostalAdd = new CTextField(10);		//	length=10
	//private CTextField	fCity  = new CTextField(15);		//	length=60
	private CComboBox	fRegion;
	private CComboBox   fCity; //Kenos - campo City = COMBO BOX
	private CComboBox	fCountry;

	/** The "to link" key  */
	private static final String TO_LINK = "ToLink";

	/** The "to link" Button  */
	private AppsAction 	m_toMapAction =
		new AppsAction(TO_LINK, null, Msg.getMsg(Env.getCtx(), TO_LINK));
	
	//
	private GridBagConstraints gbc = new GridBagConstraints();
	private Insets labelInsets = new Insets(2,15,2,0);		// 	top,left,bottom,right
	private Insets fieldInsets = new Insets(2,5,2,10);

	/**
	 *	Static component init
	 *  @throws Exception
	 */
	void jbInit() throws Exception
	{
		panel.setLayout(panelLayout);
		southPanel.setLayout(southLayout);
		mainPanel.setLayout(gridBagLayout);
		panelLayout.setHgap(5);
		panelLayout.setVgap(10);
		getContentPane().add(panel);
		panel.add(mainPanel, BorderLayout.NORTH);
		panel.add(southPanel, BorderLayout.SOUTH);
		southPanel.add(confirmPanel, BorderLayout.CENTER);

		m_toMapAction.getButton().setMargin(ConfirmPanel.s_insets);
		m_toMapAction.setDelegate(this);
		confirmPanel.addComponent(m_toMapAction.getButton());
		//
		confirmPanel.addActionListener(this);
	}	//	jbInit

	/**
	 *	Dynanmic Init & fill fields - Called when Country changes!
	 */
	private void initLocation()
	{
		// Kenos
		fCity.setPreferredSize(new Dimension(225,25));
		fCountry.setPreferredSize(new Dimension(225,25));
		//
		
		MCountry country = m_location.getCountry();
		log.fine(country.getName() + ", Region=" + country.isHasRegion() + " " + country.getDisplaySequence()
			+ ", C_Location_ID=" + m_location.getC_Location_ID());
		//	new Region
		if (m_location.getC_Country_ID() != s_oldCountry_ID && country.isHasRegion())
		{
			fRegion = new CComboBox(MRegion.getRegions(Env.getCtx(), country.getC_Country_ID()));
			if (m_location.getRegion() != null)
				fRegion.setSelectedItem(m_location.getRegion());
			else
				if(m_location.getCountry().getC_Country_ID() == 139 && m_location.getAD_Org_ID() != 0){
					MOrg org = new MOrg(Env.getCtx(), m_location.getAD_Org_ID(), null);
					MLocation location = 
						new MLocation(Env.getCtx(), org.getInfo().getC_Location_ID(), null);
					MRegion region = new MRegion(Env.getCtx(), location.getC_Region_ID(), null);
					fRegion.setSelectedItem(region);
					//	refrseh
					mainPanel.removeAll();
					initLocation();
					fRegion.requestFocus();	//	allows to use Keybord selection
				}
			// Kenos
			fRegion.addActionListener(this);
			//
			lRegion.setText(country.getRegionName());
			s_oldCountry_ID = m_location.getC_Country_ID();
		}

		gbc.anchor = GridBagConstraints.NORTHWEST;
		gbc.gridy = 0;			//	line
		gbc.gridx = 0;
		gbc.gridwidth = 1;
		gbc.insets = fieldInsets;
		gbc.fill = GridBagConstraints.HORIZONTAL;
		gbc.weightx = 0;
		gbc.weighty = 0;

		mainPanel.add(Box.createVerticalStrut(5), gbc);    	//	top gap

		int line = 1;
		addLine(line++, lAddress1, fAddress1);
		addLine(line++, lAddress2, fAddress2);
		addLine(line++, lAddress3, fAddress3);
		addLine(line++, lAddress4, fAddress4);

		//  sequence of City Postal Region - @P@ @C@ - @C@, @R@ @P@
		String ds = country.getDisplaySequence();
		if (ds == null || ds.length() == 0)
		{
			log.log(Level.SEVERE, "DisplaySequence empty - " + country);
			ds = "";	//	@C@,  @P@
		}
		StringTokenizer st = new StringTokenizer(ds, "@", false);
		while (st.hasMoreTokens())
		{
			String s = st.nextToken();
			if (s.startsWith("C"))
				addLine(line++, lCity, fCity);
			else if (s.startsWith("P"))
				addLine(line++, lPostal, fPostal);
			else if (s.startsWith("A"))
				addLine(line++, lPostalAdd, fPostalAdd);
			else if (s.startsWith("R") && m_location.getCountry().isHasRegion())
				addLine(line++, lRegion, fRegion);
		}
		//  Country Last
		addLine(line++, lCountry, fCountry);

		//	Fill it
		if (m_location.getC_Location_ID() != 0)
		{
			fAddress1.setText(m_location.getAddress1());
			fAddress2.setText(m_location.getAddress2());
			fAddress3.setText(m_location.getAddress3());
			fAddress4.setText(m_location.getAddress4());
			//fCity.setText(m_location.getCity()); - Kenos (linha comentada)
			fPostal.setText(m_location.getPostal());
			fPostalAdd.setText(m_location.getPostal_Add());
			if (m_location.getCountry().isHasRegion())
			{
				lRegion.setText(m_location.getCountry().getRegionName());
				fRegion.setSelectedItem(m_location.getRegion());
			}
			fCountry.setSelectedItem(country);
		}
		
		// Kenos
		if (m_location.getCountry().isHasRegion() && m_location.getRegion() != null && m_location.getCountry().getC_Country_ID() == 139) //139 = Brasil
		{
			fCity.setEditable(false);
			fCity.removeAllItems();
			String sql = "SELECT Name FROM C_City WHERE C_Region_ID=? ORDER BY Name";
			try
			{
				PreparedStatement pstmt = DB.prepareStatement(sql, null);
				pstmt.setInt(1, m_location.getRegion().getC_Region_ID());
				ResultSet rs = pstmt.executeQuery();
				while (rs.next())
				{
					fCity.addItem(rs.getString (1));
				}
				rs.close();
				pstmt.close();
			}
			catch (SQLException e)
			{
				log.log(Level.SEVERE, sql, e);
			}
			fCity.setSelectedItem(m_location.getCity());
		}
		else
		{
			fCity.removeAllItems();
			fCity.setEditable(true);
			fCity.setSelectedItem(m_location.getCity());
		}
		// Kenos
		
		
		//	Update UI
		pack();
	}	//	initLocation

	/**
	 *	Add Line to screen
	 *
	 *  @param line line number (zero based)
	 *  @param label label
	 *  @param field field
	 */
	private void addLine(int line, JLabel label, JComponent field)
	{
		gbc.gridy = line;
		//	label
		gbc.insets = labelInsets;
		gbc.gridx = 0;
		gbc.weightx = 0.0;
		gbc.fill = GridBagConstraints.HORIZONTAL;
		label.setHorizontalAlignment(SwingConstants.RIGHT);
		mainPanel.add(label, gbc);
		//	Field
		gbc.insets = fieldInsets;
		gbc.gridx = 1;
		gbc.weightx = 1.0;
		gbc.fill = GridBagConstraints.NONE;
		mainPanel.add(field, gbc);
	}	//	addLine


	/**
	 *	ActionListener
	 *  @param e ActionEvent
	 */
	public void actionPerformed(ActionEvent e)
	{
		if (e.getActionCommand().equals(ConfirmPanel.A_OK))
		{
			action_OK();
			m_change = true;
			dispose();
		}
		else if (e.getActionCommand().equals(ConfirmPanel.A_CANCEL))
		{
			m_change = false;
			dispose();
		}
		else if (e.getSource() == fCountry)
		{
			//	Country Changed - display in new Format
			//	Modifier for Mouse selection is 16  - for any key selection 0
			MCountry c = (MCountry)fCountry.getSelectedItem();
			m_location.setCountry(c);
			//	refrseh
			mainPanel.removeAll();
			initLocation();
			fCountry.requestFocus();	//	allows to use Keybord selection
		}
		// Kenos
		else if (e.getSource() == fRegion)
		{
			//	Modifier for Mouse selection is 16  - for any key selection 0
			MRegion r = (MRegion) fRegion.getSelectedItem();
			m_location.setRegion(r);
			//	refrseh
			mainPanel.removeAll();
			initLocation();
			fRegion.requestFocus();	//	allows to use Keybord selection
		}
		// Kenos
		else
		{			
			//  Country/Region
			if(m_location.getCountry().getC_Country_ID() == 139){
				//Get the Region name from MRegion, as the RegionName filled in the m_location is not right
				MRegion region = new MRegion(Env.getCtx(), m_location.getC_Region_ID(), null);
				String address = "";
				address = address + (m_location.getAddress1() != null ? m_location.getAddress1() + ", " : "");
				address = address + (m_location.getAddress2() != null ? m_location.getAddress2() + ", " : "");
				address = address + (m_location.getAddress3() != null ? m_location.getAddress3() + ", " : "");
				address = address + (m_location.getAddress4() != null ? m_location.getAddress4() + ", " : "");
				address = address + (m_location.getPostal() != null ? m_location.getPostal() + ", " : "");
				address = address + (m_location.getCity() != null ? m_location.getCity() + ", " : "");
				address = address + (region.getName() != null ? region.getName() + ", " : "");
				address = address + (m_location.getCountryName() != null ? m_location.getCountryName() : "");
				Env.startBrowser(GOOGLE_MAPS_URL_PREFIX + address);
			}
			else
				Env.startBrowser(GOOGLE_MAPS_URL_PREFIX + getCurrentLocation());
		}
	}	//	actionPerformed

	/**
	 * 	OK - check for changes (save them) & Exit
	 */
	private void action_OK()
	{
		m_location.setAddress1(fAddress1.getText());
		m_location.setAddress2(fAddress2.getText());
		m_location.setAddress3(fAddress3.getText());
		m_location.setAddress4(fAddress4.getText());
		//m_location.setCity(fCity.getText()); Kenos (linha comentada)
		m_location.setCity((String) fCity.getSelectedItem()); // Kenos
		m_location.setPostal(fPostal.getText());
		m_location.setPostal_Add(fPostalAdd.getText());
		//  Country/Region
		MCountry c = (MCountry)fCountry.getSelectedItem();
		m_location.setCountry(c);
		if (m_location.getCountry().isHasRegion())
		{
			MRegion r = (MRegion)fRegion.getSelectedItem();
			m_location.setRegion(r);
		}
		else
			m_location.setC_Region_ID(0);
		//	Save chnages
		m_location.save();
	}	//	actionOK

	/**
	 *	Get result
	 *  @return true, if changed
	 */
	public boolean isChanged()
	{
		return m_change;
	}	//	getChange

	/**
	 * 	Get edited Value (MLocation)
	 *	@return location
	 */
	public MLocation getValue()
	{
		return m_location;
	}	//	getValue

	/**
	 * 	Get edited Value (MLocation)
	 *	@return location
	 */
	private String getCurrentLocation() {
		m_tempLocation.setAddress1(fAddress1.getText());
		m_tempLocation.setAddress2(fAddress2.getText());
		m_tempLocation.setAddress3(fAddress3.getText());
		m_tempLocation.setAddress4(fAddress4.getText());
		//m_tempLocation.setCity(fCity.getText()); Kenos (linha comentada)
		m_tempLocation.setCity((String) fCity.getSelectedItem()); // Kenos
		m_tempLocation.setPostal(fPostal.getText());
		m_tempLocation.setPostal_Add(fPostalAdd.getText());
		//  Country/Region
		MCountry c = (MCountry)fCountry.getSelectedItem();
		m_tempLocation.setCountry(c);
		if (m_tempLocation.getCountry().isHasRegion())
		{
			MRegion r = (MRegion)fRegion.getSelectedItem();
			m_tempLocation.setRegion(r);
		}
		else
			m_tempLocation.setC_Region_ID(0);
		
		return m_tempLocation.toString();
	}
	
}	//	VLocationDialog