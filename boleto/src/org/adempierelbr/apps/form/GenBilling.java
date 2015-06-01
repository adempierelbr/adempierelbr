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
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRBoleto;
import org.compiere.minigrid.ColumnInfo;
import org.compiere.minigrid.IDColumn;
import org.compiere.minigrid.IMiniTable;
import org.compiere.model.MRole;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.compiere.util.ValueNamePair;

/**
 * 		Classe comum para geração de boletos
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: GenBoleto.java, v1.0 2012/03/27 2:26:34 PM, ralexsander Exp $
 */
public class GenBilling
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
	public static CLogger log = CLogger.getCLogger(GenBilling.class);

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
	 * 	Get BPartners
	 * 	@return
	 */
	public ArrayList<KeyNamePair> getBPartnerData()
	{
		ArrayList<KeyNamePair> data = new ArrayList<KeyNamePair>();
		
		//  Optional BusinessPartner with unpaid AP Invoices
		KeyNamePair pp = new KeyNamePair(0, "");
		data.add(pp);
		
		String sql = MRole.getDefault().addAccessSQL(
			"SELECT bp.C_BPartner_ID, bp.Name FROM C_BPartner bp", "bp",
			MRole.SQL_FULLYQUALIFIED, MRole.SQL_RO)
			+ " AND EXISTS (SELECT * FROM C_Invoice i WHERE bp.C_BPartner_ID=i.C_BPartner_ID"
			//	X_C_Order.PAYMENTRULE_DirectDebit
			  + " AND i.IsSOTrx='Y'"
			  + " AND (i.lbr_PaymentRule IS NULL OR i.lbr_PaymentRule='B')"
			  + " AND i.DocStatus IN ('CO','CL')"
			  + " AND i.IsPaid<>'Y') "
			+ "ORDER BY 2";

		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql, null);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				pp = new KeyNamePair(rs.getInt(1), rs.getString(2));
				data.add(pp);
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		
		return data;
	}	//	getBPartnerData
	
	/**
	 * 	Get Document Types
	 * 	@return
	 */
	public ArrayList<KeyNamePair> getDocTypeData()
	{
		ArrayList<KeyNamePair> data = new ArrayList<KeyNamePair>();
		String sql = null;
		/**Document type**/
		try
		{
			sql = "SELECT dt.C_DocType_ID, dt.Name " +
				"FROM C_DocType dt " +
				"WHERE dt.AD_Client_ID=? AND dt.IsActive='Y' AND dt.DocBaseType IN ('ARI') ORDER BY 2";
			//
			sql = MRole.getDefault().addAccessSQL(sql, "dt", MRole.SQL_FULLYQUALIFIED, MRole.SQL_RO);

			KeyNamePair dt = new KeyNamePair(0, "");
			data.add(dt);
			PreparedStatement pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, m_AD_Client_ID);		//	Client
			ResultSet rs = pstmt.executeQuery();

			while (rs.next())
			{
				dt = new KeyNamePair(rs.getInt(1), rs.getString(2));
				data.add(dt);
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		
		return data;
	}	//	getDocTypeData
	
	/**
	 * 	Get printer list (Only for SWING client)
	 * 	@return
	 */
	public ArrayList<ValueNamePair> getPrinterData()
	{
		return new ArrayList<ValueNamePair>();
	}	//	getPrinterData
	
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
			new ColumnInfo(" ", "i.C_Invoice_ID", IDColumn.class, false, false, null),
			new ColumnInfo(Msg.translate(ctx, "AD_Org_ID"), "o.Name", KeyNamePair.class, true, true, "o.AD_Org_ID"),
			new ColumnInfo(Msg.translate(ctx, "C_BPartner_ID"), "bp.Name", KeyNamePair.class, true, false, "i.C_BPartner_ID"),
			new ColumnInfo(Msg.translate(ctx, "DocumentNo"), "i.DocumentNo", String.class),
			new ColumnInfo(Msg.translate(ctx, "LBR_NotaFiscal_ID"), "nf.DocumentNo", KeyNamePair.class, true, false, "nf.LBR_NotaFiscal_ID"),
			//	6..9
			new ColumnInfo(Msg.translate(ctx, "DateInvoiced"), "i.DateInvoiced", Timestamp.class, true, true, null),
			new ColumnInfo(Msg.translate(ctx, "C_PaymentTerm_ID"), "pt.Name", KeyNamePair.class, true, false, "i.C_PaymentTerm_ID"),
			new ColumnInfo(Msg.translate(ctx, "TotalLines"), "i.TotalLines", BigDecimal.class),
			new ColumnInfo(Msg.translate(ctx, "GrandTotal"), "i.GrandTotal", BigDecimal.class),
			},
			//	FROM
			"C_Invoice i"
			+ " INNER JOIN AD_Org o ON (i.AD_Org_ID=o.AD_Org_ID)"
			+ " INNER JOIN C_BPartner bp ON (i.C_BPartner_ID=bp.C_BPartner_ID)"
			+ " INNER JOIN C_PaymentTerm pt ON (i.C_PaymentTerm_ID=pt.C_PaymentTerm_ID)"
			+ "  LEFT JOIN LBR_NotaFiscal nf ON (nf.LBR_NotaFiscal_ID=i.LBR_NotaFiscal_ID)",
			//	WHERE
			"i.IsSOTrx=? AND i.IsPaid='N'"
			+ " AND (i.lbr_PaymentRule IS NULL OR i.lbr_PaymentRule='B')"
			+ " AND i.DocStatus IN ('CO','CL')"
			+ " AND i.AD_Client_ID=?",	//	additional where & order in loadTableInfo()
			true, "i");
	}   //  dynInit

	/**
	 *  Query and create TableInfo
	 */
	public void loadTableInfo(int org, KeyNamePair bi, KeyNamePair bPartner, KeyNamePair docType, 
			Timestamp dateFrom, Timestamp dateTo, boolean isPrinted, IMiniTable miniTable)
	{
		log.config("");
		//  not yet initialized
		if (m_sql == null)
			return;

		String sql = m_sql;
		//  Parameters
		String isSOTrx = "Y";
		//
		KeyNamePair pp = bPartner;
		int C_BPartner_ID = pp.getKey();
		if (C_BPartner_ID != 0)
			sql += " AND i.C_BPartner_ID=?";
		
		//	Document Type
		KeyNamePair dt = docType;
		int C_DocType_ID  = dt.getKey();
		if (C_DocType_ID   != 0)
			sql += " AND i.C_DocType_ID =?";
		
		//	AD_Org_ID
			int AD_Org_ID = org;
			if (AD_Org_ID != 0)
				sql += " AND i.AD_org_ID=?";
		
		//	Is Printed
		sql += " AND i.lbr_IsBillPrinted=" + (isPrinted ? "'Y'" : "'N'");
			
		//	Date interval
		if (dateFrom != null)
		{
			sql += " AND i.DateInvoiced BETWEEN " + DB.TO_DATE(dateFrom) + " AND ";
			//
			if (dateTo != null && dateTo.after (dateFrom))
				sql += DB.TO_DATE(dateTo);
			else
				sql += DB.TO_DATE(dateFrom);
		}
		
		sql += " ORDER BY 2, 3";

		log.finest(sql + " - C_BPartner_ID=" + C_BPartner_ID + ", C_DocType_ID=" + C_DocType_ID + ", AD_Org_ID=" + AD_Org_ID);
		//  Get Open Invoices
		try
		{
			int index = 1;
			PreparedStatement pstmt = DB.prepareStatement(sql, null);
			pstmt.setString(index++, isSOTrx);			//	IsSOTrx
			pstmt.setInt(index++, m_AD_Client_ID);		//	Client
			if (C_BPartner_ID != 0)
				pstmt.setInt(index++, C_BPartner_ID);
			if (C_DocType_ID  != 0)                    //	Document type
				pstmt.setInt(index++, C_DocType_ID);
			if (AD_Org_ID  != 0)                    //	Organization
				pstmt.setInt(index++, AD_Org_ID);
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
				BigDecimal amt = (BigDecimal)miniTable.getValueAt(i, 8);
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
	 *  Generate PaySelection
	 */
	public String printBilling (IMiniTable miniTable, String printerName, KeyNamePair bi)
	{
		log.info("");

		//  Create Lines
		int rows = miniTable.getRowCount();
		for (int i = 0; i < rows; i++)
		{
			IDColumn id = (IDColumn)miniTable.getValueAt(i, 0);
			if (id.isSelected())
			{
				int C_Invoice_ID = id.getRecord_ID().intValue();
				String trxName = Trx.createTrxName ("GenBilling");
				//
				try
				{
					MLBRBoleto.generateBoleto (Env.getCtx(), C_Invoice_ID, bi.getKey(), null, printerName, trxName);
					Trx.get (trxName, false).commit ();
				}
				catch (Exception e)
				{
					Trx.get (trxName, false).rollback ();
					e.printStackTrace();
				}
				finally
				{
					Trx.get (trxName, false).close ();
				}
				//
				log.fine("C_Invoice_ID=" + C_Invoice_ID);
			}
		}   //  for all rows in table
		
		return null;
	}   //  generatePaySelect

	/**
	 *  Generate PaySelection
	 */
	public List<File> exportBilling (IMiniTable miniTable, String filePath, KeyNamePair bi)
	{
		log.info("");		
		List<File> files = new ArrayList<File>();
		
		//  Create Lines
		int rows = miniTable.getRowCount();
		for (int i = 0; i < rows; i++)
		{
			IDColumn id = (IDColumn)miniTable.getValueAt(i, 0);
			if (id.isSelected())
			{
				int C_Invoice_ID = id.getRecord_ID().intValue();
				String trxName = Trx.createTrxName ("GenBilling");

				try
				{
					files.addAll (MLBRBoleto.generateBoleto (Env.getCtx(), C_Invoice_ID, bi.getKey(), filePath, null, trxName));
				}
				catch (Exception e)
				{
					Trx.get (trxName, false).rollback ();
					e.printStackTrace();
				}
				finally
				{
					Trx.get (trxName, false).close ();
				}
				//
				log.fine("C_Invoice_ID=" + C_Invoice_ID);
			}
		}   //  for all rows in table		
		//
		return files;
	}   //  generatePaySelect
	
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
