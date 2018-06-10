package org.adempierelbr.process;

import java.sql.Timestamp;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempierelbr.model.MLBRNFeEvent;
import org.adempierelbr.model.MLBRPartnerDFe;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

/**
 * 		Processo para manifestar a NF emitida para a sua Organização
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ManifestDFe.java, v1.0 2013/11/09 16:08:49 PM, ralexsander Exp $
 */
public class ManifestDFe extends SvrProcess
{
	/**	Record ID				*/
	private int p_Record_ID = -1;
	
	/**	CPF							*/
	public String p_EventType = null;
	
	/**	CNPJ						*/
	public String p_XJust = null;
	
	/** Log							*/
	private static CLogger log = CLogger.getCLogger (ManifestDFe.class);
	
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare ()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;

			else if ("Description".equals (name))
				p_XJust = (String) para[i].getParameter();
			
			else if ("LBR_EventType".equals (name))
				p_EventType = (String) para[i].getParameter();
			
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		
		p_Record_ID = getRecord_ID();
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message (variables are parsed)
	 *  @throws Exception if not successful e.g.
	 *  throw new AdempiereUserError ("@FillMandatory@  @C_BankAccount_ID@");
	 */
	protected String doIt () throws Exception
	{
		//	Organization
		if (p_Record_ID <= 0)
			throw new AdempiereUserError ("@FillMandatory@  @Record_ID@");
		
		//	Unified Business Partner
		if (p_EventType == null || p_EventType.isEmpty())
			throw new AdempiereUserError ("@FillMandatory@  @LBR_EventType@");
		
		//	DF-e
		MLBRPartnerDFe dfe = new MLBRPartnerDFe (Env.getCtx(), p_Record_ID, get_TrxName());
		
		//	Event
		MLBRNFeEvent event = new MLBRNFeEvent (getCtx(), 0, get_TrxName());
		event.setAD_Org_ID(dfe.getAD_Org_ID());
		event.setLBR_PartnerDFe_ID(p_Record_ID);
		event.setlbr_NFeID(dfe.getlbr_NFeID());
		event.setLBR_EventType(p_EventType);
		event.setlbr_NFModel(MLBRNFeEvent.LBR_NFMODEL_NotaFiscalEletrônica);	//	FIXME: Verificar se é necessário
		event.setProtocol(dfe.getlbr_NFeProt());
		
		//	Only for 210240
		if (MLBRNFeEvent.LBR_EVENTTYPE_OperacaoNaoRealizada.equals(p_EventType))
			event.setDescription(p_XJust);
		event.setDateDoc(new Timestamp (System.currentTimeMillis()));
		event.setSeqNo(0);	//	Automatic
		event.saveEx();
		//
		if (event.processIt(MLBRNFeEvent.DOCACTION_Complete))
		{
			event.setDocStatus(MLBRNFeEvent.DOCSTATUS_Completed);
			event.setDocAction(MLBRNFeEvent.DOCACTION_None);
			event.save();
			
			// 	Update DF-e
			if (MLBRNFeEvent.LBR_EVENTTYPE_OperacaoNaoRealizada.equals(p_EventType)
					|| MLBRNFeEvent.LBR_EVENTTYPE_ConfirmacaoDaOperacao.equals(p_EventType))
			{
				dfe.setLBR_IsManifested(true);
				dfe.save();
			}
		}
		else
		{
			throw new AdempiereException ("Falha ao completar o registro do evento. " + event.getProcessMsg());
		}
		
		return "@Success@";
	}	//	doIt
}	//	ManifestDFe
