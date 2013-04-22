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

import java.lang.reflect.InvocationTargetException;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.List;
import java.util.Properties;

import org.adempierelbr.sped.SPEDUtil;
import org.adempierelbr.sped.bean.I_R0150;
import org.adempierelbr.sped.bean.I_R0190;
import org.adempierelbr.sped.bean.I_R0200;
import org.adempierelbr.sped.bean.I_RC100;
import org.adempierelbr.sped.bean.I_RC500;
import org.adempierelbr.sped.bean.I_RD100;
import org.adempierelbr.sped.bean.I_RD500;
import org.adempierelbr.sped.contrib.bean.RA010;
import org.adempierelbr.sped.contrib.bean.RA100;
import org.adempierelbr.sped.contrib.bean.RA170;
import org.adempierelbr.sped.contrib.bean.RC010;
import org.adempierelbr.sped.contrib.bean.RC100;
import org.adempierelbr.sped.contrib.bean.RC120;
import org.adempierelbr.sped.contrib.bean.RC170;
import org.adempierelbr.sped.contrib.bean.RD010;
import org.adempierelbr.sped.contrib.bean.RD100;
import org.adempierelbr.sped.contrib.bean.RD101;
import org.adempierelbr.sped.contrib.bean.RD105;
import org.adempierelbr.sped.contrib.bean.RD501;
import org.adempierelbr.sped.contrib.bean.RD505;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.TextUtil;
import org.apache.commons.beanutils.PropertyUtils;
import org.compiere.model.MLocation;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.util.DB;
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

	public static MLBRFactFiscal[] get(Properties ctx, int LBR_NotaFiscal_ID, String trxName) throws Exception
	{
		return get (ctx, null, null, null, null, LBR_NotaFiscal_ID, trxName);
	}
	
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
		return get (ctx, DateFrom, DateTo, new Integer[]{AD_Org_ID}, IsSOTrx, -1, trxName); 
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
	public static MLBRFactFiscal[] get (Properties ctx, Timestamp DateFrom, Timestamp DateTo, Integer[] AD_Org_IDs, Boolean IsSOTrx, int LBR_NotaFiscal_ID, String trxName) throws Exception
	{
		//	Client
		String whereClause = " AD_Client_ID = ? ";
		
 		//	Organizações (2000000, 2000001...) ou (2000000) ou TODAS(null)
		if (AD_Org_IDs != null && AD_Org_IDs.length > 0)
		{
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
		
		//	Transação de Venda/Compra
		if (IsSOTrx != null)
		{
			whereClause += " AND IsSOTrx = " + (IsSOTrx.booleanValue() ? "Y" : "N"); 
		}
		
		//	Nota Fiscal
		if (LBR_NotaFiscal_ID > 0)
		{
			whereClause += " AND LBR_NotaFiscal_ID=" + LBR_NotaFiscal_ID; 
		}
		
		// 	Intervalo de Datas: se for venda, usa a DateDoc(mesma data contábil) 
		// 		senão a lbr_DateInOut(data da entrada efetiva do material no sistama e contabilidade)
		if (DateFrom != null && DateTo != null)
			whereClause += " AND (CASE WHEN IsSOTrx='Y' THEN DateDoc ELSE lbr_DateInOut END) BETWEEN " 
					+ DB.TO_DATE (DateFrom) + " AND " + DB.TO_DATE (DateTo) + " ";
		
		// 	Transação de venda só trazer nfe transmitida
		whereClause += " AND ((IsSOTrx = 'Y' AND lbr_NFeProt IS NOT NULL) OR IsSOTrx ='N') ";
		
		// 	Order By (Date, LBR_NotaFiscal_ID, DocumentNo)
		String orderBy = " (CASE WHEN IsSOTrx='Y' THEN DateDoc ELSE lbr_DateInOut END), LBR_NotaFiscal_ID, Line, DocumentNo ";
		
		// 	Query
		MTable table = MTable.get(ctx, MLBRFactFiscal.Table_Name);
		Query q = new Query(ctx, table, whereClause.toString(), trxName);
		q.setOrderBy(orderBy);
		
		// 	Parametros
		q.setParameters(new Object[] { Env.getAD_Client_ID(ctx) });

		// 	Convert to array
		List<MLBRFactFiscal> list = q.list();
		MLBRFactFiscal[] facts = new MLBRFactFiscal[list.size()];
		return list.toArray(facts);
	}	//	MLBRFactFiscal
	
	/**
	 * 		Monta o código do Produto concatenando o NCM,
	 * 	para os casos que o NCM é diferente para alguns fornecedores
	 */
	@Override
	public String getProductValue ()
	{
//		TODO: Verificar se a melhor forma é concatenar o NCM
//				para casos q a compra/venda foi feite com NCM
//				diferente do cadastro do produto.
//			  Solução atual foi modificar o comparador SPEDComparator
//		if (getlbr_NCMName() != null && !getlbr_NCMName().isEmpty())
//			return TextUtil.retiraEspecial (super.getProductValue()) + "-" + TextUtil.retiraEspecial (getlbr_NCMName());
		//
		return super.getProductValue();
	}	//	getProductValue
	
	/**
	 * 		Get the Search Key from Business Partner
	 * 
	 * 	@return BPartner Value
	 */
	public String getBPValue ()
	{
		if (getC_BPartner_ID() == 0)
			return "";
		return (getlbr_BPCNPJ() != null && !getlbr_BPCNPJ().trim().isEmpty()) 
				? TextUtil.retiraEspecial (getlbr_BPCNPJ()) 
						: "EX-" + TextUtil.retiraEspecial (getC_BPartner().getValue ());
	}	//	getBPartnerValue
	
	/**
	 * 		IE - Inscrição Estadual
	 * 	Trata a informação nos casos de Isenção de IE
	 */
	public String getlbr_BPIE ()
	{
		if (super.getlbr_BPIE() == null
				|| super.getlbr_BPIE().isEmpty()
				|| super.getlbr_BPIE().toUpperCase().indexOf("ISENT") > 0)
			return "";
		//
		return super.getlbr_BPIE();
	}	//	getlbr_BPIE
	
	/**
	 * 	Obs.: A partir de 01/01/2012 passará a ser:
	 * 	Indicador do tipo do frete:	
	 * 		<li>0- Por conta do emitente;
	 * 		<li>1- Por conta do destinatário/remetente;
	 *  	<li>2- Por conta de terceiros;
	 * 		<li>9- Sem cobrança de frete.
	 * 	@return	Indicador do tipo do frete
	 */
	private String getIND_FRT ()
	{
		if (getFreightAmt() != null && getFreightAmt().signum() == 1)
			return SPEDUtil.IND_FRT_DEST_REMT;
		//
		return SPEDUtil.IND_FRT_SEM;
	}	//	getIND_FRET
	
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
		
		if (getlbr_BPIE().equals("ISENTO"))
			r0150.setIE("");
		else
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
		r0190.setDESCR(getLBR_UOMDescription() == null ? "Unidade" : getLBR_UOMDescription());
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
		//	Linha Inválida
		if (getProductValue() == null || getProductValue().isEmpty())
			return null;
		//
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
	 * 		Este registro tem o objetivo de identificar o estabelecimento da pessoa jurídica 
	 * 	a que se referem as operações e documentos fiscais informados neste bloco. Só devem 
	 * 	ser escriturados no Registro A010 os estabelecimentos que efetivamente tenham realizado 
	 * 	operações de prestação ou de contratação de serviços, mediante emissão de documento fiscal, 
	 * 	que devam ser escrituradas no Bloco A.
	 * 	
	 * 		O estabelecimento que não realizou operações passíveis de registro nesse bloco, 
	 * 	no período da escrituração, não deve ser identificado no Registro A010.
	 * 
	 * 		Para cada estabelecimento cadastrado em “A010”, deve ser informado nos registros 
	 * 	de nível inferior (Registros Filho) as operações próprias de prestação ou de contratação 
	 * 	de serviços, mediante emissão de documento fiscal, no mercado interno ou externo.
	 * 	
	 * 	@return Registro A010
	 */
	public RA010 getRA010 ()
	{
		RA010 rA010 = new RA010 ();
		rA010.setCNPJ (getlbr_CNPJ());
		return rA010;
	}	//	getRA010
	
	/**
	 * 		Deve ser gerado um Registro A100 para cada documento fiscal a ser relacionado na escrituração, 
	 * 	referente à prestação ou à contratação de serviços, que envolvam a emissão de documentos fiscais 
	 * 	estabelecidos pelos Municípios, eletrônicos ou em papel.
	 *		Para cada registro A100, obrigatoriamente deve ser apresentado, pelo menos, um registro A170.
	 *
	 * 	@return Registro A100
	 * 	@throws Exception 
	 */
	public RA100 getRA100 (Properties ctx, String trxName) throws Exception
	{
		RA100 rA100 = new RA100 ();
		rA100.setCOD_SIT(isCancelled() ? SPEDUtil.COD_SIT_CANCELADO : SPEDUtil.COD_SIT_REGULAR);
		rA100.setIND_OPER (isSOTrx() ? SPEDUtil.IND_OPER_PRESTADO : SPEDUtil.IND_OPER_CONTRATADO);
		rA100.setIND_EMIT (isSOTrx() ? SPEDUtil.IND_EMIT_PROPRIA : SPEDUtil.IND_EMIT_TERCEIROS);
		rA100.setSER(getlbr_NFSerie());
		rA100.setCOD_PART (getBPValue());
		rA100.setNUM_DOC(getDocumentNo());
		rA100.setCHV_NFSE(getlbr_NFeID());
		
		if (rA100.getCOD_SIT().equals(SPEDUtil.COD_SIT_REGULAR))
		{
			rA100.setSUB("");	//	FIXME
			rA100.setDT_DOC(getDateDoc());
			rA100.setVL_DOC(getGrandTotal());
			rA100.setIND_PGTO(SPEDUtil.IND_PAGTO_VISTA);	//	FIXME
			rA100.setVL_BC_PIS(getPIS_TaxBaseAmt());		//	FIXME: Criar PIS_NFTaxBaseAmt
			rA100.setVL_PIS(getPIS_NFTaxAmt());
			rA100.setVL_BC_COFINS(getCOFINS_TaxBaseAmt());	//	FIXME: Criar COFINS_NFTaxBaseAmt
			rA100.setVL_COFINS(getCOFINS_NFTaxAmt());
			rA100.setVL_PIS_RET(null);
			rA100.setVL_COFINS_RET(null);
			rA100.setVL_ISS(Env.ZERO);	//	FIXME: Modificar VIEW
		}
		
		//	Process Lines
		MLBRFactFiscal[] lines = MLBRFactFiscal.get (ctx, getLBR_NotaFiscal_ID(), trxName);
		
		if (rA100.getCOD_SIT().equals(SPEDUtil.COD_SIT_REGULAR))
		{
			for (MLBRFactFiscal line : lines)
			{
				rA100.addA170 (line.getRA170 ());
			}
		}
		//
		return rA100;
	}	//	getRA100
	
	/**
	 * 		Registro obrigatório para discriminar os itens da nota fiscal de serviço emitida 
	 * 	pela pessoa jurídica ou por terceiros. Não podem ser informados para um mesmo documento 
	 * 	fiscal, dois ou mais registros com o mesmo conteúdo no campo NUM_ITEM.
	 * 
	 * 	@return Registro A170
	 */
	private RA170 getRA170 ()
	{
		RA170 rA170 = new RA170 ();
		rA170.setNUM_ITEM (String.valueOf (getLine()));
		rA170.setCOD_ITEM (getProductValue());
		rA170.setDESCR_COMPL (getProductName());
		rA170.setVL_ITEM (getLineNetAmt());
		rA170.setVL_DESC (getDiscountAmt());
		rA170.setNAT_BC_CRED (null);	//	TODO: Não Obrigatório
		rA170.setIND_ORIG_CRED (null);	//	TODO: Não Obrigatório
		rA170.setCST_PIS (getPIS_TaxStatus());
		rA170.setVL_BC_PIS (getPIS_TaxBaseAmt());
		rA170.setALIQ_PIS (getPIS_TaxRate());
		rA170.setVL_PIS (getPIS_TaxAmt());
		rA170.setCST_COFINS (getCOFINS_TaxStatus());
		rA170.setVL_BC_COFINS (getCOFINS_TaxBaseAmt());
		rA170.setALIQ_COFINS (getCOFINS_TaxRate());
		rA170.setVL_COFINS (getCOFINS_TaxAmt());
		
		//	Não Obrigatório, porém o Adempiere pode ter regras diferentes para esta informação
		//		então não é possível preencher.
		rA170.setCOD_CTA (null);
		rA170.setCOD_CCUS (null);		//	TODO: Não Obrigatório
		//
		return rA170;
	}	//	getRA170
	
	/**
	 * 		Este registro tem o objetivo de identificar o estabelecimento da pessoa jurídica 
	 * 	a que se referem as operações e documentos fiscais informados neste bloco. Só devem 
	 * 	ser escriturados no Registro C010 os estabelecimentos que efetivamente tenham realizado 
	 * 	aquisição, venda ou devolução de mercadorias, bens e produtos, mediante emissão de documento 
	 * 	fiscal definido pela legislação do ICMS e do IPI, que devam ser escrituradas no Bloco C.
	 * 
	 * 		O estabelecimento que não realizou operações passíveis de registro nesse bloco, n
	 * 	o período da escrituração, não deve ser identificado no Registro C010.
	 * 
	 * 		Para cada estabelecimento cadastrado em “C010”, deve ser informado nos registros de 
	 * 	nível inferior (Registros Filho) as operações próprias de prestação ou de contratação de 
	 * 	serviços, mediante emissão de documento fiscal, no mercado interno ou externo.
	 * 
	 *	@return	Registro C010
	 *	@throws IllegalAccessException
	 * 	@throws InvocationTargetException
	 * 	@throws NoSuchMethodException 
	 */
	public RC010 getRC010 () throws IllegalAccessException, InvocationTargetException, NoSuchMethodException
	{
		RC010 rC010 = new RC010 ();
		//
		PropertyUtils.copyProperties (rC010, getRA010 ());
		//
		if (rC010.getCNPJ() == null || rC010.getCNPJ().isEmpty())
			return null;
		//
		return rC010;
	}	//	getRC010
	
	/**
	 * 
	 * 	@param ctx
	 * 	@param rC100
	 * 	@param trxName
	 * 	@return
	 * 	@throws Exception
	 */
	public I_RC100 getRC100 (Properties ctx, I_RC100 rC100, String trxName) throws Exception
	{
		/**
		 * 	Copia os dados comuns:
		 * 		IND_OPER, IND_EMIT, COD_PART, COD_SIT, SER, NUM_DOC, 
		 * 		DT_DOC, VL_DOC, IND_PGTO, VL_DESC, VL_PIS, VL_COFINS
		 */
		PropertyUtils.copyProperties (rC100, getRA100 (ctx, trxName));
		//
		if (rC100.getNUM_DOC() == null || rC100.getNUM_DOC().isEmpty())
			return null;
		//
		rC100.setCOD_MOD (getlbr_NFModel());
		rC100.setCHV_NFE (getlbr_NFeID());
		
		//		Não preencher todo o Documento e
		//	não gerar linhas para NF canceladas
		if (isCancelled())
		{
			rC100.setCOD_PART(null);
			rC100.setDT_DOC(null);
			rC100.setVL_DOC(null);
			rC100.setVL_DESC(null);
			rC100.setIND_PGTO(null);
			rC100.setVL_PIS(null);
			rC100.setVL_COFINS(null);
			return rC100;
		}
		
		rC100.setDT_E_S (getlbr_DateInOut());
		rC100.setVL_MERC (getTotalLines());
		rC100.setIND_FRT (getIND_FRT());
		rC100.setVL_FRT (getFreightAmt());
		rC100.setVL_SEG (getlbr_InsuranceAmt());
		rC100.setVL_OUT_DA(null);		//	TODO
		rC100.setVL_BC_ICMS(getICMS_NFTaxBaseAmt());
		rC100.setVL_ICMS(getICMS_NFTaxAmt());
		rC100.setVL_BC_ICMS_ST(getICMSST_NFTaxBaseAmt());
		rC100.setVL_ICMS_ST(getICMSST_NFTaxAmt());
		rC100.setVL_IPI(getIPI_NFTaxAmt());
		rC100.setVL_PIS_ST(null);		//	TODO
		rC100.setVL_COFINS_ST(null);	//	TODO
		
		//	Process Lines
		MLBRFactFiscal[] lines = MLBRFactFiscal.get (ctx, getLBR_NotaFiscal_ID(), trxName);
		
		rC100.addRC120(getRC120());
		
		for (MLBRFactFiscal line : lines)
		{
			rC100.addRC170 (line.getRC170 ());
		}
			
		return rC100;
	}	//	getRC100

	private RC120 getRC120 () throws Exception
	{
		RC120 rC120 = new RC120();
		
		/**
		 * 	Copia os dados comuns:
		 * 
		 * 	NUM_ITEM, COD_ITEM, DESCR_COMPL, VL_ITEM, VL_DESC, 
		 * 		CST_PIS, VL_BC_PIS, ALIQ_PIS, VL_PIS, VL_BC_COFINS, 
		 * 		ALIQ_COFINS, VL_COFINS, COD_CTA, 
		 */
		PropertyUtils.copyProperties (rC120, getRA100(getCtx(), null));
		//
		rC120.setCOD_DOC_IMP("0");
		rC120.setNUM_DOC_IMP("123");
		rC120.setVL_COFINS_IMP(getCOFINS_NFTaxAmt());
		rC120.setVL_PIS_IMP(getPIS_NFTaxAmt());
		//
		return rC120;
	}	//	getRC170
	
	private RC170 getRC170 () throws IllegalAccessException, InvocationTargetException, NoSuchMethodException
	{
		RC170 rC170 = new RC170();
		
		/**
		 * 	Copia os dados comuns:
		 * 
		 * 	NUM_ITEM, COD_ITEM, DESCR_COMPL, VL_ITEM, VL_DESC, 
		 * 		CST_PIS, VL_BC_PIS, ALIQ_PIS, VL_PIS, VL_BC_COFINS, 
		 * 		ALIQ_COFINS, VL_COFINS, COD_CTA, 
		 */
		PropertyUtils.copyProperties (rC170, getRA170 ());
		//
		rC170.setQTD (getQty());
		rC170.setUNID (getlbr_UOMName());
		rC170.setIND_MOV(null);			//	TODO
		rC170.setCST_ICMS(getICMS_TaxStatus());
		rC170.setCFOP(getlbr_CFOPName());
		rC170.setCOD_NAT(null);			//	TODO
		rC170.setVL_BC_ICMS(getICMS_TaxBaseAmt());
		rC170.setALIQ_ICMS(getICMS_TaxRate());
		rC170.setVL_ICMS(getICMS_TaxAmt());
		rC170.setVL_BC_ICMS_ST(getICMSST_TaxBaseAmt());
		rC170.setALIQ_ST(getICMSST_TaxRate());
		rC170.setVL_ICMS_ST(getICMSST_TaxAmt());
		rC170.setIND_APUR(SPEDUtil.IND_APUR_MENSAL);
		rC170.setCST_IPI(getIPI_TaxStatus());
		rC170.setCOD_ENQ(null);	//	TODO
		rC170.setVL_BC_IPI(getIPI_TaxBaseAmt());
		rC170.setALIQ_IPI(getIPI_TaxRate());
		rC170.setVL_IPI(getIPI_TaxAmt());
		//
		return rC170;
	}	//	getRC170
	
	public I_RC500 getRC500 (Properties ctx, I_RC500 rC500, String trxName) throws Exception
	{
		
		PropertyUtils.copyProperties (rC500, getRC100 (ctx, (I_RC100) new RC100(), trxName));
		return rC500;
	}	//	getRC500
	
	/**
	 * 		Este registro tem o objetivo de identificar o estabelecimento da pessoa jurídica a que 
	 * 	se referem as operações e documentos fiscais informados neste bloco. Só devem ser escriturados 
	 * 	no Registro D010 os estabelecimentos que efetivamente tenham realizado as operações especificadas 
	 * 	no Bloco D (prestação ou contratação), relativas a serviços de transporte de cargas e/ou de passageiros, 
	 * 	serviços de comunicação e de telecomunicação, mediante emissão de documento fiscal definido pela 
	 * 	legislação do ICMS e do IPI, que devam ser escrituradas no Bloco D. 
	 * 
	 * 		O estabelecimento que não realizou operações passíveis de registro nesse bloco, no período 
	 * 	da escrituração, não deve ser identificado no Registro D010. 
	 * 
	 * 		Para cada estabelecimento cadastrado em “D010”, deve ser informado nos registros de nível 
	 * 	inferior (Registros Filho) as operações próprias de prestação ou de contratação, mediante emissão 
	 * 	de documento fiscal, no mercado interno ou externo.
	 * 
	 * 	@return Registro D010
	 * 	@throws NoSuchMethodException 
	 * 	@throws IllegalAccessException
	 * 	@throws InvocationTargetException
	 */
	public RD010 getRD010 () throws IllegalAccessException, InvocationTargetException, NoSuchMethodException 
	{
		RD010 rD010 = new RD010 ();
		//
		PropertyUtils.copyProperties (rD010, getRC010 ());
		//
		return rD010;
	}	//	getRD010
	
	/**
	 * 		Este registro deve ser apresentado por todos os contribuintes adquirentes dos serviços 
	 * 	relacionados, que utilizem os documentos previstos para este registro, cuja operação dê 
	 * 	direito à apuração de crédito à pessoa jurídica contratante, na forma da legislação tributária.
	 * 	
	 * 	@param ctx Contexto
	 * 	@param rC100 Registro C100
	 * 	@param trxName	Transação
	 * 	@return Registro C100
	 * 	@throws Exception
	 */
	public I_RD100 getRD100 (Properties ctx, I_RD100 rD100, String trxName) throws Exception
	{
		PropertyUtils.copyProperties (rD100, getRC100 (ctx, (I_RC100) new RC100 (), trxName));
		rD100.setVL_SERV (getGrandTotal());
		
		//	Process Lines
		MLBRFactFiscal[] lines = MLBRFactFiscal.get (ctx, getLBR_NotaFiscal_ID(), trxName);
		
		for (MLBRFactFiscal line : lines)
		{
			rD100.addD101 (line.getRD101());
			rD100.addD105 (line.getRD105());
		}
		//
		return rD100;
	}	//	getRD100
	
	public RD101 getRD101 () throws IllegalAccessException, InvocationTargetException, NoSuchMethodException
	{
		RD101 rD101 = new RD101 ();
		//
		PropertyUtils.copyProperties (rD101, getRC170 ());
		rD101.setIND_NAT_FRT (SPEDUtil.IND_FRT_SEM);		//	TODO
		//
		return rD101;
	}	//	getRD101
	
	public RD105 getRD105 () throws IllegalAccessException, InvocationTargetException, NoSuchMethodException
	{
		RD105 rD105 = new RD105 ();
		//
		PropertyUtils.copyProperties (rD105, getRC170 ());
		rD105.setIND_NAT_FRT (SPEDUtil.IND_FRT_SEM);		//	TODO
		//
		return rD105;
	}	//	getRD105
	
	/**
	 * 		Neste registro deverá a pessoa jurídica informar as operações referentes à contratação de 
	 * 	serviços de comunicação ou de telecomunicação que, em função da natureza do serviço e da atividade 
	 * 	econômica desenvolvida pela pessoa jurídica, permita a apuração de créditos de PIS/Pasep e de Cofins, 
	 * 	na forma da legislação tributária.
	 * 
	 * 	@param ctx Contexto
	 * 	@param rC100 Registro C100
	 * 	@param trxName	Transação
	 * 	@return Registro C100
	 * 	@throws Exception
	 */
	public I_RD500 getRD500 (Properties ctx, I_RD500 rD500, String trxName) throws Exception
	{
		PropertyUtils.copyProperties (rD500, getRD100 (ctx, (I_RD100) new RD100 (), trxName));
		rD500.setDT_A_P(getlbr_DateInOut());

		//	Process Lines
		MLBRFactFiscal[] lines = MLBRFactFiscal.get (ctx, getLBR_NotaFiscal_ID(), trxName);

		for (MLBRFactFiscal line : lines)
		{
			rD500.addD501 (line.getRD501());
			rD500.addD505 (line.getRD505());
		}
		
		return rD500;
	}	//	getRD500
	
	/**
	 * 		D501: COMPLEMENTO DA OPERAÇÃO (CÓDIGOS 21 e 22) – PIS/PASEP
	 * 
	 * 	@return Registro D501
	 * 	@throws IllegalAccessException
	 * 	@throws InvocationTargetException
	 * 	@throws NoSuchMethodException 
	 */
	public RD501 getRD501 () throws IllegalAccessException, InvocationTargetException, NoSuchMethodException
	{
		RD501 rD501 = new RD501 ();
		//
		PropertyUtils.copyProperties (rD501, getRD101 ());
		//
		return rD501;
	}	//	getRD501
	
	/**
	 * 		D505: COMPLEMENTO DA OPERAÇÃO (CÓDIGOS 21 e 22) – COFINS
	 * 	
	 * 	@return	Registro D505
	 * 	@throws IllegalAccessException
	 * 	@throws InvocationTargetException
	 * 	@throws NoSuchMethodException 
	 */
	public RD505 getRD505 () throws IllegalAccessException, InvocationTargetException, NoSuchMethodException
	{
		RD505 rD505 = new RD505 ();
		//
		PropertyUtils.copyProperties (rD505, getRD105 ());
		//
		return rD505;
	}	//	getRD505
}	//	MLBRFactFiscal
