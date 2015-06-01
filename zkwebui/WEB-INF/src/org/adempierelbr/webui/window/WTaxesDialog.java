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
package org.adempierelbr.webui.window;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;

import org.adempiere.webui.apps.AEnv;
import org.adempiere.webui.component.Button;
import org.adempiere.webui.component.Checkbox;
import org.adempiere.webui.component.ConfirmPanel;
import org.adempiere.webui.component.Grid;
import org.adempiere.webui.component.GridFactory;
import org.adempiere.webui.component.Label;
import org.adempiere.webui.component.Panel;
import org.adempiere.webui.component.Row;
import org.adempiere.webui.component.Window;
import org.adempiere.webui.editor.WNumberEditor;
import org.adempiere.webui.editor.WSearchEditor;
import org.adempiere.webui.event.ValueChangeEvent;
import org.adempiere.webui.event.ValueChangeListener;
import org.adempiere.webui.window.FDialog;
import org.adempierelbr.grid.ed.VTaxesDialog;
import org.adempierelbr.model.MLBRTax;
import org.adempierelbr.model.X_LBR_TaxLine;
import org.compiere.model.MLookup;
import org.compiere.model.MLookupFactory;
import org.compiere.model.MLookupInfo;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zkex.zul.Borderlayout;

/**
 *	Taxes Dialog
 *
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@contributor Ricardo Santana (Kenos, www.kenos.com.br) - ralexsander
 *
 *  ZK Port
 *  @author Murilo H. Torquato
 *  
 *	@version $Id: VTaxesDialog.java, 14/11/2007 13:45:00 mgrigioni
 */
public class WTaxesDialog extends Window implements EventListener, ValueChangeListener
{
	/**
	 * Serial
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 	Mapa para definir o WHERE do TaxStatus
	 */
	private Map <WSearchEditor, LineTax> map = new HashMap <WSearchEditor, LineTax> (); 

	int vSequence = 0;
	
	/**
	 *	Organiza como as linhas de impostos são tratadas no código.
	 *
	 *	@author Ricardo Santana
	 */
	private class LineTax
	{
		Integer   		LINE;
		Button 			DELETE;
		WSearchEditor	TAX;
		WNumberEditor   RATE;
		WNumberEditor	BASE;
		Checkbox 		POST;
		WSearchEditor   TAXSTATUS;
		WSearchEditor   TAXLM;
		//
		Integer 		SEQ;

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
		private LineTax (Integer line, Button delete, WSearchEditor tax,
					WNumberEditor rate, WNumberEditor base, WSearchEditor taxStatus, WSearchEditor taxLM, Checkbox post, Integer seq)
		{
			this.LINE		=line;
			this.DELETE		=delete;
			this.TAX		=tax;
			this.RATE		=rate;
			this.BASE		=base;
			this.TAXSTATUS	=taxStatus;
			this.TAXLM		=taxLM;
			this.POST		=post;
			//
			this.SEQ		=seq;
			
		}	//	LineTax
	}	//	LineTax

	/**
	 *	Constructor
	 *
	 * @param title title (field name)
	 * @param location Model Location
	 * @param WindowNo
	 */
	public WTaxesDialog (String title, MLBRTax tax, int WindowNo)
	{
		super();
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
		AEnv.showCenterScreen(this);

	}	//	VLocationDialog
	
	Row row = null;

	private boolean 	m_change = false;
	private MLBRTax		m_tax;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(VTaxesDialog.class);
	//
	private Panel panel = new Panel();
	private Grid mainPanel = GridFactory.newGridLayout();
	private ConfirmPanel confirmPanel = new ConfirmPanel(true);
	//
	private Panel scrollPanel = new Panel();

	private Borderlayout  panelLayout   = new Borderlayout();
	//
	private Label		lSelect  = new Label(Msg.translate(Env.getCtx(), "Delete"));
	private Label		lTax     = new Label(Msg.translate(Env.getCtx(), "LBR_TaxName_ID"));
	private Label		lRate    = new Label(Msg.translate(Env.getCtx(), "lbr_TaxRate"));
	private Label		lBase    = new Label(Msg.translate(Env.getCtx(), "lbr_TaxBase"));
	private Label		lTaxStatus  = new Label(Msg.translate(Env.getCtx(), "LBR_TaxStatus_ID"));
	private Label		lTaxLM    	= new Label(Msg.translate(Env.getCtx(), "LBR_LegalMessage_ID"));
	private Label		lPost    	= new Label(Msg.translate(Env.getCtx(), "lbr_PostTax"));
	//
	private ArrayList<Integer> toDelete  = new ArrayList<Integer>();
	//
	private Button     newButton = new Button();
	private Button     delRecordButton = new Button();
	//
	private ArrayList<LineTax>	taxLines	= new ArrayList<LineTax>();
	private Integer				lineCount = 1;

	/**
	 *	Static component init
	 *  @throws Exception
	 */
	void jbInit() throws Exception
	{
		this.appendChild(panel);
		panel.appendChild(panelLayout);
		//mainPanel.appendChild(gridBagLayout);
		//
		panel.appendChild(scrollPanel);
		panel.appendChild(confirmPanel);
		//
		newButton.setImage("/images/New24.png");
		newButton.setLabel(Msg.translate(Env.getCtx(), "New"));
		//newButton.setMargin(ConfirmPanel.s_insets);
		newButton.setTooltiptext(Msg.translate(Env.getCtx(), "New"));
		confirmPanel.appendChild(newButton);
		newButton.addActionListener(this);
		//
		delRecordButton.setImage("/images/Delete24.png");
		delRecordButton.setLabel(Msg.translate(Env.getCtx(), "Delete"));
		//delRecordButton.setMargin(ConfirmPanel.s_insets);
		delRecordButton.setTooltiptext(Msg.translate(Env.getCtx(), "Delete"));
		confirmPanel.appendChild(delRecordButton);
		delRecordButton.addActionListener(this);
		//
		Env.setContext(Env.getCtx(), 0, "WHERE|ZERO", 0);
		//
		confirmPanel.addActionListener(this);
	}	//	jbInit

	/**
	 * 	Carrega os impostos e alíquotas
	 */
	private void initTaxes()
	{
		row = mainPanel.newRows().newRow();
		row.appendChild(lSelect.rightAlign());
		row.appendChild(lTax.rightAlign());
		row.appendChild(lRate.rightAlign());
		row.appendChild(lBase.rightAlign());
		row.appendChild(lTaxStatus.rightAlign());
		row.appendChild(lTaxLM.rightAlign());
		row.appendChild(lPost.rightAlign());
		//
		scrollPanel.appendChild(mainPanel);
	}	//	initLocation

	/**
	 * 	Adiciona uma linha em branco
	 */
	private void addLine()
	{
		Integer LBR_TaxLine_ID = new Integer(0);
		//
		MLookup TaxL = MLookupFactory.get (Env.getCtx(), 0, 0, 1000221, DisplayType.Search);
		WSearchEditor vTax = new WSearchEditor ("LBR_TaxName_ID", true, false, true, TaxL);
		vTax.addValueChangeListener(this);
		//
		WNumberEditor vRate = new WNumberEditor();
		vRate.setValue(Env.ZERO);
		//
		WNumberEditor vBase = new WNumberEditor();
		vBase.setValue(Env.ZERO);
		//
		String where = "LBR_TaxStatus.LBR_TaxName_ID=@" + vSequence + "|LBR_TaxStatus_ID@";
		MLookupInfo info = MLookupFactory.getLookupInfo (Env.getCtx(), 0, 1106067, DisplayType.Search,
				Env.getLanguage(Env.getCtx()), "LBR_TaxStatus_ID", 0, false, where);
		MLookup TaxStatusL = new MLookup(info, 0);
		WSearchEditor vTaxStatus = new WSearchEditor ("LBR_TaxStatus_ID", false, false, true, TaxStatusL);
		//
		MLookup TaxLML = MLookupFactory.get (Env.getCtx(), 0, 0, 1106066, DisplayType.Search);
		WSearchEditor vTaxLM = new WSearchEditor ("LBR_LegalMessage_ID", false, false, true, TaxLML);
		//
		Checkbox vPost = new Checkbox();
		vPost.setSelected(true);
		//
		Env.setContext(Env.getCtx(), 0, vSequence + "|LBR_TaxStatus_ID", 0);
		LineTax lt = new LineTax(LBR_TaxLine_ID, getDelButton(), vTax, vRate, vBase, vTaxStatus, vTaxLM, vPost, vSequence++);
		//
		addLine(lt);
	}	//	addLine

	/**
	 * Create a new delete button
	 *
	 * @return JButton Delete
	 */
	private Button getDelButton()
	{
		Button     delLineButton = new Button();
		delLineButton.setImage("/images/Delete16.png");
		delLineButton.setLabel("");
		//delLineButton.setMargin(new Insets(0,10,0,10));
		delLineButton.setTooltiptext(Msg.translate(Env.getCtx(), "Delete"));
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
		taxLines.add(lt);
		//
		row = new Row();
		mainPanel.getRows().appendChild(row);
		row.appendChild(lt.DELETE);
		row.appendChild(lt.TAX.getComponent());
		row.appendChild(lt.RATE.getComponent());
		row.appendChild(lt.BASE.getComponent());
		row.appendChild(lt.TAXSTATUS.getComponent());
		row.appendChild(lt.TAXLM.getComponent());
		row.appendChild(lt.POST);
		//
		map.put (lt.TAX, lt);
		//
		lineCount++;
	}	//	addLine

	/**************************************************************************
	 *  Action Listener
	 *  @param e event
	 */
	public void onEvent(Event e)
	{
		log.config( "Cmd=" + e.toString());
		
		//
		if (e.getTarget() == newButton)
		{
			addLine();
		}
		//
		else if (e.getTarget().getId().equals(ConfirmPanel.A_OK))
		{
			if (beforeSave())
			{
				save();
				m_change = true;
				dispose();
			}
			else
				FDialog.info(1, this, "Duplicidade", "Linha do imposto em duplicidade. Impossível salvar.");
		}
		else if (e.getTarget().getId().equals(ConfirmPanel.A_CANCEL))
		{
			m_change = false;
			dispose();
		}
		//	Deletar Tudo
		else if (e.getTarget() == delRecordButton)
		{
			//FR [ 1863998 ] Criar confirmação ao apagar lbr_Impostos
			if (FDialog.ask(1, this, Msg.translate(Env.getCtx(), "DeleteRecord?"))){
				deleteRecord();
				m_change = true;
				dispose();
			}
		}
		//	Deletar uma linha
		else if (e.getTarget() instanceof Button)
		{
			if (!FDialog.ask(1, this, Msg.translate(Env.getCtx(), "DeleteRecord?")))
				;
			else
				for (int i=0; i < taxLines.size(); i++)
				{
					if (taxLines.get(i).DELETE.equals(e.getTarget()))
					{
						if (taxLines.get(i).LINE != 0)
						{
							toDelete.add(taxLines.get(i).LINE);
						}
						mainPanel.removeChild(taxLines.get(i).DELETE);
						mainPanel.removeChild(taxLines.get(i).TAX.getComponent());
						mainPanel.removeChild(taxLines.get(i).RATE.getComponent());
						mainPanel.removeChild(taxLines.get(i).TAXSTATUS.getComponent());
						mainPanel.removeChild(taxLines.get(i).TAXLM.getComponent());
						mainPanel.removeChild(taxLines.get(i).POST);
						//
						taxLines.remove(i);
						//
						//panel.repaint();
						//panel.revalidate();
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
				Integer taxStatus = 0;
				Integer taxLM = 0;
				Boolean post = (Boolean) lTax.POST.isChecked();
				WSearchEditor look = ((WSearchEditor) lTax.TAXSTATUS);
				//
				if (look.getValue() == null) 
					; 	//	Do Nothing
				else if (look.getValue() instanceof BigDecimal)
					taxStatus = ((BigDecimal) look.getValue()).intValue();
				else if (look.getValue() instanceof Integer)
					taxStatus = (Integer) look.getValue();
				//
				if (lTax.TAXLM.getValue() == null) 
					; 	//	Do Nothing
				else if (lTax.TAXLM.getValue() instanceof BigDecimal)
					taxLM = ((BigDecimal) lTax.TAXLM.getValue()).intValue();
				else if (lTax.TAXLM.getValue() instanceof Integer)
					taxLM = (Integer) lTax.TAXLM.getValue();
				//
				X_LBR_TaxLine taxLine = new X_LBR_TaxLine(Env.getCtx(), lTax.LINE, m_tax.get_TrxName());
				taxLine.setLBR_Tax_ID(m_tax.getLBR_Tax_ID());
				taxLine.setLBR_TaxName_ID(value);
				taxLine.setlbr_TaxRate(taxRate);
				taxLine.setlbr_TaxBase(taxBase);
				taxLine.setLBR_TaxStatus_ID(taxStatus.intValue());
				taxLine.setLBR_LegalMessage_ID(taxLM.intValue());
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
				"lbr_TaxRate, lbr_TaxBase, LBR_TaxStatus_ID, " +	//	3..5
				"LBR_LegalMessage_ID, lbr_PostTax " +				//	6..7
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
				WSearchEditor vTax = new WSearchEditor ("LBR_TaxName_ID", true, false, true, TaxL);
				vTax.setValue(rs.getInt("LBR_TaxName_ID"));
				Env.setContext(Env.getCtx(), 0, vSequence + "|LBR_TaxStatus_ID", rs.getInt("LBR_TaxName_ID"));
				//
				WNumberEditor vRate = new WNumberEditor();
				vRate.setValue(taxRate);
				//
				WNumberEditor vBase = new WNumberEditor();
				vBase.setValue(taxBase);
				//
				String where = "LBR_TaxStatus.LBR_TaxName_ID=@" + vSequence + "|LBR_TaxStatus_ID@";
				MLookupInfo info = MLookupFactory.getLookupInfo (Env.getCtx(), 0, 1106067, DisplayType.Search,
						Env.getLanguage(Env.getCtx()), "LBR_TaxStatus_ID", 0, false, where);
				MLookup TaxStatusL = new MLookup(info, 0);
				WSearchEditor vTaxStatus = new WSearchEditor ("LBR_TaxStatus_ID", false, false, true, TaxStatusL);
				vTaxStatus.setValue(rs.getObject("LBR_TaxStatus_ID"));
				//
				MLookup TaxLML = MLookupFactory.get (Env.getCtx(), 0, 0, 1106066, DisplayType.Search);
				WSearchEditor vTaxLM = new WSearchEditor ("LBR_LegalMessage_ID", false, false, true, TaxLML);
				vTaxLM.setValue(rs.getObject("LBR_LegalMessage_ID"));
				//
				Checkbox vPost = new Checkbox();
				boolean Post = "Y".equals(rs.getString("lbr_PostTax"));
				vPost.setSelected(Post);
				//
				LineTax lt = new LineTax(LBR_TaxLine_ID, getDelButton(), vTax, vRate, vBase, vTaxStatus, vTaxLM, vPost, vSequence++);
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
	
	public MLBRTax getM_tax() 
	{
		return m_tax;
	}

	public void setM_tax(MLBRTax mTax) 
	{
		m_tax = mTax;
	}

	/**
	 * 	Ajusta o contexto
	 */
	public void valueChange (ValueChangeEvent e) 
	{
		if (e.getSource() instanceof WSearchEditor)
		{
			WSearchEditor tax = (WSearchEditor) e.getSource();
			//
//			if ("LBR_TaxName_ID".equals(tax.getDescription()))
			{
				LineTax lt = map.get(tax);
				//
				if (lt != null)
				{
					Env.setContext(Env.getCtx(), 0, lt.SEQ + "|LBR_TaxStatus_ID", (Integer) e.getNewValue());
				}
			}
		}
	}	//	vetoableChange
}	//	VTaxesDialog