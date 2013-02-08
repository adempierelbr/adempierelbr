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
package org.adempierelbr.model;

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.List;
import java.util.Properties;

import org.adempierelbr.sped.bean.I_R0150;
import org.adempierelbr.sped.bean.I_R0190;
import org.adempierelbr.sped.bean.I_R0200;
import org.adempierelbr.sped.contrib.bean.RA100;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MLocation;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.util.Env;

/**
 * 		Model for LBR_FactFiscal
 * 
 * 	@author Pablo Boff Pigozzo
 *	@version $ v1.0 10/08/2012 11:35 AM $
 */
public class MLBRFactFiscal extends X_LBR_FactFiscal
{
	/**	
	 * Logger			
	 */
//	private static CLogger log = CLogger.getCLogger(MLBRFactFiscal.class);
	
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRFactFiscal (Properties ctx, int ID, String trx)
	{
		super(ctx, ID, trx);	
	}	//	MLBRADI
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRFactFiscal (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//	MLBRADI

	/**
	 * Retornar Fatos Fiscais de acorodo com os parâmetros abaixo
	 * 
	 * @param ctx
	 * @param DateFrom
	 * @param DateTo 
	 * @param AD_Org_ID Organização ou NULL para todas
	 * @param IsSOTrx Transação de Venda/Compra ou NULL para amabas
	 * @param TrxName transação do BD 
	 * @return
	 */
	public static MLBRFactFiscal[] get(Properties ctx, Timestamp DateFrom, Timestamp DateTo, Integer AD_Org_ID, Boolean IsSOTrx, String trxName) throws Exception
	{
		return get(ctx, DateFrom, DateTo, new Integer[]{AD_Org_ID}, IsSOTrx, trxName); 
	}	//	MLBRFactFiscal
	
	/**
	 * Retornar Fatos Fiscais de acorodo com os parâmetros abaixo
	 * 
	 * @param ctx
	 * @param DateFrom
	 * @param DateTo 
	 * @param AD_Org_IDs Array com um conjunto de organizações ou NULL para todas
	 * @param IsSOTrx Transação de Venda/Compra ou NULL para amabas
	 * @param TrxName transação do BD 
	 * @return
	 */
	public static MLBRFactFiscal[] get(Properties ctx, Timestamp DateFrom, Timestamp DateTo, Integer[] AD_Org_IDs, Boolean IsSOTrx, String trxName) throws Exception
	{
		// Client
		String whereClause = " AD_Client_ID = ? ";
		
 		// Organizações (2000000, 2000001...) ou (2000000) ou TODAS(null)
		if(AD_Org_IDs != null && AD_Org_IDs.length > 0)
		{
			// 
			whereClause += " AND AD_Org_ID IN (";			
			for(int x = 0; x < AD_Org_IDs.length; x++)
			{
				// Ultimo elemento, fecha ()s
				if(x == AD_Org_IDs.length -1)
					whereClause += AD_Org_IDs[x] + ")";
				
				// senao só add novo ID e ,
				else 
					whereClause += AD_Org_IDs[x] + ",";
				
			}
		}
		
		// Transação de Venda/Compra
		if(IsSOTrx != null)
		{
			whereClause += " AND IsSOTrx = " + (IsSOTrx.booleanValue() ? "Y" : "N"); 
		}		
		
		// Intervalo de Datas: se for venda, usa a DateDoc(mesma data contábil) 
		// senão a lbr_DateInOut(data da entrada efetiva do material no sistama e contabilidade)
		whereClause += " AND (CASE WHEN IsSOTrx='Y' THEN DateDoc ELSE lbr_DateInOut END) BETWEEN ? AND ? ";
		
		// transação de venda só trazer nfe transmitida
		whereClause += " AND ((IsSOTrx = 'Y' AND lbr_NFeProt IS NOT NULL) OR IsSOTrx ='N') ";
		
		// order by (Date, LBR_NotaFiscal_ID, DocumentNo)
		String orderBy = " (CASE WHEN IsSOTrx='Y' THEN DateDoc ELSE lbr_DateInOut END), LBR_NotaFiscal_ID, Line, DocumentNo ";
		
		// query
		MTable table = MTable.get(ctx, MLBRFactFiscal.Table_Name);
		Query q = new Query(ctx, table, whereClause.toString(), trxName);
		q.setOrderBy(orderBy);
		
		// parametros
		q.setParameters(new Object[] { Env.getAD_Client_ID(ctx), DateFrom, DateTo });

		// convert to array
		List<MLBRFactFiscal> list = q.list();
		MLBRFactFiscal[] facts = new MLBRFactFiscal[list.size()];
		return list.toArray(facts);
	}	//	MLBRFactFiscal
	
	/**
	 * 		Get the Search Key from Business Partner
	 * 
	 * 	@return BPartner Value
	 */
	public String getBPValue ()
	{
		if (getC_BPartner_ID() == 0)
			return "";
		return TextUtil.retiraEspecial (getC_BPartner().getValue ());
	}	//	getBPartnerValue
	
	/**
	 * 		Preenche os campos comuns do Registro 0150
	 * 
	 * 	@param ctx Contexto
	 * 	@param r0150 Registro 0150
	 * 	@param trxName Nome da Transação
	 * 	@return Interface for 0150
	 */
	public I_R0150 fillR0150 (Properties ctx, I_R0150 r0150, String trxName)
	{
		MLocation contLoc = new MLocation(ctx, getC_BPartner_Location().getC_Location_ID(), trxName);
		//
		r0150.setCOD_PART(getBPValue());
		r0150.setNOME(getBPName());
		r0150.setCOD_PAIS(String.valueOf(getBPCountryCode()));
		
		//	FIXME: De acordo com o Tipo de Parceiro CPF/CNPJ
		if (TextUtil.toNumeric (getlbr_BPCNPJ()).length() == 11)
			r0150.setCPF (getlbr_BPCNPJ());
		else
			r0150.setCNPJ (getlbr_BPCNPJ());
		
		r0150.setIE(getlbr_BPIE());
		r0150.setCOD_MUN(String.valueOf (BPartnerUtil.getCityCode(contLoc)));
		r0150.setSUFRAMA(getlbr_BPSuframa());
		r0150.setEND(getlbr_BPAddress1());
		r0150.setNUM(getlbr_BPAddress2());
		r0150.setCOMPL(getlbr_BPAddress4());
		r0150.setBAIRRO(getlbr_BPAddress3());
		//
		return r0150;
	}	//	fillR0150
	
	/**
	 * 		Preenche os campos comuns do Registro 0190
	 * 
	 * 	@param ctx Contexto
	 * 	@param r0190 Registro 0190
	 * 	@param trxName Nome da Transação
	 * 	@return Interface for 0190
	 */
	public I_R0190 fillR0190 (Properties ctx, I_R0190 r0190, String trxName)
	{
		r0190.setUNID(getlbr_UOMName() == null ? "un" : getlbr_UOMName());
		r0190.setDESCR(getLBR_UOMDescription() == null ? "un" : getLBR_UOMDescription());
		//
		return r0190;
	}	//	fillR0190
	
	/**
	 * 		Preenche os campos comuns do Registro 0200
	 * 
	 * 	@param ctx Contexto
	 * 	@param r0200 Registro 0200
	 * 	@param trxName Nome da Transação
	 * 	@return Interface for 0200
	 */
	public I_R0200 fillR0200 (Properties ctx, I_R0200 r0200, String trxName)
	{
		r0200.setCOD_ITEM(getProductValue());
		r0200.setDESCR_ITEM(getProductName());
		r0200.setCOD_BARRA(getUPC());
		r0200.setUNID_INV(getlbr_UOMName() == null ? "un" : getlbr_UOMName());
		r0200.setTIPO_ITEM(getlbr_ItemTypeBR());
		r0200.setCOD_NCM(getlbr_NCMName());
		r0200.setTIPO_ITEM(getlbr_ItemTypeBR());
		
		//	FIXME: Adicionar funcionalidades
		r0200.setCOD_ANT_ITEM(null);
		r0200.setEX_IPI(null);
		r0200.setCOD_GEN(null);
		r0200.setCOD_LST(null);
		r0200.setALIQ_ICMS(null);
		//
		return r0200;
	}	//	fillR0200
	
	/**
	 * 		Deve ser gerado um Registro A100 para cada documento fiscal a ser relacionado na escrituração, 
	 * 	referente à prestação ou à contratação de serviços, que envolvam a emissão de documentos fiscais 
	 * 	estabelecidos pelos Municípios, eletrônicos ou em papel.
	 *		Para cada registro A100, obrigatoriamente deve ser apresentado, pelo menos, um registro A170.
	 *
	 * 	@return Registro A100
	 */
	public RA100 getRA100 ()
	{
		RA100 rA100 = new RA100 ();
		rA100.setIND_OPER (isSOTrx() ? "1" : "0");
		rA100.setIND_EMIT (isSOTrx() ? "0" : "1");
		rA100.setCOD_PART (getBPValue());
		rA100.setCOD_SIT(isCancelled() ? "02" : "00");
		rA100.setSER(getlbr_NFSerie());
		rA100.setSUB("");	//	FIXME
		rA100.setNUM_DOC(getDocumentNo());
		rA100.setCHV_NFSE(getlbr_NFeID());
		rA100.setDT_DOC(getDateDoc());
		rA100.setVL_DOC(getGrandTotal());
		rA100.setIND_PGTO("0");	//	FIXME
		rA100.setVL_BC_PIS(getPIS_TaxBaseAmt());
		rA100.setVL_PIS(getPIS_TaxAmt());
		rA100.setVL_BC_COFINS(getCOFINS_TaxBaseAmt());
		rA100.setVL_COFINS(getCOFINS_TaxAmt());
		rA100.setVL_PIS_RET(null);
		rA100.setVL_COFINS_RET(null);
		rA100.setVL_ISS(Env.ZERO);	//	FIXME: Modificar VIEW
		//
		return null;
	}	//	getRA100
	
}	//	MLBRFactFiscal
