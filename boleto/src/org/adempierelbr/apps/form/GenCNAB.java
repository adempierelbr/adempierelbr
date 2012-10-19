/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2011 Ricardo Santana                                         *
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
package org.adempierelbr.apps.form;

import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRCNAB;
import org.adempierelbr.model.X_LBR_Bank;
import org.compiere.minigrid.ColumnInfo;
import org.compiere.minigrid.IDColumn;
import org.compiere.minigrid.IMiniTable;
import org.compiere.model.MBank;
import org.compiere.model.MBankAccount;
import org.compiere.model.MRole;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;
import org.compiere.util.Trx;

/**
 * 		Classe comum para geração de boletos
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: GenBoleto.java, v1.0 2012/03/27 2:26:34 PM, ralexsander Exp $
 */
public class GenCNAB
{
	/**	Window No			*/
	public int m_WindowNo = 0;
	
	/** Format                  */
	public DecimalFormat m_format = DisplayType.getNumberFormat(DisplayType.Amount);
	
	/** SQL for Query           */
	private String m_sql;
	
	/** Number of selected rows */
	public int m_noSelected = 0;
	
	/** Client ID               */
	private int m_AD_Client_ID = 0;
	
	/**/
	public boolean m_isLocked = false;
	
	/**	Logger					*/
	public static CLogger log = CLogger.getCLogger(GenCNAB.class);
	
	/**	Trx						*/
	public Trx trx = null;

	/**
	 * 	Get Bank Accounts
	 * 	@return
	 */
	public ArrayList<KeyNamePair> getBankAccountData()
	{
		ArrayList<KeyNamePair> data = new ArrayList<KeyNamePair>();
		//
		m_AD_Client_ID = Env.getAD_Client_ID(Env.getCtx());
		//  Bank Account Info
		String sql = MRole.getDefault().addAccessSQL(
			"SELECT ba.C_BankAccount_ID,"                       //  1
			+ "b.Name || ' ' || ba.AccountNo AS Name "          //  2
			+ "FROM C_Bank b, C_BankAccount ba, C_Currency c "
			+ "WHERE b.C_Bank_ID=ba.C_Bank_ID"
			+ " AND ba.C_Currency_ID=c.C_Currency_ID AND ba.IsActive='Y' "
			+ " AND ba.lbr_IsBillPrinted='Y' "
			+ "ORDER BY 2",
			"b", MRole.SQL_FULLYQUALIFIED, MRole.SQL_RW);
		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql, null);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				KeyNamePair bi = new KeyNamePair (rs.getInt(1), rs.getString(2));
				data.add(bi);
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		
		return data;
	}	//	getBankAccountData
	
	/**
	 * 	Prepare Table
	 * 
	 * 	@param miniTable
	 */
	public void prepareTable(IMiniTable miniTable)
	{
		Properties ctx = Env.getCtx();
		
		m_sql = miniTable.prepareTable(new ColumnInfo[] {
			//  0..5
			new ColumnInfo(" ", "c.LBR_CNAB_ID", IDColumn.class, false, false, null),
			new ColumnInfo(Msg.translate(ctx, "AD_Org_ID"), "b.DocumentNo", KeyNamePair.class, true, true, "b.LBR_Boleto_ID"),
			new ColumnInfo(Msg.translate(ctx, "C_Order_ID"), "o.DocumentNo", KeyNamePair.class, true, false, "o.C_Order_ID"),
			new ColumnInfo(Msg.translate(ctx, "C_Invoice_ID"), "i.DocumentNo", KeyNamePair.class, true, false, "i.C_Invoice_ID"),
			new ColumnInfo(Msg.translate(ctx, "C_BPartner_ID"), "bp.Name", String.class),
			//	6..9
			new ColumnInfo(Msg.translate(ctx, "DateInvoiced"), "i.DateInvoiced", Timestamp.class, true, true, null),
			new ColumnInfo(Msg.translate(ctx, "GrandTotal"), "b.GrandTotal", BigDecimal.class),
			},
			//	FROM
			"LBR_CNAB c"
			+ " INNER JOIN LBR_Boleto b ON (b.LBR_Boleto_ID=c.LBR_Boleto_ID)"
			+ " INNER JOIN C_Invoice i ON (i.C_Invoice_ID=b.C_Invoice_ID)"
			+ " INNER JOIN C_BPartner bp ON (i.C_BPartner_ID=bp.C_BPartner_ID)"
			+ "  LEFT JOIN C_Order o ON (o.C_Order_ID=i.C_Order_ID)",
			//	WHERE
			"c.IsRegistered='N' AND c.lbr_IsCancelled='N'"
			+ " AND (i.lbr_PaymentRule IS NULL OR i.lbr_PaymentRule='B')"
			+ " AND c.C_BankAccount_ID=?"
			+ " AND i.AD_Client_ID=?",	//	additional where & order in loadTableInfo()
			true, "c");
	}   //  dynInit

	/**
	 *  Query and create TableInfo
	 */
	public void loadTableInfo(int org, KeyNamePair bi, IMiniTable miniTable)
	{
		log.config("");
		//  not yet initialized
		if (m_sql == null)
			return;

		String sql = m_sql;
		//	AD_Org_ID
		int AD_Org_ID = org;
		if (AD_Org_ID != 0)
			sql += " AND i.AD_org_ID=?";
				
		sql += " ORDER BY 2, 3";

		log.finest(sql + " - Bank=" + bi + "AD_Org_ID=" + AD_Org_ID);
		//  Get Open Invoices
		try
		{
			int index = 1;
			PreparedStatement pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(index++, bi.getKey());		//	Client
			pstmt.setInt(index++, m_AD_Client_ID);		//	Client
			pstmt.setInt(index++, AD_Org_ID);		//	Organization
			//
			ResultSet rs = pstmt.executeQuery();
			miniTable.loadTable(rs);
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
	}   //  loadTableInfo

	/**
	 *  Calculate selected rows.
	 *  - add up selected rows
	 */
	public String calculateSelection(IMiniTable miniTable)
	{
		m_noSelected = 0;
		BigDecimal invoiceAmt = new BigDecimal(0.0);

		int rows = miniTable.getRowCount();
		for (int i = 0; i < rows; i++)
		{
			IDColumn id = (IDColumn)miniTable.getValueAt(i, 0);
			if (id.isSelected())
			{
				BigDecimal amt = (BigDecimal)miniTable.getValueAt(i, 6);
				if (amt != null)
					invoiceAmt = invoiceAmt.add(amt);
				m_noSelected++;
			}
		}

		//  Information
		StringBuffer info = new StringBuffer();
		info.append(m_noSelected).append(" ").append(Msg.getMsg(Env.getCtx(), "Selected")).append(" - ");
		info.append(m_format.format(invoiceAmt));
		return info.toString();
	}   //  calculateSelection
	
	/**
	 *	Save Selection & return selecion Query or ""
	 *  @return where clause like LBR_CNAB_ID IN (...)
	 */
	private String saveSelection (IMiniTable miniTable)
	{
		log.info("");
		//  Array of Integers
		ArrayList<Integer> results = new ArrayList<Integer>();

		//	Get selected entries
		int rows = miniTable.getRowCount();
		for (int i = 0; i < rows; i++)
		{
			IDColumn id = (IDColumn)miniTable.getValueAt(i, 0);     //  ID in column 0
		//	log.fine( "Row=" + i + " - " + id);
			if (id != null && id.isSelected())
				results.add(id.getRecord_ID());
		}

		if (results.size() == 0)
			return "";

		//	Query String
		String keyColumn = "LBR_CNAB_ID";
		StringBuffer sb = new StringBuffer(keyColumn);
		if (results.size() > 1)
			sb.append(" IN (");
		else
			sb.append("=");
		//	Add elements
		for (int i = 0; i < results.size(); i++)
		{
			if (i > 0)
				sb.append(",");
			if (keyColumn.endsWith("_ID"))
				sb.append(results.get(i).toString());
			else
				sb.append("'").append(results.get(i).toString());
		}

		if (results.size() > 1)
			sb.append(")");
		//
		log.config(sb.toString());
		return sb.toString();
	}	//	saveSelection
	
	/**
	 *  Generate CNAB
	 */
	public File genCNAB (IMiniTable miniTable, String filePath, KeyNamePair bi)
	{
		log.info("");
		File file = null;
		Trx trx = Trx.get(Trx.createTrxName("CNAB"), true);
		String trxName = trx.getTrxName();
		
		//  Create Lines
		try 
		{
			MBankAccount bankAcc = new MBankAccount (Env.getCtx(), bi.getKey(), null);
			MBank bank = bankAcc.getBank();
			//
			X_LBR_Bank bankBR = new X_LBR_Bank (Env.getCtx(), (Integer) bank.get_Value("LBR_Bank_ID"), null);
			int jboletoID = Integer.parseInt (bankBR.getlbr_jBoletoNo());
			//
			file = new File(filePath + File.separator + MLBRCNAB.prefix + MLBRCNAB.getSystemDate(Env.getCtx()) + MLBRCNAB.ext);
			//
			DB.executeUpdate ("UPDATE LBR_CNAB SET IsSelected='Y' WHERE " + saveSelection(miniTable), trxName);
    		MLBRCNAB.generateFile (jboletoID, file.getAbsolutePath(), null, null, bankAcc, trxName);
			DB.executeUpdate ("UPDATE LBR_CNAB SET IsSelected='N'", trxName);
    		trx.commit();
    		trx.close();
    	} 
		catch (IOException e) 
		{
			trx.rollback();
			trx.close();
    		log.log(Level.SEVERE,"Erro ao gerar arquivo CNAB", e);
    	}
		return file;
	}   //  genCNAB
	
	/**
	 * 	Delete folder
	 * 	@param dir
	 * 	@return
	 */
	public static boolean deleteDir (File dir) 
	{
        if (dir.isDirectory()) 
        {
            String[] children = dir.list();
            for (int i=0; i<children.length; i++) 
            {
                boolean success = deleteDir (new File (dir, children[i]));
                if (!success) 
                {
                    return false;
                }
            }
        }
        else
        	return dir.delete();
        return true;
	}	//	deleteDir
}   //  GenBilling
