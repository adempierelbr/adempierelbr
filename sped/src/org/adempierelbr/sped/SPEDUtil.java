/******************************************************************************
 * Copyright (C) 2013 Kenos Assessoria e Consultoria de Sistemas Ltda         *
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
package org.adempierelbr.sped;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Properties;
import java.util.Set;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRFactFiscal;
import org.adempierelbr.sped.bean.I_R0000;
import org.adempierelbr.sped.bean.I_R0100;
import org.adempierelbr.sped.bean.I_R0150;
import org.adempierelbr.sped.bean.I_R0190;
import org.adempierelbr.sped.bean.I_R0200;
import org.adempierelbr.sped.bean.I_RC100;
import org.adempierelbr.sped.contrib.bean.R0000;
import org.adempierelbr.sped.contrib.bean.R0110;
import org.adempierelbr.sped.contrib.bean.R0140;
import org.adempierelbr.sped.contrib.bean.RA010;
import org.adempierelbr.sped.contrib.bean.RA100;
import org.adempierelbr.sped.contrib.bean.RC010;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MCity;
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MUser;

/**
 * 		Utilitários do SPED
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: SPEDUtil.java, v1.0 2013/02/02 14:47:07 PM, ralexsander Exp $
 */
public class SPEDUtil
{
	private static final String MODEL_RPS = "RS";	//	FIXME: Criar script para adicionar RPS, sendo a chave RS (2 Dígitos)
	
	/**	SPED ECD			*/
	public static final int TYPE_ECD 		= 0;
	
	/**	SPED EFD			*/
	public static final int TYPE_EFD 				= 1;
	
	/** SPED Contribuições	*/
	public static final int TYPE_CONTRIB 			= 2;
	
	/** Versão da ECD		*/
	public static final String ECD_VERSION 			= "";
	
	/**	Versão da EFD		*/
	public static final String EFD_VERSION 			= "";
	
	/**	Versão da EFD Contribuições */
	public static final String CONTRIB_VERSION 		= "002";
	
	public static final String IND_OPER_CONTRATADO 	= "0";
	public static final String IND_OPER_PRESTADO 	= "1";
	
	public static final String IND_EMIT_PROPRIA 	= "0";
	public static final String IND_EMIT_TERCEIROS 	= "1";

	public static final String COD_SIT_REGULAR 		= "00";
	public static final String COD_SIT_CANCELADO 	= "02";
	
	public static final String IND_PAGTO_VISTA	 	= "0";
	public static final String IND_PAGTO_PRAZO	 	= "1";
	public static final String IND_PAGTO_SEM	 	= "9";
	
	/** Frete: Emitente						*/
	public static final String IND_FRT_EMIT		 	= "0";
	
	/**	Frete: Destinatário ou Remetente	*/
	public static final String IND_FRT_DEST_REMT 	= "1";
	
	/**	Frete: Terceiros					*/
	public static final String IND_FRT_TERC		 	= "2";
	
	/**	Frete: Sem Cobrança					*/
	public static final String IND_FRT_SEM		 	= "9";
	

	/**
	 * 	Array com todos os Registros 0150 e seus filhos
	 */
	private static Set<I_R0150> _R0150;
	
	/**
	 * 	Array com todos os Registros 0190 e seus filhos
	 */
	private static Set<I_R0190> _R0190;
	
	/**
	 * 	Array com todos os Registros 0200 e seus filhos
	 */
	private static Set<I_R0200> _R0200;
	
	/**
	 * 	Array com todos os Registros A010 e seus filhos
	 */
	private static Set<RA010> _RA010;
	
	/**
	 * 	Array com todos os Registros A100 e seus filhos
	 */
	private static Set<RA100> _RA100;
	
	/**
	 * 	Array com todos os Registros C010 e seus filhos
	 */
	private static Set<RC010> _RC010;
	
	/**
	 * 	Array com todos os Registros A100 e seus filhos
	 */
	private static Set<I_RC100> _RC100;
	
	/**
	 * 	Processa todos os Fatos Fiscais
	 * 
	 * @param ctx Context
	 * @param facts	Fatos Fiscais
	 * @param trxName Nome da Transação
	 * @throws Exception 
	 */
	public static void processFacts (Properties ctx, MLBRFactFiscal[] facts, int type, String trxName) throws Exception
	{
		//	FIXME: Assim até a Fact Fiscal ter identificação do tipo de
		//		registro, Cabeçalho, Linha, Org, etc.
		List<Integer> unqNF = new ArrayList<Integer>();
		
		//	Initialize
		_R0150 = new HashSet<I_R0150>();
		_R0190 = new HashSet<I_R0190>();
		_R0200 = new HashSet<I_R0200>();
		_RA010 = new HashSet<RA010>();
		_RA100 = new HashSet<RA100>();
		//
		for (MLBRFactFiscal fact : facts)
		{
			//	TEMPORARIO VIDE unqNF
			if (unqNF.contains(fact.getLBR_NotaFiscal_ID()))
				continue;
			else
				unqNF.add(fact.getLBR_NotaFiscalLine_ID());
			
			_R0150.add (fact.fillR0150 (ctx, (I_R0150) getReg ("R0150", type), trxName));
			_R0190.add (fact.fillR0190 (ctx, (I_R0190) getReg ("R0190", type), trxName));
			_R0200.add (fact.fillR0200 (ctx, (I_R0200) getReg ("R0200", type), trxName));
			
			//	Contratação de Serviço (Somente Contribuições)
			if (MODEL_RPS.equals(fact.getlbr_NFModel()) && type == TYPE_CONTRIB)
			{
				//	A010
				_RA010.add (fact.getRA010 ());
				
				//	A100, A170
				_RA100.add (fact.getRA100 (ctx, trxName));
			}
			
			else 
			{
				//	C010
				_RC010.add (fact.getRC010 ());
				
				//	C100, C120, C130, C140, C141, C170, C172, C190, C195
				_RC100.add (fact.getRC100 (ctx, (I_RC100) getReg ("RC100", type), trxName));
			}
		}	//	for
	}	//	processFacts
	
	/**
	 * 		Retorna a instância dos registros comuns ou similares entre os SPEDs.
	 * 
	 * 	@param regName Nome do Registro
	 * 	@param type Tipo ECD, EFD ou Contribuições
	 * 	@return Registro para ambos SPEDs
	 */
	private static Object getReg (String regName, int type)
	{
		Class<?> clazz = null;
		
		try
		{
			if (type == TYPE_EFD)
				clazz = Class.forName("org.adempierelbr.sped.efd." + regName);
			
			else if (type == TYPE_CONTRIB)
				clazz = Class.forName("org.adempierelbr.sped.contrib." + regName);
			
			else if (type == TYPE_ECD)
				clazz = Class.forName("org.adempierelbr.sped.ecd." + regName);

			else
				throw new ClassNotFoundException (">>>>" + regName);
			//
			return clazz.newInstance();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}	//	getReg
	
	/**
	 * 		Abertura do Arquivo
	 * 
	 *	@param reg Interface do Registro 0100
	 * 	@param ctx Contexto
	 * 	@param dateFrom Data de Abertura
	 * 	@param dateTo Data de Encerramento
	 * 	@param codFin Finalidade do Arquivo / Tipo
	 * 	@param oi Informações da Organização
	 * 	@param trxName Nome da Transação do BD
	 * 	@return
	 * 	@throws Exception
	 */
	public static R0000 fillR0000 (R0000 reg, Properties ctx, Timestamp dateFrom, Timestamp dateTo, 
			String codFin, MOrgInfo oi, String indSitEsp, 
			String numRecAnterior, String trxName) throws Exception
	{
		reg.setTIPO_ESCRIT(codFin);
		reg.setIND_SIT_ESP(indSitEsp);
		reg.setNUM_REC_ANTERIOR(numRecAnterior);
		reg.setCOD_VER(CONTRIB_VERSION);
		//
		return (R0000) fillR0000 ((I_R0000) reg, ctx, dateFrom, dateTo, oi, trxName);
	}	//	fillR0000
	
	/**
	 * 		Abertura do Arquivo
	 * 
	 *	@param reg Interface do Registro 0100
	 * 	@param ctx Contexto
	 * 	@param dateFrom Data de Abertura
	 * 	@param dateTo Data de Encerramento
	 * 	@param codFin Finalidade do Arquivo
	 * 	@param oi Informações da Organização
	 * 	@param trxName Nome da Transação do BD
	 * 	@return
	 * 	@throws Exception
	 */
	public static I_R0000 fillR0000 (I_R0000 reg, Properties ctx, Timestamp dateFrom, Timestamp dateTo, 
			MOrgInfo oi, String trxName) throws Exception
	{
		I_W_AD_OrgInfo oiW = POWrapper.create(oi, I_W_AD_OrgInfo.class);
		//
		reg.setDT_INI(dateFrom);
		reg.setDT_FIN(dateTo);
		reg.setNOME(oiW.getlbr_LegalEntity());
		reg.setCNPJ(oiW.getlbr_CNPJ());
		reg.setUF(oiW.getC_Location().getC_Region().getName());		
		//
		MCity city = new MCity(ctx, oiW.getC_Location().getC_City_ID(), trxName);
		reg.setCOD_MUN(city.get_ValueAsString("lbr_CityCode"));	//	FIXME: User Wrapper
		reg.setSUFRAMA(oiW.getlbr_Suframa());

		/**
		 * 	0 - Industria ou Equiparado a Industrial
		 *  1 - Outros
		 */
		//	FIXME: User Wrapper
		reg.setIND_ATIV(oi.get_ValueAsString("lbr_IndAtividade").equals("0") ? "0" : "1");

		return reg;
	}	//	fillR0000
	
	/**
	 * 		Dados do Contabilista
	 * 
	 * 	@param reg Interface do Registro 0100
	 * 	@param ctx Contexto
	 * 	@param oi Informações da Organização
	 * 	@param trxName Nome da Transação do BD
	 * 	@throws Exception
	 */
	public static I_R0100 fillR0100 (I_R0100 reg, Properties ctx, MOrgInfo oi, String trxName) throws Exception
	{
		//	Dados do Contador - FIXME: Ajustar o Wrapper
		MBPartner bpContador = new MBPartner(ctx, oi.get_ValueAsInt("LBR_BP_Accountant_ID"), trxName);
		MBPartnerLocation bpcontLoc = bpContador.getPrimaryC_BPartner_Location();
		MLocation contLoc = new MLocation(ctx, bpcontLoc.getC_Location_ID(), trxName);
	
		// 	Não prosseguir sem os dados essenciais
		if (bpContador == null || bpcontLoc == null || contLoc == null) 
			throw new AdempiereException ("Dados do Contabilista não informado.");

		reg.setNOME(bpContador.getName());
		reg.setCPF(bpContador.get_ValueAsString("lbr_CPF"));	//	FIXME: Ajusta o Wrapper
		reg.setCRC(bpContador.get_ValueAsString("lbr_CRC"));
		reg.setCNPJ(bpContador.get_ValueAsString("lbr_CNPJ"));
		reg.setCEP(contLoc.getPostal());
		reg.setEND(contLoc.getAddress1());
		reg.setNUM(contLoc.getAddress2());
		reg.setCOMPL(contLoc.getAddress4());
		reg.setBAIRRO(contLoc.getAddress3());
		reg.setFONE(bpcontLoc.getPhone());
		reg.setFAX(bpcontLoc.getFax());
		
		//	E-Mail
		if (bpContador.getPrimaryAD_User_ID() > 0) 
			reg.setEMAIL(MUser.get(ctx, bpContador.getPrimaryAD_User_ID()).getEMail());

		//	Código do Município do IBGE
		reg.setCOD_MUN(BPartnerUtil.getCityCode(contLoc));
		
		//	Retorno o mesmo objeto
		return reg;
	}	//	fillR0100
	
	/**
	 * 		Este registro tem por objetivo definir o regime de incidência a que se 
	 * 	submete a pessoa jurídica (não-cumulativo, cumulativo ou ambos os regimes) 
	 * 	no período da escrituração. No caso de sujeição ao regime não-cumulativo, 
	 * 	será informado também o método de apropriação do crédito incidente sobre operações 
	 * 	comuns a mais de um tipo de receita adotado pela pessoa jurídica para o ano-calendário.
	 * 
	 * @param COD_INC_TRIB Código indicador da incidência tributária no período<br>
	 * 			<li>1 – Escrituração de operações com incidência exclusivamente no 
	 * 									regime não-cumulativo;
	 *			<li>2 – Escrituração de operações com incidência exclusivamente no 
	 *									regime cumulativo;
	 *			<li>3 – Escrituração de operações com incidência nos regimes 
	 *									não-cumulativo e cumulativo.
	 * @param IND_APRO_CRED Código indicador de método de apropriação de créditos comuns
	 * 			<li>1 – Método de Apropriação Direta;
	 *			<li>2 – Método de Rateio Proporcional (Receita Bruta)
	 * @param COD_TIPO_CONT Código indicador do Tipo de Contribuição Apurada no Período
	 * 			<li>1 – Apuração da Contribuição Exclusivamente a Alíquota Básica
	 * 			<li>2 – Apuração da Contribuição a Alíquotas Específicas (Diferenciadas e/ou por 
	 * 									Unidade de Medida de Produto)
	 * @param IND_REG_CUM Código indicador do critério de escrituração e apuração adotado
	 * 			<li>1 – Regime de Caixa – Escrituração consolidada (Registro F500);
	 * 			<li>2 – Regime de Competência - Escrituração consolidada (Registro F550);
	 * 			<li>9 – Regime de Competência - Escrituração detalhada, com base nos registros 
	 * 									dos Blocos “A”, “C”, “D” e “F”
	 * @return Registro 0110
	 * @throws Exception
	 */
	public static R0110 getR0110 (String COD_INC_TRIB, String IND_APRO_CRED, String COD_TIPO_CONT, String IND_REG_CUM) throws Exception
	{
		R0110 r0110 = new R0110 ();
		r0110.setCOD_INC_TRIB(COD_INC_TRIB);
		r0110.setIND_APRO_CRED(IND_APRO_CRED);
		r0110.setCOD_TIPO_CONT(COD_TIPO_CONT);
		r0110.setIND_REG_CUM(IND_REG_CUM);
		//
		return r0110;
	}	//	getR0110
	
	/**
	 * 		Este registro tem por objetivo relacionar e informar os estabelecimentos da pessoa jurídica, 
	 * 	no Brasil ou no exterior, que auferiram receitas no período da escrituração, realizaram operações 
	 * 	com direito a créditos ou que sofreram retenções na fonte, no período da escrituração.
	 * 
	 * 	@param ctx Context
	 * 	@param oi Organização
	 * 	@param trxName Transaction Name
	 * 	@return Registro 0140
	 */
	public static Set<R0140> getR0140 (Properties ctx, MOrgInfo[] ois, String trxName)
	{
		Set<R0140> r0140L = new HashSet<R0140>();
		//
		for (MOrgInfo oi : ois)
		{
			I_W_AD_OrgInfo oiW = POWrapper.create(oi, I_W_AD_OrgInfo.class);
			MLocation location = new MLocation (ctx, oi.getC_Location_ID(), trxName);
			//
			R0140 r0140 = new R0140();
			r0140.setCNPJ(oiW.getlbr_CNPJ());
			r0140.setCOD_EST(String.valueOf (oi.getAD_Org_ID()));
			r0140.setCOD_MUN(BPartnerUtil.getCityCode (location));
			r0140.setIE(oiW.getlbr_IE());
			r0140.setIM(oiW.getlbr_CCM());
			r0140.setNOME(oiW.getlbr_LegalEntity());
			r0140.setSUFRAMA(oiW.getlbr_Suframa());
			r0140.setUF(oi.getC_Location().getRegionName());
			//
			r0140L.add(r0140);
		}
		return r0140L;
	}	//	getR0140

	/**
	 * 		Parceiros
	 * 	@return Registros 0150
	 */
	public static Set<I_R0150> getR0150 ()
	{
		return _R0150;
	}	//	getR0150
	
	/**
	 * 		UDMs
	 * 	@return Registros 0190
	 */
	public static Set<I_R0190> getR0190 ()
	{
		return _R0190;
	}	//	getR0150
	
	/**
	 * 		UDMs
	 * 	@return Registros 0200
	 */
	public static Set<I_R0200> getR0200 ()
	{
		return _R0200;
	}	//	getR0150
}	//	SPEDUtil
