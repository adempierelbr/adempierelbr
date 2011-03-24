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
package org.compiere.apps.search;

import java.awt.Frame;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;

import org.adempiere.plaf.AdempierePLAF;
import org.compiere.apps.ALayout;
import org.compiere.apps.ALayoutConstraint;
import org.compiere.grid.ed.VCheckBox;
import org.compiere.grid.ed.VDate;
import org.compiere.grid.ed.VLookup;
import org.compiere.minigrid.IDColumn;
import org.compiere.model.MLookupFactory;
import org.compiere.model.MQuery;
import org.compiere.swing.CLabel;
import org.compiere.swing.CTextField;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 *  Info Nota Fiscal
 *
 *  @author Mario Grigioni
 *  @version  $Id: InfoNotaFiscal.java, 2009/12/10 11:41:00 mgrigioni Exp $
 */
public class InfoNotaFiscal extends Info
{
	/**
	 * 
	 */
	private static final long serialVersionUID = -6603149055203650244L;

	/**
	 *  Detail Protected Contructor
	 *  @param frame parent frame
	 *  @param modal modal
	 *  @param WindowNo window no
	 *  @param value query value
	 *  @param multiSelection multiple selections
	 *  @param whereClause where clause
	 */
	protected InfoNotaFiscal(Frame frame, boolean modal, int WindowNo, String value,
		boolean multiSelection, String whereClause)
	{
		super (frame, modal, WindowNo, "nf", "LBR_NotaFiscal_ID", multiSelection, whereClause);
		log.info( "InfoNotaFiscal");
		setTitle("Info NotaFiscal");
		//
		try
		{
			statInit();
			p_loadedOK = initInfo ();
		}
		catch (Exception e)
		{
			return;
		}
		//
		int no = p_table.getRowCount();
		setStatusLine(Integer.toString(no) + " " + Msg.getMsg(Env.getCtx(), "SearchRows_EnterQuery"), false);
		setStatusDB(Integer.toString(no));
		if (value != null && value.length() > 0)
		{
			fDocumentNo.setValue(value);
			executeQuery();
		}
		//
		pack();
		//	Focus
		fDocumentNo.requestFocus();
	}   //  InfoOrder

	/**  String Array of Column Info    */
	//private Info_Column[] m_generalLayout;
	/** list of query columns           */
	//private ArrayList 	m_queryColumns = new ArrayList();
	/** Table Name              */
	//private String      m_tableName;
	/** Key Column Name         */
	//private String      m_keyColumn;

	//  Static Info
	private CLabel lDocumentNo = new CLabel(Msg.translate(Env.getCtx(), "DocumentNo"));
	private CTextField fDocumentNo = new CTextField(10);
	//
	private CLabel lBPartner_ID = new CLabel(Msg.translate(Env.getCtx(), "BPartner"));
	private VLookup fBPartner_ID;
	//
	private CLabel lDateFrom = new CLabel(Msg.translate(Env.getCtx(), "DateDoc"));
	private VDate fDateFrom = new VDate("DateFrom", false, false, true, DisplayType.Date, Msg.translate(Env.getCtx(), "DateFrom"));
	private CLabel lDateTo = new CLabel("-");
	private VDate fDateTo = new VDate("DateTo", false, false, true, DisplayType.Date, Msg.translate(Env.getCtx(), "DateTo"));
	private VCheckBox fIsSOTrx = new VCheckBox ("IsSOTrx", false, false, true, Msg.translate(Env.getCtx(), "IsSOTrx"), "", false);

	/**  Array of Column Info    */
	private static final Info_Column[] s_nfLayout = {
		new Info_Column(" ", "nf.LBR_NotaFiscal_ID", IDColumn.class),
		new Info_Column(Msg.translate(Env.getCtx(), "C_BPartner_ID"), "COALESCE((SELECT Name FROM C_BPartner bp WHERE bp.C_BPartner_ID=nf.C_BPartner_ID),nf.BPName)", String.class),
		new Info_Column(Msg.translate(Env.getCtx(), "DateDoc"), "nf.DateDoc", Timestamp.class),
		new Info_Column(Msg.translate(Env.getCtx(), "DocumentNo"), "nf.DocumentNo", String.class),
		new Info_Column(Msg.translate(Env.getCtx(), "lbr_NFeID"), "nf.lbr_NFeID", String.class),
		new Info_Column(Msg.translate(Env.getCtx(), "GrandTotal"), "nf.GrandTotal",  BigDecimal.class),
		new Info_Column(Msg.translate(Env.getCtx(), "IsSOTrx"), "nf.IsSOTrx", Boolean.class)
	};

	/**
	 *	Static Setup - add fields to parameterPanel
	 *  @throws Exception if Lookups cannot be initialized
	 */
	private void statInit() throws Exception
	{
		lDocumentNo.setLabelFor(fDocumentNo);
		fDocumentNo.setBackground(AdempierePLAF.getInfoBackground());
		fDocumentNo.addActionListener(this);

		fIsSOTrx.setSelected(!"N".equals(Env.getContext(Env.getCtx(), p_WindowNo, "IsSOTrx")));
		//fIsSOTrx.addActionListener(this);

		fBPartner_ID = new VLookup("C_BPartner_ID", false, false, true,
			MLookupFactory.get (Env.getCtx(), p_WindowNo, 0, 3499, DisplayType.Search));
		lBPartner_ID.setLabelFor(fBPartner_ID);
		fBPartner_ID.setBackground(AdempierePLAF.getInfoBackground());
		//
		lDateFrom.setLabelFor(fDateFrom);
		fDateFrom.setBackground(AdempierePLAF.getInfoBackground());
		fDateFrom.setToolTipText(Msg.translate(Env.getCtx(), "DateFrom"));
		lDateTo.setLabelFor(fDateTo);
		fDateTo.setBackground(AdempierePLAF.getInfoBackground());
		fDateTo.setToolTipText(Msg.translate(Env.getCtx(), "DateTo"));

		//
		parameterPanel.setLayout(new ALayout());
		//  First Row
		parameterPanel.add(lDocumentNo, new ALayoutConstraint(0,0));
		parameterPanel.add(fDocumentNo, null);
		parameterPanel.add(lBPartner_ID, null);
		parameterPanel.add(fBPartner_ID, null);
		parameterPanel.add(fIsSOTrx, new ALayoutConstraint(0,5));
		//  2nd Row
		parameterPanel.add(lDateFrom, new ALayoutConstraint(1,0));
		parameterPanel.add(fDateFrom, null);
		parameterPanel.add(lDateTo, null);
		parameterPanel.add(fDateTo, null);
	}	//	statInit

	/**
	 *	General Init
	 *	@return true, if success
	 */
	private boolean initInfo ()
	{
		//  Set Defaults
		String bp = Env.getContext(Env.getCtx(), p_WindowNo, "C_BPartner_ID");
		if (bp != null && bp.length() != 0)
			fBPartner_ID.setValue(new Integer(bp));

		//  prepare table
		StringBuffer where = new StringBuffer("nf.IsActive='Y'");
		prepareTable(s_nfLayout,
			" LBR_NotaFiscal nf",
			where.toString(),
			"2,3,4");

		return true;
	}	//	initInfo

	
	/**************************************************************************
	 *	Construct SQL Where Clause and define parameters.
	 *  (setParameters needs to set parameters)
	 *  Includes first AND
	 *  @return sql
	 */
	protected String getSQLWhere()
	{
		StringBuffer sql = new StringBuffer();
		if (fDocumentNo.getText().length() > 0)
			sql.append(" AND UPPER(nf.DocumentNo) LIKE ?");
		//
		if (fBPartner_ID.getValue() != null)
			sql.append(" AND nf.C_BPartner_ID=?");
		//
		if (fDateFrom.getValue() != null || fDateTo.getValue() != null)
		{
			Timestamp from = (Timestamp)fDateFrom.getValue();
			Timestamp to = (Timestamp)fDateTo.getValue();
			if (from == null && to != null)
				sql.append(" AND TRUNC(nf.DateDoc) <= ?");
			else if (from != null && to == null)
				sql.append(" AND TRUNC(nf.DateDoc) >= ?");
			else if (from != null && to != null)
				sql.append(" AND TRUNC(nf.DateDoc) BETWEEN ? AND ?");
		}
		//
		
		sql.append(" AND nf.IsSOTrx=?");

		log.finer(sql.toString());
		return sql.toString();
	}	//	getSQLWhere

	/**
	 *  Set Parameters for Query.
	 *  (as defined in getSQLWhere)
	 *  @param pstmt statement
	 *  @param forCount for counting records
	 *  @throws SQLException
	 */
	protected void setParameters(PreparedStatement pstmt, boolean forCount) throws SQLException
	{
		int index = 1;
		if (fDocumentNo.getText().length() > 0)
			pstmt.setString(index++, getSQLText(fDocumentNo));
		//
		if (fBPartner_ID.getValue() != null)
		{
			Integer bp = (Integer)fBPartner_ID.getValue();
			pstmt.setInt(index++, bp.intValue());
			log.fine("BPartner=" + bp);
		}
		//
		if (fDateFrom.getValue() != null || fDateTo.getValue() != null)
		{
			Timestamp from = (Timestamp)fDateFrom.getValue();
			Timestamp to = (Timestamp)fDateTo.getValue();
			log.fine("Date From=" + from + ", To=" + to);
			if (from == null && to != null)
				pstmt.setTimestamp(index++, to);
			else if (from != null && to == null)
				pstmt.setTimestamp(index++, from);
			else if (from != null && to != null)
			{
				pstmt.setTimestamp(index++, from);
				pstmt.setTimestamp(index++, to);
			}
		}
		//
		pstmt.setString(index++, fIsSOTrx.isSelected() ? "Y" : "N");
	}   //  setParameters

	/**
	 *  Get SQL WHERE parameter
	 *  @param f field
	 *  @return sql
	 */
	private String getSQLText (CTextField f)
	{
		String s = f.getText().toUpperCase();
		if (!s.endsWith("%"))
			s += "%";
		log.fine("String=" + s);
		return s;
	}   //  getSQLText
	

	/**
	 *	Zoom
	 */
	protected void zoom()
	{
		log.info("");
		Integer LBR_NotaFiscal_ID = getSelectedRowKey();
		if (LBR_NotaFiscal_ID == null)
			return;
		MQuery query = new MQuery("LBR_NotaFiscal");
		query.addRestriction("LBR_NotaFiscal_ID", MQuery.EQUAL, LBR_NotaFiscal_ID);
		query.setRecordCount(1);
		int AD_WindowNo = getAD_Window_ID("LBR_NotaFiscal", fIsSOTrx.isSelected());
		zoom (AD_WindowNo, query);
	}	//	zoom

	/**
	 *	Has Zoom
	 *  @return true
	 */
	protected boolean hasZoom()
	{
		return true;
	}	//	hasZoom
	
}   //  InfoNotaFiscal