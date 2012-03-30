package org.adempierelbr.validator;

import org.adempiere.webui.apps.form.WCreateFromFactory;
import org.adempierelbr.grid.VCreateFromNFeLotUI;
import org.adempierelbr.model.MLBRNFeLot;
import org.adempierelbr.webui.apps.form.WCreateFromNFeLotUI;
import org.compiere.grid.VCreateFromFactory;
import org.compiere.model.MClient;
import org.compiere.model.MInOutLine;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MLocation;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.PO;
import org.compiere.util.CLogger;

/**
 * 		Procedimentos comuns, necessários para o LBR
 * 
 * 			<li>Registra a classe de CreateFrom para o Lote da NFe
 * 			<li>Ajusta a Organização para linhas da Fatura e Remessa
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: VLBRCommons.java, v1.0 2012/03/15 5:01:19 PM, ralexsander Exp $
 */
public class VLBRCommons implements ModelValidator
{
	/**
	 *	Constructor.
	 *	The class is instanciated when logging in and client is selected/known
	 */
	public VLBRCommons ()
	{
		super ();
	}	//	VLBRCommons
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(VLBROrder.class);
	/** Client			*/
	private int		m_AD_Client_ID = -1;

	/**
	 *	Initialize Validation
	 *	@param engine validation engine
	 *	@param client client
	 */
	public void initialize (ModelValidationEngine engine, MClient client)
	{
		//	Global Validator
		if (client != null) 
		{
			m_AD_Client_ID = client.getAD_Client_ID();
			log.info(client.toString());
		}
		else 
			log.info("Initializing global validator: "+this.toString());

		engine.addModelChange (MInvoiceLine.Table_Name, this);
		engine.addModelChange (MInOutLine.Table_Name, this);
		engine.addModelChange (MLocation.Table_Name, this);
	}	//	initialize

	/**
	 *	Get Client to be monitored
	 *	@return AD_Client_ID client
	 */
	public int getAD_Client_ID ()
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
		log.info ("AD_User_ID=" + AD_User_ID);
		
		//	Registra a classe de CreateFrom para o Lote da NFe, SWING e ZK
		VCreateFromFactory.registerClass (MLBRNFeLot.Table_ID, VCreateFromNFeLotUI.class);
		WCreateFromFactory.registerClass (MLBRNFeLot.Table_ID, WCreateFromNFeLotUI.class);
		
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
		//	Linha da Fatura
		if (MInvoiceLine.Table_Name.equals(po.get_TableName()))
			return modelChange ((MInvoiceLine) po, type);
		
		//	Linha do Recebimento/Remesssa
		else if (MInOutLine.Table_Name.equals(po.get_TableName()))
			return modelChange ((MInOutLine) po, type);
		
		//	Linha do Recebimento/Remesssa
		else if (MLocation.Table_Name.equals(po.get_TableName()))
			return modelChange ((MLocation) po, type);
		
		return null;
	}	//	modelChange
	
	/**
     *	Model Change of a monitored Table.
     *	Called after PO.beforeSave/PO.beforeDelete
     *	when you called addModelChange for the table
     *	@param po persistent object
     *	@param type TYPE_
     *	@return error message or null
     *	@exception Exception if the recipient wishes the change to be not accept.
     */
	public String modelChange (MInOutLine iol, int type) throws Exception
	{
		//	Ajusta a Organização
		if (TYPE_BEFORE_NEW == type && iol.getC_OrderLine_ID() > 0)
		{
			iol.setAD_Org_ID(iol.getC_OrderLine().getAD_Org_ID());
		}
		return null;
	}	//	modelChange
	
	/**
     *	Model Change of a monitored Table.
     *	Called after PO.beforeSave/PO.beforeDelete
     *	when you called addModelChange for the table
     *	@param po persistent object
     *	@param type TYPE_
     *	@return error message or null
     *	@exception Exception if the recipient wishes the change to be not accept.
     */
	public String modelChange (MInvoiceLine il, int type) throws Exception
	{
		//	Ajusta a Organização
		if (TYPE_BEFORE_NEW == type && il.getC_OrderLine_ID() > 0)
		{
			il.setAD_Org_ID(il.getC_OrderLine().getAD_Org_ID());
		}
		return null;
	}	//	modelChange
	
	/**
     *	Model Change of a monitored Table.
     *	Called after PO.beforeSave/PO.beforeDelete
     *	when you called addModelChange for the table
     *	@param po persistent object
     *	@param type TYPE_
     *	@return error message or null
     *	@exception Exception if the recipient wishes the change to be not accept.
     */
	public String modelChange (MLocation loc, int type) throws Exception
	{
		//	Atualiza o nome da cidade
		if (loc.getC_City_ID() > 0 && (TYPE_BEFORE_NEW == type 
				|| (TYPE_BEFORE_CHANGE == type && loc.is_ValueChanged(MLocation.COLUMNNAME_C_City_ID))))
		{
			loc.setCity(loc.getC_City().getName());
		}
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
		return null;
	}	//	docValidate
}	//	VLBRCommons
