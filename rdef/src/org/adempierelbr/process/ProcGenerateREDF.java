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
package org.adempierelbr.process;

import java.io.FileWriter;
import java.math.RoundingMode;
import java.sql.Timestamp;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.redf.beans.Registro10;
import org.adempierelbr.redf.beans.Registro20;
import org.adempierelbr.redf.beans.Registro30;
import org.adempierelbr.redf.beans.Registro40;
import org.adempierelbr.redf.beans.Registro50;
import org.adempierelbr.redf.beans.Registro60;
import org.adempierelbr.redf.beans.Registro90;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *	Generate REDF (Registro Eletrônico de Documentos Fiscais) Files
 *
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 * 	@version 	$Id: ProcGenerateREDF,v 1.2 2009/08/06 12:01:00 ralexsander Exp $
 */
public class ProcGenerateREDF extends SvrProcess
{
	/**	Arquivo							*/
	private String p_FilePath = null;

	/** Periodo a ser pesquisado		*/
	private Timestamp p_DateFrom;
	private Timestamp p_DateTo;

	/** Organização						*/
	private int p_AD_Org_ID = 0;

	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if(name.equals("lbr_DocDate"))
			{
				p_DateFrom = (Timestamp)para[i].getParameter();
				p_DateTo   = (Timestamp)para[i].getParameter_To();
			}
			else if(name.equals("File_Directory"))
				p_FilePath = para[i].getParameter().toString();
			else if(name.equals("AD_Org_ID"))
				p_AD_Org_ID = para[i].getParameterAsInt();
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message
	 *  @throws Exception if not successful
	 */
	protected String doIt() throws Exception
	{
		Properties ctx = Env.getCtx();
		//
		if (p_AD_Org_ID == 0)
			throw new Exception("@AD_Org_ID@ @Mandatory@");
		if (p_DateFrom == null || p_DateTo == null)
			throw new Exception("@lbr_DocDate@ @Mandatory@");
		//
		String fileName = p_FilePath;
		StringBuffer result = runREDF(ctx);;
		//
		if (!(p_FilePath.endsWith(AdempiereLBR.getFileSeparator())))
	    	fileName += AdempiereLBR.getFileSeparator();
		//
		fileName += "REDF_" + TextUtil.timeToString(p_DateFrom, "ddMMyyyy") + TextUtil.timeToString(p_DateTo, "ddMMyyyy") + ".txt";
		//
		FileWriter fw = new FileWriter(fileName, false);
		fw.write(result.toString());
		fw.flush();
		fw.close();
		//
		return "";
	}	//	doIt

	/**
	 * Retorna os registros do SINTEGRA para o estado determinado.
	 *
	 * @param ctx
	 * @param estado or null
	 * @return	SINTEGRA
	 * @throws Exception
	 */
	private StringBuffer runREDF(Properties ctx) throws Exception
	{
		//
		MOrgInfo oi 	= new MOrg(Env.getCtx(), p_AD_Org_ID, null).getInfo();
		//
		StringBuffer result = new StringBuffer("");
		StringBuffer whereClause = new StringBuffer("");
		//
		int count20 = 0;
		int count30 = 0;
		int count40 = 0;
		int count50 = 0;
		int count60 = 0;
		//
		whereClause.append("AD_Client_ID=? ")
			.append("AND AD_Org_ID=? ")
			.append("AND lbr_CFOPReference NOT LIKE '%Z%' AND isSOTrx='Y' ");
		//
		whereClause.append("AND (CASE WHEN IsSOTrx='Y' THEN TRUNC(DateDoc) ELSE TRUNC(NVL(lbr_DateInOut, DateDoc)) END) BETWEEN ")
			.append(DB.TO_DATE(p_DateFrom))
			.append(" AND ")
			.append(DB.TO_DATE(p_DateTo));
		//
		MTable table = MTable.get(ctx, MLBRNotaFiscal.Table_Name);
		Query q =  new Query(ctx, table, whereClause.toString(), null);
		q.setParameters(new Object[]{Env.getAD_Client_ID(ctx), p_AD_Org_ID});
		q.setOrderBy("(CASE WHEN IsSOTrx='Y' THEN TRUNC(DateDoc) ELSE TRUNC(NVL(lbr_DateInOut, DateDoc)) END), DocumentNo");
		List<MLBRNotaFiscal> list = q.list();
		//
		//	Monta o Registro 10
		log.finer("REDF: 10");
		Registro10 r10 = new Registro10 ((String) oi.get_Value("lbr_CNPJ"), p_DateFrom, p_DateTo);
		result.append(r10.format());
		//
		for (MLBRNotaFiscal NF : list)
		{
			String emitente = NF.isSOTrx() ? "1" : "0";
			//
			String funcReg = NF.isCancelled() ? "C" : "I";		//	TODO: 	Criar estado de R-Retificação
			Registro20 r20 = new Registro20 (funcReg, "", 		//	FIXME:	Criar justificativa do cancelamento
					NF.getlbr_CFOPNote(), serieNo(NF.getDocumentNo()), docNo(NF.getDocumentNo()),
					NF.getDateDoc(), NF.getlbr_DateInOut(), emitente, NF.getCFOP(), "", "",
					NF.getlbr_BPInvoiceCNPJ(), NF.getBPName(), NF.getlbr_BPInvoiceAddress1(),
					NF.getlbr_BPInvoiceAddress2(), NF.getlbr_BPInvoiceAddress4(), NF.getlbr_BPInvoiceAddress3(),
					NF.getlbr_BPInvoiceCity(), NF.getlbr_BPInvoiceRegion(), NF.getlbr_BPInvoicePostal(),
					"Brasil", NF.getlbr_BPPhone(), NF.getlbr_BPInvoiceIE());
			result.append(r20.format());
			count20++;
			//
			if (NF.isCancelled())
				continue;
			//
			for (MLBRNotaFiscalLine line : NF.getLines("Line"))
			{
				Registro30 r30 = new Registro30 (line.getProductValue(), line.getProductName(),
						line.getlbr_NCMName(), line.getlbr_UOMName(), line.getQty(), line.getPrice().add(line.getICMSAmt().divide(line.getQty(), 12, RoundingMode.HALF_UP)),
						line.getLineTotalAmt().add(line.getICMSAmt()), line.getlbr_TaxStatus(), line.getICMSRate(), line.getIPIRate(),
						line.getIPIAmt());
				result.append(r30.format());
				count30++;
			}
			//
			//	FIXME	Desconto, Outras Despesas, ISS
			Registro40 r40 = new Registro40 (NF.getICMSBase(), NF.getICMSAmt(), NF.getICMSSTBase(),
					NF.getICMSSTAmt(), NF.getTotalLines().add(NF.getICMSAmt()), NF.getFreightAmt(), NF.getlbr_InsuranceAmt(),
					Env.ZERO, NF.getIPIAmt(), Env.ZERO, NF.getGrandTotal(), Env.ZERO, Env.ZERO, Env.ZERO);
			result.append(r40.format());
			count40++;
			//
			//	FIXME	Placa, UF da Placa, Marca dos Volumes, Numeração dos Volumes
			String frete = NF.getFreightCostRule() == "I" ? "0" : "1";
			String end = NF.getlbr_BPShipperAddress1() + ", " + NF.getlbr_BPShipperAddress2() +
				" - " + NF.getlbr_BPShipperAddress4() + " - " + NF.getlbr_BPShipperAddress3();
			end = end.replace(" - null", "").replace(" null", "").replace("null,", "");
			if (end == "" || end.length() < 5)
				end = null;
			Registro50 r50 = new Registro50 (frete, NF.getlbr_BPShipperCNPJ(), NF.getlbr_BPShipperName(),
					NF.getlbr_BPShipperIE(), end, NF.getlbr_BPShipperCity(), NF.getlbr_BPShipperRegion(),
					"", "", NF.getNoPackages(), NF.getlbr_PackingType(), "", "", NF.getlbr_GrossWeight(),
					NF.getlbr_GrossWeight());
			result.append(r50.format());
			count50++;
			//
			//	TODO
			Registro60 r60 = new Registro60();
			result.append(r60.format());
			count60++;
		}
		//
		Registro90 r90 = new Registro90 (count20, count30, count40, count50, count60);
		result.append(r90.format());
		//
		return result;
	}

	/**
	 * Extrai o número da NF
	 *
	 * @param	String	No da NF com a Série
	 * @return	String	No da NF sem a Série
	 */
	private String docNo(String documentNo)
	{
		if (documentNo == null
				|| documentNo.startsWith("-"))
			return "";
		//
		if (documentNo.indexOf('-') == -1)
			return documentNo;
		//
		return documentNo.substring(0, documentNo.indexOf('-'));
	}	//	docNo

	/**
	 * Extrai a Série da NF
	 *
	 * @param	String	No da NF com a Série
	 * @return	String	Série da NF
	 */
	private String serieNo(String documentNo)
	{
		if (documentNo == null
				|| documentNo.indexOf('-') == -1
				|| documentNo.endsWith("-"))
			return "0";
		//
		return documentNo.substring(1+documentNo.indexOf('-'), documentNo.length());
	}	//	docNo

}	//	ProcGenerateREDF