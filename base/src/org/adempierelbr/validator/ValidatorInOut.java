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
package org.adempierelbr.validator;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.model.MTax;
import org.adempierelbr.model.boleto.MBoleto;
import org.adempierelbr.process.ProcGenerateNF;
import org.adempierelbr.util.POLBR;
import org.adempierelbr.util.TaxBR;
import org.compiere.apps.search.Info_Column;
import org.compiere.model.MAllocationHdr;
import org.compiere.model.MAllocationLine;
import org.compiere.model.MClient;
import org.compiere.model.MDocType;
import org.compiere.model.MInOut;
import org.compiere.model.MInOutLine;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MInvoiceTax;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MPaymentTerm;
import org.compiere.model.MProduct;
import org.compiere.model.MSysConfig;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.PO;
import org.compiere.model.X_LBR_TaxLine;
import org.compiere.model.X_LBR_TaxName;
import org.compiere.process.DocAction;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

import bsh.EvalError;

/**
 *	ValidatorInOut
 *  
 *  [ 1967069 ] LBR_Tax não é excluído quando excluí uma linha
 *	
 *	@author Ricardo Santana (ralexsander)
 *	@version $Id: ValidatorInvoice.java, 04/01/2008 15:56:00 ralexsander
 */
public class ValidatorInOut implements ModelValidator
{
	/**
	 *	Constructor.
	 *	The class is instanciated when logging in and client is selected/known
	 */
	public ValidatorInOut ()
	{
		super ();
	}	//ValidatorInOut
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ValidatorInOut.class);
	/** Client			*/
	private int		m_AD_Client_ID = -1;
	
	
	/**
	 *	Initialize Validation
	 *	@param engine validation engine 
	 *	@param client client
	 */
	public void initialize (ModelValidationEngine engine, MClient client)
	{
		m_AD_Client_ID = client.getAD_Client_ID();

		log.info(client.toString());

		//	DocValidate
		engine.addDocValidate("M_InOut", this);
	}	//	initialize

	/**
	 *	Get Client to be monitored
	 *	@return AD_Client_ID client
	 */
	public int getAD_Client_ID()
	{
		return m_AD_Client_ID;
	}	//	getAD_Client_ID

	/**
	 *	User Login.
	 *	Called when preferences are set
	 *	@param AD_Org_ID org
	 *	@param AD_Role_ID role
	 *	@param AD_User_ID user
	 *	@return error message or null
	 */
	public String login (int AD_Org_ID, int AD_Role_ID, int AD_User_ID)
	{
		log.info("AD_User_ID=" + AD_User_ID);
		return null;
	}	//	login
	
    /**
     *	Model Change of a monitored Table.
     *	Called after PO.beforeSave/PO.beforeDelete
     *	when you called addModelChange for the table
     *	@param po persistent object
     *	@param type TYPE_
     *	@return error message or null
     *	@exception Exception if the recipient wishes the change to be not accept.
     */
	public String modelChange (PO po, int type) throws Exception
	{
		return null;
	}	//	modelChange

	/**
	 *	Validate Document.
	 *	Called as first step of DocAction.prepareIt 
     *	when you called addDocValidate for the table.
     *	Note that totals, etc. may not be correct.
	 *	@param po persistent object
	 *	@param timing see TIMING_ constants
     *	@return error message or null
	 */
	@SuppressWarnings({ "unchecked", "deprecation" })
	public String docValidate (PO po, int timing)
	{
		if (po.get_TableName().equalsIgnoreCase("M_InOut") 
				&& (timing == TIMING_AFTER_COMPLETE))
		{
			
			MInOut inOut = (MInOut)po;
			Properties ctx = inOut.getCtx();
			String     trx = inOut.get_TrxName();
			
			String sql = "SELECT C_DocType_ID FROM C_DocType " +
					"WHERE lbr_IsManufactured='Y' AND C_DocType_ID=?";
			
			/** 
			 * Verifica se é industrialização
			 * */
			if(DB.getSQLValue(trx, sql, inOut.getC_DocType_ID()) < 0)
				return null;
			
			MInOutLine[] lines = inOut.getLines();
			
			for(MInOutLine line : lines)
			{
				int C_OrderLine_ID = line.getC_OrderLine_ID();
				
				if(C_OrderLine_ID > 0)
				{
					MOrderLine oLine = new MOrderLine(ctx, C_OrderLine_ID, trx);
					Integer ii = (Integer) oLine.get_Value("M_ProductionLine_ID");
					int M_ProductionLine_ID = 0;
					
					if(ii != null)
						M_ProductionLine_ID = ii.intValue();
					else
						continue;
					
					/**	
					 * Atualiza a quantidade entregue de industrialização
					 * */
					
					DB.executeUpdate("UPDATE M_ProductionLine " +
							"SET QtyDelivered=COALESCE(QtyDelivered,0)+ " +
							"(SELECT QtyEntered FROM M_InOutLine " +
							"WHERE M_InOutLine_ID=" + line.getM_InOutLine_ID() + ") " +
							"WHERE M_ProductionLine_ID=" + M_ProductionLine_ID, po.get_TrxName());
				}
			}	
		}
		else if (po.get_TableName().equalsIgnoreCase("M_InOut") 
				&& (timing == TIMING_BEFORE_COMPLETE || timing == TIMING_BEFORE_REVERSECORRECT))
		{
			MInOut inout = (MInOut)po;
			MInOutLine[] lines = inout.getLines();
			ArrayList<String> olines = new ArrayList<String>();
			
			if (lines.length == 0)
				return "Documento sem linhas";

			for (int i = 0; i < lines.length; i++)
			{
				MInOutLine line = lines[i];
				int M_Product_ID = line.getM_Product_ID();
				int M_Locator_ID = line.getM_Locator_ID();
				BigDecimal onHand = Env.ZERO, qtyToShip = Env.ZERO;
				MProduct produto = MProduct.get(po.getCtx(), M_Product_ID);
				
				if (!produto.isStocked())
					continue;
				
				if (M_Locator_ID == 0)
					return "Localizador do estoque não definida na linha: #" + line.getLine() + ".";

				if (line.getQtyEntered() == Env.ZERO)
					return "Item com quantidade ZERO na linha: #" + line.getLine() + ".";
				
				if (!MSysConfig.getBooleanValue("LBR_ALLOW_MM_SHIP_RECEIPT_WITHOUT_ORDER", true, po.getAD_Client_ID())
						&& line.getC_OrderLine_ID() == 0)
					return "Ordem de Compra não disponível.";
				
				MOrderLine oline = new MOrderLine(po.getCtx(), line.getC_OrderLine_ID(), po.get_TrxName());
				
				if (timing == TIMING_BEFORE_REVERSECORRECT 
						&& !MSysConfig.getBooleanValue("LBR_ALLOW_REVERSE_SHIP_RECEIT_WITH_OPEN_INVOICE", true, po.getAD_Client_ID())
						&& oline.getQtyDelivered().subtract(oline.getQtyInvoiced()).doubleValue() == 0)
					return "Fatura(s) em aberto. Impossível continuar com o estorno.";
				
				if(!MSysConfig.getBooleanValue("LBR_ALLOW_DUPLICATED_ORDERLINE_ON_SHIP_RECEIPT", true, po.getAD_Client_ID())
						&& olines.contains("" + line.getC_OrderLine_ID()))
					return "Linha #" + line.getLine() + " duplicada.";

				olines.add("" + line.getC_OrderLine_ID());
				
				log.info("Delivered: " + oline.getQtyDelivered() + " Entered: " + oline.getQtyEntered() + " Trying: " + line.getQtyEntered());
				if (timing == TIMING_BEFORE_COMPLETE
						&& MSysConfig.getBooleanValue("LBR_MATCH_SHIPMENT_RECEIPT_AND_ORDER_QTY", false, po.getAD_Client_ID())
						&& oline.getQtyDelivered().add(line.getQtyEntered()).doubleValue() > oline.getQtyEntered().doubleValue())
					return "Nao e possivel fazer recebimento maior que o pedido. Linha do pedido #" + line.getLine();
				
				onHand = getQtyOnHand(M_Product_ID, M_Locator_ID); //QtyOnHand
				
				qtyToShip = Env.ZERO;
				
				for (int j = 0; j < lines.length; j++)
				{
					if(lines[j].getM_Product_ID() == line.getM_Product_ID()
							&& lines[j].getM_Locator_ID() == line.getM_Locator_ID())
					{
						qtyToShip = qtyToShip.add(lines[j].getQtyEntered());
					}
				}
					
				String movementType = inout.getMovementType();
				
				if (movementType.charAt(1) == '-')
				{
					if (timing == TIMING_BEFORE_COMPLETE
							&& onHand.subtract(qtyToShip).doubleValue() < 0)
						return "Sem quantidade disponivel na linha #" + line.getLine() + ".";
				}
				else 
				{
					if (onHand.add(line.getQtyEntered()).doubleValue() < 0)
						return "Sem quantidade disponível na linha #" + line.getLine() + ".";
				}
			} // for;
		}
		
		return null;
	}	//	docValidate
	
	/**
	 *	Quantity On Hand.
	 *	
	 *	@param M_Product_ID
	 *	@param M_Locator_ID
     *	@return BigDecimal quantity of product
	 */
	private BigDecimal getQtyOnHand(int M_Product_ID, int M_Locator_ID)
	{
		BigDecimal QtyOnHand = Env.ZERO;
		String sql = "SELECT SUM(QtyOnHand) FROM M_Storage "
			+ "WHERE M_Product_ID=?";	//	1
		if(M_Locator_ID > 0)
			sql = sql + " AND M_Locator_ID=?";	//	2
		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, M_Product_ID);
			if(M_Locator_ID > 0)
				pstmt.setInt(2, M_Locator_ID);
			
			ResultSet rs = pstmt.executeQuery();
			if (rs.next())
			{
				QtyOnHand = rs.getBigDecimal(1);
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
			return Env.ZERO;
		}
		
		if(QtyOnHand != null)
			return QtyOnHand;
		
		return Env.ZERO;
	}	//	QtyOnHand
		
	/**
	 * 	Update Info Window Columns.
	 * 	- add new Columns
	 * 	- remove columns
	 * 	- change dispay sequence
	 *	@param columns array of columns
	 *	@param sqlFrom from clause, can be modified
	 *	@param sqlOrder order by clause, can me modified
	 *	@return true if you updated columns, sequence or sql From clause
	 */
	public boolean updateInfoColumns (ArrayList<Info_Column> columns, 
		StringBuffer sqlFrom, StringBuffer sqlOrder)
	{
		/**		*
		int AD_Role_ID = Env.getAD_Role_ID (Env.getCtx());	// Can be Role/User specific 
		String from = sqlFrom.toString();
		if (from.startsWith ("M_Product"))
		{
			columns.add (new Info_Column("Header", "'sql'", String.class).seq(35));
			return true;
		}/**	*/
		return false;
	}	//	updateInfoColumns
	
	/**
	 * 	String Representation
	 *	@return info
	 */
	public String toString ()
	{
		StringBuffer sb = new StringBuffer ("AdempiereLBR - Powered by Kenos & Faire");
		return sb.toString ();
	}	//	toString

} //ValidatorInOut