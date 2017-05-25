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

import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRTax;
import org.adempierelbr.model.MLBRTaxLine;
import org.adempierelbr.model.MLBRTaxName;
import org.adempierelbr.wrapper.I_W_C_InvoiceLine;
import org.compiere.model.MClient;
import org.compiere.model.MInOutLine;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrderLine;
import org.compiere.model.MRMALine;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.PO;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

/**
 * 		Modificações para facilitar o processo de RMA
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: VLBRRMA.java, v1.0 2017/05/17 16:30:23 PM, ralexsander Exp $
 */
public class VLBRRMA implements ModelValidator
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(VLBRRMA.class);
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
		engine.addModelChange (MInvoiceLine.Table_Name, this);
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
		//	InvoiceLine
		if (MInvoiceLine.Table_Name.equals(po.get_TableName()))
			return modelChange ((MInvoiceLine) po, type);
		
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
		//	O processo InvoiceGenerateRMA gera uma nova linha com o RMA_Line_ID preenchido
		if (type == TYPE_BEFORE_NEW && il.getM_RMALine_ID() > 0)
		{
			MRMALine rmaLine = new MRMALine (il.getCtx(), il.getM_RMALine_ID(), il.get_TrxName());
			
            // Linha da Expedição relacionada a RMA
            MInOutLine inoutline = new MInOutLine(Env.getCtx(), rmaLine.getM_InOutLine_ID(), null);
            
            //	Linha do Pedido Original
            MOrderLine originalOrderLine = (MOrderLine) inoutline.getC_OrderLine();
            
            //	Imposto da Linha do Pedido Original
            MLBRTax taxOrder = new MLBRTax(Env.getCtx(), originalOrderLine.get_ValueAsInt("LBR_Tax_ID"), null);
            
            //	Novo imposto copiado do Pedido Original
            MLBRTax newTax = taxOrder.copyTo();
            
            //	Remover DIFAL e DIFALORIGEM  das Devoluções
            for (MLBRTaxLine taxLine : newTax.getLines())
            {
            	if (taxLine.getLBR_TaxName_ID() == MLBRTaxName.TAX_DIFALORIGEM 
            			|| taxLine.getLBR_TaxName_ID() == MLBRTaxName.TAX_DIFAL)
            		taxLine.delete(true);
            }
            
            //	Adicionar Imposto Copiado do Pedido na Fatura
            I_W_C_InvoiceLine ilW = POWrapper.create(il, I_W_C_InvoiceLine.class);
            ilW.setLBR_Tax_ID (newTax.getLBR_Tax_ID());
            
            //	Buscar apenas o CFOP referente a operação
			Object[] taxation = MLBRTax.getTaxes (ilW, il.get_TrxName());
            
    		if (taxation == null)
    			log.warning ("Imposto não encontrado");
    		else
    		{
	    		if (((Integer) taxation[2]) > 0)
	    			ilW.setLBR_CFOP_ID (((Integer) taxation[2]));
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
}	//	VLBRRMA