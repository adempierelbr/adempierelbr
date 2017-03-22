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

import java.util.List;

import org.adempierelbr.grid.VCreateFromNFeLotUI;
import org.adempierelbr.model.MLBRNFeEvent;
import org.adempierelbr.model.MLBRNFeLot;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.compiere.grid.VCreateFromFactory;
import org.compiere.model.MAttachment;
import org.compiere.model.MAttachmentEntry;
import org.compiere.model.MAttributeSetInstance;
import org.compiere.model.MBankAccount;
import org.compiere.model.MClient;
import org.compiere.model.MClientInfo;
import org.compiere.model.MInOutLine;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MLocation;
import org.compiere.model.MMovementLine;
import org.compiere.model.MOrder;
import org.compiere.model.MRequisition;
import org.compiere.model.MRequisitionLine;
import org.compiere.model.MSysConfig;
import org.compiere.model.MTimeExpense;
import org.compiere.model.MTimeExpenseLine;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.process.DocAction;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Ini;
import org.compiere.util.Msg;

import br.inf.portalfiscal.nfe.v310.NFeDocument;

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
	private static CLogger log = CLogger.getCLogger(VLBRCommons.class);
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
		engine.addModelChange (MInvoiceLine.Table_Name, this);
		engine.addModelChange (MInOutLine.Table_Name, this);
		engine.addModelChange (MLocation.Table_Name, this);
		engine.addModelChange (MBankAccount.Table_Name, this);
		engine.addModelChange (MAttributeSetInstance.Table_Name, this);
		engine.addModelChange (MInvoice.Table_Name, this);
		engine.addModelChange (MOrder.Table_Name, this);
		
		//	DocValidate
		engine.addDocValidate(MTimeExpense.Table_Name, this);
		engine.addDocValidate(MRequisition.Table_Name, this);
		
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
		
		/**
		 * 	Grava a variável que permite saber se a LBR está habilitada
		 */
		boolean enabled = MSysConfig.getBooleanValue ("LBR_ENABLED", false, MClient.get (Env.getCtx()).getAD_Client_ID());
		
		if (enabled)
			log.fine ("LBR is ENABLED.");
		else
			log.fine ("LBR is DISABLED.");

		//	Set Enviroment
		Env.setContext(Env.getCtx(), "#LBR_ENABLED", enabled);
		
		//	Set BPartner Cash
		Env.setContext(Env.getCtx(), "#POS_BPartner_ID", MClientInfo.get(Env.getCtx()).getC_BPartnerCashTrx_ID());
		
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
		
		//	Anexo
		else if (MAttachment.Table_Name.equals(po.get_TableName()))
			return modelChange ((MAttachment) po, type);
		
		//	Organização da Conta Bancária
		else if (MBankAccount.Table_Name.equals(po.get_TableName()))
			return modelChange ((MBankAccount) po, type);

		//	Validar Número de Série Duplicados
		else if (MAttributeSetInstance.Table_Name.equals(po.get_TableName()))
			return modelChange ((MAttributeSetInstance) po, type);

		//	Validar Tipo de Documento
		else if (MOrder.Table_Name.equals(po.get_TableName()))
			return modelChange ((MOrder) po, type);

		//	Validar Tipo de Documento
		else if (MInvoice.Table_Name.equals(po.get_TableName()))
			return modelChange ((MInvoice) po, type);

		//	Validar Movimentação de Estoque
		else if (MMovementLine.Table_Name.equals(po.get_TableName()))
			return modelChange ((MMovementLine) po, type);
		
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
     *	Model Change of a monitored Table.
     *	Called after PO.beforeSave/PO.beforeDelete
     *	when you called addModelChange for the table
     *	@param po persistent object
     *	@param type TYPE_
     *	@return error message or null
     *	@exception Exception if the recipient wishes the change to be not accept.
     */
	public String modelChange (MOrder order, int type) throws Exception
	{
		if (type == TYPE_BEFORE_NEW)
		{
			String sql = "SELECT COUNT(*) "
					+ "FROM C_DocType "
					+ "WHERE C_DocType.DocBaseType IN ('SOO', 'POO') "
					+ "AND C_DocType.IsSOTrx=? "
					+ "AND COALESCE(C_DocType.DocSubTypeSO,' ')<>'RM' "
					+ "AND C_DocType.C_DocType_ID=?";
			//
			int result = DB.getSQLValue (null, sql, new Object[]{order.isSOTrx(), order.getC_DocTypeTarget_ID()});
			
			if (result < 1)
				return Msg.translate(Env.getCtx(), "Tipo de Documento Inválido");
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
	public String modelChange (MMovementLine ml, int type) throws Exception
	{
		if (type == TYPE_BEFORE_CHANGE)
		{
			//	Force To Attribute to be the same as From attribute
			if (ml.getM_AttributeSetInstance_ID() > 0)
				ml.setM_AttributeSetInstanceTo_ID(ml.getM_AttributeSetInstance_ID());
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
	public String modelChange (MInvoice invoice, int type) throws Exception
	{
		if (type == TYPE_BEFORE_NEW)
		{
			String sql = "SELECT COUNT(*) "
					+ "FROM C_DocType "
					+ "WHERE C_DocType.DocBaseType IN ('ARI', 'API', 'APC', 'ARC') "
					+ "AND C_DocType.IsSOTrx=? "
					+ "AND C_DocType.C_DocType_ID=?";
			//
			int result = DB.getSQLValue (null, sql, new Object[]{invoice.isSOTrx(), invoice.getC_DocTypeTarget_ID()});
			
			if (result < 1)
				return Msg.translate(Env.getCtx(), "Tipo de Documento Inválido");
		}
		
		return null;
	}	//	modelChange
	
	/**
	 * 	Reativar ou Anular o Timesheet
	 * 
	 * 	@param po persistent object
	 *	@param timing see TIMING_ constants
     *	@return error message or null
	 */
	private String docValidate (MTimeExpense te, int timing)
	{
		/**
		 * 	Código para Anular o Time Expense
		 */
		if (timing == TIMING_BEFORE_VOID || timing == TIMING_BEFORE_REVERSECORRECT)
		{
			for (MTimeExpenseLine tel : te.getLines())
			{
				tel.setQty(Env.ZERO);
				tel.setQtyInvoiced(Env.ZERO);
				tel.setQtyReimbursed(Env.ZERO);
				tel.setPriceInvoiced(Env.ZERO);
				tel.setPriceReimbursed(Env.ZERO);
				tel.save();
			}
			//
			te.setDocAction(DocAction.ACTION_None);
			te.setDocStatus(MTimeExpense.DOCSTATUS_Voided);
			te.save();
		}
		
		/**
		 * 	Código para Reativar o Time Expense
		 */
		else if (timing == TIMING_BEFORE_REACTIVATE)
		{
			//	Lines
			for (MTimeExpenseLine tel : te.getLines())
			{
				tel.setProcessed(false);
				tel.save();
			}
			
			//	Head
			if (!te.isActive())
			{
				te.setIsActive(true);
			}
			te.setProcessed(false);
			te.setDocAction(DocAction.ACTION_Complete);
			te.setDocStatus(MTimeExpense.DOCSTATUS_InProgress);
			te.save();
		}
		//
		return null;
	}	//	docValidate
	
	/**
	 * 	Reativa ou Anular a Requisição
	 * 
	 * 	@param po persistent object
	 *	@param timing see TIMING_ constants
     *	@return error message or null
	 */
	private String docValidate (MRequisition re, int timing)
	{
		/**
		 * 	Código para Anular a Requisição
		 */
		if (timing == TIMING_BEFORE_VOID || timing == TIMING_BEFORE_REVERSECORRECT)
		{
			//Validar se alguma linha da Requisição está Relacionada a um Pedido de Compra
			for (MRequisitionLine req : re.getLines())
			{
				if (req.getC_OrderLine_ID() != 0)
				{
					return "Não é Possivel Anular a Requisição. Requisição está relacionada com um Pedido de Compra";
				}
			}
			
			for (MRequisitionLine req : re.getLines())
			{
				req.setQty(Env.ZERO);
				req.setPriceActual(Env.ZERO);
				req.save();
			}
			//
			re.setDocAction(DocAction.ACTION_None);
			re.setDocStatus(MRequisition.DOCSTATUS_Voided);
			re.save();
		}
		/**
		 * 	Código para Reativar a Requisição
		 */
		else if (timing == TIMING_AFTER_REACTIVATE)
		{
			re.setProcessed(false);
			re.setDocAction(DocAction.ACTION_Complete);
			re.setDocStatus(MRequisition.DOCSTATUS_InProgress);
			re.save();
		}
		//
		return null;
	}	//	docValidate	
	
	/**
     *	Model Change of a monitored Table.
     *	Called after PO.beforeSave/PO.beforeDelete
     *	when you called addModelChange for the table
     *	@param po persistent object
     *	@param type TYPE_
     *	@return error message or null
     *	@exception Exception if the recipient wishes the change to be not accept.
     */
	public String modelChange (MBankAccount  bank, int type) throws Exception
	{
		//	Ajusta a Organização
		if (TYPE_BEFORE_NEW == type && bank.getAD_Org_ID()==0)
		{
			return "A Organização deve ser diferente de * ";
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
	public String modelChange (MAttributeSetInstance asi, int type) throws Exception
	{
		/**
		 * Não Permite duplicidade de Número de Série
		 */
		if (TYPE_BEFORE_NEW == type || TYPE_BEFORE_CHANGE == type)
		{
			if(!MSysConfig.getBooleanValue("LBR_ALLOW_DUPLICATED_SERIAL_NUMBER", true, asi.getAD_Client_ID()))
			{
				String whereClause = " M_AttributeSetInstance_ID IN (SELECT M_AttributeSetInstance.M_AttributeSetInstance_ID FROM M_AttributeSetInstance "
									+ "INNER JOIN M_Storage ON M_Storage.M_AttributeSetInstance_ID = M_AttributeSetInstance.M_AttributeSetInstance_ID "
									+ "INNER JOIN M_AttributeSet ON M_AttributeSetInstance.M_AttributeSet_ID = "
									+ "M_AttributeSet.M_AttributeSet_ID "
									+ "WHERE M_AttributeSetInstance.serno=? AND M_AttributeSet.M_AttributeSet_ID=?)";
								
				List <MAttributeSetInstance> asiList = new Query(asi.getCtx(),MAttributeSetInstance.Table_Name, whereClause, null)
				.setParameters(asi.getSerNo(),asi.getM_AttributeSet_ID())
				.list();					
				if (!asiList.isEmpty())
				{
					return "Número de Série já existe";
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
		/**
		 * 	Reativar/Anular Relatório de Horas (Timesheet)
		 */
		if (MTimeExpense.Table_Name.equals(po.get_TableName()))
			return docValidate ((MTimeExpense) po, timing);
		
		/**
		 * 	Reativar/Anular Requisição
		 */
		else if (MRequisition.Table_Name.equals(po.get_TableName()))
			return docValidate ((MRequisition) po, timing);
		
		return null;
	}	//	docValidate
}	//	VLBRCommons