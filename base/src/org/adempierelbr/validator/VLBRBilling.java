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

import org.adempierelbr.model.MLBRBoleto;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.compiere.model.MClient;
import org.compiere.model.MInvoice;
import org.compiere.model.MSysConfig;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.PO;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * 		Validator para assuntos relacionados ao Boleto
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: VLBRBilling.java, v1.0 2017/05/17 18:00:23 PM, ralexsander Exp $
 */
public class VLBRBilling implements ModelValidator
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(VLBRBilling.class);
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
		engine.addDocValidate (MInvoice.Table_Name, this);
		engine.addDocValidate (MLBRNotaFiscal.Table_Name, this);
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
		if (MLBRNotaFiscal.Table_Name.equals(po.get_TableName()))
			return docValidate ((MLBRNotaFiscal) po, timing);
		else if (MInvoice.Table_Name.equals(po.get_TableName()))
			return docValidate ((MInvoice) po, timing);
		return null;
	}	//	docValidate
	
	/**
	 * 	Valida se é possível cancelar a NF
	 * @param nf
	 * @param timing
	 * @return
	 */
	public String docValidate (MLBRNotaFiscal nf, int timing)
	{
		//	Permite Cancelar / Anular NF com Boletos Válidos
		if (TIMING_BEFORE_VOID == timing
				&& !MSysConfig.getBooleanValue("LBR_ALLOW_VOID_NF_WITH_VALID_BILL", true, nf.getAD_Client_ID())
				&& MLBRNotaFiscal.DOCSTATUS_Completed.equals(nf.getDocStatus())
				&& MLBRNotaFiscal.LBR_NFESTATUS_100_AutorizadoOUsoDaNF_E.equals(nf.getlbr_NFeStatus())
				&& MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalEletrônica.equals(nf.getlbr_NFModel()))
		{
			// Buscar Boleto
			MLBRBoleto[] boletos = MLBRBoleto.getBoleto(Env.getCtx(), nf.getC_Invoice_ID(), nf.get_TrxName());
			
			for (MLBRBoleto boleto : boletos)
			{
				//	Se houver algum Boleto válido não Cancelar a NF.
				if (!boleto.isIsCancelled())
					return "Impossível Cancelar NF com Boletos Válidos";
			}
		}

		return null;
	}	//	docValidate
	
	/**
	 * 	Valida se é possível cancelar a NF
	 * @param nf
	 * @param timing
	 * @return
	 */
	public String docValidate (MInvoice invoice, int timing)
	{
		/**
		 * 	Após reativar, anular, fechar ou estornar executa:
		 * 		Cancela retenções, boleto e CNAB
		 */
		if (timing == TIMING_AFTER_REACTIVATE || timing == TIMING_AFTER_VOID || timing == TIMING_AFTER_CLOSE || timing == TIMING_AFTER_REVERSECORRECT)
		{
			String sql = "UPDATE C_Invoice SET LBR_Withhold_Invoice_ID=NULL WHERE LBR_Withhold_Invoice_ID=" + invoice.getC_Invoice_ID();
			DB.executeUpdate (sql, invoice.get_TrxName());

			// Cancela o Boleto e CNAB
			MLBRBoleto.cancelBoleto (invoice.getCtx(), invoice.getC_Invoice_ID(), invoice.get_TrxName());
		}	//	TIMING_AFTER_REACTIVATE, VOID, CLOSE, REVERSECORRECT
		
		return null;
	}
}	//	VLBRRMA