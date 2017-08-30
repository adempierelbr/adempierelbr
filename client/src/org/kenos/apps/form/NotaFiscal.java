/******************************************************************************
 * Copyright (C) 2016 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2016 Ricardo Santana                                         *
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
package org.kenos.apps.form;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;

import org.compiere.apps.form.GenForm;
import org.compiere.minigrid.IDColumn;
import org.compiere.minigrid.IMiniTable;
import org.compiere.model.MOrder;
import org.compiere.model.MPrivateAccess;
import org.compiere.print.ReportEngine;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.TimeUtil;

/**
 * 		Generate Invoice (manual) controller class
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 * 	@version $Id: NotaFiscal.java, v1.0 2016/03/31 13:56:17 PM, ralexsander Exp $
 */
public class NotaFiscal extends GenForm
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(NotaFiscal.class);
	//
	public Object 			m_AD_Org_ID 	= null;
	public Object 			m_C_BPartner_ID = null;
	public Object 			m_LBR_EventType = null;
	
	public void dynInit() throws Exception
	{
		setTitle("InvGenerateInfo");
		setReportEngineType(ReportEngine.INVOICE);
		setAskPrintMsg("PrintInvoices");
	}
	
	public void configureMiniTable(IMiniTable miniTable)
	{
		//  create Columns
		miniTable.addColumn("LBR_NotaFiscal_ID");
		miniTable.addColumn("C_DocType_ID");
		miniTable.addColumn("LBR_NFeStatus");
		miniTable.addColumn("IsSOTrx");
		miniTable.addColumn("DocumentNo");
		miniTable.addColumn("LBR_NFSerie");
		miniTable.addColumn("C_BPartner_ID");
		miniTable.addColumn("DateDoc");
		miniTable.addColumn("TotalLines");
		miniTable.addColumn("GrandTotal");
		//
		miniTable.setMultiSelection(true);
		//  set details
		miniTable.setColumnClass(0, IDColumn.class, false, " ");
		miniTable.setColumnClass(1, String.class, true, Msg.translate(Env.getCtx(), "C_DocType_ID"));
		miniTable.setColumnClass(2, String.class, true, Msg.translate(Env.getCtx(), "LBR_NFeStatus"));
		miniTable.setColumnClass(3, Boolean.class, true, "S");
		miniTable.setColumnClass(4, String.class, true, Msg.translate(Env.getCtx(), "DocumentNo"));
		miniTable.setColumnClass(5, String.class, true, Msg.translate(Env.getCtx(), "LBR_NFSerie"));
		miniTable.setColumnClass(6, String.class, true, Msg.translate(Env.getCtx(), "C_BPartner_ID"));
		miniTable.setColumnClass(7, Timestamp.class, true, Msg.translate(Env.getCtx(), "DateDoc"));
		miniTable.setColumnClass(8, BigDecimal.class, true, Msg.translate(Env.getCtx(), "TotalLines"));
		miniTable.setColumnClass(9, BigDecimal.class, true, Msg.translate(Env.getCtx(), "GrandTotal"));
		//
		miniTable.autoSize();
	}
	
	public void configureMiniTableRec(IMiniTable miniTable)
	{
		//  create Columns
		miniTable.addColumn("LBR_PartnerDFe_ID");
		miniTable.addColumn("IsSOTrx");
		miniTable.addColumn("LBR_IsXMLValid");
		miniTable.addColumn("DocumentNo");
		miniTable.addColumn("LBR_NFSerie");
		miniTable.addColumn("LBR_EventType");
		miniTable.addColumn("LBR_NFeID");
		miniTable.addColumn("LBR_CNPJ");
		miniTable.addColumn("BPName");
		miniTable.addColumn("DateDoc");
		miniTable.addColumn("GrandTotal");
		//
		miniTable.setMultiSelection(true);
		//  set details
		miniTable.setColumnClass(0, IDColumn.class, false, " ");
		miniTable.setColumnClass(1, Boolean.class, true, "S");
		miniTable.setColumnClass(2, Boolean.class, true, "XML");
		miniTable.setColumnClass(3, String.class, true, Msg.translate(Env.getCtx(), "DocumentNo"));
		miniTable.setColumnClass(4, String.class, true, Msg.translate(Env.getCtx(), "LBR_NFSerie"));
		miniTable.setColumnClass(5, String.class, true, "Último Evento");
		miniTable.setColumnClass(6, String.class, true, Msg.translate(Env.getCtx(), "LBR_NFeID"));
		miniTable.setColumnClass(7, String.class, true, Msg.translate(Env.getCtx(), "LBR_CNPJ"));
		miniTable.setColumnClass(8, String.class, true, Msg.translate(Env.getCtx(), "C_BPartner_ID"));
		miniTable.setColumnClass(9, Timestamp.class, true, Msg.translate(Env.getCtx(), "DateDoc"));
		miniTable.setColumnClass(10, BigDecimal.class, true, Msg.translate(Env.getCtx(), "GrandTotal"));
		//
		miniTable.autoSize();
	}
	
	public void configureMiniTableInut(IMiniTable miniTable)
	{
		//  create Columns
		miniTable.addColumn("LBR_NFSkipped_ID");
		miniTable.addColumn("LBR_NFModel");
		miniTable.addColumn("LBR_NFeSkippedNFIni");
		miniTable.addColumn("LBR_NFeSkippedNFFin");
		miniTable.addColumn("LBR_NFSerie");
		miniTable.addColumn("DateTrx");
		//
		miniTable.setMultiSelection(true);
		//  set details
		miniTable.setColumnClass(0, IDColumn.class, false, " ");
		miniTable.setColumnClass(1, String.class, true, Msg.translate(Env.getCtx(), "LBR_NFModel"));
		miniTable.setColumnClass(2, String.class, true, Msg.translate(Env.getCtx(), "From"));
		miniTable.setColumnClass(3, String.class, true, Msg.translate(Env.getCtx(), "To"));
		miniTable.setColumnClass(4, String.class, true, Msg.translate(Env.getCtx(), "LBR_NFSerie"));
		miniTable.setColumnClass(5, Timestamp.class, true, Msg.translate(Env.getCtx(), "DateTrx"));
		//
		miniTable.autoSize();
	}
	
	/**
	 * Get SQL for Orders that needs to be invoiced
	 * @return sql
	 */
	private String getNFeEmitSQL ()
	{
	    StringBuffer sql = new StringBuffer();
	    sql.append("SELECT nf.LBR_NotaFiscal_ID, dt.Name, COALESCE (rl.Name, nf.LBR_NFeStatus, '000-Sem Status') AS Status, nf.IsSOTrx, ");
		sql.append("LPAD (nf.DocumentNo, 12, '0') AS DocumentNo, LPAD (COALESCE (nf.LBR_NFSerie, '0'), 3, '0') AS LBR_NFSerie, ");
		sql.append("bp.Name, nf.DateDoc, nf.TotalLines, nf.GrandTotal ");
		sql.append(" FROM LBR_NotaFiscal nf ");
		sql.append(" INNER JOIN AD_Org o ON (nf.AD_Org_ID=o.AD_Org_ID) ");
		sql.append(" INNER JOIN C_BPartner bp ON (nf.C_BPartner_ID=bp.C_BPartner_ID) ");
		sql.append(" INNER JOIN C_DocType dt ON (nf.C_DocType_ID=dt.C_DocType_ID) ");
		sql.append(" LEFT JOIN AD_Ref_List rl ON (nf.LBR_NFeStatus=rl.Value AND rl.AD_Reference_ID=1100004) ");
		sql.append(" WHERE nf.LBR_IsOwnDocument='Y' AND (nf.LBR_NFModel IN ('55', '56'))");
		sql.append(" AND nf.IsCancelled='N' AND nf.AD_Client_ID=?");
		sql.append(" AND (nf.Updated>=").append(DB.TO_DATE(TimeUtil.addDays (new Timestamp (System.currentTimeMillis()), -2)));
		sql.append(" OR nf.LBR_NFeStatus IS NULL ");
		sql.append(" OR nf.LBR_NFeStatus NOT IN ('100', '101', '102', '135', '150', '151', '155'))");

		if (m_AD_Org_ID != null)
            sql.append(" AND nf.AD_Org_ID=").append(m_AD_Org_ID);
        if (m_C_BPartner_ID != null)
            sql.append(" AND nf.C_BPartner_ID=").append(m_C_BPartner_ID);
        
        int AD_User_ID = Env.getContextAsInt(Env.getCtx(), "#AD_User_ID");
        String lockedIDs = MPrivateAccess.getLockedRecordWhere(MOrder.Table_ID, AD_User_ID);
        if (lockedIDs != null)
        {
            if (sql.length() > 0)
                sql.append(" AND ");
            sql.append("C_Order_ID").append(lockedIDs);
        }
        
        return sql.append(" ORDER BY dt.Name, nf.DocumentNo DESC").toString();
	}	//	getNFeEmitSQL
	
	/**
	 * Get SQL for Customer RMA that need to be invoiced
	 * @return sql
	 */
	private String getNFeRecSql()
	{
		StringBuffer sql = new StringBuffer("SELECT dfe.LBR_PartnerDFe_ID, dfe.IsSOTrx, ");
		sql.append("SUBSTRING (dfe.LBR_NFeID, 26, 9) AS DocumentNo, ");
		sql.append("SUBSTRING (dfe.LBR_NFeID, 23, 3) AS LBR_NFSerie, ");
		sql.append("dfe.LBR_NFeID, dfe.LBR_CNPJ, dfe.BPName, dfe.DateDoc, dfe.GrandTotal, ");
		sql.append("(SELECT MAX (r.Name) FROM (SELECT ROW_NUMBER () OVER (ORDER BY e.DateTrx DESC) AS Row_Number, ");
		sql.append("e.LBR_EventType FROM LBR_NFeEvent e WHERE e.AD_Org_ID=dfe.AD_Org_ID "); 
        sql.append("AND e.LBR_NFeID=dfe.LBR_NFeID ORDER BY DateTrx DESC) a, AD_Ref_List r ");
        sql.append("WHERE r.Value=LBR_EventType AND r.AD_Reference_ID=1120226 AND a.Row_Number=1) AS LBR_EventType, dfe.LBR_IsXMLValid ");
		sql.append("FROM LBR_PartnerDFe dfe ");
		sql.append("INNER JOIN AD_Org o ON (dfe.AD_Org_ID=o.AD_Org_ID) ");
		sql.append("WHERE dfe.DocumentType='0' AND (dfe.LBR_IsManifested='N' OR dfe.Updated>=").append(DB.TO_DATE(TimeUtil.addDays (new Timestamp (System.currentTimeMillis()), -2)));
		sql.append(") AND dfe.AD_Client_ID=?");
        
        if (m_AD_Org_ID != null)
            sql.append(" AND dfe.AD_Org_ID=").append(m_AD_Org_ID);
        
        return sql.append(" ORDER BY dfe.DateDoc DESC, dfe.BPName ").toString();
	}	//	getNFeRecSql
	
	/**
	 * Get SQL for Customer RMA that need to be invoiced
	 * @return sql
	 */
	private String getNFeInutSql()
	{
		StringBuffer sql = new StringBuffer("SELECT sk.LBR_NFSkipped_ID, sk.LBR_NFModel, ");
		sql.append("LPAD (sk.LBR_NFeSkippedNFIni, 9, '0') AS DocumentNo, ");
		sql.append("LPAD (sk.LBR_NFeSkippedNFFin, 9, '0') AS DocumentNo_To, ");
		sql.append("LPAD (sk.LBR_NFSerie, 3, '0') AS LBR_NFSerie, sk.DateTrx ");
		sql.append("FROM LBR_NFSkipped sk ");
		sql.append("INNER JOIN AD_Org o ON (sk.AD_Org_ID=o.AD_Org_ID) ");
		sql.append("WHERE sk.AD_Client_ID=?");
        
        if (m_AD_Org_ID != null)
            sql.append(" AND sk.AD_Org_ID=").append(m_AD_Org_ID);
        
        return sql.append(" ORDER BY sk.DateTrx DESC ").toString();
	}	//	getNFeInutSql
	
	/**
	 *  Query Info
	 */
	public void executeQueryEmit(IMiniTable miniTableEmit)
	{
		log.info("");
		int AD_Client_ID = Env.getAD_Client_ID(Env.getCtx());
		//  Create SQL
		
		String sql = getNFeEmitSQL();

		//  reset table
		int row = 0;
		miniTableEmit.setRowCount(row);
		//  Execute
		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql.toString(), null);
			pstmt.setInt(1, AD_Client_ID);
			ResultSet rs = pstmt.executeQuery();
			//
			while (rs.next())
			{
				//  extend table
				miniTableEmit.setRowCount(row+1);
				//  set values
				miniTableEmit.setValueAt(new IDColumn(rs.getInt(1)), row, 0);   //  C_Order_ID
				miniTableEmit.setValueAt(rs.getString(2), row, 1);              //  Org
				miniTableEmit.setValueAt(rs.getString(3), row, 2);              //  DocType
				miniTableEmit.setValueAt("Y".equals(rs.getString(4)), row, 3);  //  Doc No
				miniTableEmit.setValueAt(rs.getString(5), row, 4);              //  BPartner
				miniTableEmit.setValueAt(rs.getString(6), row, 5);              //  BPartner
				miniTableEmit.setValueAt(rs.getString(7), row, 6);              //  BPartner
				miniTableEmit.setValueAt(rs.getTimestamp(8), row, 7);           //  DateOrdered
				miniTableEmit.setValueAt(rs.getBigDecimal(9), row, 8);          //  TotalLines
				miniTableEmit.setValueAt(rs.getBigDecimal(10), row, 9);         //  GrandTotal
				//  prepare next
				row++;
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		//
		miniTableEmit.autoSize();
	}   //  executeQuery
	
	/**
	 *  Query Info
	 */
	public void executeQueryRec(IMiniTable miniTableRec)
	{
		log.info("");
		int AD_Client_ID = Env.getAD_Client_ID(Env.getCtx());
		//  Create SQL
		
		String sql = getNFeRecSql();

		//  reset table
		int row = 0;
		miniTableRec.setRowCount(row);
		//  Execute
		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql.toString(), null);
			pstmt.setInt(1, AD_Client_ID);
			ResultSet rs = pstmt.executeQuery();
			//
			while (rs.next())
			{
				//  extend table
				miniTableRec.setRowCount(row+1);
				//  set values
				miniTableRec.setValueAt(new IDColumn(rs.getInt(1)), row, 0);   //  LBR_PartnerDFe_ID
				miniTableRec.setValueAt("Y".equals(rs.getString(2)), row, 1);  //  IsSOTrx
				miniTableRec.setValueAt("Y".equals(rs.getString(11)), row, 2);  //  LBR_IsXMLValid
				miniTableRec.setValueAt(rs.getString(3), row, 3);              //  DocumentNo
				miniTableRec.setValueAt(rs.getString(4), row, 4);              //  LBR_NFSerie
				miniTableRec.setValueAt(rs.getString(10), row, 5);              //  LBR_NFSerie
				miniTableRec.setValueAt(rs.getString(5), row, 6);              //  LBR_CNPJ
				miniTableRec.setValueAt(rs.getString(6), row, 7);              //  LBR_NFeID
				miniTableRec.setValueAt(rs.getString(7), row, 8);              //  BPName
				miniTableRec.setValueAt(rs.getTimestamp(8), row, 9);           //  DateDoc
				miniTableRec.setValueAt(rs.getBigDecimal(9), row, 10);          //  GrandTotal
				//  prepare next
				row++;
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		//
		miniTableRec.autoSize();
	}   //  executeQuery
	
	/**
	 *  Query Info
	 */
	public void executeQueryInut(IMiniTable miniTableInut)
	{
		log.info("");
		int AD_Client_ID = Env.getAD_Client_ID(Env.getCtx());
		//  Create SQL
		
		String sql = getNFeInutSql();

		//  reset table
		int row = 0;
		miniTableInut.setRowCount(row);
		//  Execute
		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql.toString(), null);
			pstmt.setInt(1, AD_Client_ID);
			ResultSet rs = pstmt.executeQuery();
			//
			while (rs.next())
			{
				//  extend table
				miniTableInut.setRowCount(row+1);
				//  set values
				miniTableInut.setValueAt(new IDColumn(rs.getInt(1)), row, 0);   //  LBR_NFSkipped_ID
				miniTableInut.setValueAt(rs.getString(2), row, 1);              //  LBR_NFModel
				miniTableInut.setValueAt(rs.getString(3), row, 2);              //  LBR_NFeSkippedNFIni
				miniTableInut.setValueAt(rs.getString(4), row, 3);              //  LBR_NFeSkippedNFFin
				miniTableInut.setValueAt(rs.getString(5), row, 4);              //  LBR_NFSerie
				miniTableInut.setValueAt(rs.getTimestamp(6), row, 5);           //  DateTrx
				//  prepare next
				row++;
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		//
		miniTableInut.autoSize();
	}   //  executeQuery
	
	/**
	 *	Save Selection & return selecion Query or ""
	 *  @return where clause like C_Order_ID IN (...)
	 */
	public List<Integer> getSelectedKeys (IMiniTable miniTable)
	{
		log.info("");
		//  Array of Integers
		List<Integer> results = new ArrayList<Integer>();

		//	Get selected entries
		for (int row=0; row < miniTable.getColumnCount(); row++)
		{
			IDColumn id = (IDColumn)miniTable.getValueAt(row, 0);     //  ID in column 0
			if (id.isSelected())
				results.add(id.getRecord_ID());
		}

		log.config("Selected #" + results.size());
		return results;
	}	//	saveSelection
	
	/**
	 *	Save Selection & return selecion Query or ""
	 *  @return where clause like C_Order_ID IN (...)
	 */
	public void saveSelection(IMiniTable miniTable)
	{
		log.info("");
		//  Array of Integers
		ArrayList<Integer> results = new ArrayList<Integer>();
		setSelection(null);

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
			return;
		log.config("Selected #" + results.size());
		setSelection(results);
	}	//	saveSelection

	/**
	 *	Save Selection & return selecion Query or ""
	 *  @return where clause like C_Order_ID IN (...)
	 */
	public void selectAll (IMiniTable miniTable)
	{
		log.info("");
		//  Array of Integers
		ArrayList<Integer> results = new ArrayList<Integer>();
		setSelection(null);
		boolean selected = true;
		
		//	Get selected entries
		int rows = miniTable.getRowCount();
		for (int i = 0; i < rows; i++)
		{
			IDColumn id = (IDColumn)miniTable.getValueAt(i, 0);     //  ID in column 0
			
			if (i == 0)
				selected = !id.isSelected();
			
			id.setSelected(selected);
			//
			results.add(id.getRecord_ID());
		}

		if (results.size() == 0)
			return;
		log.config("Selected #" + results.size());
		setSelection(results);
		miniTable.repaint();
	}	//	saveSelection
}	//	NotaFiscal