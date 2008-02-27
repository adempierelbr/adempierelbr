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

import java.util.ArrayList;

import org.compiere.apps.search.Info_Column;
import org.compiere.model.MClient;
import org.compiere.model.MDocType;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.PO;
import org.compiere.util.CLogger;

/**
 *	ValidatorBPartner
 *
 *  If the document type has both Automatic Shipment and Invoice checked, it 
 *  will then validate the Shipment Document, verifying if the latter has the 
 *  Shipment Confirmation checked, if it does, and error is generated.
 *
 *	FR[1902562]	
 *
 *	@author Alvaro Montenegro
 *	@version $Id: ValidatorBPartner.java, 27/02/2008 08:44:00 amontenegro
 *	
 */
public class ValidatorDocType implements ModelValidator
{
	
	
	/**
	 *	Constructor.
	 *	The class is instanciated when logging in and client is selected/known
	 */
	public ValidatorDocType()
	{
		super ();
	}
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ValidatorBPartner.class);
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
		
		//	ModelChange
		engine.addModelChange(MDocType.Table_Name, this); //Document Type
	}
	
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
		if(po.get_TableName().equalsIgnoreCase(MDocType.Table_Name) && (type == TYPE_CHANGE || type ==  TYPE_NEW))
		{
			MDocType doc = (MDocType)po;
			Boolean lbr_IsAutomaticInvoice = (Boolean)doc.get_Value("lbr_IsAutomaticInvoice");
			Boolean lbr_IsAutomaticShipment = (Boolean)doc.get_Value("lbr_IsAutomaticShipment");
			if(lbr_IsAutomaticInvoice && lbr_IsAutomaticShipment)
			{
				MDocType shpDoc = new MDocType(po.getCtx(),doc.getC_DocTypeShipment_ID(),po.get_TrxName());
				if((Boolean)shpDoc.get_Value("IsShipConfirm"))
				{
					return "Inconsistência nos documentos sub-sequentes";
				}
			}
		}
		return null;
	} //modelChange
	
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
		return null;
	}	//	docValidate
		
	/**
	 * 	Update Info Window Columns.
	 * 	- add new Columns
	 * 	- remove columns
	 * 	- change display sequence
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
		}/** 	*/
		return false;
	}	//	updateInfoColumns
	
	
	/**
	 * 	String Representation
	 *	@return info
	 */
	public String toString ()
	{
		StringBuffer sb = new StringBuffer ("AdempiereLBR - Powered by Kenos");
		return sb.toString ();
	}	//	toString

}
