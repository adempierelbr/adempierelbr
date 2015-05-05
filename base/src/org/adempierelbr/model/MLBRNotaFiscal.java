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
package org.adempierelbr.model;

import java.io.File;
import java.math.BigDecimal;
import java.math.MathContext;
import java.math.RoundingMode;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.exceptions.FillMandatoryException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.nfe.NFeCancelamento;
import org.adempierelbr.nfe.NFeXMLGenerator;
import org.adempierelbr.nfse.INFSe;
import org.adempierelbr.nfse.NFSeUtil;
import org.adempierelbr.process.ProcInutNF;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.NFeEmail;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.validator.VLBROrder;
import org.adempierelbr.wrapper.I_W_AD_ClientInfo;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.adempierelbr.wrapper.I_W_C_DocType;
import org.adempierelbr.wrapper.I_W_C_Invoice;
import org.adempierelbr.wrapper.I_W_C_Order;
import org.adempierelbr.wrapper.I_W_C_Tax;
import org.compiere.model.MAcctSchema;
import org.compiere.model.MAttachment;
import org.compiere.model.MAttachmentEntry;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MClientInfo;
import org.compiere.model.MConversionRate;
import org.compiere.model.MCost;
import org.compiere.model.MCountry;
import org.compiere.model.MDocType;
import org.compiere.model.MInOut;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MInvoiceTax;
import org.compiere.model.MLocation;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.model.MRefList;
import org.compiere.model.MRegion;
import org.compiere.model.MShipper;
import org.compiere.model.MSysConfig;
import org.compiere.model.MTable;
import org.compiere.model.MTax;
import org.compiere.model.MUser;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.Query;
import org.compiere.process.DocAction;
import org.compiere.process.DocOptions;
import org.compiere.process.DocumentEngine;
import org.compiere.util.DB;
import org.compiere.util.Env;

import br.inf.portalfiscal.nfe.v8f.NFeDocument;
import br.inf.portalfiscal.nfe.v8f.NfeProcDocument;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Ide;
import br.inf.portalfiscal.nfe.v8f.TNFe.InfNFe.Ide.IdDest.Enum;
import br.inf.portalfiscal.nfe.v8f.TNfeProc;
import br.inf.portalfiscal.nfe.v8f.TProtNFe;
import br.inf.portalfiscal.nfe.v8f.TProtNFe.InfProt;
import br.inf.portalfiscal.nfe.v8f.TRetInutNFe.InfInut;
import bsh.EvalError;
import bsh.Interpreter;

/**
 *		Nota Fiscal Model
 *
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRNotaFiscal.java, v2.0 2011/10/18 7:06:39 PM, ralexsander Exp $
 *
 *		Old Version:
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRNotaFiscal.java, 08/01/2008 10:56:00 mgrigioni
 */
public class MLBRNotaFiscal extends X_LBR_NotaFiscal implements DocAction, DocOptions
{
	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	/** REFERENCE */
	public Map<String,String> m_refNCM  = new HashMap<String, String>(); //Referência NCM
	public Map<String,String> m_refCFOP = new HashMap<String, String>(); //Referência CFOP
	public ArrayList<Integer> m_refLegalMessage = new ArrayList<Integer>(); //Referência Mensagem Legal

	/** STRING */
	String m_NCMReference  = "";
	String m_CFOPNote      = "";
	String m_CFOPReference = "";
	String m_LegalMessage  = "";

	/** CONSTANT */
	public final static int BRAZIL = 139;
	
	/**	RPS sem número do documento	*/
	public static final String RPS_TEMP = "RPS-TEMP";
	
	/**
	 * 		Identificador de local de destino da operação
	 * 
	 * 	1=Operação interna;	
	 * 	2=Operação interestadual;
	 * 	3=Operação com exterior.
	 */
	private Enum idDest = null;
	
	public static final int CURRENCY_BRL = 297;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNotaFiscal (Properties ctx, int ID, String trxName)
	{
		super (ctx, ID, trxName);
	}	//	MLBRNotaFiscal

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNotaFiscal (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRNotaFiscal

	/**
	 * Retorna as Notas Fiscais por período (compra e venda)
	 * @param dateFrom
	 * @param dateTo
	 * @return MNotaFiscal[]
	 */
	public static MLBRNotaFiscal[] get (Timestamp dateFrom, Timestamp dateTo, String trxName)
	{
		return get (dateFrom, dateTo,null,trxName);
	}	//	get

	/**
	 * Retorna as Notas Fiscais por período (compra, venda ou ambos)
	 * @param dateFrom
	 * @param dateTo
	 * @param isSOTrx: true = venda, false = compra, null = ambos
	 * @return MNotaFiscal[]
	 */
	public static MLBRNotaFiscal[] get (Timestamp dateFrom, Timestamp dateTo, Boolean isSOTrx, String trxName)
	{
		String whereClause = "AD_Client_ID=? AND " +
							 "(CASE WHEN IsSOTrx='Y' THEN TRUNC(DateDoc) " +
							 "ELSE TRUNC(NVL(lbr_DateInOut, DateDoc)) END) BETWEEN ? AND ?";

		String orderBy = "(CASE WHEN IsSOTrx='Y' THEN TRUNC(DateDoc) ELSE TRUNC(NVL(lbr_DateInOut, DateDoc)) END)";
		//
		if (isSOTrx != null)
			whereClause += " AND IsSOTrx='" + (isSOTrx ? "Y" : "N") + "'";

		MTable table = MTable.get(Env.getCtx(), MLBRNotaFiscal.Table_Name);
		Query q =  new Query(Env.getCtx(), table, whereClause.toString(), trxName);
	          q.setOrderBy(orderBy);
		      q.setParameters(new Object[]{Env.getAD_Client_ID(Env.getCtx()),dateFrom,dateTo});

	    List<MLBRNotaFiscal> list = q.list();
	    MLBRNotaFiscal[] nfs = new MLBRNotaFiscal[list.size()];
	    return list.toArray(nfs);
	}	//	get


	/**
	 * Retorna o NCM ou a Referência do NCM
	 * 	de acordo com a configuração do sistema.
	 *
	 * @param LBR_NCM_ID
	 * @return
	 */
	public String getNCM (Integer LBR_NCM_ID)
	{
		if (LBR_NCM_ID == null || LBR_NCM_ID.intValue() == 0)
			return null;

		X_LBR_NCM ncm = new X_LBR_NCM(getCtx(),LBR_NCM_ID,get_TrxName());
		String ncmName = ncm.getValue();

		if (!(ncmName == null || ncmName.equals("")))
		{
			//	Retorna a Ref. do NCM
			if (m_refNCM.containsKey(ncmName))
			{
				//	Retorna o NCM
				if (!MSysConfig.getBooleanValue("LBR_REF_NCM", false, Env.getAD_Client_ID(Env.getCtx())))
					return ncmName;
				//	Retorna a Chave
				else
					return m_refNCM.get(ncmName).toString();	//	NCM
			}
			else
			{
				String cl = TextUtil.ALFAB[m_refNCM.size()];
				m_refNCM.put(ncmName, cl);
				setNCMReference(ncmName,cl,true);
				//	Retorna o NCM
				if (!MSysConfig.getBooleanValue("LBR_REF_NCM", false, Env.getAD_Client_ID(Env.getCtx())))
					return ncmName;
				//	Retorna a Chave
				else
					return cl;
			}
		}
		//
		return null;
	}	//	getNCM

	/**
	 * Retorna o valor do Imposto
	 *
	 * @return BigDecimal amt
	 */
	public BigDecimal getTaxAmt (String taxIndicator)
	{
		if (taxIndicator == null)
			return Env.ZERO;

		String sql = "SELECT SUM(lbr_TaxAmt) FROM LBR_NFTax " +
		             "WHERE LBR_NotaFiscal_ID = ? AND LBR_TaxGroup_ID IN " +
		             "(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?)";
		//
		BigDecimal result = DB.getSQLValueBD(get_TrxName(), sql, new Object[]{getLBR_NotaFiscal_ID(),taxIndicator.toUpperCase()});
		return result == null ? Env.ZERO : result;
	} 	//	getTaxAmt

	/**
	 * Retorna a Base de Cálculo do Imposto
	 *
	 * @return BigDecimal amt
	 */
	public BigDecimal getTaxBaseAmt(String taxIndicator)
	{
		if (taxIndicator == null)
			return Env.ZERO;

		String sql = "SELECT SUM(lbr_TaxBaseAmt) FROM LBR_NFTax " +
		             "WHERE LBR_NotaFiscal_ID = ? AND LBR_TaxGroup_ID IN " +
		             "(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?)";
		//
		BigDecimal result = DB.getSQLValueBD(get_TrxName(), sql, new Object[]{getLBR_NotaFiscal_ID(),taxIndicator.toUpperCase()});
		return result == null ? Env.ZERO : result;
	} 	//	getTaxAmt

	/**
	 * Retorna a Alíquota do Imposto
	 *
	 * @return BigDecimal amt
	 */
	public BigDecimal getTaxRate(String taxIndicator)
	{
		if (taxIndicator == null)
			return Env.ZERO;

		String sql = "SELECT AVG(lbr_TaxRate) FROM LBR_NFLineTax " +
		             "WHERE LBR_NotaFiscalLine_ID IN " +
		             "(SELECT LBR_NotaFiscalLine_ID FROM LBR_NotaFiscalLine WHERE LBR_NotaFiscal_ID = ?) " +
		             "AND LBR_TaxGroup_ID IN (SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?)";
		//

		BigDecimal result = DB.getSQLValueBD(get_TrxName(), sql, new Object[]{getLBR_NotaFiscal_ID(),taxIndicator.toUpperCase()});
		return result == null ? Env.ZERO : result;
	} 	//	getTaxRate

	public BigDecimal getCost(int C_AcctSchema_ID, int C_CostElement_ID){

		BigDecimal currentCost = Env.ZERO;

		MLBRNotaFiscalLine[] lines = getLines("line");
		for(MLBRNotaFiscalLine line : lines){
			int M_Product_ID = line.getM_Product_ID();
			if (M_Product_ID == 0)
				continue;

			MProduct product = new MProduct(getCtx(),M_Product_ID,get_TrxName());
			MAcctSchema as   = MAcctSchema.get(getCtx(), C_AcctSchema_ID);

			MCost cost = MCost.get(product,0,as,0,C_CostElement_ID,get_TrxName());
			if (cost != null)
				currentCost = currentCost.add(cost.getCurrentCostPrice().multiply(line.getQty()));
		}

		return currentCost.setScale(2, BigDecimal.ROUND_HALF_UP);
	} //getCost

	/**
	 *  Retorno o valor da Base de ICMS
	 *
	 *  @return	BigDecimal	Base ICMS
	 */
	public BigDecimal getICMSBase()
	{
		return getTaxBaseAmt("ICMS");
	}	//	getICMSBase

	/**
	 *  Retorno o valor da Base de ICMSST
	 *
	 *  @return	BigDecimal	Base ICMSST
	 */
	public BigDecimal getICMSSTBase()
	{
		return getTaxBaseAmt("ICMSST");
	}	//	getICMSBaseST

	/**
	 *  Retorno o valor do ICMS
	 *
	 *  @return	BigDecimal	ICMS
	 */
	public BigDecimal getICMSAmt()
	{
		return getTaxAmt("ICMS");
	}	//	getICMSAmt

	public BigDecimal getICMSDebAmt(){

		String sql = "SELECT SUM(ValorICMS) FROM lbr_SitICMS_V " +
                     "WHERE LBR_NotaFiscal_ID = ?";
        //
		BigDecimal result = DB.getSQLValueBD(get_TrxName(), sql, new Object[]{getLBR_NotaFiscal_ID()});
		return result == null ? Env.ZERO : result;
	} // getICMSDebAmt

	/**
	 *  Retorno a média das alíquotas do ICMS
	 *
	 *  @return	BigDecimal	ICMS Rate
	 */
	public BigDecimal getICMSRate()
	{
		return getTaxRate("ICMS");
	}	//	getICMSRate

	/**
	 * Retorno o valor do ICMS
	 * @param ctx
	 * @param LBR_NotaFiscal_ID
	 * @param trx
	 * @return BigDecimal ICMS
	 * @deprecated
	 */
	public static BigDecimal getICMSAmt(Properties ctx, int LBR_NotaFiscal_ID, String trx){
		MLBRNotaFiscal nf = new MLBRNotaFiscal(ctx,LBR_NotaFiscal_ID,trx);
		return nf.getICMSAmt();
	} //getICMSAMt

	/**
	 *  Retorno o valor do ICMSST
	 *
	 *  @return	BigDecimal	ICMSST
	 */
	public BigDecimal getICMSSTAmt()
	{
		return getTaxAmt("ICMSST");
	}	//	getICMSAmtST

	/**
	 *  Retorno o valor do IPI
	 *
	 *  @return	BigDecimal	IPI
	 */
	public BigDecimal getIPIAmt()
	{
		return getTaxAmt("IPI");
	}	//	getIPIAmt

	/**
	 *  Retorno o valor do PIS
	 *
	 *  @return	BigDecimal	PIS
	 */
	public BigDecimal getPISAmt()
	{
		return getTaxAmt("PIS");
	}	//	getPISAmt

	/**
	 *  Retorno o valor do COFINS
	 *
	 *  @return	BigDecimal	COFINS
	 */
	public BigDecimal getCOFINSAmt()
	{
		return getTaxAmt("COFINS");
	}	//	getCOFINSAmt

	/**
	 *  Retorno o valor do II
	 *
	 *  @return	BigDecimal	II
	 */
	public BigDecimal getIIAmt()
	{
		return getTaxAmt("II");
	}	//	getIIAmt

	public static int getLBR_NotaFiscal_ID(String DocumentNo, boolean IsSOTrx, String trx)
	{

		String sql = "SELECT LBR_NotaFiscal_ID FROM LBR_NotaFiscal " +
				     "WHERE DocumentNo = ? AND AD_Client_ID = ? " +
				     "AND IsSOTrx = ? " +
				     "ORDER BY LBR_NotaFiscal_ID desc";

		Integer LBR_NotaFiscal_ID = DB.getSQLValue(trx, sql,
				new Object[]{DocumentNo, Env.getAD_Client_ID(Env.getCtx()),IsSOTrx});

		//	RPS
		if (LBR_NotaFiscal_ID < 1)
			LBR_NotaFiscal_ID = DB.getSQLValue (trx, sql, new Object[]{TextUtil.lPad (DocumentNo, 12), Env.getAD_Client_ID(Env.getCtx()),IsSOTrx});
		//
		return LBR_NotaFiscal_ID;
	}	//	getLBR_NotaFiscal_ID

	/**
	 * 	Retorna o CFOP das linhas, no caso de mais de 1 CFOP,
	 * 		retorna o ref. ao Maior Valor
	 *
	 * @return CFOP
	 */
	public String getCFOP ()
	{
		String sql = "SELECT lbr_CFOPName " +
					 "FROM LBR_NotaFiscalLine " +
					 "WHERE LBR_NotaFiscal_ID=? ORDER BY LineTotalAmt DESC";

		return DB.getSQLValueString(get_TrxName(), sql, getLBR_NotaFiscal_ID());
	}	//	getCFOP

	/**
	 * Retorna o CFOP ou a Referência do CFOP
	 * 	de acordo com a configuração do sistema.
	 *
	 * @param LBR_CFOP_ID
	 * @return CFOP ou Ref. do CFOP
	 */
	public String getCFOP(Integer LBR_CFOP_ID)
	{
		if (LBR_CFOP_ID == null || LBR_CFOP_ID.intValue() == 0)
			return null;
		//
		X_LBR_CFOP cfop = new X_LBR_CFOP(getCtx(),LBR_CFOP_ID,get_TrxName());
		String cfopName = cfop.getValue();
		//
		if (!(cfopName == null || cfopName.equals("")))
		{
			//	Retorna a Ref. do CFOP
			if (m_refCFOP.containsKey(cfopName))
			{
				//	Retorna o CFOP
				if (!MSysConfig.getBooleanValue("LBR_REF_CFOP", false, Env.getAD_Client_ID(Env.getCtx())))
					return cfopName;
				//	Retorna a Chave
				else
					return m_refCFOP.get(cfopName).toString();	//	CFOP
			}
			else
			{
				String cl = TextUtil.ALFAB[m_refCFOP.size()];
				m_refCFOP.put(cfopName, cl);
				setCFOPNote(cfop.getDescription() + ", ",true);
				setCFOPReference(cfopName,cl);
				//	Retorna o CFOP
				if (!MSysConfig.getBooleanValue("LBR_REF_CFOP", false, Env.getAD_Client_ID(Env.getCtx())))
					return cfopName;
				//	Retorna a Chave
				else
					return cl;
			}
		}
		//
		return null;
	}	//	getCFOP

	public void setLegalMessage(Integer LBR_LegalMessage_ID){

		if (LBR_LegalMessage_ID == null || LBR_LegalMessage_ID.intValue() == 0)
			return;

		X_LBR_LegalMessage lMessage = new X_LBR_LegalMessage(getCtx(),LBR_LegalMessage_ID,get_TrxName());

		if (!m_refLegalMessage.contains(LBR_LegalMessage_ID)){

			m_refLegalMessage.add(LBR_LegalMessage_ID);
			setLegalMessage(lMessage.getTextMsg() + ", ",true);
		}
	} //setLegalMessage

	public String getNCMReference()
	{
		return TextUtil.retiraPontoFinal(m_NCMReference);
	}

	/**
	 * 	Set NCM Reference
	 *
	 * 	A-0000.00.00, B-9999.99.99
	 *
	 * @param ncmName
	 * @param cl
	 * @param concat
	 */
	private void setNCMReference(String ncmName, String cl, boolean concat)
	{
		if (concat)
		{
			if (m_NCMReference.equals(""))
				m_NCMReference += "Classif: ";
			//
			m_NCMReference += cl + "-" + ncmName + ", ";
		}
		else
			m_NCMReference = ncmName;
	}

	public String getCFOPNote() {
		return TextUtil.retiraPontoFinal(m_CFOPNote);
	}

	private void setCFOPNote(String cfopNote, boolean concat) {

		if (concat){
			m_CFOPNote += cfopNote;
		}
		else{
			m_CFOPNote = cfopNote;
		}
	}

	public String getCFOPReference() {
		return TextUtil.retiraPontoFinal(m_CFOPReference);
	}

	/**
	 * 	Set CFOP Reference.
	 *
	 * 	A-5.101, B-5.102
	 *
	 * @param cfopName
	 * @param cl
	 * @param concat
	 */
	private void setCFOPReference(String cfopName, String cl)
	{
		if (m_CFOPReference == null
				|| m_CFOPReference.equals(""))
		{
			if (MSysConfig.getBooleanValue("LBR_REF_CFOP", false, Env.getAD_Client_ID(Env.getCtx())))
				m_CFOPReference = cl + "-" + cfopName;
			else
				m_CFOPReference = cfopName;
		}
		else
		{
			if (MSysConfig.getBooleanValue("LBR_REF_CFOP", false, Env.getAD_Client_ID(Env.getCtx())))
				m_CFOPReference += ", " + cl + "-" + cfopName;
			else
				m_CFOPReference += ", " + cfopName;
		}
	}

	public String getLegalMessage() {
		return TextUtil.retiraPontoFinal(m_LegalMessage);
	}

	private void setLegalMessage(String legalMessage, boolean concat) {
		if (concat){
			m_LegalMessage += legalMessage;
		}
		else{
			m_LegalMessage = legalMessage;
		}
	}

	/**************************************************************************
	 *  getDIs
	 *  @return X_LBR_NFDI[] taxes
	 */
	public X_LBR_NFDI[] getDIs(){

		String whereClause = "LBR_NotaFiscal_ID = ?";

		MTable table = MTable.get(getCtx(), X_LBR_NFDI.Table_Name);
		Query query =  new Query(getCtx(), table, whereClause, get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_NotaFiscal_ID()});

		List<X_LBR_NFDI> list = query.list();

		return list.toArray(new X_LBR_NFDI[list.size()]);
	}	//	getDIs

	/**
	 * Atualiza autorização NF-e e XML de distribuicao
	 *
	 * return null (success) or error message
	 * @throws Exception
	 */
	public static void authorizeNFe (TProtNFe protNFe, String trxName) throws Exception
	{		
		if (protNFe == null || protNFe.getInfProt() == null)
			throw new Exception ("Protocolo inválido");

		InfProt infProt = protNFe.getInfProt();
			
		String chNFe	= infProt.getChNFe();
		String digVal 	= null;
		String dhRecbto = infProt.getDhRecbto().toString();
		String cStat 	= infProt.getCStat();
		String nProt 	= infProt.getNProt();
		
		if (infProt.getDigVal() != null)
			digVal = infProt.xgetDigVal().getStringValue();
		//
		MLBRNotaFiscal nf = getNFe (chNFe, trxName);
		if (nf == null)
			throw new Exception ("NF não encontrada: " + chNFe);

		if (nf.getlbr_NFeStatus() != null && nf.getlbr_NFeStatus().equals (NFeUtil.AUTORIZADA))
			throw new Exception ("NF já processada. " + nf.getDocumentNo());

        Timestamp ts = NFeUtil.stringToTime (dhRecbto);
        //
        nf.setlbr_DigestValue(digVal);
        
        try
        {
        	nf.setlbr_NFeStatus(cStat);
        }
        catch (IllegalArgumentException e)
        {
        	e.printStackTrace();
        }
        
        nf.setlbr_NFeProt(nProt);
        nf.setDateTrx(ts);
        nf.setProcessed(true);

		//	Estados Finais
		if (TextUtil.match (cStat, LBR_NFESTATUS_100_AutorizadoOUsoDaNF_E,
				LBR_NFESTATUS_101_CancelamentoDeNF_EHomologado,
				LBR_NFESTATUS_110_UsoDenegado,
				LBR_NFESTATUS_135_EventoRegistradoEVinculadoANF_E,
				LBR_NFESTATUS_999_RejeiçãoErroNãoCatalogadoInformarAMensagemDeE))
		{
			nf.setDocStatus(DOCSTATUS_Completed);
			nf.setDocAction(DOCACTION_Void);
			nf.setProcessed(true);
			//
			if (TextUtil.match (cStat, LBR_NFESTATUS_101_CancelamentoDeNF_EHomologado,
				LBR_NFESTATUS_135_EventoRegistradoEVinculadoANF_E))
				nf.setIsCancelled(true);
			
			/**	
			 * 	Gera o arquivo de distribuição
			 */
			MAttachment attachment = nf.getAttachment(true);
			
			//	Anexo não encontrado
			if (attachment == null || attachment.getEntryCount() == 0)
				throw new Exception ("Arquivo XML não encontrado na NF");
			
			//	Entries
			String xml = null;
			
			// 	Procura o XML nos registros
			for (MAttachmentEntry entry : attachment.getEntries())
			{
				if ((nf.getlbr_NFeID() + "-nfe.xml").equals(entry.getName()))
				{
					xml = new String (entry.getData(), "UTF-8");
					attachment.deleteEntry(entry.getIndex());
					break;
				}
			}
			
			//	Falha, não encontrado
			if (xml == null)
				throw new Exception ("Arquivo XML não encontrado na NF");
			
			//	Converte em objeto
			NFeDocument nfe = NFeDocument.Factory.parse(xml);
			
			//	Cria um novo arquivo de distribuição
			NfeProcDocument nfeProcDoc = NfeProcDocument.Factory.newInstance();
			TNfeProc nfeProc = nfeProcDoc.addNewNfeProc();
			nfeProc.setVersao(NFeUtil.VERSAO_LAYOUT);
			nfeProc.setNFe(nfe.getNFe());
			nfeProc.setProtNFe(protNFe);
			
			//	Atualiza o anexo
			attachment.addEntry(nf.getlbr_NFeID() + "-dst.xml", nfeProcDoc.xmlText(NFeUtil.getXmlOpt()).getBytes("UTF-8"));
			attachment.save();
			
			//	Envia o e-mail para o cliente
			NFeEmail.sendMail(nf);
		}
		
		//	Reativar o documento para correção
		else
		{
			nf.setDocStatus(DOCSTATUS_Invalid);
			nf.setDocAction(DOCACTION_Complete);
			nf.setProcessed(false);
		}
		
		//	Save changes
		nf.save();
	}	//	authorizeNFe

	/**
	 * 	Encontra a NF pelo ID de NF-e
	 *
	 * @param NFeID
	 * @return
	 */
	public static MLBRNotaFiscal getNFe (String NFeID, String trxName)
	{
		String sql =  "SELECT LBR_NotaFiscal_ID FROM LBR_NotaFiscal " +
					   "WHERE lbr_NFeID=? AND AD_Client_ID=?";

		int LBR_NotaFiscal_ID = DB.getSQLValue(trxName, sql,
				new Object[]{NFeID, Env.getAD_Client_ID(Env.getCtx())});

		if (LBR_NotaFiscal_ID > 0)
			return new MLBRNotaFiscal (Env.getCtx(), LBR_NotaFiscal_ID, trxName);
		else
		{
//			log.warning("NFe " + NFeID);
			return null;
		}
	}	//	get

	/**
	 * 	Verifica se existe NF registrada com este número para Cliente/Fornecedor
	 *
	 * @param String DocumentNo
	 * @param int C_BPartner_ID
	 * @return true if exists or false if not
	 */
	public static boolean ifExists (String documentno, int C_BPartner_ID, boolean isSOTrx)
	{

		String sql =  "SELECT LBR_NotaFiscal_ID FROM LBR_NotaFiscal " +
					  "WHERE DocumentNo = ? AND C_BPartner_ID = ? " +
					  "AND AD_Client_ID = ? AND IsSOTrx = ?";

		int LBR_NotaFiscal_ID = DB.getSQLValue(null, sql,
				new Object[]{documentno, C_BPartner_ID,
				Env.getAD_Client_ID(Env.getCtx()), isSOTrx});

		return LBR_NotaFiscal_ID == -1 ? false : true;
	}//ifExists

	/**
	 * Extrai o número da NF
	 *
	 * @param	String	No da NF com a Série
	 * @return	String	No da NF sem a Série
	 */
	public static String getDocNo(String documentNo)
	{
		if (documentNo == null || documentNo.startsWith("-"))
			return "";
		//
		if (documentNo.indexOf('-') == -1)
			return documentNo;
		//
		return documentNo.substring(0, documentNo.indexOf('-'));
	}//getdocNo

	public String getDocNo(){
		return getDocNo(getDocumentNo());
	}
	
	/**
	 * 	TODO: Replicar o campo email para a Nota Fiscal com a opção de ter um e-mail
	 * 		cadastrado para recepção de NF. Discutir se este e-mail deve ser por BP
	 * 		ou por Endereço.
	 * 
	 * @return Email
	 */
	public String getInvoiceContactEMail()
	{
		if (getC_Invoice_ID() > 0)
		{
			MInvoice i = new MInvoice (Env.getCtx(), getC_Invoice_ID(), null);
			if (i.getAD_User_ID() > 0)
			{
				MUser u = new MUser (Env.getCtx(), i.getAD_User_ID(), null);
				//
				if (u.getEMail() != null)
					return u.getEMail();
			}
		}
		//
		return "";
	}	//	getEMail

	/**
	 * Extrai a Série da NF
	 *
	 * @param	String	No da NF com a Série
	 * @return	String	Série da NF
	 */
	public static String getSerieNo(String documentNo)
	{
		if (documentNo == null || documentNo.indexOf('-') == -1 ||
			documentNo.endsWith("-"))
			return "";
		//

		return documentNo.substring(1+documentNo.indexOf('-'), documentNo.length());
	}//getserieNo

	public String getSerieNo(){
		return getSerieNo(getDocumentNo());
	}
	
	/**
	 * 	Preenche o campo descrição com toda a discriminação dos serviços
	 */
	public void setlbr_ServiceTaxes()
	{
		if (getC_DocType_ID() > 0)
		{
			MDocType dtNF = new MDocType (getCtx(), getC_DocType_ID(), get_TrxName());
			String model = dtNF.get_ValueAsString("lbr_NFModel");
			
			if (model != null && model.startsWith("RPS"))
			{
				String serviceDescription = "";
				MLBRNotaFiscalLine[] lines = getLines();
				//
				for (MLBRNotaFiscalLine line : lines)
				{
					if (line.getLBR_NotaFiscalLine_ID() <= 0
							|| line.getQty().compareTo(Env.ZERO) <= 0)
						continue;
					//
					serviceDescription += line.getQty() + " " + line.getlbr_UOMName() + "\t";
					serviceDescription += line.getProductName();
					//
					if (line.getDescription() != null 
							&& !line.getDescription().equals(""))
					{
						if (line.getProductName() != null && !"".equals(line.getProductName()))
							serviceDescription += ", " + line.getDescription();
						else
							serviceDescription += line.getDescription();
					}
					
					if (line.getQty().compareTo(Env.ONE) == 1)
						serviceDescription += ", Valor Unitário R$ " + line.getPrice().setScale(2, BigDecimal.ROUND_HALF_UP).toString().replace('.', ',');
					
					serviceDescription += ", Valor Total R$ " + line.getLineTotalAmt().setScale(2, BigDecimal.ROUND_HALF_UP).toString().replace('.', ',') + ".";
					//
					serviceDescription += "\n";
				}
			
				//
				X_LBR_NFTax[] taxes = getTaxes();
				String header = "";
				String content = "";
				String footer = "";
				Boolean printTaxes = false;
				//
				if (taxes == null)
					;
				else
				{
					header += "\n" + TextUtil.rPad("Valor Bruto:", 15);
					header += "- R$ ";
					header += TextUtil.lPad(getlbr_ServiceTotalAmt().setScale(2, BigDecimal.ROUND_HALF_UP).toString().replace('.', ','), ' ', 13);
					header += "\n\n";
					//
					if (taxes.length == 1)
						header += "Retenção:\n";
					else if (taxes.length > 1)
						header += "Retenções:\n";
					//
					for (X_LBR_NFTax tax : taxes)
					{
						X_LBR_TaxGroup tg = new X_LBR_TaxGroup (Env.getCtx(), tax.getLBR_TaxGroup_ID(), null);
						if (tg.getName() == null || tg.getName().equals("ISS"))	//	ISS ja e destacado normalmente
							continue;
						//
						printTaxes = true;
						//
						content += TextUtil.rPad(tg.getName(), 15);
						content += "- R$ ";
						content += TextUtil.lPad(tax.getlbr_TaxAmt().abs().setScale(2, BigDecimal.ROUND_HALF_UP).toString().replace('.', ','), ' ', 13);
						content += "\n";
					}
					footer += "\n" + TextUtil.rPad("Valor Líquido:", 15);
					footer += "- R$ ";
					footer += TextUtil.lPad(getGrandTotal().setScale(2, BigDecimal.ROUND_HALF_UP).toString().replace('.', ','), ' ', 13);
					footer += "\n";
				}
			
				//
				if (printTaxes)
					serviceDescription += header + content + footer;
				//
				MLBROpenItem[] ois = MLBROpenItem.getOpenItem(getC_Invoice_ID(), get_TrxName());
				if (ois == null)
					;
				else if (ois.length == 1)
					serviceDescription += "\nVencimento em " + TextUtil.timeToString(ois[0].getDueDate(), "dd/MM/yyyy");
				else if (ois.length > 1)
				{
					serviceDescription += "\nVencimentos:\n";
					//
					for (MLBROpenItem oi : ois)
					{
						serviceDescription += TextUtil.timeToString(oi.getDueDate(), "dd/MM/yyyy");
						serviceDescription += "     - R$ ";
						serviceDescription += TextUtil.lPad(oi.getGrandTotal().setScale(2, BigDecimal.ROUND_HALF_UP).toString().replace('.', ','), ' ', 13);
						serviceDescription += "\n";
					}
				}
				//	FIXME: Verificar como resolver o problema do POReference
		//		if (getPOReference() != null 
		//				&& !getPOReference().trim().equals(""))
		//			serviceDescription += "\nReferência: " + getPOReference() + "\n";
				//
				if (getC_DocTypeTarget_ID() > 0)
				{
					MDocType dt = new MDocType (Env.getCtx(), getC_DocTypeTarget_ID(), null);
					//
					if (dt.getDocumentNote() != null && !dt.getDocumentNote().trim().equals(""))
						serviceDescription += "\n" + dt.getDocumentNote();
				}
				//
				setDescription(serviceDescription.trim());
			}
		}
	}	//	setlbr_ServiceTaxes
	
	
	
	/***	New Class	***/
	
	/**
	 * 	Gera a NF
	 */
	public boolean generateNF (MInvoice invoice, Boolean IsOwnDocument)
	{
		BigDecimal totalItem = Env.ZERO, totalService = Env.ZERO;
		//
		MDocType dtInvoice = new MDocType(getCtx(), invoice.getC_DocTypeTarget_ID(), get_TrxName());
		Boolean isSOTrx = true;
		int lineNo = 1;
		
		/**
		 * 	Limpa os valores antigos
		 */
		clear();

		/**
		 * 	AR Invoice = Saida do Estabelecimento para Cliente
		 * 	AP Credit = Saida (Devolução) para um Fornecedor
		 */
		if (dtInvoice.getDocBaseType().equals(MDocType.DOCBASETYPE_APCreditMemo) ||
			dtInvoice.getDocBaseType().equals(MDocType.DOCBASETYPE_ARInvoice))
			isSOTrx = true;

		/**
		 * 	AP Invoice = Entrada (Compra) - Para Importação pode ser Documento Próprio
		 * 	AR Credit = Entrada (Devolção de Cliente)
		 */
		else if (dtInvoice.getDocBaseType().equals(MDocType.DOCBASETYPE_APInvoice) ||
				 dtInvoice.getDocBaseType().equals(MDocType.DOCBASETYPE_ARCreditMemo))
		{
			isSOTrx = false;
			//
			if (LBR_TRANSACTIONTYPE_Import.equals(POWrapper.create(invoice, I_W_C_Invoice.class).getlbr_TransactionType()))
				IsOwnDocument = true;
		}
		// Imprime Descontos
		setIsDiscountPrinted(invoice.isDiscountPrinted());
		
		//	Dados mestre
		setDateDoc(invoice.getDateAcct());
		setIsSOTrx(isSOTrx);
		setlbr_IsOwnDocument(IsOwnDocument);
		
		//	Preenche a data de saida da NF
		if (!MSysConfig.getBooleanValue("LBR_DATEINOUT_NF", true, getAD_Client_ID()))
			setlbr_DateInOut(invoice.getDateAcct());
		
		//	Dados da Organização
		setOrgInfo(POWrapper.create(MOrgInfo.get(getCtx(), invoice.getAD_Org_ID(), get_TrxName()), I_W_AD_OrgInfo.class));
		
		//	Dados da Fatura
		setInvoice(POWrapper.create(invoice, I_W_C_Invoice.class));
		
		//	Parceiro da Fatura
		setInvoiceBPartner(new MBPartnerLocation(getCtx(), invoice.getC_BPartner_Location_ID(), get_TrxName()));
		
		//	Tipo de Documento
		setC_DocTypeTarget_ID();
		
		//	Entrega
		setShipmentBPartner(invoice);
		
		//	Nota da Fatura: Dados do Vencimento
		setBillNote(invoice);
		
		//  Description
		setDescription();
		
		//	Se não estiver salva
		if (get_ID() < 1)
			save ();
		
		//	Impostos
		setTaxes(invoice);
		
		MDocType dt = new MDocType (getCtx(), getC_DocType_ID(), get_TrxName());
		String serie = "";
		String model = "";
		
		if (!dt.get_ValueAsString("lbr_NFSerie").isEmpty())
			serie = dt.get_ValueAsString("lbr_NFSerie");
		else	
			serie = "1";
		
		setlbr_NFSerie(serie);
		
		if (!dtInvoice.get_ValueAsString("lbr_NFModel").isEmpty())
			model = dtInvoice.get_ValueAsString("lbr_NFModel");
		else	
			model = dt.get_ValueAsString("lbr_NFModel");

		setlbr_NFModel(model);

		
		//	Description para Nota de Serviço
		if (getC_DocType_ID() > 0)
		{
			dt = new MDocType (getCtx(), getC_DocType_ID(), get_TrxName());
			model = dt.get_ValueAsString("lbr_NFModel");
			
			if (model != null && model.startsWith("RPS"))
				setlbr_ServiceTaxes();
		}
		
		//	Linhas
		for (MInvoiceLine iLine : invoice.getLines())
		{
			//	Ignorar as Linhas de Descrição da Fatura
			if (iLine.isDescription())
				continue;
			
			//	Despesas Adicionais
			MClientInfo cInfo = MClientInfo.get (invoice.getCtx(), invoice.getAD_Client_ID());
			I_W_AD_ClientInfo cInfoW = POWrapper.create(cInfo, I_W_AD_ClientInfo.class);
			
			/**
			 * 	Estes valores já foram ajustado no nível do cabeçalho,
			 * 		portanto devem ser ignorados
			 */
			if (iLine.getM_Product_ID() > 0
					&& (iLine.getM_Product_ID() == cInfoW.getM_ProductFreight_ID()
					|| iLine.getM_Product_ID() == cInfoW.getLBR_ProductInsurance_ID()
					|| iLine.getM_Product_ID() == cInfoW.getLBR_ProductOtherCharges_ID()
					|| iLine.getM_Product_ID() == cInfoW.getLBR_ProductSISCOMEX_ID()))
				continue;
			
			MLBRNotaFiscalLine nfLine = new MLBRNotaFiscalLine (this);
			nfLine.save();
			//
			nfLine.setLine(lineNo++);
			nfLine.setInvoiceLine(iLine);
			nfLine.save();
			nfLine.setDiscount(MLBRNFLineTax.getTaxesDiscount(nfLine));
			nfLine.save();
			//
			if (nfLine.islbr_IsService())
				totalService = totalService.add(nfLine.getLineTotalAmt());
			else
				totalItem = totalItem.add(nfLine.getLineTotalAmt());
			//
			//	FIXME
			if (nfLine.getLBR_CFOP_ID() > 0 
					&& (getlbr_CFOPNote() == null || getlbr_CFOPNote().length() < 1))
				setlbr_CFOPNote(nfLine.getLBR_CFOP().getDescription());
		}
		
		//	Valores
		setTotalLines(totalItem);
		setlbr_ServiceTotalAmt(totalService);
		setDiscountAmt(getDiscount());
		
		//	Nota do Documento (Mensagens Legais) e Descrição
		setDocumentNote ();
		setDescription ();
		
		// IBPTax - LBR-81
		setAproxTaxIBPT();
		
		//	Descrição para Nota de Serviço
		setlbr_ServiceTaxes();
				
		return true;
	}	//	generateNF
	
	/**
	 * 	Gera a NF
	 */
	public boolean generateNF (MOrder order, Boolean IsOwnDocument)
	{
		BigDecimal totalItem = Env.ZERO, totalService = Env.ZERO;
		//
		MDocType dtPO = new MDocType(getCtx(), order.getC_DocTypeTarget_ID(), get_TrxName());
		I_W_C_DocType dtPOW = POWrapper.create(dtPO, I_W_C_DocType.class);
		Boolean isSOTrx = true;
		int lineNo = 1;
		
		if (get_ID() < 1 && !save())
		{
			m_processMsg = "Could not save the Nota Fiscal (New Record)";
			log.log(Level.SEVERE, m_processMsg);
			return false;
		}
		
		/**
		 * 	Limpa os valores antigos
		 */
		clear();

		if (!"MFCT".equals(dtPOW.getlbr_DocBaseType()))
		{
			m_processMsg = "Not implemented yet > " + dtPOW.getName();
			log.log(Level.SEVERE, m_processMsg);
			return false;
		}
		
		// Imprime Descontos
		setIsDiscountPrinted(order.isDiscountPrinted());
				
		//	Dados mestre
		setDateDoc(order.getDateAcct());
		setIsSOTrx(isSOTrx);
		setlbr_IsOwnDocument(IsOwnDocument);
		if (!MSysConfig.getBooleanValue("LBR_DATEINOUT_NF", true, getAD_Client_ID()))
			setlbr_DateInOut(order.getDateAcct());
		
		//	Dados da Organização
		setOrgInfo(POWrapper.create(MOrgInfo.get(getCtx(), order.getAD_Org_ID(), get_TrxName()), I_W_AD_OrgInfo.class));
		
		//	Dados da Fatura
		setOrder(POWrapper.create(order, I_W_C_Order.class));
		
		//	Parceiro da Fatura
		setInvoiceBPartner(new MBPartnerLocation(getCtx(), order.getC_BPartner_Location_ID(), get_TrxName()));
		
		//	Tipo de Documento
		setC_DocTypeTarget_ID();
		
		//	Entrega
		setShipmentBPartner (null, null, order);
		
		//	Impostos
		//	Nota da Fatura: Dados do Vencimento
		
		//	Linhas
		for (MOrderLine oLine : order.getLines())
		{
			//	Ignorar as Linhas de Descrição da Fatura
			if (oLine.isDescription())
				continue;
			
			//	Despesas Adicionais
			MClientInfo cInfo = MClientInfo.get (order.getCtx(), order.getAD_Client_ID());
			I_W_AD_ClientInfo cInfoW = POWrapper.create(cInfo, I_W_AD_ClientInfo.class);
			
			/**
			 * 	Estes valores já foram ajustado no nível do cabeçalho,
			 * 		portanto devem ser ignorados
			 */
			if (oLine.getM_Product_ID() > 0
					&& (oLine.getM_Product_ID() == cInfoW.getM_ProductFreight_ID()
					|| oLine.getM_Product_ID() == cInfoW.getLBR_ProductInsurance_ID()
					|| oLine.getM_Product_ID() == cInfoW.getLBR_ProductOtherCharges_ID()
					|| oLine.getM_Product_ID() == cInfoW.getLBR_ProductSISCOMEX_ID()))
				continue;
			
			MLBRNotaFiscalLine nfLine = new MLBRNotaFiscalLine (this);
			nfLine.setLine(lineNo++);
			nfLine.setOrderLine(oLine, true);
			nfLine.save();
			//
			if (nfLine.islbr_IsService())
				totalService = totalService.add(nfLine.getLineTotalAmt());
			else
				totalItem = totalItem.add(nfLine.getLineTotalAmt());
		}
		
		//	Valores
		setTotalLines(totalItem);
		setlbr_ServiceTotalAmt(totalService);
		
		return true;
	}	//	generateNF
	
	@Deprecated
	public void GenerateXMLAutomatic()
	{
		// Gerar XML automaticamente
		try
		{
			if (getC_DocType_ID() > 0)
			{
				MDocType dt = new MDocType(getCtx(), getC_DocTypeTarget_ID(), get_TrxName());
				String model = dt.get_ValueAsString("lbr_NFModel");
				//
				if (model == null)
					log.log(Level.INFO, "Tipo de NF não definido.");
				else if (model.startsWith("RPS"))
				{
					setlbr_ServiceTaxes();
					save(get_TrxName());
				}
				//
				else if (model.equals("55") && 
						MSysConfig.getBooleanValue("LBR_AUTO_GENERATE_XML", false, getAD_Client_ID()))
					NFeXMLGenerator.generate (getCtx(), getLBR_NotaFiscal_ID(), get_TrxName());
			}
		} 
		catch(Exception ex) 
		{
			log.log(Level.WARNING,"Falha ao gerar automaticamente o XML da Nota Fiscal " + getDocumentNo());
		}
	}	//	GenerateXMLAutomatic
	
	
	
	/**
	 * Colocar no campo de descrição os valor aproximados 
	 * de impostos de acordo com o manual do IBPT
	 * 
	 * Obs.: Ticket JIRA - LBR-81
	 */
	public void setAproxTaxIBPT()
	{
		
		// somente para consumidor final, se no sisconfig tiver habilitado e for NF-e 
		if(LBR_TRANSACTIONTYPE_EndUser.equals(getlbr_TransactionType()) && MSysConfig.getBooleanValue("LBR_FILL_IBPTax_DESCRIPTION", false, getAD_Client_ID()) && isSOTrx())
		{		

			BigDecimal taxAmt = Env.ZERO;
		
			// para cada linha, somar calcular o valor aproximado dos impostos
			for(MLBRNotaFiscalLine line : getLines())
			{
				// somente linhas que tenham NCM
				if(line.getLBR_NCM_ID() > 0)
				{
					// origem pra definir se é importado ou nacional
					String productSource = line.getlbr_ProductSource() != null ? line.getlbr_ProductSource() : MLBRNotaFiscalLine.LBR_PRODUCTSOURCE_0_Domestic;
	
					// % rate
					BigDecimal taxRate = MLBRIBPTax.getTaxRate(getCtx(), 
							(productSource.equals(MLBRNotaFiscalLine.LBR_PRODUCTSOURCE_1_Imported) || 
									productSource.equals(MLBRNotaFiscalLine.LBR_PRODUCTSOURCE_2_Imported_AcquiredFromADomesticDistributor)), line.getLBR_NCM_ID(), get_TrxName());
					
					// 
					if(taxRate.signum() == 1)
						taxRate = taxRate.divide(Env.ONEHUNDRED);
					else
						taxRate = Env.ZERO;
					
					// total do imposto
					taxAmt = taxAmt.add(line.getLineTotalAmt().multiply(taxRate));
				}
			}
			
			// se teve total de impostos, definir no fim da descrição
			if(taxAmt.signum() == 1)
			{
				// aliquota geral = valor do imposto dividido pelo valor total da NF - fonte: Manual IBPT
				BigDecimal taxRateTotal = taxAmt.divide(getGrandTotal(), new MathContext(2, RoundingMode.HALF_UP));
				String description = "Valor Aprox. de Impostos R$ " + taxAmt.setScale(2, RoundingMode.HALF_UP) + " (" + taxRateTotal.multiply(Env.ONEHUNDRED).setScale(2, RoundingMode.HALF_UP) + " %) Fonte: IBPT";
				
				// definir na NF
				setDescription(getDescription().concat("\n" + description)); 
			}
		}
	}
	
	
	/**
	 * 		Bill Note
	 */
	public void setBillNote (MInvoice invoice)
	{
		if (invoice == null)
			return;
		//
		MLBROpenItem[] ois = MLBROpenItem.getOpenItem(invoice.getC_Invoice_ID(), invoice.get_TrxName());
		String billNote= "";
		
		if (ois == null || ois.length <= 0)
			;
		else if (ois.length == 1)
			billNote += "Vencimento em ";
		else if (ois.length > 1)
			billNote += "Vencimentos: ";
		//
		for (MLBROpenItem oi : ois)
		{
			billNote += TextUtil.timeToString(oi.getDueDate(), "dd/MM/yyyy");
			
			//	Melhor legibilidade
			if (ois.length == 1)
				billNote += " no valor de R$ ";
			else
				billNote += " R$ ";
			//
			billNote += oi.getGrandTotal().setScale(2, BigDecimal.ROUND_HALF_UP).toString().replace('.', ',');
			
			billNote += " | ";
		}
		if (billNote.endsWith(", ") && billNote.length() > 3)
			billNote = billNote.substring(0, billNote.length() - 2);
		//
		setlbr_BillNote(billNote);
	}	//	setBillNote
	
	/**
	 * 		Set Taxes
	 */
	public void setTaxes (MInvoice invoice)
	{
		if (invoice == null)
			return;
		
		for (MInvoiceTax it : invoice.getTaxes(true))
		{
			I_W_C_Tax taxAD = POWrapper.create(new MTax (getCtx(), it.getC_Tax_ID(), get_TrxName()), I_W_C_Tax.class);
			//
			if (taxAD.getLBR_TaxGroup_ID() < 1)
				continue;
			
			MLBRNFTax nfTax = new MLBRNFTax (this);
			nfTax.setTaxes (it);
			nfTax.setLBR_TaxGroup_ID(taxAD.getLBR_TaxGroup_ID());
			nfTax.save();
		}
	}	//	setTaxes
	
	/**
	 * 	Ajusta o Tipo de Documento correto para a NF
	 * 		de acordo com a Organização ou pela Fatura
	 */
	private void setC_DocTypeTarget_ID ()
	{
		//	Procura o Tipo de Documento pela Fatura
		if (getC_Invoice_ID() > 0)
		{
			I_W_C_Invoice invoice = POWrapper.create(new MInvoice(getCtx(), getC_Invoice_ID(), get_TrxName()), I_W_C_Invoice.class);
			I_W_C_DocType docType = POWrapper.create(new MDocType(getCtx(), getC_Invoice().getC_DocTypeTarget_ID(), get_TrxName()), I_W_C_DocType.class);
			
			if (docType.getLBR_DocTypeNF_ID() > 0 &&
					(docType.getAD_Org_ID() == 0 || docType.getAD_Org_ID() == getAD_Org_ID()))
			{
				setC_DocTypeTarget_ID(docType.getLBR_DocTypeNF_ID());
				setC_DocType_ID(getC_DocTypeTarget_ID());
			}
			
			//	Se é uma NF de Entrada
			if (!islbr_IsOwnDocument())
			{
				if (invoice.getlbr_NFEntrada() != null && invoice.getlbr_NFEntrada().trim().length() > 0)
						setDocumentNo(invoice.getlbr_NFEntrada());

				else if (getDocumentNo() == null || getDocumentNo().trim().length() == 0)
				{
					log.warning ("Número da NF de Entrada Inválido");
					return;
				}
				//
				setIsPrinted(true);
			}
		}

		//	Procura o Tipo de Documento por pesquisa
		if (getC_DocType_ID() < 1)
		{
			String sql = "SELECT C_DocType_ID FROM C_DocType " +
				      	  "WHERE DocBaseType='NFB' " +
				      	    "AND AD_Client_ID=? AND AD_Org_ID IN (0,?) " +
				      	    "AND IsSOTrx=? " +
				       "ORDER BY AD_Org_ID DESC, C_DocType_ID";
			//
			setC_DocTypeTarget_ID (DB.getSQLValue (get_TrxName(), sql,
					new Object[]{getAD_Client_ID(), getAD_Org_ID(), isSOTrx()}));
			setC_DocType_ID(getC_DocTypeTarget_ID());
		}
	}	//	setC_DocTypeTarget_ID

	/**
	 * 		Invoice Info
	 * 	@param wOrgInfo
	 */
	public void setInvoice (I_W_C_Invoice wInvoice)
	{
		setC_Invoice_ID(wInvoice.getC_Invoice_ID());
		setAD_Org_ID(wInvoice.getAD_Org_ID());
		setC_Order_ID(wInvoice.getC_Order_ID());
		//
		setlbr_TransactionType (wInvoice.getlbr_TransactionType());
		setC_PaymentTerm_ID(wInvoice.getC_PaymentTerm_ID());
		setLBR_FreightCostRule(wInvoice.getLBR_FreightCostRule());
		
		//	Total da Fatura
		if (wInvoice.getC_Currency_ID() != CURRENCY_BRL)
		{
			BigDecimal grandTotal = MConversionRate.convert(Env.getCtx(), wInvoice.getGrandTotal(), 
					wInvoice.getC_Currency_ID(), CURRENCY_BRL, getAD_Client_ID(), getAD_Org_ID());
			setGrandTotal(grandTotal);
		}
		else
			setGrandTotal(wInvoice.getGrandTotal());
		
		//	Valores Totais
		setLBR_OtherChargesAmt(VLBROrder.getChargeAmt(POWrapper.getPO(wInvoice), VLBROrder.OTHERCHARGES));
		setlbr_InsuranceAmt(VLBROrder.getChargeAmt(POWrapper.getPO(wInvoice), VLBROrder.INSURANCE));
		setFreightAmt(VLBROrder.getChargeAmt(POWrapper.getPO(wInvoice), VLBROrder.FREIGHT));
		setlbr_TotalSISCOMEX(VLBROrder.getChargeAmt(POWrapper.getPO(wInvoice), VLBROrder.SISCOMEX));
		
		//	Número da NF-Fornecedor
		if (!islbr_IsOwnDocument() && getC_Invoice_ID() > 0)
		{
			setDocumentNo(wInvoice.getlbr_NFEntrada());
		}
		
		//	Dados do Parceiro
		setBPartner(new MBPartnerLocation (getCtx(), wInvoice.getC_BPartner_Location_ID(), get_TrxName()));
	}	//	setInvoice
	
	/**
	 * 		Invoice Info
	 * 	@param wOrgInfo
	 */
	public void setOrder (I_W_C_Order wOrder)
	{
		setAD_Org_ID(wOrder.getAD_Org_ID());
		setC_Order_ID(wOrder.getC_Order_ID());
		//
		setlbr_TransactionType (wOrder.getlbr_TransactionType());
		setC_PaymentTerm_ID(wOrder.getC_PaymentTerm_ID());
		
		//	Total da Fatura
		if (wOrder.getC_Currency_ID() != CURRENCY_BRL)
		{
			BigDecimal grandTotal = MConversionRate.convert(Env.getCtx(), wOrder.getGrandTotal(), 
					wOrder.getC_Currency_ID(), CURRENCY_BRL, getAD_Client_ID(), getAD_Org_ID());
			setGrandTotal(grandTotal);
		}
		else
			setGrandTotal(wOrder.getGrandTotal());
		
		//	Valores Totais
		setLBR_OtherChargesAmt(VLBROrder.getChargeAmt(POWrapper.getPO(wOrder), VLBROrder.OTHERCHARGES));
		setlbr_InsuranceAmt(VLBROrder.getChargeAmt(POWrapper.getPO(wOrder), VLBROrder.INSURANCE));
		setFreightAmt(VLBROrder.getChargeAmt(POWrapper.getPO(wOrder), VLBROrder.FREIGHT));
		setlbr_TotalSISCOMEX(VLBROrder.getChargeAmt(POWrapper.getPO(wOrder), VLBROrder.SISCOMEX));
		
		//	Dados do Parceiro
		setBPartner(new MBPartnerLocation (getCtx(), wOrder.getC_BPartner_Location_ID(), get_TrxName()));
	}	//	setInvoice
	
	/**
	 * 		Organization Info
	 * 	@param wOrgInfo
	 */
	public void setOrgInfo (I_W_AD_OrgInfo wOrgInfo)
	{
		MLocation orgLoc = new MLocation(getCtx(), wOrgInfo.getC_Location_ID(), get_TrxName());
		MCountry orgCountry = new MCountry(getCtx(),orgLoc.getC_Country_ID(),get_TrxName());

		//	Dados da Organização
		setAD_Org_ID(wOrgInfo.getAD_Org_ID());
		setlbr_OrgName(wOrgInfo.getlbr_LegalEntity());
		setlbr_OrgCCM(wOrgInfo.getlbr_CCM());
		setlbr_CNPJ(wOrgInfo.getlbr_CNPJ());
		setlbr_IE(wOrgInfo.getlbr_IE());
		setlbr_OrgPhone(wOrgInfo.getPhone());
		
		//	Endereço
		setOrg_Location_ID(orgLoc.getC_Location_ID());
		setlbr_OrgAddress1(orgLoc.getAddress1());
		setlbr_OrgAddress2(orgLoc.getAddress2());
		setlbr_OrgAddress3(orgLoc.getAddress3());
		setlbr_OrgAddress4(orgLoc.getAddress4());
		setlbr_OrgCity(orgLoc.getCity());
		setlbr_OrgPostal(orgLoc.getPostal());
		setlbr_OrgCountry(orgCountry.getCountryCode());
		setlbr_OrgRegion(orgLoc.getRegionName(true));
	}	//	setOrgInfo
	
	/**
	 * 		Dados do Parceiro de Negócios / Destinatário
	 * 	
	 * 	@param bpartner
	 * 	@param bpLocation
	 */
	public void setBPartner(MBPartnerLocation bpLocation)
	{
		if (bpLocation == null)
			return;

		setC_BPartner_ID(bpLocation.getC_BPartner_ID());
		setC_BPartner_Location_ID(bpLocation.getC_BPartner_Location_ID());
		
		//	Dados Principais
		setBPName(bpLocation.getC_BPartner().getName());   		//	Nome
		setlbr_BPPhone(bpLocation.getPhone());   				//	Telefone
		setlbr_BPCNPJ(BPartnerUtil.getCNPJ_CPF(bpLocation));	//	CNPJ
		setlbr_BPIE(BPartnerUtil.getIE(bpLocation));			//	IE
		setlbr_BPSuframa(BPartnerUtil.getSUFRAMA(bpLocation)); 	//	Suframa
		String BPTypeBR = BPartnerUtil.getBPTypeBR(new MBPartner (getCtx(), bpLocation.getC_BPartner_ID(), null));
		if (BPTypeBR != null && !BPTypeBR.equals(""))
			setlbr_BPTypeBR(BPTypeBR);
		
		MLocation location = new MLocation(getCtx(),bpLocation.getC_Location_ID(),get_TrxName());
		MCountry country = new MCountry(getCtx(),location.getC_Country_ID(),get_TrxName());

		//	Endereço do Destinatário
		setlbr_BPAddress1(location.getAddress1());	//	Rua
		setlbr_BPAddress2(location.getAddress2());	//	Número
		setlbr_BPAddress3(location.getAddress3());	//	Bairro
		setlbr_BPAddress4(location.getAddress4());	//	Complemento
		setlbr_BPCity(location.getCity());   		//	Cidade
		setlbr_BPPostal(location.getPostal());   	//	CEP
		setlbr_BPCountry(country.getCountryCode());	//	País

		if (country.get_ID() != BRAZIL)
			setlbr_BPRegion("EX");
		else
		{
			MRegion region = new MRegion(getCtx(), location.getC_Region_ID(), get_TrxName());
			setlbr_BPRegion(region.getName());		//	Estado
		}
	}	//	setBPartner
	
	/**
	 * 		Ajusta os valores referentes a Fatura
	 * 
	 *	@param bpLocation
	 */
	public void setInvoiceBPartner (MBPartnerLocation bpLocation)
	{
		if (bpLocation == null)
			return;

		setBill_Location_ID (bpLocation.getC_BPartner_Location_ID());

		MLocation         location   = new MLocation (getCtx(), bpLocation.getC_Location_ID(), get_TrxName());
		MCountry country = new MCountry(getCtx(),location.getC_Country_ID(),get_TrxName());

		setlbr_BPInvoiceCNPJ(BPartnerUtil.getCNPJ_CPF (bpLocation));	//	CNPJ
		setlbr_BPInvoiceIE(BPartnerUtil.getIE (bpLocation));   			//	IE
		//
		setlbr_BPInvoiceAddress1(location.getAddress1());	//	Rua
		setlbr_BPInvoiceAddress2(location.getAddress2());	//	Número
		setlbr_BPInvoiceAddress3(location.getAddress3());	//	Bairro
		setlbr_BPInvoiceAddress4(location.getAddress4());	//	Complemento
		setlbr_BPInvoiceCity(location.getCity());			//	Cidade
		setlbr_BPInvoicePostal(location.getPostal());		//	CEP
		setlbr_BPInvoiceCountry(country.getCountryCode());	//	País

		//	Importação / Exportação
		if (country.get_ID() != BRAZIL)
			setlbr_BPInvoiceRegion("EX");
		else
		{
			MRegion region = new MRegion(getCtx(),location.getC_Region_ID(),get_TrxName());
			setlbr_BPInvoiceRegion(region.getName());   	//	Estado
		}
	}	//	setInvoiceBPartner
	
	/**
	 * 		Ajusta os valores referentes a Expedição
	 * 			selecionando a expedição automáticamente, pela fatura
	 * 	
	 * 	@param io Expedição ou Recebimento
	 * 	@param invoice Fatura
	 */
	public void setShipmentBPartner (MInvoice invoice)
	{
		int M_InOut_ID = AdempiereLBR.getM_InOut_ID (invoice.getC_Invoice_ID(), get_TrxName());
		//
		setShipmentBPartner(new MInOut (Env.getCtx(), M_InOut_ID, get_TrxName()), invoice, null);
	}	//	setShipmentBPartner
	
	/**
	 * 		Ajusta os valores referentes a Expedição
	 * 	
	 * 	@param io Expedição ou Recebimento
	 * 	@param invoice Fatura
	 */
	public void setShipmentBPartner (MInOut io, MInvoice invoice, MOrder order)
	{
		MBPartnerLocation bpLocation = null;

		/**
		 * 	Pega os dados da Expedição / Recebimento
		 */
		if (io != null && io.getM_InOut_ID() != 0)
		{
			bpLocation = new MBPartnerLocation (getCtx(), io.getC_BPartner_Location_ID(), get_TrxName());
			
			//	Dados exclusivos da Expedição/Recebimento
			setM_InOut_ID(io.getM_InOut_ID());
			setFreightCostRule (io.getFreightCostRule());
			setlbr_GrossWeight(io.getWeight());
			setNoPackages(io.getNoPackages());

			if (MSysConfig.getValue("LBR_NFESPECIE",  getAD_Client_ID()) != null )
				setlbr_PackingType(MSysConfig.getValue("LBR_NFESPECIE", getAD_Client_ID()));
			else
				setlbr_PackingType(MSysConfig.getValue("VOLUME"));
			
			//	Transportadora
			if (MInOut.DELIVERYVIARULE_Shipper.equals(io.getDeliveryViaRule())
					&& io.getM_Shipper_ID() > 0)
				setShipper(new MShipper (Env.getCtx(), io.getM_Shipper_ID(), get_TrxName()));
		}
		
		/**
		 * 	Caso não haja uma Expedição / Recebimento
		 * 		usa os dados da própria Fatura
		 */
		else if (invoice != null && invoice.getC_Invoice_ID() > 0)
		{
			bpLocation = new MBPartnerLocation(getCtx(), invoice.getC_BPartner_Location_ID(),get_TrxName());
			
			//	Dado obrigatório, não encontrado na Expedição/Recebimento
			if (invoice.getC_Order_ID() > 0)
				setFreightCostRule(invoice.getC_Order().getFreightCostRule());
		}
		
		/**
		 * 	Caso seja baseado em um pedido
		 */
		else if (order != null 
				&& order.isDropShip()
				&& order.getDropShip_BPartner_ID() > 0)
		{
			bpLocation = new MBPartnerLocation(getCtx(), order.getDropShip_Location_ID(),get_TrxName());
			
			//	Dado obrigatório, não encontrado na Expedição/Recebimento
			if (order.getC_Order_ID() > 0)
				setFreightCostRule(order.getFreightCostRule());
		}
		
		//	Nothing to do
		else 
			return;
		
		MLocation location = new MLocation (getCtx(), bpLocation.getC_Location_ID(), get_TrxName());
		MCountry country = new MCountry (getCtx(), location.getC_Country_ID(), get_TrxName());

		//	Endereço de Entrega
		setlbr_BPDeliveryCNPJ(BPartnerUtil.getCNPJ_CPF (bpLocation));	//	CNPJ
		setlbr_BPDeliveryIE(BPartnerUtil.getIE (bpLocation));   		//	IE
		//
		setlbr_BPDeliveryAddress1(location.getAddress1());	//	Rua
		setlbr_BPDeliveryAddress2(location.getAddress2());	//	Número
		setlbr_BPDeliveryAddress3(location.getAddress3());	//	Bairro
		setlbr_BPDeliveryAddress4(location.getAddress4());	//	Complemento
		setlbr_BPDeliveryCity(location.getCity());			//	Cidade
		setlbr_BPDeliveryPostal(location.getPostal());		//	CEP
		setlbr_BPDeliveryCountry(country.getCountryCode());	//	País

		//	Importação / Exportação
		if (country.get_ID() != BRAZIL)
			setlbr_BPDeliveryRegion("EX");
		else
		{
			MRegion region = new MRegion (getCtx(), location.getC_Region_ID(), get_TrxName());
			setlbr_BPDeliveryRegion (region.getName());		//	Estado
		}
	}	//	setShipmentBPartner
	
	/**
	 * 	Dados da Transportadora
	 * 	@param shipper
	 */
	public void setShipper (MShipper shipper)
	{
		if (shipper == null)
			return;

		setM_Shipper_ID(shipper.getM_Shipper_ID());
		setlbr_BPShipperName(shipper.getName());

		MBPartner transp = new MBPartner(getCtx(), shipper.getC_BPartner_ID(), get_TrxName());

		//	Localização Transportadora
		MBPartnerLocation[] transpLocations = transp.getLocations (false);

		if (transpLocations.length > 0)
		{
			MLocation location = new MLocation(getCtx(), transpLocations[0].getC_Location_ID(), get_TrxName());
			MCountry country = new MCountry(getCtx(),location.getC_Country_ID(),get_TrxName());

			setlbr_BPShipperCNPJ(BPartnerUtil.getCNPJ_CPF(transpLocations[0]));	//	CNPJ
			setlbr_BPShipperIE(BPartnerUtil.getIE(transpLocations[0]));   		//	IE

			setlbr_BPShipperAddress1(location.getAddress1());	//	Rua
			setlbr_BPShipperAddress2(location.getAddress2());	//	Número
			setlbr_BPShipperAddress3(location.getAddress3());	//	Bairro
			setlbr_BPShipperAddress4(location.getAddress4());	//	Complemento
			setlbr_BPShipperCity(location.getCity());			//	Cidade
			setlbr_BPShipperPostal(location.getPostal());		//	CEP
			setlbr_BPShipperCountry(country.getCountryCode());	//	País

			if (country.get_ID() != BRAZIL)
				setlbr_BPShipperRegion("EX");
			else
			{
				MRegion region = new MRegion(getCtx(),location.getC_Region_ID(),get_TrxName());
				setlbr_BPShipperRegion(region.getName());		//	Estado
			}
		}
	}	//	setShipper
	
	/**
	 * 	Código de Barras da NF Modelo 1 ou 1A
	 * 		impressa a Laser
	 */
	private void setBarCodeModel1A ()
	{
		StringBuilder barcode1 = new StringBuilder();
		barcode1.append("1");
		barcode1.append(TextUtil.lPad(getDocumentNo(), 6));
		barcode1.append(TextUtil.lPad(getlbr_CNPJ(), 14));
		barcode1.append(getlbr_OrgRegion());
		barcode1.append(TextUtil.timeToString(getDateDoc(), "yyyyMMdd"));
		barcode1.append("2");
		//
		StringBuilder barcode2 = new StringBuilder();
		barcode2.append("2");
		barcode2.append(TextUtil.lPad(getlbr_BPCNPJ(), 14));
		barcode2.append(getlbr_BPRegion());
		barcode2.append(TextUtil.lPad(getGrandTotal(), 10));
		barcode2.append(TextUtil.lPad(getICMSAmt(), 10));
		//
		setlbr_Barcode1(barcode1.toString());
		setlbr_Barcode2(barcode2.toString());
	}	//	setBarCodeModel1A
	
	/**
	 * 	Limpa os valores, pois em alguns casos ao recriar a NF
	 * 		o sistema usa valores históricos
	 */
	private void clear ()
	{
		setGrandTotal(Env.ZERO);
		setTotalLines(Env.ZERO);
		setlbr_TotalCIF(Env.ZERO);
		setlbr_TotalSISCOMEX(Env.ZERO);
		setLBR_OtherChargesAmt(Env.ZERO);
		setlbr_InsuranceAmt(Env.ZERO);
		setlbr_NetWeight(Env.ZERO);
		setlbr_GrossWeight(Env.ZERO);
		
		//	Apaga as Linhas e Impostos
		for (MLBRNFTax nft : getTaxes())
		{
			nft.deleteEx(true);
		}
		for (MLBRNotaFiscalLine nfl : getLines())
		{
			nfl.deleteEx(true);
		}
		DB.executeUpdate ("DELETE LBR_NFDI WHERE LBR_NotaFiscal_ID=" + getLBR_NotaFiscal_ID(), get_TrxName());
	}	//	clearAmounts
	
	/**
	 * 	Necessário para ajustar a precisão
	 * 		de casas decimais
	 */
	public void setGrandTotal (BigDecimal GrandTotal)
	{
		if (GrandTotal == null)
			GrandTotal = Env.ZERO;
		
		//	Manual de Integração 4.01 - página 152
		super.setGrandTotal(GrandTotal.setScale(2, BigDecimal.ROUND_HALF_UP));
	}	//	setGrandTotal
	
	/**
	 * 	Necessário para ajustar a precisão
	 * 		de casas decimais
	 */
	public void setTotalLines (BigDecimal TotalLines)
	{
		if (TotalLines == null)
			TotalLines = Env.ZERO;
		
		//	Manual de Integração 4.01 - página 152
		super.setTotalLines(TotalLines.setScale(2, BigDecimal.ROUND_HALF_UP));
	}	//	setTotalLines
	
	/**
	 * 	Ajusta a descrição baseada no Tipo de Documento
	 * 		e também nas mensagens legais
	 */
	public void setDocumentNote ()
	{
		StringBuffer description = new StringBuffer("");
		List<Integer> legalMsg = new ArrayList<Integer>();
		
		//	Mensagens Legais Linha
		for (MLBRNotaFiscalLine nfl : getLines())
		{
			// Por Imposto
			for (MLBRNFLineTax nflt : nfl.getTaxes())
			{
				if (nflt.getLBR_LegalMessage_ID() <= 0 
						|| legalMsg.contains(nflt.getLBR_LegalMessage_ID()))
					continue;
				else
					legalMsg.add(nflt.getLBR_LegalMessage_ID());
				//
				if (description.length() > 0 && !description.toString().endsWith(" - "))
					description.append(" - ");
				//
				description.append(nflt.getLBR_LegalMessage().getTextMsg());
			}
			
		    // Por Linha de NF
			if (nfl.getLBR_LegalMessage_ID() <= 0 
					|| legalMsg.contains(nfl.getLBR_LegalMessage_ID()))
				continue;
			else
				legalMsg.add(nfl.getLBR_LegalMessage_ID());
			//
			if (description.length() > 0 && !description.toString().endsWith(" - "))
				description.append(" - ");
			//
			description.append(nfl.getLBR_LegalMessage().getTextMsg());
		}
		//
		setDocumentNote(description.toString());
	}	//	setDocumentNote
	
	/**
	 * 	Ajusta as variáveis da mensagem legal
	 * 
	 * 	@param documentNote
	 */
	public void setDocumentNote (String documentNote)
	{
		super.setDocumentNote(parse(documentNote));
	}	//	setDocumentNote
	
	/**
	 * 	Ajusta a descrição de acordo com o Tipo de Documento
	 */
	public void setDescription ()
	{
		StringBuffer description = new StringBuffer();
		//	Tipo de Documento
		if (getC_DocTypeTarget_ID() > 0 && getC_DocTypeTarget().getDocumentNote() != null)
			description.append(parse (getC_DocTypeTarget().getDocumentNote().trim()));
		
		if (getC_Order_ID()>0){
			MOrder order = new MOrder(getCtx(),getC_Order_ID(),get_TrxName());
			if (order.get_Value("lbr_NFDescription")!=null)
				description.append(parse(order.get_Value("lbr_NFDescription").toString().trim()));
		}
		
		setDescription(parse (description.toString()).replace("\n\n\n", "\n\n"));
	}	//	setDescription
	
	/**************************************************************************
	 * 	Before Save
	 *	@param newRecord
	 *	@return true if it can be sabed
	 */
	protected boolean beforeSave (boolean newRecord)
	{
		if (getC_DocTypeTarget_ID () == 0
				|| !"NFB".equals (getC_DocTypeTarget().getDocBaseType()))
			throw new FillMandatoryException (COLUMNNAME_C_DocTypeTarget_ID);
		
		if (getC_DocType_ID() != getC_DocTypeTarget_ID())
			setC_DocType_ID(getC_DocTypeTarget_ID()); 	//	Define que o C_DocType_ID = C_DocTypeTarget_ID
		
		//	Opcionalmente pode gerar o RPS apenas na hora da transmissão
		if (newRecord)
		{
			Integer vC_DocTypeTarget_ID = getC_DocTypeTarget_ID();
			//
			if (vC_DocTypeTarget_ID != null
					&& vC_DocTypeTarget_ID.intValue() > 0)
			{
				MDocType dt = new MDocType (Env.getCtx(), vC_DocTypeTarget_ID, null);
				String nfModel = dt.get_ValueAsString("lbr_NFModel");
				//
				if (nfModel != null && nfModel.startsWith("RPS"))
				{
					if (!MSysConfig.getBooleanValue("LBR_REALTIME_RPS_NUMBER", true, getAD_Client_ID()))
						setDocumentNo(RPS_TEMP);
				}
			}
			
			//	Preenche o ambiente da NF caso esteja em branco
			if (getlbr_NFeEnv() == null)
				setlbr_NFeEnv (MOrgInfo.get (getCtx(), getAD_Org_ID(), null).get_ValueAsString("lbr_NFeEnv"));
		}
		
		//	Configura o código de Barras
		if (newRecord 
				|| is_ValueChanged(COLUMNNAME_lbr_BPRegion)
				|| is_ValueChanged(COLUMNNAME_lbr_OrgRegion)
				|| is_ValueChanged(COLUMNNAME_lbr_BPCNPJ)
				|| is_ValueChanged(COLUMNNAME_lbr_CNPJ)
				|| is_ValueChanged(COLUMNNAME_GrandTotal))
			setBarCodeModel1A();
		
		return true;
	}	//	beforeSave
	
	/**
	 * 	Executed before Delete operation.
	 *	@return true if record can be deleted
	 */
	protected boolean beforeDelete()
	{
		for (MLBRNFTax nft : getTaxes())
		{
			nft.deleteEx(true);
		}
		for (MLBRNotaFiscalLine nfl : getLines())
		{
			nfl.deleteEx(true);
		}
		return true;
	}	//	beforeDelete
	
	/**
	 *  getLines
	 *  @param String orderBy or null
	 *  @return MNotaFiscalLine[] lines
	 */
	public MLBRNotaFiscalLine[] getLines()
	{
		MTable table = MTable.get (getCtx(), MLBRNotaFiscalLine.Table_Name);
		Query query =  new Query(getCtx(), table, "LBR_NotaFiscal_ID=?", get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_NotaFiscal_ID()}).setOrderBy("Line");
	 	//
	 	List<MLBRNotaFiscalLine> list = query.list();
	 	return list.toArray(new MLBRNotaFiscalLine[list.size()]);
	}	//	getLines
	
	/**
	 *  getLines
	 *  @param String orderBy or null
	 *  @return MNotaFiscalLine[] lines
	 */
	@Deprecated public MLBRNotaFiscalLine[] getLines(String orderBy)
	{
		String   whereClause = "LBR_NotaFiscal_ID=?";
		Object[] parameters  = new Object[]{getLBR_NotaFiscal_ID()};

		return getLines(parameters,whereClause,orderBy);
	}	//	getLines

	/**
	 * getLines
	 * @param Object[] parameters
	 * @param String whereClause
	 * @param String orderBy
	 * @return MNotaFiscalLine[] lines
	 */
	@Deprecated public MLBRNotaFiscalLine[] getLines (Object[] parameters, String whereClause, String orderBy)
	{
		MTable table = MTable.get(getCtx(), MLBRNotaFiscalLine.Table_Name);
		Query query =  new Query(getCtx(), table, whereClause, get_TrxName());
	 		  query.setParameters(parameters);

	 	orderBy = TextUtil.checkOrderBy(orderBy);
	 	if (orderBy != null)
	 		  query.setOrderBy(orderBy);

	 	List<MLBRNotaFiscalLine> list = query.list();
	 	return list.toArray(new MLBRNotaFiscalLine[list.size()]);
	}	//	getLines
	
	/**
	 * 	Parse text
	 *	@param text text
	 *	@param po object
	 *	@return parsed text
	 */
	private String parse (String text)
	{
		if (text.indexOf('@') == -1)
			return text;
		
		String inStr = text;
		String token;
		StringBuffer outStr = new StringBuffer();

		int i = inStr.indexOf('@');
		while (i != -1)
		{
			outStr.append(inStr.substring(0, i));			// up to @
			inStr = inStr.substring(i+1, inStr.length());	// from first @

			int j = inStr.indexOf('@');						// next @
			if (j < 0)										// no second tag
			{
				inStr = "@" + inStr;
				break;
			}

			token = inStr.substring(0, j);
			outStr.append(parseVariable(token));			// replace context

			inStr = inStr.substring(j+1, inStr.length());	// from second @
			i = inStr.indexOf('@');
		}

		outStr.append(inStr);           					//	add remainder
		return outStr.toString();
	}	//	parse
	
	/**
	 * 	Parse Variable
	 *	@param variable variable
	 *	@return translated variable or if not found the original tag
	 */
	private String parseVariable (String variable)
	{
		MessageFormat mf = new MessageFormat("{0,number,#,##0.00}", Env.getLanguage(getCtx()).getLocale());
		//
		if (variable == null)
			return "";
		else if (variable.startsWith("NF_VAR|"))
		{
			/**
			 * 	Impostos, por exemplo:
			 * 		@NF_VAR|ICMS<lbr_TaxAmt>@ - Traz o valor do ICMS da NF
			 * 		@NF_VAR|IPI<lbr_TaxAmt>@  - Traz o valor do ICMS da NF
			 */
			if (variable.endsWith("<lbr_TaxAmt>"))
			{
				BigDecimal tax = getTaxAmt(variable.substring(1+variable.indexOf('|'), variable.indexOf('<')));
				//
				if (tax == null)
					tax = Env.ZERO;
				//
				return mf.format (new Object[]{tax});
			}
			
			/**
			 * 	Itens da NF, por exemplo @NF_VAR|ITEMS@:
			 * 		4 H Hora técnica de especialista, Valor Unitário R$ 220,00, Valor Total R$ 880,00.
			 */
			else if (variable.endsWith("ITEMS"))
			{
				String serviceDescription = "";
				//
				for (MLBRNotaFiscalLine line : getLines())
				{
					if (line.getLBR_NotaFiscalLine_ID() <= 0
							|| line.getQty().compareTo(Env.ZERO) <= 0)
						continue;
					//
					serviceDescription += mf.format (new Object[]{line.getQty()}) + " " + line.getlbr_UOMName() + "\t";
					serviceDescription += line.getProductName();
					//
					if (line.getDescription() != null 
							&& !line.getDescription().equals(""))
					{
						if (line.getProductName() != null && !"".equals(line.getProductName()))
							serviceDescription += ", " + line.getDescription();
						else
							serviceDescription += line.getDescription();
					}
					
					if (line.getQty().compareTo(Env.ONE) == 1)
						serviceDescription += ", Valor Unitário R$ " + mf.format(new Object[]{line.getPrice()});
					
					serviceDescription += ", Valor Total R$ " + mf.format(new Object[]{line.getLineTotalAmt()}) + ".";
					//
					serviceDescription += "\n";
				}
				//
				return serviceDescription;
			}
			
			/**
			 * 	Valores, por exemplo @NF_VAR|AMOUNTS@:
			 * 
			 * 		Valor Bruto    - R$       4135,48
			 *
			 *		Retenções:
			 *		IR             - R$         62,03
			 *
			 *		Valor Liquido  - R$       4073,45
			 */
			else if (variable.endsWith("AMOUNTS"))
			{
				X_LBR_NFTax[] taxes = getTaxes();
				String header = "";
				String content = "";
				String footer = "";
				Boolean printTaxes = false;
				//
				if (taxes == null)
					;
				else
				{
					header += "\n" + TextUtil.rPad("Valor Bruto:", 15);
					header += "- R$ ";
					header += TextUtil.lPad (mf.format (new Object[]{getlbr_ServiceTotalAmt()}), ' ', 13);
					header += "\n\n";
					//
					if (taxes.length == 1)
						header += "Retenção:\n";
					else if (taxes.length > 1)
						header += "Retenções:\n";
					//
					for (X_LBR_NFTax tax : taxes)
					{
						X_LBR_TaxGroup tg = new X_LBR_TaxGroup (Env.getCtx(), tax.getLBR_TaxGroup_ID(), null);
						if (tg.getName() == null || tg.getName().equals("ISS"))	//	ISS ja e destacado normalmente
							continue;
						//
						printTaxes = true;
						//
						content += TextUtil.rPad (tg.getName(), 15);
						content += "- R$ ";
						content += TextUtil.lPad (mf.format (new Object[]{tax.getlbr_TaxAmt().abs()}), ' ', 13);
						content += "\n";
					}
					footer += "\n" + TextUtil.rPad("Valor Líquido:", 15);
					footer += "- R$ ";
					footer += TextUtil.lPad (mf.format (new Object[]{getGrandTotal()}), ' ', 13);
					footer += "\n";
				}
				//
				if (printTaxes)
					return header + content + footer;
				else
					return "";
			}
			else if (variable.endsWith("DUEDATE"))
			{
				String serviceDescription = "";
				//
				MLBROpenItem[] ois = MLBROpenItem.getOpenItem(getC_Invoice_ID(), get_TrxName());
				if (ois == null)
					;
				else if (ois.length == 1)
				{
					serviceDescription += "\nVencimento em " + TextUtil.timeToString(ois[0].getDueDate(), "dd/MM/yyyy") 
							+ " no valor de " + mf.format (new Object[]{ois[0].getGrandTotal()});
				}
				else if (ois.length > 1)
				{
					serviceDescription += "\nVencimentos:\n";
					//
					for (MLBROpenItem oi : ois)
					{
						serviceDescription += TextUtil.timeToString(oi.getDueDate(), "dd/MM/yyyy");
						serviceDescription += "     - R$ ";
						serviceDescription += TextUtil.lPad (mf.format (new Object[]{oi.getGrandTotal()}), ' ', 13);
						serviceDescription += "\n";
					}
				}
				//
				return serviceDescription;
			}
			else if (variable.contains("EVAL_BD"))
			{
				Interpreter bsh = new Interpreter ();
				String script = variable.substring(variable.indexOf("<")+1, variable.length()-1);
				
				try 
				{
					bsh.set("GrandTotal", getGrandTotal().doubleValue());
					Double result = (Double) bsh.eval(script);
					
					MessageFormat mfs = new MessageFormat("{0,number,#,##0.00}");
					return mfs.format(new Object[]{result}).toString();
				} 
				catch (EvalError e) 
				{
					e.printStackTrace();
				}
			}
			else 
			{
				log.warning("Not implemented yet");
				return "";
			}
		}
		//
		return Env.parseVariable ("@" + variable + "@", this, get_TrxName(), false);
	}	//	parseVariable
	
	/**
	 * 	Get NF Taxes
	 * 	@return MLBRNFTax[]
	 */
	public MLBRNFTax[] getTaxes()
	{
		MTable table = MTable.get(getCtx(), MLBRNFTax.Table_Name);
		Query query =  new Query(getCtx(), table, "LBR_NotaFiscal_ID=?", get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_NotaFiscal_ID()});

		List<MLBRNFTax> list = query.list();

		return list.toArray(new MLBRNFTax[list.size()]);
	}	//	getTaxes
	
	/**
	 * 	Get Business Partner
	 *	@return partner or null
	 */
	public MBPartner getBPartner()
	{
		return new MBPartner (getCtx(), getC_BPartner_ID(), get_TrxName());
	}	//	getBPartner
	
	/**
	 * 	Retorna o total de desconto da Nota Fiscal
	 * @return
	 */
	public BigDecimal getDiscount()
	{
		BigDecimal discount = Env.ZERO;
		//
		for (MLBRNotaFiscalLine nfl : getLines())
		{
			discount = discount.add(nfl.getDiscountAmt());
		}
		//
		if (discount.signum() == 1)
			return discount;
		return null;
	}
	
	/**
	 * 	Identificador de local de destino da operação
	 * 
	 * 	O local é pesquisado com base no CFOP das linhas
	 * 
	 * 	@return idDest code
	 */
	public Ide.IdDest.Enum getIdDestinoOp () throws AdempiereException
	{
		if (idDest == null)
		{
			for (MLBRNotaFiscalLine line : getLines())
			{
				if (line.getlbr_CFOPName() == null)
					continue;
				
				else if (line.getlbr_CFOPName().startsWith("1")		//	Entrada Interna
						|| line.getlbr_CFOPName().startsWith("5"))	//	Saida Interna
				{
					idDest = Ide.IdDest.X_1;
					break;
				}
				else if (line.getlbr_CFOPName().startsWith("2")		//	Entrada Outro Estado Brasileiro
						|| line.getlbr_CFOPName().startsWith("6"))	//	Saída Outro Estado Brasileiro
				{
					idDest = Ide.IdDest.X_2;
					break;
				}
				else if (line.getlbr_CFOPName().startsWith("3")		//	Entrada Outro País
						|| line.getlbr_CFOPName().startsWith("7"))	//	Saída Outro País
				{
					idDest = Ide.IdDest.X_3;
					break;
				}
			}
		}
		if (idDest == null)
			throw new AdempiereException ("CFOP Inválido, não foi possível determinar o Identificador de local de destino da operação (Ref. B11a)");
		
		return idDest;
	}	//	getIdDest

	/**
	 * 	Is Same Pickup Address as Org Address
	 * 	@return
	 */
	public boolean isSamePickUpAddr()
	{
		String orgAddr 		= getlbr_OrgPostal() + getlbr_OrgAddress2() + getlbr_OrgAddress4();
		String pickUpAddr 	= getlbr_BPDeliveryPostal() + getlbr_BPDeliveryAddress2() + getlbr_BPDeliveryAddress4();
		
		if (orgAddr == null || pickUpAddr == null)
			return false;
		
		//	Same Address
		if (orgAddr.trim().toUpperCase().equals(pickUpAddr.trim().toUpperCase()))
			return true;
		
		//	Different Address
		return false;
	}	//	isSamePickUpAddr
	

	/**
	 * 	Is Same Delivery Address as Businnes Partner Address
	 * 	@return
	 */
	public boolean isSameDeliveryAddr()
	{
		String bpAddr 		= getlbr_BPPostal() + getlbr_BPAddress2() + getlbr_BPAddress4();
		String deliveryAddr 	= getlbr_BPDeliveryPostal() + getlbr_BPDeliveryAddress2() + getlbr_BPDeliveryAddress4();
		
		if (bpAddr == null || deliveryAddr == null)
			return false;
		
		//	Same Address
		if (bpAddr.trim().toUpperCase().equals(deliveryAddr.trim().toUpperCase()))
			return true;
		
		//	Different Address
		return false;
	}	//	isSamePickUpAddr

	
	/**			DocAction		*/
	
	/**
	 * 	Get Document Info
	 *	@return document info (untranslated)
	 */
	public String getDocumentInfo()
	{
		MDocType dt = MDocType.get(getCtx(), 0);
		return dt.getName() + " " + getDocumentNo();
	}	//	getDocumentInfo

	/**
	 * 	Create PDF
	 *	@return File or null
	 */
	public File createPDF ()
	{
		try
		{
			File temp = File.createTempFile(get_TableName()+get_ID()+"_", ".pdf");
			return createPDF (temp);
		}
		catch (Exception e)
		{
			log.severe("Could not create PDF - " + e.getMessage());
		}
		return null;
	}	//	getPDF

	/**
	 * 	Create PDF file
	 *	@param file output file
	 *	@return file if success
	 */
	public File createPDF (File file)
	{
		return null;
	}	//	createPDF

	/**************************************************************************
	 * 	Process document
	 *	@param processAction document action
	 *	@return true if performed
	 */
	public boolean processIt (String processAction)
	{
		m_processMsg = null;
		DocumentEngine engine = new DocumentEngine (this, getDocStatus());
		return engine.processIt (processAction, getDocAction());
	}	//	processIt
	
	/**	Process Message 			*/
	private String		m_processMsg = null;
	/**	Just Prepared Flag			*/
	private boolean		m_justPrepared = false;
	
	/**
	 * 	Unlock Document.
	 * 	@return true if success 
	 */
	public boolean unlockIt()
	{
		log.info("unlockIt - " + toString());
		return reActivateIt();
	}	//	unlockIt
	
	/**
	 * 	Invalidate Document
	 * 	@return true if success 
	 */
	public boolean invalidateIt()
	{
		log.info("invalidateIt - " + toString());
		return true;
	}	//	invalidateIt
	
	/**
	 *	Prepare Document
	 * 	@return new status (In Progress or Invalid) 
	 */
	public String prepareIt()
	{
		log.info(toString());
		
		if (m_justPrepared || !islbr_IsOwnDocument() || TextUtil.match (getDocAction(), DOCACTION_Re_Activate, DOCACTION_Unlock, DOCACTION_Void))
			return DOCSTATUS_InProgress;
		
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		
		if (TextUtil.match (getDocStatus(), DOCSTATUS_Drafted, DOCSTATUS_InProgress, DOCSTATUS_Invalid))
		{
			//	Valida a Org do Tipo de Documento vs Org da NF
			if (getC_DocTypeTarget().getAD_Org_ID() > 0 
					&& getAD_Org_ID() != getC_DocTypeTarget().getAD_Org_ID())
			{
				m_processMsg = "Organização do Tipo de Documento não confere com a da Nota Fiscal";
				return DocAction.STATUS_Invalid;
			}
			
			//	Nota Fiscal Eletrônica
			if (TextUtil.match (getlbr_NFModel(), LBR_NFMODEL_NotaFiscalEletrônica, LBR_NFMODEL_NotaFiscalDeConsumidorEletrônica))
			{
				//	Limpa os campos no caso de reenviar uma NF que foi previament rejeitada
				setlbr_NFeStatus (null);
				setlbr_NFeID (null);
				setLBR_NFeLot_ID (0);
				try
				{
					//	Gera o XML da NF-e
					NFeXMLGenerator.generate (this);
				}
				catch (Exception e)
				{
					e.printStackTrace();
					//
					m_processMsg = e.getMessage();
					return DOCSTATUS_Invalid;
				}
			}
			
			//	NFS-e
			else if (TextUtil.match (getlbr_NFModel(), LBR_NFMODEL_NotaFiscalDeServiçoEletrônicaRPS))
			{
				INFSe infSe = NFSeUtil.get (this);
				//
				if (infSe != null)
				{
					try
					{
						byte[] xml = infSe.getXML (this);

						//	Anexa o XML na NF
						if (getAttachment (true) != null)
							getAttachment ().delete (true);
						
						MAttachment attachNFe = createAttachment(true);
						attachNFe.addEntry("RPS-" + getDocumentNo() + ".xml", xml);
						attachNFe.save();
					}
					catch (Exception e)
					{
						e.printStackTrace();
						//
						m_processMsg = e.getMessage();
						return DOCSTATUS_Invalid;
					}
				}
			}
			
			//	Set action
			setProcessed(true);
		}
		
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;

		m_justPrepared = true;
		
		return DocAction.STATUS_InProgress;
	}	//	prepareIt
	
	/**
	 * 	Approve Document
	 * 	@return true if success 
	 */
	public boolean  approveIt()
	{
		log.info("approveIt - " + toString());
		return true;
	}	//	approveIt
	
	/**
	 * 	Reject Approval
	 * 	@return true if success 
	 */
	public boolean rejectIt()
	{
		log.info("rejectIt - " + toString());
		return true;
	}	//	rejectIt
	
	/**
	 * 	Complete Document
	 * 	@return new status (Complete, In Progress, Invalid, Waiting ..)
	 */
	public String completeIt()
	{
		log.info(toString());
		
		//	Previamente completado
		if (DOCSTATUS_Completed.equals(getDocStatus()))
			return getDocStatus();
		
		try
		{
			if (!islbr_IsOwnDocument())
			{
				setDocAction(DOCACTION_None);
				setDocStatus(DOCSTATUS_Completed);
				//
				return DOCSTATUS_Completed;
			}
			//	Nota Fiscal Eletrônica
			if (TextUtil.match (getlbr_NFModel(), LBR_NFMODEL_NotaFiscalEletrônica, LBR_NFMODEL_NotaFiscalDeConsumidorEletrônica))
			{
				//	Aguardando a confirmação da SeFaz
				if (DOCSTATUS_WaitingConfirmation.equals (getDocStatus()))
				{
					//	Verifica se a NF já pertence a um lote
					if (getLBR_NFeLot_ID() > 0)
					{
						MLBRNFeLot lot = new MLBRNFeLot (getCtx(), getLBR_NFeLot_ID(), get_TrxName());
						
						//	Lote já processado
						if (MLBRNFeLot.DOCSTATUS_Completed.equals(lot.getDocStatus()))
							return getDocStatus();
						
						if (!lot.consultaLoteNFe())
							throw new Exception ("Falha na transmissão da NF-e");
						//
						return getDocStatus();
					}
				}
				
				//	XML gerado, pronto para ser adicionado ao lote
				else if (DOCSTATUS_InProgress.equals (getDocStatus()))
				{
					//	Cria um novo lote para a transmissão
					MLBRNFeLot lot = new MLBRNFeLot (getCtx(), 0, get_TrxName());
					lot.setName("[Auto] NF: " + getDocumentNo());
					lot.setAD_Org_ID(getAD_Org_ID());
					lot.setLBR_NFeLotMethod(MLBRNFeLot.LBR_NFELOTMETHOD_Synchronous);
					lot.save();
					
					//	Vincula o lote criado a NF-e
					setLBR_NFeLot_ID (lot.getLBR_NFeLot_ID());
					save();
					
					if (!lot.enviaLoteNFe())
						throw new Exception ("Falha na transmissão da NF-e");
					
					if (!lot.islbr_LotSent())
						throw new Exception ("Erro na transmissão da NF-e. " + MRefList.getListName(getCtx(), LBR_NFESTATUS_AD_Reference_ID, lot.getlbr_NFeStatus()));
					
					//	Set status
					setDocStatus(DOCSTATUS_WaitingConfirmation);
					setDocAction(DOCACTION_Complete);
				}
			}
			
			//	NF Serviço
			else if (LBR_NFMODEL_NotaFiscalDeServiçoEletrônicaRPS.equals(getlbr_NFModel()))
			{
				INFSe infSe = NFSeUtil.get (this);
				//
				if (infSe != null)
				{
					try
					{
						if (!infSe.transmit(this))
						{
							m_processMsg = "Falha na transmissão do RPS";
							return DOCSTATUS_Invalid;
						}
					}
					catch (Exception e)
					{
						e.printStackTrace();
						//
						m_processMsg = e.getMessage();
						return DOCSTATUS_Invalid;
					}
				}
			}
			
			//	Outras NF
			else
				setDocStatus(DOCSTATUS_Completed);
		}
		catch (Exception e)
		{
			e.printStackTrace();
			//
			m_processMsg = e.getMessage();
			return getDocStatus();
		}

		return getDocStatus();
	}	//	completeIt

	/**
	 * 	Void Document.
	 * 	Same as Close.
	 * 	@return true if success 
	 */
	public boolean voidIt()
	{
		log.info("voidIt - " + toString());
		
		//	Anular a NF
		if (DOCSTATUS_Completed.equals(getDocStatus()))
		{
			if (LBR_NFESTATUS_100_AutorizadoOUsoDaNF_E.equals(getlbr_NFeStatus())
					&& LBR_NFMODEL_NotaFiscalEletrônica.equals(getlbr_NFModel()))
			{
				try
				{
					NFeCancelamento.cancelNFeEx (this);
					return true;
				}
				catch (Exception e)
				{
					m_processMsg = e.getMessage();
				}
			}
			else
			{
				setProcessed (true);
				setDocAction (DOCACTION_None);
				return true;
			}
		}
		
		//	Inutilizar a numeração
		else if (TextUtil.match(getDocStatus(), DOCSTATUS_Drafted, DOCSTATUS_InProgress, DOCSTATUS_Invalid))
		{
			// Entra no IF se a Nota Fiscal não for um Documento Próprio e Anula a Nota Fiscal
			if (!get_ValueAsBoolean("lbr_IsOwnDocument"))
			{
				setProcessed (true);
				setDocAction (DOCACTION_None);
				return true;
			}
			else
			{
				try
				{
					String regionCode = BPartnerUtil.getRegionCode (new MLocation (p_ctx, getOrg_Location_ID(), null));
					//
					InfInut ret = ProcInutNF.invalidateNF (p_ctx, getAD_Org_ID(), getlbr_CNPJ(), regionCode, getlbr_NFeEnv(), 
								getlbr_NFModel(), Integer.parseInt(getDocumentNo()), Integer.parseInt(getDocumentNo()), 
								getlbr_NFSerie(), getlbr_MotivoCancel(), getDateDoc());
					//
					if (MLBRNotaFiscal.LBR_NFESTATUS_102_InutilizaçãoDeNúmeroHomologado.equals(ret.getCStat()))	//	OK
					{
						setDocAction (DOCACTION_None);
						setDocStatus (DOCSTATUS_Voided);
						setProcessed(true);
						setIsCancelled(true);
						//
						try
				        {
							setlbr_NFeStatus (ret.getCStat());
				        }
				        catch (IllegalArgumentException e)
				        {
				        	e.printStackTrace();
				        }
						return true;
					}
					else
					{
						m_processMsg = ret.getXMotivo();
					}
				}
				catch (Exception e)
				{
					e.printStackTrace();
					m_processMsg = e.getMessage();
				}
			}
		}
		
		else
			m_processMsg = "Estado inválido não é permitido anular o documento neste estado.";
		
		return false;
	}	//	voidIt
	
	/**
	 * 	Close Document.
	 * 	Cancel not delivered Qunatities
	 * 	@return true if success 
	 */
	public boolean closeIt()
	{
		log.info("closeIt - " + toString());
		m_processMsg = "Não é permitido fechar o documento.";
		return false;
	}	//	closeIt
	
	/**
	 * 	Reverse Correction
	 * 	@return true if success 
	 */
	public boolean reverseCorrectIt()
	{
		log.info("reverseCorrectIt - " + toString());
		return false;
	}	//	reverseCorrectionIt
	
	/**
	 * 	Reverse Accrual - none
	 * 	@return true if success 
	 */
	public boolean reverseAccrualIt()
	{
		log.info("reverseAccrualIt - " + toString());
		return false;
	}	//	reverseAccrualIt
	
	/** 
	 * 	Re-activate
	 * 	@return true if success 
	 */
	public boolean reActivateIt()
	{
		log.info("reActivateIt - " + toString());
		
		//	Verifica se a NF está cancelada
		if (isCancelled())
		{
			m_processMsg = "NF Cancelada, impossível reativar";
			return false;
		}
		
		//	Nota Fiscal Eletrônica
		if (TextUtil.match (getlbr_NFModel(), LBR_NFMODEL_NotaFiscalEletrônica))
		{
			//	Valida o Lote da NF-e
			int LBR_NFeLot_ID = getLBR_NFeLot_ID();
			if (LBR_NFeLot_ID > 0)
			{
				MLBRNFeLot lot = new MLBRNFeLot (getCtx(), LBR_NFeLot_ID, get_TrxName());
				
				if (DOCSTATUS_WaitingConfirmation.equals (lot.getDocStatus()))
				{
					m_processMsg = "Lote da NF não processado, impossível reativar";
					return false;
				}
				
				//	Apaga o Lote da NF em questão
				setLBR_NFeLot_ID(0);
			}
		}
		
		//	Marca a NF como Manual
		setIsManual(true);
		
		setDocStatus(DOCSTATUS_Drafted);
		setDocAction(DOCACTION_Prepare);
		setProcessed(false);
		return true;
	}	//	reActivateIt
	
	/*************************************************************************
	 * 	Get Summary
	 *	@return Summary of Document
	 */
	public String getSummary()
	{
		return "";
	}	//	getSummary

	/**
	 * 	Get Process Message
	 *	@return clear text error message
	 */
	public String getProcessMsg()
	{
		if (m_processMsg == null)
			m_processMsg = "";

		return m_processMsg;
	}	//	getProcessMsg
	
	/**
	 * 	Get Document Owner (Responsible)
	 *	@return AD_User_ID
	 */
	public int getDoc_User_ID()
	{
		return 0;
	}	//	getDoc_User_ID

	/**
	 * 	Get Document Approval Amount
	 *	@return amount
	 */
	public BigDecimal getApprovalAmt()
	{
		return null;
	}	//	getApprovalAmt
	
	/**
	 * 	Get Document Currency
	 *	@return C_Currency_ID
	 */
	public int getC_Currency_ID()
	{
		return 0;
	}	//	getC_Currency_ID
	
	/**
	 * 	Status
	 */
	@Override
	public int customizeValidActions (String docStatus, Object processing,
			String orderType, String isSOTrx, int AD_Table_ID, String[] docAction,
			String[] options, int index)
	{
		options[0] = null;
		options[1] = null;
		options[2] = null;
		options[3] = null;
		options[4] = null;
		
		if (DOCSTATUS_InProgress.equals(docStatus))
		{
			options[0] = DOCACTION_Complete;
			options[1] = DOCACTION_Unlock;
			options[2] = DOCACTION_Void;
			index=3;
		}
		else if (DOCSTATUS_Drafted.equals(docStatus)
				|| DOCSTATUS_Invalid.equals(docStatus))
		{
			options[0] = DOCACTION_Prepare;
			options[1] = DOCACTION_Complete;
			options[2] = DOCACTION_Void;
			index=3;
		}
		else if (DOCSTATUS_WaitingConfirmation.equals(docStatus))
		{
			options[0] = DOCACTION_Complete;
			index=1;
		}
		else if (DOCSTATUS_Completed.equals(docStatus))
		{
			options[0] = DOCACTION_Void;
			index=1;
		}
		//
		return index;
	}	//	docStatus
}	//	MLBRNotaFiscal
