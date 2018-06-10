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
package org.adempierelbr.validator;

import org.adempierelbr.grid.VCreateFromNFeLotUI;
import org.adempierelbr.model.MLBRNFeEvent;
import org.adempierelbr.model.MLBRNFeLot;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.compiere.grid.VCreateFromFactory;
import org.compiere.model.MAttachment;
import org.compiere.model.MAttachmentEntry;
import org.compiere.model.MClient;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.PO;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.Ini;

import br.inf.portalfiscal.nfe.v400.NFeDocument;

/**
 * 		Processos auxiliares a NF-e que não podem entrar na MLBRNotaFiscal, ex. validação de anexos
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: VLBRNFe.java, v1.0 2017/05/17 15:36:53 PM, ralexsander Exp $
 */
public class VLBRNFe implements ModelValidator
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(VLBRNFe.class);
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

		//	ModelChange
		engine.addModelChange (MAttachment.Table_Name, this);
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
		
		/**
		 * Registra a classe de CreateFrom para o Lote da NFe para a versão SWING
		 * 		para a versão ZK veja @see org.adempiere.webui.session.WebUIServlet
		 */
		if (Ini.isClient())
			VCreateFromFactory.registerClass (MLBRNFeLot.Table_ID, VCreateFromNFeLotUI.class);
		
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
		//	Anexo
		if (MAttachment.Table_Name.equals(po.get_TableName()))
			return modelChange ((MAttachment) po, type);
		
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
	public String modelChange (MAttachment att, int type) throws Exception
	{
		if (type == TYPE_BEFORE_DELETE && att.getAD_Table_ID() == MLBRNFeEvent.Table_ID)
		{
			MLBRNFeEvent event = new MLBRNFeEvent (Env.getCtx(), att.getRecord_ID(), att.get_TrxName());
			
			if (event.isProcessed())
				return "N\u00E3o \u00E9 permitido alterar um anexo de um registro j\u00E1 processado.";
		}
		
		if (type == TYPE_AFTER_CHANGE || type == TYPE_AFTER_NEW)
		{
			if (att.getAD_Table_ID() == MLBRNotaFiscal.Table_ID)
			{
				MLBRNotaFiscal nf = new MLBRNotaFiscal(Env.getCtx(),att.getRecord_ID(), att.get_TrxName());
				
				//	Carrega o ID da NFe apenas para as Notas de Entrada que não seja documento próprio.
				if (!nf.isSOTrx() && !nf.islbr_IsOwnDocument())
				{
					for (MAttachmentEntry entry : att.getEntries())
					{
						try
						{
							NFeDocument nfeXml = NFeDocument.Factory.parse (new String (entry.getData(), "UTF-8"));
							//
							if (nfeXml != null)
							{
								nf.setlbr_NFeID(nfeXml.getNFe().getInfNFe().getId().replace("NFe", ""));
								nf.save();
							}
						}
						catch (Exception e){}
					}
				}
			}
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