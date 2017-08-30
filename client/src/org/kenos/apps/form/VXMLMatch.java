/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
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
package org.kenos.apps.form;

import java.awt.BorderLayout;
import java.awt.Cursor;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.math.BigDecimal;
import java.nio.charset.Charset;
import java.sql.Timestamp;
import java.util.logging.Level;

import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JScrollPane;
import javax.swing.border.TitledBorder;
import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;
import javax.swing.event.TableModelEvent;
import javax.swing.event.TableModelListener;

import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlOptions;
import org.compiere.apps.ADialog;
import org.compiere.apps.StatusBar;
import org.compiere.apps.form.FormFrame;
import org.compiere.apps.form.FormPanel;
import org.compiere.grid.ed.VLookup;
import org.compiere.grid.ed.VNumber;
import org.compiere.minigrid.ColumnInfo;
import org.compiere.minigrid.IDColumn;
import org.compiere.minigrid.MiniTable;
import org.compiere.model.MLookup;
import org.compiere.model.MLookupFactory;
import org.compiere.model.MMatchPO;
import org.compiere.model.MOrgInfo;
import org.compiere.plaf.CompiereColor;
import org.compiere.swing.CButton;
import org.compiere.swing.CLabel;
import org.compiere.swing.CPanel;
import org.compiere.swing.CTabbedPane;
import org.compiere.util.CLogger;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;
import org.fife.ui.rsyntaxtextarea.RSyntaxTextArea;
import org.fife.ui.rsyntaxtextarea.SyntaxConstants;

/**
 *  	Manual Matching XML and PO
 *
 *  @author 	Ricardo Santana (Kenos, www.kenos.com.br)
 *  @version 	$Id: VXMLMatch.java, v1.0 2015/10/22 22:52:28 PM, ralexsander Exp $
 */
public class VXMLMatch extends XMLMatch
	implements FormPanel, ActionListener, TableModelListener, ListSelectionListener
{
	/**	Tabs			*/
	private CTabbedPane tabbedPane = new CTabbedPane();
	
	/**	Import Tab		*/
	private CPanel importMainTab 	= new CPanel();
	private CPanel importNorth 		= new CPanel();
	private CPanel importCenter 	= new CPanel();
	private CPanel importSouth 		= new CPanel();
	
	/** Center checkbox panel	*/
	private CPanel xPanel 			= new CPanel();

	/**	XML Tab					*/
	private CPanel xmlMainTab 		= new CPanel(new BorderLayout());
	/**	Event Tab				*/
	private CPanel eventMainTab 	= new CPanel();
	
	
	/**
	 *	Initialize Panel
	 *  @param WindowNo window
	 *  @param frame frame
	 */
	public void init (int WindowNo, FormFrame frame)
	{
		m_WindowNo = WindowNo;
		m_frame = frame;
		log.info("WinNo=" + m_WindowNo + " - AD_Client_ID=" + m_AD_Client_ID + ", AD_Org_ID=" + m_AD_Org_ID + ", By=" + m_by);
		Env.setContext(Env.getCtx(), m_WindowNo, "IsSOTrx", "N");

		try
		{
			jbInit();
			//
			dynInit();
			frame.getContentPane().add(tabbedPane, BorderLayout.CENTER);
			frame.getContentPane().add(statusBar, BorderLayout.SOUTH);
			//
			new Thread()
			{
				public void run()
				{
					log.info("Starting ...");
					MMatchPO.consolidate(Env.getCtx());
					log.info("... Done");
				}
			}.start();
		}
		catch(Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
	}	//	init

	/**	Window No			*/
	private int         	m_WindowNo = 0;
	/**	FormFrame			*/
	private FormFrame 		m_frame;
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(VXMLMatch.class);

	private int     m_AD_Client_ID 		= Env.getAD_Client_ID(Env.getCtx());
	private int     m_AD_Org_ID 		= Env.getAD_Org_ID(Env.getCtx());
	private int     m_by 				= Env.getAD_User_ID(Env.getCtx());
	
	private BigDecimal      m_xMatched 		= Env.ZERO;
	private BigDecimal      m_xMatchedTo 	= Env.ZERO;

	//
	private JButton bFile = new JButton();
	private StatusBar statusBar = new StatusBar();
	private BorderLayout mainLayout = new BorderLayout();
	private GridBagLayout northLayout = new GridBagLayout();
	private CLabel lOrg = new CLabel();
	private VLookup fOrg;
	private GridBagLayout southLayout = new GridBagLayout();

	/**	Status bar	*/
	private CLabel xMatchedLabel 	= new CLabel();
	private CLabel xMatchedToLabel 	= new CLabel();
	private CLabel differenceLabel 	= new CLabel();
	private VNumber xMatched 	= new VNumber("xMatched", false, true, false, DisplayType.Quantity, "xMatched");
	private VNumber xMatchedTo 	= new VNumber("xMatchedTo", false, true, false, DisplayType.Quantity, "xMatchedTo");
	private VNumber difference 	= new VNumber("Difference", false, true, false, DisplayType.Quantity, "Difference");
	private CButton bProcess = new CButton();
	
	private BorderLayout centerLayout = new BorderLayout(5,5);
	private JScrollPane xMatchedScrollPane = new JScrollPane();
	private TitledBorder xMatchedBorder = new TitledBorder("xMatched");
	private MiniTable xMatchedTable = new MiniTable();
	private JScrollPane xMatchedToScrollPane = new JScrollPane();
	private TitledBorder xMatchedToBorder = new TitledBorder("xMatchedTo");
	private MiniTable xMatchedToTable = new MiniTable();
	private JCheckBox sameProduct = new JCheckBox();
	private JCheckBox sameBPartner = new JCheckBox();
	private JCheckBox sameQty = new JCheckBox();
	private FlowLayout xLayout = new FlowLayout(FlowLayout.CENTER, 10, 0);

	private StringBuilder m_data = new StringBuilder();
	/**	Current selected file */
	private File				m_file = null;
	private JCheckBox signValid = new JCheckBox();
	private JCheckBox protValid = new JCheckBox();
	
	/**	XML Tab			*/
	private RSyntaxTextArea xmlArea = new RSyntaxTextArea();
	private JScrollPane xmlCenter 	= new JScrollPane(xmlArea);

	/**
	 *  Static Init.
	 *  <pre>
	 *  mainPanel
	 *      northPanel
	 *      centerPanel
	 *          xMatched
	 *          xPanel
	 *          xMathedTo
	 *      southPanel
	 *  </pre>
	 *  @throws Exception
	 */
	private void jbInit() throws Exception
	{
		bFile.setText(Msg.getMsg(Env.getCtx(), "FileImportFile"));
		bFile.setToolTipText(Msg.getMsg(Env.getCtx(), "FileImportFileInfo"));
		bFile.addActionListener(this);
		
		signValid.setEnabled(false);
		signValid.setSelected(false);
//		signValid.setText(Msg.translate(Env.getCtx(), "LBR_SignatureValid"));
		signValid.setText(Msg.translate(Env.getCtx(), "Assinatura Válida"));
		
		protValid.setEnabled(false);
		protValid.setSelected(false);
//		protValid.setText(Msg.translate(Env.getCtx(), "LBR_ProtValid"));
		protValid.setText(Msg.translate(Env.getCtx(), "Protocolo Válido"));
		
		MLookup orgL = MLookupFactory.get (Env.getCtx(), m_WindowNo, 0, 2163, DisplayType.TableDir);
		fOrg = new VLookup ("AD_Org_ID", false, true, true, orgL);
		lOrg.setLabelFor(fOrg);
		lOrg.setText(Msg.translate(Env.getCtx(), "AD_Org_ID"));
//		fOrg.setEnabled(false);
		
		
		tabbedPane.add(importMainTab, Msg.getMsg(Env.getCtx(), "Select"));
		tabbedPane.add(xmlMainTab, Msg.getMsg(Env.getCtx(), "XML"));
		tabbedPane.add(eventMainTab, Msg.getMsg(Env.getCtx(), "Eventos"));
		
		
		xMatchedLabel.setText(Msg.translate(Env.getCtx(), "ToBeMatched"));
		xMatchedToLabel.setText(Msg.translate(Env.getCtx(), "Matching"));
		differenceLabel.setText(Msg.translate(Env.getCtx(), "Difference"));
		
		xmlMainTab.add (xmlCenter);
		
		importMainTab.setLayout(mainLayout);
		importNorth.setLayout(northLayout);
		importSouth.setLayout(southLayout);
		bProcess.setText(Msg.translate(Env.getCtx(), "Process"));
		importCenter.setLayout(centerLayout);
		xMatchedScrollPane.setBorder(xMatchedBorder);
		xMatchedScrollPane.setPreferredSize(new Dimension(450, 200));
		xMatchedToScrollPane.setBorder(xMatchedToBorder);
		xMatchedToScrollPane.setPreferredSize(new Dimension(450, 200));
		sameProduct.setSelected(true);
		sameProduct.setText(Msg.translate(Env.getCtx(), "SameProduct"));
		sameBPartner.setSelected(true);
		sameBPartner.setText(Msg.translate(Env.getCtx(), "SameBPartner"));
		sameQty.setSelected(false);
		sameQty.setText(Msg.translate(Env.getCtx(), "SameQty"));
		xPanel.setLayout(xLayout);
		importMainTab.add(importNorth,  BorderLayout.NORTH);
//		importNorth.add(matchFromLabel,    	new GridBagConstraints(0, 0, 1, 1, 0.0, 0.0
//			,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(12, 12, 5, 5), 0, 0));
		importNorth.add(bFile,        		new GridBagConstraints(1, 0, 1, 1, 0.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(12, 0, 5, 0), 0, 0));

		importNorth.add(lOrg,    			new GridBagConstraints(2, 0, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.HORIZONTAL, new Insets(12, 12, 5, 5), 0, 0));
		importNorth.add(fOrg,    			new GridBagConstraints(3, 0, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.HORIZONTAL, new Insets(12, 12, 5, 5), 0, 0));
		
		importNorth.add(signValid,    		new GridBagConstraints(1, 1, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.HORIZONTAL, new Insets(0, 12, 5, 5), 0, 0));
		importNorth.add(protValid,     		new GridBagConstraints(1, 2, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.HORIZONTAL, new Insets(5, 12, 5, 5), 0, 0));

		importMainTab.add(importSouth,  BorderLayout.SOUTH);
		importSouth.add(xMatchedLabel,		new GridBagConstraints(0, 0, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 12, 5, 5), 0, 0));
		importSouth.add(xMatched,         	new GridBagConstraints(1, 0, 1, 1, 0.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 0), 0, 0));
		importSouth.add(xMatchedToLabel, 	new GridBagConstraints(2, 0, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 10, 5, 5), 0, 0));
		importSouth.add(bProcess, 			new GridBagConstraints(6, 0, 1, 1, 0.0, 0.0
			,GridBagConstraints.NORTHEAST, GridBagConstraints.NONE, new Insets(5, 12, 5, 12), 0, 0));
		importSouth.add(differenceLabel,		new GridBagConstraints(4, 0, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 10, 5, 5), 0, 0));
		importMainTab.add(importCenter, BorderLayout.CENTER);
		importCenter.add(xMatchedScrollPane,  BorderLayout.NORTH);
		xMatchedScrollPane.getViewport().add(xMatchedTable, null);
		importCenter.add(xMatchedToScrollPane,  BorderLayout.SOUTH);
		importCenter.add(xPanel, BorderLayout.CENTER);
		xPanel.add(sameBPartner, null);
		xPanel.add(sameProduct, null);
		xPanel.add(sameQty, null);
		xMatchedToScrollPane.getViewport().add(xMatchedToTable, null);
		importSouth.add(difference,   new GridBagConstraints(5, 0, 1, 1, 0.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 0), 0, 0));
		importSouth.add(xMatchedTo, new GridBagConstraints(3, 0, 1, 1, 0.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 0, 5, 0), 0, 0));
	}   //  jbInit

	/**
	 *  Dynamic Init.
	 *  Table Layout, Visual, Listener
	 */
	private void dynInit()
	{
		
		
		ColumnInfo[] layout = new ColumnInfo[] {
			new ColumnInfo(" ",                                         ".", IDColumn.class, false, false, ""),
			new ColumnInfo(Msg.translate(Env.getCtx(), "DocumentNo"),   ".", String.class),             //  1
			new ColumnInfo(Msg.translate(Env.getCtx(), "Date"),         ".", Timestamp.class),
			new ColumnInfo(Msg.translate(Env.getCtx(), "C_BPartner_ID"),".", KeyNamePair.class, "."),   //  3
			new ColumnInfo(Msg.translate(Env.getCtx(), "Line"),         ".", KeyNamePair.class, "."),
			new ColumnInfo(Msg.translate(Env.getCtx(), "M_Product_ID"), ".", KeyNamePair.class, "."),   //  5
			new ColumnInfo(Msg.translate(Env.getCtx(), "Qty"),          ".", Double.class),
			new ColumnInfo(Msg.translate(Env.getCtx(), "Matched"),      ".", Double.class),
			new ColumnInfo(Msg.translate(Env.getCtx(), "AD_Org_ID"),    ".", KeyNamePair.class, ".") //JAVIER
		};

		xMatchedTable.prepareTable(layout, "", "", false, "");
		xMatchedToTable.prepareTable(layout, "", "", true, "");

		//  Visual
		CompiereColor.setBackground (tabbedPane);

		//  Listener
//		matchFrom.addActionListener(this);
//		matchTo.addActionListener(this);
//		bSearch.addActionListener(this);
		xMatchedTable.getSelectionModel().addListSelectionListener(this);
		xMatchedToTable.getModel().addTableModelListener(this);
		bProcess.addActionListener(this);
		sameBPartner.addActionListener(this);
		sameProduct.addActionListener(this);
		sameQty.addActionListener(this);
		//  Init
//		matchTo.setModel(new DefaultComboBoxModel(cmd_matchFrom((String)matchFrom.getSelectedItem())));
		//  Set Title
//		xMatchedBorder.setTitle((String)matchFrom.getSelectedItem());
		xMatchedScrollPane.repaint();
		//  Reset Table
		xMatchedTable.setRowCount(0);
		
		cmd_matchTo();
		statusBar.setStatusLine("");
		statusBar.setStatusDB(0);
	}   //  dynInit

	/**
	 * 	Dispose
	 */
	public void dispose()
	{
		if (m_frame != null)
			m_frame.dispose();
		m_frame = null;
	}	//	dispose

	
	/**************************************************************************
	 *  Action Listener
	 *  @param e event
	 */
	public void actionPerformed (ActionEvent e)
	{
		importMainTab.setCursor(Cursor.getPredefinedCursor(Cursor.WAIT_CURSOR));
		
		if (e.getSource() == bFile)
		{
			cmd_loadFile();
			invalidate();
			m_frame.pack();
		}
		
		importMainTab.setCursor(Cursor.getDefaultCursor());
	}   //  actionPerformed

	/**************************************************************************
	 *	Load File
	 */
	private void cmd_loadFile()
	{
		String directory = org.compiere.Adempiere.getAdempiereHome() 
			+ File.separator + "data" 
			+ File.separator + "import";
		log.config(directory);
		//
		JFileChooser chooser = new JFileChooser(directory);
		chooser.setFileSelectionMode(JFileChooser.FILES_ONLY);
		chooser.setMultiSelectionEnabled(false);
		chooser.setDialogTitle(Msg.getMsg(Env.getCtx(), "FileImportFileInfo"));
		if (chooser.showOpenDialog(this) != JFileChooser.APPROVE_OPTION)
			return;
		m_file = chooser.getSelectedFile();
		log.config(m_file.getName());
		bFile.setText(m_file.getName());
		cmd_reloadFile();
	}
	
	/**
	 * Reload/Load file
	 */
	private void cmd_reloadFile()
	{
		if (m_file == null)
			return;
		
		setCursor (Cursor.getPredefinedCursor(Cursor.WAIT_CURSOR));
		m_data = new StringBuilder ("");
		
		try
		{
			//  see NaturalAccountMap
			Charset charset = Charset.forName("UTF-8"); 	//	XML NFe must be UTF-8 
			BufferedReader in = new BufferedReader(new InputStreamReader(new FileInputStream(m_file), charset), 10240);
			//	not safe see p108 Network pgm
			String s = null;
			while ((s = in.readLine()) != null)
			{
				m_data.append(s);
			}
			in.close();
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
			bFile.setText(Msg.getMsg(Env.getCtx	(), "FileImportFile"));
		}
		
		setCursor (Cursor.getDefaultCursor());
		
		//	Set XML
		setXML (m_data);
		
		//	Validate XML
		signValid.setSelected (validateXMLSignature (m_data));
		
		//	Validate Organization
		try
		{
			MOrgInfo oi = getOrg (m_data);
			//
			fOrg.setValue(oi.getAD_Org_ID());
		}
		catch (Exception e)
		{
			fOrg.setValue(null);
			ADialog.error (m_WindowNo, this, e.getMessage());
		}
		
		//	Validate DF-e
		protValid.setSelected (validateProtocol (m_data));
		
		log.finer("XML=" + m_data);
	}	//	cmd_loadFile
	
	/**
	 *  Match To Changed - set Title
	 */
	private void cmd_matchTo()
	{
	//	log.fine( "VMatch.cmd_matchTo");
//		String selection = (String)matchTo.getSelectedItem();
//		xMatchedToBorder.setTitle(selection);
//		xMatchedToScrollPane.repaint();
//		//  Reset Table
//		xMatchedToTable.setRowCount(0);
	}   //  cmd_matchTo
	

	/**************************************************************************
	 *  List Selection Listener - get Info and fill xMatchedTo
	 *  @param e event
	 */
	public void valueChanged (ListSelectionEvent e)
	{
		if (e.getValueIsAdjusting())
			return;
	//	log.config( "VMatch.valueChanged");
		importMainTab.setCursor(Cursor.getPredefinedCursor(Cursor.WAIT_CURSOR));
		cmd_searchTo();
		importMainTab.setCursor(Cursor.getDefaultCursor());
	}   //  valueChanged

	/**
	 *  Fill xMatchedTo
	 */
	private void cmd_searchTo()
	{
//		int row = xMatchedTable.getSelectedRow();
//		log.config("Row=" + row);
//
//		double qty = 0.0;
//		if (row < 0)
//		{
//			xMatchedToTable.setRowCount(0);
//		}
//		else
//		{
//			//  ** Create SQL **
//			String displayString = (String)matchTo.getSelectedItem();
//			int matchToType = matchFrom.getSelectedIndex();
//			double docQty = ((Double)xMatchedTable.getValueAt(row, I_QTY)).doubleValue();
//			double matchedQty = ((Double)xMatchedTable.getValueAt(row, I_MATCHED)).doubleValue();
//			qty = docQty - matchedQty;
//			xMatchedToTable = (MiniTable)cmd_searchTo(xMatchedTable, xMatchedToTable, displayString, matchToType, sameBPartner.isSelected(), sameProduct.isSelected(), sameQty.isSelected(), matchMode.getSelectedIndex() == MODE_MATCHED);
//
//		}
//		//  Display To be Matched Qty
//		m_xMatched = new BigDecimal (qty);
//		xMatched.setValue(m_xMatched);
//		xMatchedTo.setValue(Env.ZERO);
//		difference.setValue(m_xMatched);
//		//  Status Info
//		statusBar.setStatusLine(matchFrom.getSelectedItem().toString()
//			+ "# = " + xMatchedTable.getRowCount() + " - "
//			+ matchTo.getSelectedItem().toString()
//			+  "# = " + xMatchedToTable.getRowCount(),
//			xMatchedToTable.getRowCount() == 0);
//		statusBar.setStatusDB(0);
	}   //  cmd_searchTo
	
	/***************************************************************************
	 *  Table Model Listener - calculate matched Qty
	 *  @param e event
	 */
	public void tableChanged (TableModelEvent e)
	{
		if (e.getColumn() != 0)
			return;
		log.config("Row=" + e.getFirstRow() + "-" + e.getLastRow() + ", Col=" + e.getColumn()
			+ ", Type=" + e.getType());
		importMainTab.setCursor(Cursor.getPredefinedCursor(Cursor.WAIT_CURSOR));

		//  Matched From
		int matchedRow = xMatchedTable.getSelectedRow();
		KeyNamePair Product = (KeyNamePair)xMatchedTable.getValueAt(matchedRow, 5);

		//  Matched To
		double qty = 0.0;
		int noRows = 0;
		for (int row = 0; row < xMatchedToTable.getRowCount(); row++)
		{
			IDColumn id = (IDColumn)xMatchedToTable.getValueAt(row, 0);
			if (id != null && id.isSelected())
			{
				KeyNamePair ProductCompare = (KeyNamePair)xMatchedToTable.getValueAt(row, 5);
				if (Product.getKey() != ProductCompare.getKey())
				{
					id.setSelected(false);
				}
				else
				{
//					if (matchMode.getSelectedIndex() == MODE_NOTMATCHED)
//						qty += ((Double)xMatchedToTable.getValueAt(row, I_QTY)).doubleValue();  //  doc
//					qty -= ((Double)xMatchedToTable.getValueAt(row, I_MATCHED)).doubleValue();  //  matched
//					noRows++;
				}
			}
		}
		//  update quantities
		m_xMatchedTo = new BigDecimal(qty);
		xMatchedTo.setValue(m_xMatchedTo);
		difference.setValue(m_xMatched.subtract(m_xMatchedTo));
		bProcess.setEnabled(noRows != 0);
		importMainTab.setCursor(Cursor.getDefaultCursor());
		//  Status
		statusBar.setStatusDB(noRows);
	}   //  tableChanged

	/**
	 * 	Set XML
	 * 	@param xml
	 */
	private void setXML (StringBuilder xml)
	{
		if (xml == null)
			xml = new StringBuilder ("");
		else
		{
			StringWriter writer = new StringWriter();
			XmlOptions options = new XmlOptions();
			options.setSavePrettyPrint();
			options.setSavePrettyPrintIndent( 3 );
			options.setSaveNoXmlDecl();
			options.setSaveAggressiveNamespaces();
			//
			XmlObject xmlObj;
			try
			{
				xmlObj = XmlObject.Factory.parse(xml.toString(), options);
				xmlObj.save(writer,options);
			}
			catch (Exception e)
			{
				log.severe ("XML File not parseable");
			}					
			//
			xml = new StringBuilder (writer.toString());
		}
		//
		xmlArea.setText(xml.toString());
		xmlArea.setAutoscrolls(false);
		xmlArea.setEditable(false);
		xmlArea.select(0, 0);
		xmlArea.setLineWrap(true);
		xmlArea.setTabSize(1);
		xmlArea.setSyntaxEditingStyle(SyntaxConstants.SYNTAX_STYLE_XML);
		xmlArea.revalidate();
		//
		m_frame.pack();
	}	//	setXML
}   //  VMatch
