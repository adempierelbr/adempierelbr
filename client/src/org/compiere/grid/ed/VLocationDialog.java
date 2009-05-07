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
package org.compiere.grid.ed;

import java.awt.*;
import java.awt.event.*;
import java.net.URL;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import java.util.logging.*;

import javax.swing.*;

import org.adempierelbr.util.WebServiceCep;
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
	
	public static String GOOGLE_MAPS_URL_PREFIX     = "http://local.google.com/maps?q=";
	public static String GOOGLE_MAPS_ROUTE_PREFIX   = "http://maps.google.com/maps?f=d&geocode=";
	public static String GOOGLE_SOURCE_ADDRESS      = "&saddr=";
	public static String GOOGLE_DESTINATION_ADDRESS = "&daddr=";
	
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
	
	/** The "route" key  */
	private static final String TO_ROUTE = "Rota";
	/** The "to link" key  */
	private static final String TO_LINK = "Mapa";
	
	private JButton toLink  	= new JButton();
	private JButton toRoute 	= new JButton();
	private JButton getAddress 	= new JButton();

	
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
		
		toLink.setText(TO_LINK);
		toLink.addActionListener(this);
		toLink.setMargin(ConfirmPanel.s_insets);
		confirmPanel.addComponent(toLink);
		
		toRoute.setText(TO_ROUTE);
		toRoute.addActionListener(this);
		toRoute.setMargin(ConfirmPanel.s_insets);
		confirmPanel.addComponent(toRoute);
		
		getAddress.setText("Procurar");
		getAddress.addActionListener(this);
		getAddress.setMargin(ConfirmPanel.s_insets);
		confirmPanel.addComponent(getAddress);
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
			/*else
				if(m_location.getCountry().getC_Country_ID() == 139 && m_location.getAD_Org_ID() != 0){
					int C_Location_ID = MOrgInfo.get(Env.getCtx(),m_location.getAD_Org_ID()).getC_Location_ID();
					if (C_Location_ID != 0)
					{
						MLocation location = 
							new MLocation(Env.getCtx(), C_Location_ID, null);
						MRegion region = new MRegion(Env.getCtx(), location.getC_Region_ID(), null);
						fRegion.setSelectedItem(region);
						m_location.setRegion(region);
						//	refrseh
						fRegion.requestFocus();	//	allows to use Keybord selection
					}
				}
			*/
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
		else if (e.getSource() == toLink)
		{			
			String urlString = GOOGLE_MAPS_URL_PREFIX + getGoogleMapsLocation(m_location);
			String message = null;

			try
			{	
				new URL(urlString);
				Env.startBrowser(urlString);
			}
			catch (Exception ex)
			{
				message = ex.getMessage();
				ADialog.warn(0, this, "URLnotValid", message);
			}
		}
		else if (e.getSource() == toRoute)
		{			
			int AD_Org_ID = Env.getAD_Org_ID(Env.getCtx());
			if (AD_Org_ID != 0){
				MOrgInfo orgInfo = 	MOrgInfo.get(Env.getCtx(), AD_Org_ID);
				MLocation orgLocation = new MLocation(Env.getCtx(),orgInfo.getC_Location_ID(),null);
				
				String urlString = GOOGLE_MAPS_ROUTE_PREFIX +
						         GOOGLE_SOURCE_ADDRESS + getGoogleMapsLocation(orgLocation) + //org
						         GOOGLE_DESTINATION_ADDRESS + getGoogleMapsLocation(m_location); //partner
				String message = null;
				try
				{	
					new URL(urlString);
					Env.startBrowser(urlString);
				}
				catch (Exception ex)
				{
					message = ex.getMessage();
					ADialog.warn(0, this, "URLnotValid", message);
				}
			}
		}
		else if (e.getSource() == getAddress)
		{	
			if(fPostal != null 
					&& !fPostal.getText().equals(""))
			{
				if (!fAddress1.getText().equals("")
						|| !fAddress2.getText().equals("")
						|| !fAddress3.getText().equals("")
						|| !fAddress4.getText().equals("")
						|| fCity.getSelectedIndex() > 0) 
				{
					String warningMsg = "O endereço atual será substituido. Deseja continuar?";
					String warningTitle = "Aviso";
					int response = JOptionPane.showConfirmDialog(null, warningMsg,
							warningTitle, JOptionPane.YES_NO_OPTION);
					if (response == JOptionPane.NO_OPTION)
						return;
				}
				
				WebServiceCep cep = WebServiceCep.searchCep(fPostal.getText());
				if (cep.wasSuccessful())
				{
					MRegion[] regions = MRegion.getRegions(Env.getCtx(), 139);
					for (MRegion r : regions)
						if (r.getName() != null && r.getName().equals(cep.getUf()))
						{
							fRegion.setSelectedItem(r);
							break;
						}
					fCity.setSelectedItem(cep.getCidade());
					fAddress1.setText(cep.getLogradouroType() + " " + cep.getLogradouro());
					fAddress3.setText(cep.getBairro());
				}
				else if (cep.getResulCode() == 0)
					JOptionPane.showMessageDialog(null, "CEP não encontrado na base de dados.");
				else if (cep.getResulCode() == 14)
					JOptionPane.showMessageDialog(null, "Não foi possível fazer a busca. (Possível problema com a Internet).");
				else
					JOptionPane.showMessageDialog(null, "Erro ao fazer a busca.");					
			}
			else
				JOptionPane.showMessageDialog(null, "Preencha o CEP.");
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
	/*
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
	}*/
	
	/**
	 * 	Get edited Value (MLocation) for GoogleMaps
	 *  @param MLocation location
	 *	@return String address
	 */
	private String getGoogleMapsLocation(MLocation location) {
		
		MRegion region = new MRegion(Env.getCtx(), location.getC_Region_ID(), null);
		String address = "";
		address = address + (location.getAddress1() != null ? location.getAddress1() + ", " : "");
		address = address + (location.getAddress2() != null ? location.getAddress2() + ", " : "");
		address = address + (location.getCity() != null ? location.getCity() + ", " : "");
		address = address + (region.getName() != null ? region.getName() + ", " : "");
		address = address + (location.getCountryName() != null ? location.getCountryName() : "");
		
		return address.replace(" ", "+");
	}
	
}	//	VLocationDialog