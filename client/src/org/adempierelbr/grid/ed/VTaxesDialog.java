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

import org.adempierelbr.model.MLBRTax;
import org.adempierelbr.model.X_LBR_TaxLine;
import org.compiere.apps.ADialog;
import org.compiere.apps.AEnv;
import org.compiere.apps.ConfirmPanel;
import org.compiere.grid.ed.VCheckBox;
import org.compiere.grid.ed.VLookup;
import org.compiere.grid.ed.VNumber;
import org.compiere.model.MLookup;
import org.compiere.model.MLookupFactory;
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
 *	@contributor Ricardo Santana (Kenos, www.kenos.com.br) - ralexsander
 *
 *	@version $Id: VTaxesDialog.java, 14/11/2007 13:45:00 mgrigioni
 */
public class VTaxesDialog extends CDialog implements ActionListener
{
	/**
	 * Serial
	 */
	private static final long serialVersionUID = 1L;

	/**
	 *	Organiza como as linhas de impostos são tratadas no código.
	 *
	 *	@author Ricardo Santana
	 */
	private class LineTax
	{
		Integer   	LINE;
		JButton 	DELETE;
		VLookup   	TAX;
		VNumber   	RATE;
		VNumber	 	BASE;
		VCheckBox 	POST;

		/**
		 *
		 * 	Constructor
		 *
		 * @param line
		 * @param delete
		 * @param tax
		 * @param rate
		 * @param base
		 * @param post
		 */
		private LineTax (Integer line, JButton delete, VLookup tax,
					VNumber rate, VNumber base, VCheckBox post)
		{
			this.LINE		=line;
			this.DELETE		=delete;
			this.TAX		=tax;
			this.RATE		=rate;
			this.BASE		=base;
			this.POST		=post;
		}	//	LineTax
	}	//	LineTax

	/**
	 *	Constructor
	 *
	 * @param frame parent
	 * @param title title (field name)
	 * @param location Model Location
	 */
	public VTaxesDialog (Frame frame, String title, MLBRTax tax)
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
		if (m_tax == null || m_tax.getLBR_Tax_ID() == 0)
			m_tax = new MLBRTax (Env.getCtx(), 0, null);
		//
		//	Overwrite title
		if (m_tax.getLBR_Tax_ID() == 0){
			setTitle(Msg.getMsg(Env.getCtx(), "New"));
			initTaxes();
			addLine();
		}
		else{
			setTitle(Msg.getMsg(Env.getCtx(), "Update"));
			initTaxes();
			getLines();
		}
		//
		AEnv.positionCenterWindow(frame, this);
	}	//	VLocationDialog

	private boolean 	m_change = false;
	private MLBRTax		m_tax;
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(VTaxesDialog.class);
	//
	private CPanel panel = new CPanel();
	private CPanel mainPanel  = new CPanel();
	private ConfirmPanel confirmPanel = new ConfirmPanel(true);
	//
	private JScrollPane scrollPanel = new JScrollPane(mainPanel,
		    JScrollPane.VERTICAL_SCROLLBAR_ALWAYS,
		    JScrollPane.HORIZONTAL_SCROLLBAR_NEVER);
	private BorderLayout  panelLayout   = new BorderLayout();
	private GridBagLayout gridBagLayout = new GridBagLayout();
	//
	private CLabel		lSelect  = new CLabel(Msg.translate(Env.getCtx(), "Delete"));
	private CLabel		lTax     = new CLabel(Msg.translate(Env.getCtx(), "LBR_TaxName_ID"));
	private CLabel		lRate    = new CLabel(Msg.translate(Env.getCtx(), "lbr_TaxRate"));
	private CLabel		lBase    = new CLabel(Msg.translate(Env.getCtx(), "lbr_TaxBase"));
	private CLabel		lPost    = new CLabel(Msg.translate(Env.getCtx(), "lbr_PostTax"));
	//
	private ArrayList<Integer> toDelete  = new ArrayList<Integer>();
	//
	private JButton     newButton = new JButton();
	private JButton     delRecordButton = new JButton();
	//
	private GridBagConstraints gbc = new GridBagConstraints();
	private static Insets labelInsets = new Insets(0,10,5,10);		// 	top,left,bottom,right
	private static Insets fieldInsets = new Insets(0,5,5,10);
	//
	private ArrayList<LineTax>	taxLines	= new ArrayList<LineTax>();
	private Integer				lineCount = 1;

	/**
	 *	Static component init
	 *  @throws Exception
	 */
	void jbInit() throws Exception
	{
		panel.setLayout(panelLayout);
		mainPanel.setLayout(gridBagLayout);
		//
		panelLayout.setHgap(5);
		panelLayout.setVgap(5);
		panel.setPreferredSize(new Dimension(750,270));
		//
		getContentPane().add(panel);
		panel.add(scrollPanel, BorderLayout.CENTER);
		panel.add(confirmPanel, BorderLayout.SOUTH);
		//
		newButton.setIcon(Env.getImageIcon("New24.gif"));
		newButton.setMargin(ConfirmPanel.s_insets);
		newButton.setToolTipText(Msg.translate(Env.getCtx(), "New"));
		confirmPanel.addComponent(newButton);
		newButton.addActionListener(this);
		//
		delRecordButton.setIcon(Env.getImageIcon("DeleteSelection24.gif"));
		delRecordButton.setMargin(ConfirmPanel.s_insets);
		delRecordButton.setToolTipText(Msg.translate(Env.getCtx(), "Delete"));
		confirmPanel.addComponent(delRecordButton);
		delRecordButton.addActionListener(this);
		//
		confirmPanel.addActionListener(this);
	}	//	jbInit

	/**
	 * 	Carrega os impostos e alíquotas
	 */
	private void initTaxes()
	{
		gbc.gridy  = 0;			//	line
		gbc.gridx  = 0;
		gbc.weightx = 0.5;
		gbc.anchor = GridBagConstraints.PAGE_START;
		gbc.fill = GridBagConstraints.VERTICAL;
		gbc.insets = labelInsets;
		//
		//	Selecionado (Deletar)
		gbc.gridx = 0;
		lSelect.setHorizontalAlignment(SwingConstants.CENTER);
		mainPanel.add(lSelect, gbc);
		//	Imposto
		gbc.gridx = 1;
		lTax.setHorizontalAlignment(SwingConstants.CENTER);
		mainPanel.add(lTax, gbc);
		//	Alíquota
		gbc.gridx = 2;
		lRate.setHorizontalAlignment(SwingConstants.CENTER);
		mainPanel.add(lRate, gbc);
		//	Base de Cálculo
		gbc.gridx = 3;
		lBase.setHorizontalAlignment(SwingConstants.CENTER);
		mainPanel.add(lBase, gbc);
		//	Contabilizar
		gbc.gridx = 4;
		lPost.setHorizontalAlignment(SwingConstants.CENTER);
		mainPanel.add(lPost, gbc);
		//	Update UI
		pack();
		setLocationRelativeTo(null);
	}	//	initLocation

	/**
	 * 	Adiciona uma linha em branco
	 */
	private void addLine()
	{
		Integer LBR_TaxLine_ID = new Integer(0);
		//
		MLookup TaxL = MLookupFactory.get (Env.getCtx(), 0, 0, 1000221, DisplayType.Search);
		VLookup vTax = new VLookup ("LBR_TaxName_ID", true, false, true, TaxL);
		//
		VNumber vRate = new VNumber();
		vRate.setValue(Env.ZERO);
		//
		VNumber vBase = new VNumber();
		vBase.setValue(Env.ZERO);
		//
		VCheckBox vPost = new VCheckBox();
		vPost.setValue(true);
		//
		LineTax lt = new LineTax(LBR_TaxLine_ID, getDelButton(), vTax, vRate, vBase, vPost);
		//
		addLine(lt);
	}	//	addLine

	/**
	 * Create a new delete button
	 *
	 * @return JButton Delete
	 */
	private JButton getDelButton()
	{
		JButton     delLineButton = new JButton();
		delLineButton.setIcon(Env.getImageIcon("Delete24.gif"));
		delLineButton.setMargin(new Insets(0,10,0,10));
		delLineButton.setToolTipText(Msg.translate(Env.getCtx(), "Delete"));
		delLineButton.addActionListener(this);
		//
		return delLineButton;
	}	//	getDelButton

	/**
	 *	Add Line to screen
	 *
	 *  @param line line number (zero based)
	 *  @param label label
	 *  @param field field
	 */
	private void addLine(LineTax lt)
	{
		log.fine("BR Tax Line= #" + lineCount);
		//
		gbc.insets = fieldInsets;
		gbc.gridy = lineCount++;//lineTax.size() + 1;
		gbc.weightx = 1.0;
		gbc.fill = GridBagConstraints.NONE;
		gbc.anchor = GridBagConstraints.PAGE_START;
		//
		taxLines.add(lt);
		//
		gbc.gridx = 0;
		mainPanel.add(lt.DELETE, gbc);
		//
		gbc.gridx = 1;
		mainPanel.add(lt.TAX, gbc);
		//
		gbc.gridx = 2;
		mainPanel.add(lt.RATE, gbc);
		//
		gbc.gridx = 3;
		mainPanel.add(lt.BASE, gbc);
		//
		gbc.gridx = 4;
		mainPanel.add(lt.POST, gbc);
		//
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
		else if (e.getActionCommand().equals(ConfirmPanel.A_OK))
		{
			if (beforeSave())
			{
				save();
				m_change = true;
				dispose();
			}
			else
				ADialog.info(1, this, "Duplicidade", "Linha do imposto em duplicidade. Impossível salvar.");
		}
		else if (e.getActionCommand().equals(ConfirmPanel.A_CANCEL))
		{
			m_change = false;
			dispose();
		}
		//	Deletar Tudo
		else if (e.getSource().equals(delRecordButton))
		{
			//FR [ 1863998 ] Criar confirmação ao apagar lbr_Impostos
			if (ADialog.ask(1, this, Msg.translate(Env.getCtx(), "DeleteRecord?"))){
				deleteRecord();
				m_change = true;
				dispose();
			}
		}
		//	Deletar uma linha
		else if (e.getSource() instanceof JButton)
		{
			if (!ADialog.ask(1, this, Msg.translate(Env.getCtx(), "DeleteRecord?")))
				;
			else
				for (int i=0; i < taxLines.size(); i++)
				{
					if (taxLines.get(i).DELETE.equals(e.getSource()))
					{
						if (taxLines.get(i).LINE != 0)
						{
							toDelete.add(taxLines.get(i).LINE);
						}
						mainPanel.remove(taxLines.get(i).DELETE);
						mainPanel.remove(taxLines.get(i).TAX);
						mainPanel.remove(taxLines.get(i).RATE);
						mainPanel.remove(taxLines.get(i).BASE);
						mainPanel.remove(taxLines.get(i).POST);
						//
						taxLines.remove(i);
						//
						panel.repaint();
						panel.revalidate();
						//
						m_change = true;
					}
				}
		}
	}	//	actionPerformed

	/**
	 * 	Before Save
	 *
	 * @return
	 */
	private Boolean beforeSave()
	{
		ArrayList<Object> id = new ArrayList<Object>();
		//
		for (LineTax lTax : taxLines)
		{
			if (lTax.TAX.getValue() != null)
			{
				if (id.contains(lTax.TAX.getValue()))
					return false;
				else
					id.add(lTax.TAX.getValue());
			}
		}
		//
		return true;
	}	//	beforeSave

	/**
	 * 	OK - check for changes (save them) & Exit
	 */
	private void save()
	{
		//	Apaga os registros marcardos
		for (int id : toDelete)
		{
			X_LBR_TaxLine taxLine = new X_LBR_TaxLine(Env.getCtx(), id, m_tax.get_TrxName());
			taxLine.delete(false);
		}
		//
		if (m_tax.getLBR_Tax_ID() == 0)
			m_tax.save();
		//
		for (LineTax lTax : taxLines)
		{
			Integer value = (Integer) lTax.TAX.getValue();
			//
			if (value != null && value != 0)
			{
				BigDecimal taxRate = (BigDecimal)lTax.RATE.getValue();
				BigDecimal taxBase = (BigDecimal)lTax.BASE.getValue();
				Boolean post = (Boolean)lTax.POST.getValue();
				//
				X_LBR_TaxLine taxLine = new X_LBR_TaxLine(Env.getCtx(), lTax.LINE, m_tax.get_TrxName());
				taxLine.setLBR_Tax_ID(m_tax.getLBR_Tax_ID());
				taxLine.setLBR_TaxName_ID(value);
				taxLine.setlbr_TaxRate(taxRate);
				taxLine.setlbr_TaxBase(taxBase);
				taxLine.setlbr_PostTax(post);
				taxLine.save();
			}
		}
		//
		m_tax.setDescription();
		m_tax.save();
	}	//	save

	/**
	 * 	Delete Record
	 */
	private void deleteRecord()
	{
		int LBR_Tax_ID = m_tax.getLBR_Tax_ID();
		//
		if (LBR_Tax_ID != 0)
		{
			String trx = m_tax.get_TrxName();
			String sql = "";
			//
		    //	Linhas
		    sql = "DELETE FROM LBR_TaxLine " +
        	      "WHERE LBR_Tax_ID=" + LBR_Tax_ID;
		    DB.executeUpdate(sql, trx);
		    //
			//	Imposto
			sql = "DELETE FROM LBR_Tax " +
        	      "WHERE LBR_Tax_ID=" + LBR_Tax_ID;
		    DB.executeUpdate(sql, trx);
		}
		//
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
	public MLBRTax getValue()
	{
		return m_tax;
	}	//	getValue

	/**
	 * 	Get all lines
	 */
	private void getLines()
	{
		//
		String sql = "SELECT LBR_TaxLine_ID, LBR_TaxName_ID, " +	//	1..2
				"lbr_TaxRate, lbr_TaxBase, lbr_PostTax " +			//	3..5
			    "FROM LBR_TaxLine " +
			    "WHERE LBR_Tax_ID = ?";
		//
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
				BigDecimal taxRate = rs.getBigDecimal("lbr_TaxRate");
				BigDecimal taxBase = rs.getBigDecimal("lbr_TaxBase");
				//
				if (taxRate == null)
					taxRate = Env.ZERO;
				if (taxBase == null)
					taxBase = Env.ZERO;
				//
				if (toDelete.contains(LBR_TaxLine_ID.intValue()))
					continue;
				//
				MLookup TaxL = MLookupFactory.get (Env.getCtx(), 0, 0, 1000221, DisplayType.Search);
				VLookup vTax = new VLookup ("LBR_TaxName_ID", true, false, true, TaxL);
				vTax.setValue(rs.getInt("LBR_TaxName_ID"));
				//
				VNumber vRate = new VNumber();
				vRate.setValue(taxRate);
				//
				VNumber vBase = new VNumber();
				vBase.setValue(taxBase);
				//
				VCheckBox vPost = new VCheckBox();
				boolean Post = "Y".equals(rs.getString("lbr_PostTax"));
				vPost.setValue(Post);
				//
				LineTax lt = new LineTax(LBR_TaxLine_ID, getDelButton(), vTax, vRate, vBase, vPost);
				//
				addLine(lt);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally
		{
		       DB.close(rs, pstmt);
		}

		if (lineCount == 1)
			addLine();

	}	//	getLines
}	//	VTaxesDialog