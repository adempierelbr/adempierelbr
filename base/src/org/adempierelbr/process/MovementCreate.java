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
package org.adempierelbr.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Iterator;
import java.util.Vector;
import java.util.logging.Level;

import org.compiere.model.MAttributeSet;
import org.compiere.model.MMovement;
import org.compiere.model.MMovementLine;
import org.compiere.model.MMovementLineMA;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereSystemError;
import org.compiere.util.DB;


/**
 *	Create Movement List with current Book value
 *	Criado com base na classe InventoryCountCreate.java
 *	
 *  @author Rogério Alves Feitosa (Kenos, www.kenos.com.br)
 *  @version $Id: MovementCreate.java, v1.0 2015/07/23 11:34:50, rfeitosa Exp $
 */
public class MovementCreate extends SvrProcess
{
	
	/** Physical Inventory Parameter		*/
	private int			p_M_Movement_ID = 0;
	/** Physical Inventory					*/
	private MMovement 	m_movement = null;
	/** Locator Parameter			*/
	private int			p_M_Locator_ID = 0;
	/** Locator Parameter			*/
	private String		p_LocatorValue = null;
	/** Product Parameter			*/
	private String		p_ProductValue = null;
	/** Product Category Parameter	*/
	private int			p_M_Product_Category_ID = 0;	
	/** Destine Locator			*/
	private int			p_M_LocatorTo_ID = 0;
	/** Delete Parameter			*/
	private boolean		p_DeleteOld = false;
	
	/** Movement Line				*/
	private MMovementLine	m_line = null; 

	
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals("M_Locator_ID"))
				p_M_Locator_ID = para[i].getParameterAsInt();
			else if (name.equals("LocatorValue"))
				p_LocatorValue = (String)para[i].getParameter();
			else if (name.equals("ProductValue"))
				p_ProductValue = (String)para[i].getParameter();
			else if (name.equals("M_Product_Category_ID"))
				p_M_Product_Category_ID = para[i].getParameterAsInt();			
			else if (name.equals("M_LocatorTo_ID"))
				p_M_LocatorTo_ID = para[i].getParameterAsInt();
			else if (name.equals("DeleteOld"))
				p_DeleteOld = "Y".equals(para[i].getParameter());
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		p_M_Movement_ID = getRecord_ID();
	}	//	prepare

	
	/**
	 * 	Process
	 *	@return message
	 *	@throws Exception
	 */
	protected String doIt () throws Exception
	{
		log.info("M_Movement_ID=" + p_M_Movement_ID
			+ ", M_Locator_ID=" + p_M_Locator_ID + ", LocatorValue=" + p_LocatorValue
			+ ", ProductValue=" + p_ProductValue 
			+ ", M_Product_Category_ID=" + p_M_Product_Category_ID
			+ ", p_M_LocatorTo_ID=" + p_M_LocatorTo_ID + ", DeleteOld=" + p_DeleteOld);
		m_movement = new MMovement (getCtx(), p_M_Movement_ID, get_TrxName());
		if (m_movement.get_ID() == 0)
			throw new AdempiereSystemError ("Not found: m_movement_ID=" + p_M_Movement_ID);
		if (m_movement.isProcessed())
			throw new AdempiereSystemError ("@m_movement_ID@ @Processed@");
		//
		if (p_DeleteOld)
		{
			//Added Line by armen
			String sql1 = "DELETE FROM M_MovementLineMA ma WHERE EXISTS "
				+ "(SELECT * FROM M_MovementLine l WHERE l.m_movementLine_ID=ma.m_movementLine_ID"
				+ " AND Processed='N' AND M_Movement_ID=" + p_M_Movement_ID + ")";
			int no1 = DB.executeUpdate(sql1, get_TrxName());
			log.fine("doIt - Deleted MA #" + no1);
			//End of Added Line
			
			String sql = "DELETE M_MovementLine WHERE Processed='N' "
				+ "AND M_Movement_ID=" + p_M_Movement_ID;
			int no = DB.executeUpdate(sql, get_TrxName());
			log.fine("doIt - Deleted #" + no);
		}
				
		StringBuffer sql = new StringBuffer(
			"SELECT s.M_Product_ID, s.M_Locator_ID, s.M_AttributeSetInstance_ID,"
			+ " s.QtyOnHand, p.M_AttributeSet_ID "
			+ "FROM M_Product p"
			+ " INNER JOIN M_Storage s ON (s.M_Product_ID=p.M_Product_ID)"
			+ " INNER JOIN M_Locator l ON (s.M_Locator_ID=l.M_Locator_ID) "
			+ "WHERE p.IsActive='Y' AND p.IsStocked='Y' and p.ProductType='I'");
		//
		if (p_M_Locator_ID != 0)
			sql.append(" AND s.M_Locator_ID=?");
		//
		if (p_LocatorValue != null && 
			(p_LocatorValue.trim().length() == 0 || p_LocatorValue.equals("%")))
			p_LocatorValue = null;
		if (p_LocatorValue != null)
			sql.append(" AND UPPER(l.Value) LIKE ?");
		//
		if (p_ProductValue != null && 
			(p_ProductValue.trim().length() == 0 || p_ProductValue.equals("%")))
			p_ProductValue = null;
		if (p_ProductValue != null)
			sql.append(" AND UPPER(p.Value) LIKE ?");
		//
		if (p_M_Product_Category_ID != 0)
			sql.append(" AND p.M_Product_Category_ID IN (" + getSubCategoryWhereClause(p_M_Product_Category_ID) + ")");
		
		//	Do not overwrite existing records
		if (!p_DeleteOld)
			sql.append(" AND NOT EXISTS (SELECT * FROM M_MovementLine il "
			+ "WHERE il.M_Movement_ID=?"
			+ " AND il.M_Product_ID=s.M_Product_ID"
			+ " AND il.M_Locator_ID=s.M_Locator_ID"
			+ " AND COALESCE(il.M_AttributeSetInstance_ID,0)=COALESCE(s.M_AttributeSetInstance_ID,0))");
		//	+ " AND il.M_AttributeSetInstance_ID=s.M_AttributeSetInstance_ID)");
		//
		sql.append(" ORDER BY l.Value, p.Value, s.QtyOnHand DESC");	//	Locator/Product
		//
		int count = 0;
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql.toString(), get_TrxName());
			int index = 1;
			if (p_M_Locator_ID != 0)
				pstmt.setInt(index++, p_M_Locator_ID);
			if (p_LocatorValue != null) 
				pstmt.setString(index++, p_LocatorValue.toUpperCase());
			if (p_ProductValue != null) 
				pstmt.setString(index++, p_ProductValue.toUpperCase());
			if (!p_DeleteOld)
				pstmt.setInt(index++, p_M_Movement_ID);
			ResultSet rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				int M_Product_ID = rs.getInt(1);
				int M_Locator_ID = rs.getInt(2);
				int M_AttributeSetInstance_ID = rs.getInt(3);
				BigDecimal QtyOnHand = rs.getBigDecimal(4);
				
				if (QtyOnHand == null || QtyOnHand.signum() <= 0)
					continue;
				
				int M_AttributeSet_ID = rs.getInt(5);
				//
				createMovementLine (M_Locator_ID, p_M_LocatorTo_ID, M_Product_ID, 
						M_AttributeSetInstance_ID, QtyOnHand, M_AttributeSet_ID);
			}
			rs.close ();
			pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		try
		{
			if (pstmt != null)
				pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			pstmt = null;
		}

		//
		return "@m_movementLine_ID@ - #" + count;
	}	//	doIt
	
	/**
	 * 	Create/Add to Movement Line
	 *	@param M_Product_ID product
	 *	@param M_Locator_ID locator
	 *	@param M_AttributeSetInstance_ID asi
	 *	@param M_AttributeSet_ID as
	 *	@return lines added
	 */
	private int createMovementLine (int M_Locator_ID, int p_M_LocatorTo_ID, int M_Product_ID, 
		int M_AttributeSetInstance_ID, BigDecimal QtyOnHand, int M_AttributeSet_ID)
	{
		boolean oneLinePerASI = false;
		if (M_AttributeSet_ID != 0)
		{
			MAttributeSet mas = MAttributeSet.get(getCtx(), M_AttributeSet_ID);
			oneLinePerASI = mas.isInstanceAttribute();
		}
		if (oneLinePerASI)
		{
			MMovementLine line = new MMovementLine (m_movement);
			
			line.setM_Product_ID(M_Product_ID);
			line.setM_Locator_ID(M_Locator_ID);
			line.setM_LocatorTo_ID(p_M_LocatorTo_ID);
			line.setM_AttributeSetInstance_ID (M_AttributeSetInstance_ID);
			line.setMovementQty(QtyOnHand);
			if (line.save())
				return 1;
			return 0;
		}
		
		if (QtyOnHand.signum() == 0)
			M_AttributeSetInstance_ID = 0;
		
		if (m_line != null 
			&& m_line.getM_Locator_ID() == M_Locator_ID
			&& m_line.getM_Product_ID() == M_Product_ID)
		{
			if (QtyOnHand.signum() == 0)
				return 0;
			//	Same ASI (usually 0)
			if (m_line.getM_AttributeSetInstance_ID() == M_AttributeSetInstance_ID)
			{
				m_line.setMovementQty(QtyOnHand);
				m_line.save();
				return 0;
			}
			//	Save Old Line info
			else if (m_line.getM_AttributeSetInstance_ID() != 0)
			{
				MMovementLineMA ma = new MMovementLineMA (m_line, 
					m_line.getM_AttributeSetInstance_ID(), m_line.getMovementQty());
				if (!ma.save())
					;
			}
			m_line.setM_AttributeSetInstance_ID(0);
			m_line.setMovementQty(QtyOnHand);
			m_line.save();
			//
			MMovementLineMA ma = new MMovementLineMA (m_line, 
				M_AttributeSetInstance_ID, QtyOnHand);
			if (!ma.save())
				;
			return 0;
		}
		//	new line
		m_line = new MMovementLine (m_movement);		//	book/count
		m_line.setM_Product_ID(M_Product_ID);
		m_line.setM_Locator_ID(M_Locator_ID);
		m_line.setM_LocatorTo_ID(p_M_LocatorTo_ID);
		m_line.setM_AttributeSetInstance_ID (M_AttributeSetInstance_ID);
		m_line.setMovementQty(QtyOnHand);
		
		if (m_line.save())
			return 1;
		return 0;
	}	//	createInventoryLine
	
	/**
	 * Returns a sql where string with the given category id and all of its subcategory ids.
	 * It is used as restriction in MQuery.
	 * @param productCategoryId
	 * @return
	 */
	private String getSubCategoryWhereClause(int productCategoryId) throws SQLException, AdempiereSystemError{
		//if a node with this id is found later in the search we have a loop in the tree
		int subTreeRootParentId = 0;
		String retString = " ";
		String sql = " SELECT M_Product_Category_ID, M_Product_Category_Parent_ID FROM M_Product_Category";
		final Vector<SimpleTreeNode> categories = new Vector<SimpleTreeNode>(100);
		Statement stmt = DB.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		while (rs.next()) {
			if(rs.getInt(1)==productCategoryId) {
				subTreeRootParentId = rs.getInt(2);
			}
			categories.add(new SimpleTreeNode(rs.getInt(1), rs.getInt(2)));
		}
		retString += getSubCategoriesString(productCategoryId, categories, subTreeRootParentId);
		rs.close();
		stmt.close();
		return retString;
	}

	/**
	 * Recursive search for subcategories with loop detection.
	 * @param productCategoryId
	 * @param categories
	 * @param loopIndicatorId
	 * @return comma seperated list of category ids
	 * @throws AdempiereSystemError if a loop is detected
	 */
	private String getSubCategoriesString(int productCategoryId, Vector<SimpleTreeNode> categories, int loopIndicatorId) throws AdempiereSystemError {
		String ret = "";
		final Iterator<SimpleTreeNode> iter = categories.iterator();
		while (iter.hasNext()) {
			SimpleTreeNode node = (SimpleTreeNode) iter.next();
			if (node.getParentId() == productCategoryId) {
				if (node.getNodeId() == loopIndicatorId) {
					throw new AdempiereSystemError("The product category tree contains a loop on categoryId: " + loopIndicatorId);
				}
				ret = ret + getSubCategoriesString(node.getNodeId(), categories, loopIndicatorId) + ",";
			}
		}
		log.fine(ret);
		return ret + productCategoryId;
	}

	/**
	 * Simple tree node class for product category tree search.
	 * @author Karsten Thiemann, kthiemann@adempiere.org
	 *
	 */
	private class SimpleTreeNode {

		private int nodeId;

		private int parentId;

		public SimpleTreeNode(int nodeId, int parentId) {
			this.nodeId = nodeId;
			this.parentId = parentId;
		}

		public int getNodeId() {
			return nodeId;
		}

		public int getParentId() {
			return parentId;
		}
	}
	
}	//	MovementCreate
