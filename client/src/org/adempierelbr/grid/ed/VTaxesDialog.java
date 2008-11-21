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
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Frame;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;

import javax.swing.JButton;
import javax.swing.JScrollPane;
import javax.swing.SwingConstants;

import org.adempierelbr.model.MTax;
import org.compiere.apps.ADialog;
import org.compiere.apps.AEnv;
import org.compiere.grid.ed.VCheckBox;
import org.compiere.grid.ed.VLookup;
import org.compiere.grid.ed.VNumber;
import org.compiere.model.MLookup;
import org.compiere.model.MLookupFactory;
import org.compiere.model.X_LBR_TaxLine;
import org.compiere.swing.CDialog;
import org.compiere.swing.CLabel;
import org.compiere.swing.CPanel;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 *	VTaxesDialog
 *
 *	Taxes Dialog
 *	
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: VTaxesDialog.java, 14/11/2007 13:45:00 mgrigioni
 */
public class VTaxesDialog extends CDialog implements ActionListener
{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 *	Constructor
	 *
	 * @param frame parent
	 * @param title title (field name)
	 * @param location Model Location
	 */
	public VTaxesDialog (Frame frame, String title, MTax tax)
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
		m_tax = tax;
		if (m_tax == null) {
			m_tax = m_tempTax;
		}
		
		//	Overwrite title	
		if (m_tax.getLBR_Tax_ID() == 0){
			setTitle(Msg.getMsg(Env.getCtx(), "New"));
			initTaxes();
			addLine();
		}
		else{
			setTitle(Msg.getMsg(Env.getCtx(), "Update"));
			getLines();
		}
		
		//
		AEnv.positionCenterWindow(frame, this);
	}	//	VLocationDialog

	private boolean 	m_change = false;
	private MTax	m_tax;
	private MTax	m_tempTax = new MTax (Env.getCtx(), 0, null);
	private int         m_line = 0;
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(VTaxesDialog.class);

	private CPanel panel = new CPanel();
	private CPanel mainPanel  = new CPanel();
	private CPanel southPanel = new CPanel();
	private JScrollPane scrollPanel = new JScrollPane(mainPanel,
		    JScrollPane.VERTICAL_SCROLLBAR_ALWAYS, 
		    JScrollPane.HORIZONTAL_SCROLLBAR_NEVER);
	private BorderLayout  panelLayout   = new BorderLayout();
	private FlowLayout    southLayout   = new FlowLayout();
	private GridBagLayout gridBagLayout = new GridBagLayout();
	//
	private CLabel		lSelect  = new CLabel(Msg.translate(Env.getCtx(), "IsSelected"));
	private CLabel		lTax     = new CLabel(Msg.translate(Env.getCtx(), "LBR_TaxName_ID"));
	private CLabel		lRate    = new CLabel(Msg.translate(Env.getCtx(), "lbr_TaxRate"));
	private CLabel		lBase    = new CLabel(Msg.translate(Env.getCtx(), "lbr_TaxBase"));
	private CLabel		lPost    = new CLabel(Msg.translate(Env.getCtx(), "lbr_PostTax"));
	//
	private ArrayList<Integer>   line    = new ArrayList<Integer>();
	private ArrayList<VCheckBox> fSelect = new ArrayList<VCheckBox>();
	private ArrayList<VLookup>   fTax    = new ArrayList<VLookup>();
	private ArrayList<VNumber>   fRate   = new ArrayList<VNumber>();
	private ArrayList<VNumber>	 fBase   = new ArrayList<VNumber>();
	private ArrayList<VCheckBox> fPost   = new ArrayList<VCheckBox>();
	//
	private JButton     savButton = new JButton();
	private JButton     newButton = new JButton();
	private JButton     delButton = new JButton();
	private JButton     delRecordButton = new JButton();
	//
	private GridBagConstraints gbc = new GridBagConstraints();
	private Insets labelInsets = new Insets(0,10,5,10);		// 	top,left,bottom,right
	private Insets fieldInsets = new Insets(0,5,5,10);

	/**
	 *	Static component init
	 *  @throws Exception
	 */
	void jbInit() throws Exception
	{
		panel.setLayout(panelLayout);
		southPanel.setLayout(southLayout);
		mainPanel.setLayout(gridBagLayout);
		//
		panelLayout.setHgap(5);
		panelLayout.setVgap(5);
		panel.setPreferredSize(new Dimension(800,345));
		setResizable(false);
		//
		getContentPane().add(panel);
		panel.add(scrollPanel, BorderLayout.CENTER);
		panel.add(southPanel, BorderLayout.SOUTH);
		//
		newButton.setIcon(Env.getImageIcon("New24.gif"));
		newButton.setMargin(new Insets(0,10,0,10));
		newButton.setToolTipText(Msg.translate(Env.getCtx(), "New"));
		southPanel.add(newButton);
		newButton.addActionListener(this);
		
		delButton.setIcon(Env.getImageIcon("DeleteSelection24.gif"));
		delButton.setMargin(new Insets(0,10,0,10));
		delButton.setToolTipText(Msg.translate(Env.getCtx(), "DeleteSelection"));
		southPanel.add(delButton);
		delButton.addActionListener(this);
				
		savButton.setIcon(Env.getImageIcon("Save24.gif"));
		savButton.setMargin(new Insets(0,10,0,10));
		savButton.setToolTipText(Msg.translate(Env.getCtx(), "Save"));
		southPanel.add(savButton);
		savButton.addActionListener(this);
		
		delRecordButton.setIcon(Env.getImageIcon("Delete24.gif"));
		delRecordButton.setMargin(new Insets(0,10,0,10));
		delRecordButton.setToolTipText(Msg.translate(Env.getCtx(), "Delete"));
		southPanel.add(delRecordButton);
		delRecordButton.addActionListener(this);
	}	//	jbInit

	private void initTaxes()
	{
		gbc.gridy  = 0;			//	line
		gbc.gridx  = 0;
		gbc.weightx = 0.5;
		gbc.anchor = GridBagConstraints.PAGE_START;
		gbc.fill = GridBagConstraints.VERTICAL;
		gbc.insets = labelInsets;
		
		/* CABEÇALHO */
		//Selecionado (Deletar)
		gbc.gridx = 0;
		lSelect.setHorizontalAlignment(SwingConstants.CENTER);
		mainPanel.add(lSelect, gbc);
		//Imposto
		gbc.gridx = 1;
		lTax.setHorizontalAlignment(SwingConstants.CENTER);
		mainPanel.add(lTax, gbc);
		//Alíquota
		gbc.gridx = 2;
		lRate.setHorizontalAlignment(SwingConstants.CENTER);
		mainPanel.add(lRate, gbc);
		//Base de Cálculo
		gbc.gridx = 3;
		lBase.setHorizontalAlignment(SwingConstants.CENTER);
		mainPanel.add(lBase, gbc);
		//Contabilizar
		gbc.gridx = 4;
		lPost.setHorizontalAlignment(SwingConstants.CENTER);
		mainPanel.add(lPost, gbc);
		//	Update UI
		pack();
		setLocationRelativeTo(null);
	}	//	initLocation
	
	private void addLine()
	{
		Integer LBR_TaxLine_ID = new Integer(0);
		//
		VCheckBox vSelect = new VCheckBox();
		//
		MLookup TaxL = MLookupFactory.get (Env.getCtx(), 0, 0, 1000221, DisplayType.Search);
		VLookup vTax = new VLookup ("LBR_TaxName_ID", true, false, true, TaxL);
		//
		VNumber vRate = new VNumber();
		//
		VNumber vBase = new VNumber();
		//
		VCheckBox vPost = new VCheckBox();
		vPost.setValue(true);
		//
		addLine(LBR_TaxLine_ID,vSelect,vTax,vRate,vBase,vPost);
	}
	/**
	 *	Add Line to screen
	 *
	 *  @param line line number (zero based)
	 *  @param label label
	 *  @param field field
	 */
	private void addLine(Integer LBR_TaxLine_ID, VCheckBox vSelect, VLookup vTax,
			             VNumber vRate, VNumber vBase, VCheckBox vPost)
	{
		gbc.insets = fieldInsets;
		gbc.gridy = m_line+1;
		gbc.weightx = 1.0;
		gbc.fill = GridBagConstraints.NONE;
		gbc.anchor = GridBagConstraints.PAGE_START;
		
		//ID
		line.add(LBR_TaxLine_ID);
		//	fSelect
		fSelect.add(vSelect);
		gbc.gridx = 0;
		mainPanel.add(fSelect.get(m_line), gbc);
		//	fTax
		fTax.add(vTax);
		gbc.gridx = 1;
		mainPanel.add(fTax.get(m_line), gbc);
		//	fRate
		fRate.add(vRate);
		gbc.gridx = 2;
		mainPanel.add(fRate.get(m_line), gbc);
		//	fBase
		fBase.add(vBase);
		gbc.gridx = 3;
		mainPanel.add(fBase.get(m_line), gbc);
		//	fPost
		fPost.add(vPost);
		gbc.gridx = 4;
		mainPanel.add(fPost.get(m_line), gbc);
		
		m_line++;
		panel.revalidate();
	}	//	addLine


	/**
	 *	ActionListener
	 *  @param e ActionEvent
	 */
	public void actionPerformed(ActionEvent e)
	{	
		//	newButton
		if (e.getSource().equals(newButton))
		{
			addLine();
		}
		if (e.getSource().equals(delButton))
		{
			//FR [ 1863998 ] Criar confirmação ao apagar lbr_Impostos
			if (ADialog.ask(1, this, Msg.translate(Env.getCtx(), "DeleteRecord?"))){
				delete();
				getLines();
				m_change = true;
			}
		}
		if (e.getSource().equals(savButton))
		{
			save();
			getLines();
			m_change = true;
		}
		if (e.getSource().equals(delRecordButton))
		{
			//FR [ 1863998 ] Criar confirmação ao apagar lbr_Impostos
			if (ADialog.ask(1, this, Msg.translate(Env.getCtx(), "DeleteRecord?"))){
				deleteRecord();
				m_change = true;
				dispose();
			}
		}
		
	}	//	actionPerformed

	/**
	 * 	OK - check for changes (save them) & Exit
	 */
	private void save()
	{
		if (m_tax.getLBR_Tax_ID() == 0) m_tax.save();
		
		for (int i=0;i<line.size();i++){
			Integer value = (Integer)fTax.get(i).getValue();
			if (value != null && value != 0){
				X_LBR_TaxLine taxLine = new X_LBR_TaxLine(Env.getCtx(),line.get(i),null);
				taxLine.setLBR_Tax_ID(m_tax.getLBR_Tax_ID());
				taxLine.setLBR_TaxName_ID(value);
				taxLine.setlbr_TaxRate((BigDecimal)fRate.get(i).getValue());
				taxLine.setlbr_TaxBase((BigDecimal)fBase.get(i).getValue());
				taxLine.setlbr_PostTax((Boolean)fPost.get(i).getValue());
				taxLine.save();
			}
		}
		
		m_tax.setDescription();
		m_tax.save();
	}	//	save
	
	/**
	 * 	Delete - Only Selected
	 */
	private void delete()
	{
		for (int i=0;i<line.size();i++){
			if (line.get(i) != 0){
				if ((Boolean)fSelect.get(i).getValue()){
					X_LBR_TaxLine taxLine = new X_LBR_TaxLine(Env.getCtx(),line.get(i),null);
					taxLine.delete(true);
					
					//Define Imposto como 0 para não salvar
					VLookup vTax = fTax.get(i);
					vTax.setValue(0);
					fTax.set(i, vTax);
				}
			}
		}
		
		save();
	}	//	delete
	
	/**
	 * 	Delete Record
	 */
	private void deleteRecord()
	{
		int LBR_Tax_ID = m_tax.getLBR_Tax_ID();
		
		if (LBR_Tax_ID != 0){
			
			String trx = m_tax.get_TrxName();
			String sql = "";
			
		    //Linhas
		    sql = "DELETE FROM LBR_TaxLine " +
        	      "WHERE LBR_Tax_ID=" + LBR_Tax_ID;
		    DB.executeUpdate(sql, trx);
		    
			//Imposto
			sql = "DELETE FROM LBR_Tax " +
        	      "WHERE LBR_Tax_ID=" + LBR_Tax_ID;
		    DB.executeUpdate(sql, trx);
		    
		}
		
		m_tax = null;
		    
	}	//	deleteRecord

	/**
	 *	Get result
	 *  @return true, if changed
	 */
	public boolean isChanged()
	{
		return m_change;
	}	//	getChange

	/**
	 * 	Get edited Value (X_LBR_Tax)
	 *	@return m_tax
	 */
	public MTax getValue()
	{
		return m_tax;
	}	//	getValue
	
	private void getLines(){
		
		clearAll();
		
		String sql = "SELECT LBR_TaxLine_ID, LBR_TaxName_ID, lbr_TaxRate, lbr_TaxBase, lbr_PostTax " +
				     "FROM LBR_TaxLine " +
				     "WHERE LBR_Tax_ID = ?";
			
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, m_tax.getLBR_Tax_ID());
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				Integer LBR_TaxLine_ID = rs.getInt("LBR_TaxLine_ID");
				//
				VCheckBox vSelect = new VCheckBox();
				//
				MLookup TaxL = MLookupFactory.get (Env.getCtx(), 0, 0, 1000221, DisplayType.Search);
				VLookup vTax = new VLookup ("LBR_TaxName_ID", true, false, true, TaxL);
				vTax.setValue(rs.getInt("LBR_TaxName_ID"));
				//
				VNumber vRate = new VNumber();
				vRate.setValue(rs.getBigDecimal("lbr_TaxRate"));
				//
				VNumber vBase = new VNumber();
				vBase.setValue(rs.getBigDecimal("lbr_TaxBase"));
				//
				VCheckBox vPost = new VCheckBox();
				boolean Post = "Y".equals(rs.getString("lbr_PostTax"));
				vPost.setValue(Post);
				//
				addLine(LBR_TaxLine_ID,vSelect,vTax,vRate,vBase,vPost);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		if (m_line == 0) addLine();

	} //getLines
	
	private void clearAll(){
		
		m_line = 0;
		m_change = false;
		mainPanel.removeAll();
		line    = new ArrayList<Integer>();
		fSelect = new ArrayList<VCheckBox>();
		fTax    = new ArrayList<VLookup>();
		fRate   = new ArrayList<VNumber>();
		fBase   = new ArrayList<VNumber>();
		fPost   = new ArrayList<VCheckBox>();
		
		initTaxes();
		
		panel.repaint();
		panel.revalidate();
		
	}
		
}	//	VTaxesDialog