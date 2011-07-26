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
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.apps.search.Info_Column;
import org.compiere.model.MClient;
import org.compiere.model.MInOut;
import org.compiere.model.MInOutLine;
import org.compiere.model.MInventory;
import org.compiere.model.MInventoryLine;
import org.compiere.model.MMovement;
import org.compiere.model.MMovementLine;
import org.compiere.model.MOrderLine;
import org.compiere.model.MProduct;
import org.compiere.model.MSysConfig;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.PO;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 *	ValidatorInOut, inclui as validações de outras tabelas que
 *	manipulam materiais, como Movimentações, Inventário e Entrada/Saída.
 *
 *	@author Ricardo Santana (ralexsander)
 *  
 *  BF [3378743] - ValidatorInOut - Erro validações com conversão de UDM, mgrigioni
 *  
 *	@version $Id: ValidatorInOut.java, 04/01/2008 15:56:00 ralexsander
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
		//client = null for global validator
		if (client != null) {
			m_AD_Client_ID = client.getAD_Client_ID();
			log.info(client.toString());
		}
		else  {
			log.info("Initializing global validator: "+this.toString());
		}

		engine.addDocValidate(MInOut.Table_Name, this);
		engine.addDocValidate(MMovement.Table_Name, this);
		engine.addDocValidate(MInventory.Table_Name, this);
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
	public String docValidate (PO po, int timing)
	{

		if (po instanceof MInOut){
			return docValidate((MInOut)po,timing);
		}

		else if (po instanceof MMovement){
			return docValidate((MMovement)po,timing);
		}

		else if (po instanceof MInventory){
			return docValidate((MInventory)po,timing);
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
	private BigDecimal getQtyOnHand(int M_Product_ID, int M_Locator_ID, int M_AttributeSetInstance_ID)
	{
		BigDecimal QtyOnHand = Env.ZERO;
		String sql = "SELECT SUM(QtyOnHand) FROM M_Storage "
			+ "WHERE M_Product_ID=?";	//	1
		if(M_Locator_ID > 0)
			sql = sql + " AND M_Locator_ID=?";	//	2
		if(M_AttributeSetInstance_ID >0)
			sql = sql + " AND M_AttributeSetInstance_ID=?";	//	3

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, M_Product_ID);
			if (M_Locator_ID > 0)
				pstmt.setInt(2, M_Locator_ID);
			if(M_AttributeSetInstance_ID > 0)
				pstmt.setInt(3, M_AttributeSetInstance_ID);

			rs = pstmt.executeQuery();
			if (rs.next())
			{
				QtyOnHand = rs.getBigDecimal(1);
			}
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
			return Env.ZERO;
		}
		finally{
		       DB.close(rs, pstmt);
		}

		if(QtyOnHand != null)
			return QtyOnHand;

		return Env.ZERO;
	}	//	QtyOnHand

	/**
	 *	Validate Movement.
	 *
	 *	@param MMovement movement
	 *	@param timing see TIMING_ constants
     *	@return error message or null
	 */
	private String docValidate(MMovement mov, int timing)
	{
		Properties ctx = mov.getCtx();
		String     msg = null;

		if (timing != TIMING_BEFORE_COMPLETE)
			return null;

		MMovementLine[] lines = mov.getLines(true);
		ArrayList<String> prod = new ArrayList<String>();

		if(lines == null || lines.length <= 0)
			return Msg.getMsg(ctx, "NoLines");

		for(MMovementLine line : lines) {
			if(line.getM_Product_ID() <=0 || line.getM_Locator_ID() <=0 || line.getM_LocatorTo_ID() <=0 ){
				msg = "Produto ou Localizador inválido";
				break;
			}

			if(line.getMovementQty().equals(Env.ZERO)){
				msg = "Itens com qtd zero";
				break;
			}

			if(prod.contains("" + line.getM_Product_ID() + "|" + line.getM_Locator_ID())){
				msg = "Duas linhas usando o mesmo produto na mesma posição";
				break;
			}
			else{
				prod.add("" + line.getM_Product_ID() + "|" + line.getM_Locator_ID());
			}

			BigDecimal qtdOnHand = getQtyOnHand(line.getM_Product_ID(), line.getM_Locator_ID(), line.getM_AttributeSetInstance_ID());

			if(qtdOnHand.compareTo(line.getMovementQty()) == -1){
				msg = "Sem saldo na linha=" + line.getLine();
				break;
			}
		}

		return msg;
	}

	/**
	 *	Validate Inventory.
	 *
	 *	@param MInventory inventory
	 *	@param timing see TIMING_ constants
     *	@return error message or null
	 */
	private String docValidate(MInventory inv, int timing)
	{
		Properties ctx = inv.getCtx();
		String     msg = null;

		if (timing != TIMING_AFTER_COMPLETE)
			return null;

		MInventoryLine[] lines = inv.getLines(true);
		ArrayList<String> prod = new ArrayList<String>();

		if(lines == null || lines.length <= 0)
			return Msg.getMsg(ctx, "NoLines");

		boolean isInternalUse = inv.get_ValueAsBoolean("z_IsInternalUse");

		if(isInternalUse) {
			for(MInventoryLine line : lines) {
				if(line.getM_Product_ID() <=0 || line.getM_Locator_ID() <=0){
					msg = "Produto ou Localizador inválido";
					break;
				}

				if(line.getMovementQty().equals(Env.ZERO)){
					msg = "Itens com qtd zero";
					break;
				}

				if(line.getC_Charge_ID() == 0){
					msg = "Sem conta de destino";
					break;
				}

				if(prod.contains(line.getM_Product_ID() + "|" + line.getM_Locator_ID())){
					msg = "Duas linhas usando o mesmo produto na mesma posição";
					break;
				}
				else{
					prod.add(line.getM_Product_ID() + "|" + line.getM_Locator_ID());
				}

				BigDecimal qtdOnHand = getQtyOnHand(line.getM_Product_ID(), line.getM_Locator_ID(), line.getM_AttributeSetInstance_ID());

				if(qtdOnHand.compareTo(line.getQtyInternalUse()) == -1){
					msg = "Sem saldo na linha=" + line.getLine();
					break;
				}
			}
		}

		return msg;
	}

	/**
	 *	Validate Shipment/Receipt.
	 *
	 *	@param MInOut inventory
	 *	@param timing see TIMING_ constants
     *	@return error message or null
	 */
	private String docValidate(MInOut inOut, int timing)
	{
		Properties ctx = inOut.getCtx();
		String     trx = inOut.get_TrxName();

		//boolean afterComplete  = timing == TIMING_AFTER_COMPLETE;
		boolean beforeComplete = (timing == TIMING_BEFORE_COMPLETE || timing == TIMING_BEFORE_REVERSECORRECT);

		/* FIXME - Arrumar o processo de industrialização
		if (afterComplete)
		{
			String sql = "SELECT C_DocType_ID FROM C_DocType " +
					     "WHERE lbr_IsManufactured='Y' AND C_DocType_ID=?";


			// Verifica se é industrialização
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

					// Atualiza a quantidade entregue de industrialização
					DB.executeUpdate("UPDATE M_ProductionLine " +
							"SET QtyDelivered=COALESCE(QtyDelivered,0)+ " +
							"(SELECT QtyEntered FROM M_InOutLine " +
							"WHERE M_InOutLine_ID=" + line.getM_InOutLine_ID() + ") " +
							"WHERE M_ProductionLine_ID=" + M_ProductionLine_ID, trx);
				}
			}
		}
		else
		*/

		if (beforeComplete)
		{
			MInOutLine[] lines = inOut.getLines();
			ArrayList<String> olines = new ArrayList<String>();

			if (lines.length == 0)
				return "Documento sem linhas";

			for (int i = 0; i < lines.length; i++)
			{
				MInOutLine line = lines[i];
				int M_Product_ID = line.getM_Product_ID();
				int C_Charge_ID  = line.getC_Charge_ID();
				if (M_Product_ID == 0 && C_Charge_ID == 0){
					line.deleteEx(true, trx);
					continue;
				}

				int M_AttributeSetInstance_ID = 0; //line.getM_AttributeSetInstance_ID();
				int M_Locator_ID = line.getM_Locator_ID();
				BigDecimal onHand = Env.ZERO, qtyToShip = Env.ZERO;
				MProduct produto = MProduct.get(ctx, M_Product_ID);

				if (!produto.isStocked())
					continue;

				if (M_Locator_ID == 0)
					return "Localizador do estoque não definida na linha: #" + line.getLine() + ".";

				if (line.getMovementQty() == Env.ZERO)
					return "Item com quantidade ZERO na linha: #" + line.getLine() + ".";

				if (!MSysConfig.getBooleanValue("LBR_ALLOW_MM_SHIP_RECEIPT_WITHOUT_ORDER", true, inOut.getAD_Client_ID())
						&& line.getC_OrderLine_ID() == 0)
					return "Ordem de Compra não disponível.";

				MOrderLine oline = new MOrderLine(ctx, line.getC_OrderLine_ID(), trx);

				//BF 3037141 - Pablo Boff Pigozzo
				if (timing == TIMING_BEFORE_REVERSECORRECT
						&& !MSysConfig.getBooleanValue("LBR_ALLOW_REVERSE_SHIP_RECEIT_WITH_OPEN_INVOICE", true, inOut.getAD_Client_ID())
						&& DB.getSQLValue(trx, "SELECT COUNT(*) FROM C_InvoiceLine il, C_Invoice i WHERE i.C_Invoice_ID=il.C_Invoice_ID AND i.DocStatus IN ('CO','CL') AND il.M_InOutLine_ID=?", line.getM_InOutLine_ID()) > 0)
					return "Fatura(s) em aberto. Impossível continuar com o estorno.";

				int C_OrderLine_ID = line.getC_OrderLine_ID();
				if (C_OrderLine_ID != 0)
				{
					if(!MSysConfig.getBooleanValue("LBR_ALLOW_DUPLICATED_ORDERLINE_ON_SHIP_RECEIPT", true, inOut.getAD_Client_ID())
							&& olines.contains("" + line.getC_OrderLine_ID()))
						return "Linha #" + line.getLine() + " duplicada.";
					else
						olines.add("" + line.getC_OrderLine_ID());
				}

				/**
				 *  BF: Utilizar UDM padrão do produto para fazer as comparação devido a conversão de UDM
				 *  M_InOutLine.MovementQty
				 *  C_OrderLine.QtyOrdered, C_OrderLine.QtyDelivered
				 */

				log.info("Delivered: " + oline.getQtyDelivered() + " Ordered: " + oline.getQtyOrdered() + " Trying: " + line.getMovementQty());
				if (timing == TIMING_BEFORE_COMPLETE
						&& MSysConfig.getBooleanValue("LBR_MATCH_SHIPMENT_RECEIPT_AND_ORDER_QTY", false, inOut.getAD_Client_ID())
						&& (oline.getQtyDelivered().add(line.getMovementQty())).compareTo(oline.getQtyOrdered()) == 1)
					return "Nao e possivel fazer recebimento maior que o pedido. Linha do pedido #" + line.getLine();

				onHand = getQtyOnHand(M_Product_ID, M_Locator_ID, M_AttributeSetInstance_ID); //QtyOnHand

				qtyToShip = Env.ZERO;

				for (int j = 0; j < lines.length; j++)
				{
					if(lines[j].getM_Product_ID() == line.getM_Product_ID()
							&& lines[j].getM_Locator_ID() == line.getM_Locator_ID())
					{
						qtyToShip = qtyToShip.add(lines[j].getMovementQty());
					}
				}

				if (timing == TIMING_BEFORE_COMPLETE
						&& !MSysConfig.getBooleanValue("LBR_ALLOW_NEGATIVE_STOCK", true, inOut.getAD_Client_ID())){

					String movementType = inOut.getMovementType();

					if (movementType.charAt(1) == '-')
					{
						if (timing == TIMING_BEFORE_COMPLETE
								&& (onHand.subtract(qtyToShip)).signum() < 0)
							return "Sem quantidade disponivel na linha #" + line.getLine() + ".";
					}
					else
					{
						if ((onHand.add(line.getMovementQty())).signum() < 0)
							return "Sem quantidade disponível na linha #" + line.getLine() + ".";
					}

				}

			} // for;
		}

		return null;
	}

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