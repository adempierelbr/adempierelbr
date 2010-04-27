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
package org.compiere.grid;

import java.awt.event.ActionEvent;
import java.beans.PropertyChangeEvent;
import java.beans.VetoableChangeListener;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Vector;
import java.util.logging.Level;

import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableModel;

import org.adempierelbr.model.MNotaFiscal;
import org.compiere.apps.ADialog;
import org.compiere.model.GridTab;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;

/**
 *  Add NF to LOT
 *
 *  @author Ricardo Santana
 *  @version  $Id: VCreateFromNFeLot,v 1.2 2009/08/27 00:51:28 ralexsander Exp $
 */
public class VCreateFromNFeLot extends VCreateFrom implements VetoableChangeListener
{
	/**
	 * 	Default Serial
	 */
	private static final long serialVersionUID = 1L;

	/**
	 *  Protected Constructor
	 *  @param mTab MTab
	 */
	public VCreateFromNFeLot(GridTab mTab)
	{
		super (mTab);
		log.info("");
	}   //  VCreateFromStatement

	/**
	 *  Dynamic Init
	 *  @throws Exception if Lookups cannot be initialized
	 *  @return true if initialized
	 */
	protected boolean dynInit() throws Exception
	{
		if (p_mTab.getValue("LBR_NFeLot_ID") == null)
		{
			ADialog.error(0, this, "SaveErrorRowNotFound");
			return false;
		}
        // Do not display RMA selection
        rmaLabel.setVisible(false);
        rmaField.setVisible(false);
        sameWarehouseCb.setVisible(false);
        bankAccountLabel.setVisible(false);
        authorizationLabel.setVisible(false);
        authorizationField.setVisible(false);
		setTitle(Msg.translate(Env.getCtx(), "LBR_NFeLot") + " .. " + Msg.translate(Env.getCtx(), "CreateFrom"));
		parameterStdPanel.setVisible(false);
		
		int LBR_NFeLot_ID = Env.getContextAsInt(Env.getCtx(), p_WindowNo, "LBR_NFeLot_ID");
		loadNFe(LBR_NFeLot_ID);

		return true;
	}   //  dynInit

	/**
	 *  Init Details (never called)
	 *  @param C_BPartner_ID BPartner
	 */
	protected void initBPDetails(int C_BPartner_ID)
	{
	}   //  initDetails

	/**
	 *  Change Listener
	 *  @param e event
	 */
	public void vetoableChange (PropertyChangeEvent e)
	{
		log.config(e.getPropertyName() + "=" + e.getNewValue());
		tableChanged(null);
	}   //  vetoableChange

	/**
	 *  Load Data - Bank Account
	 *  @param C_BankAccount_ID Bank Account
	 *  @param Autorization Code
	 */
	private void loadNFe (int LBR_NFeLot_ID)
	{
		log.config ("LBR_NFeLot_ID=" + LBR_NFeLot_ID);
		/**
		 *  Selected        - 0
		 *  Documentno      - 1
		 *  DateTrx    		- 2
		 *  BPName     		- 3
		 *  CNPJ            - 4
		 *  UF				- 5
		 */
		Vector<Vector<Object>> data = new Vector<Vector<Object>>();
		String sql = "SELECT Documentno, DateDoc, BPName, lbr_BPCNPJ, "
			+ "lbr_BPRegion, LBR_NotaFiscal_ID "
			+ "FROM LBR_NotaFiscal "
			+ "WHERE LBR_NFeID IS NOT NULL " 	//	Com ID da NF-e
			+ "AND LBR_NFeLot_ID IS NULL "		//	Sem Lote
			+ "AND Processed='Y' "				//	Processadas
			+ "AND IsCancelled='N' "			//	Não canceladas
			+ "AND IsActive='Y' ";				//	Ativas

		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql.toString(), null);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				Vector<Object> line = new Vector<Object>(6);
				line.add(new Boolean(false));       //  0-Selection
				//
				KeyNamePair kp = new KeyNamePair(rs.getInt(6), rs.getString(1));
				//
				line.add(kp);						//	1-DocumentNo
				line.add(rs.getTimestamp(2));       //  2-DateTrx
				line.add(rs.getString(3));			//	3-BPName
				line.add(rs.getString(4));			//	4-CNPJ
				line.add(rs.getString(5));			//	5-UF
				data.add(line);
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		//  Header Info
		Vector<String> columnNames = new Vector<String>(5);
		columnNames.add(Msg.getMsg(Env.getCtx(), "Select"));
		columnNames.add(Msg.getElement(Env.getCtx(), "DocumentNo"));
		columnNames.add(Msg.translate(Env.getCtx(), "Date"));
		columnNames.add(Msg.translate(Env.getCtx(), "BPName"));
		columnNames.add(Msg.translate(Env.getCtx(), "lbr_CNPJ"));
		columnNames.add(Msg.translate(Env.getCtx(), "lbr_BPRegion"));

		//  Remove previous listeners
		dataTable.getModel().removeTableModelListener(this);
		//  Set Model
		DefaultTableModel model = new DefaultTableModel(data, columnNames);
		model.addTableModelListener(this);
		dataTable.setModel(model);
		//
		dataTable.setColumnClass(0, Boolean.class, false);      //  0-Selection
		dataTable.setColumnClass(1, String.class, true);   		//  1-DocumentNo
		dataTable.setColumnClass(2, Timestamp.class, true);     //  2-TrxDate
		dataTable.setColumnClass(3, String.class, true);        //  3-BPName
		dataTable.setColumnClass(4, String.class, true);    	//  4-lbr_CNPJ
		dataTable.setColumnClass(5, String.class, true);    	//  5-lbr_BPRegion
		//  Table UI
		dataTable.autoSize();
	}   //  loadBankAccount

	/**
	 *  Save Statement - Insert Data
	 *  @return true if saved
	 */
	protected boolean save()
	{
		log.config("");
		TableModel model = dataTable.getModel();
		int rows = model.getRowCount();
		if (rows == 0)
			return false;

		//  fixed values
		int LBR_NFeLot_ID = ((Integer)p_mTab.getValue("LBR_NFeLot_ID")).intValue();

		//  Lines
		for (int i = 0; i < rows; i++)
		{
			if (((Boolean)model.getValueAt(i, 0)).booleanValue())
			{
				KeyNamePair pp = (KeyNamePair)model.getValueAt(i, 1);
				int LBR_NotaFiscal_ID = pp.getKey();
				//
				MNotaFiscal nf = new MNotaFiscal (Env.getCtx(), LBR_NotaFiscal_ID, null);
				nf.set_CustomColumn("LBR_NFeLot_ID", LBR_NFeLot_ID);
				log.fine("LBR_NotaFiscal_ID="+LBR_NotaFiscal_ID);
				//
				if (!nf.save())
					log.log(Level.SEVERE, "NF not added to LOT, #" + i);
			}   //   if selected
		}   //  for all rows
		return true;
	}   //  save
	
	/**
	 * 	Action Listener
	 */
	public void actionPerformed(ActionEvent e)
	{
		super.actionPerformed(e);
		log.config("Action=" + e.getActionCommand());
	}

	/**
	 * 	Info
	 */
	protected void info()
	{
	}	//	info
}   //  VCreateFromNFeLot
