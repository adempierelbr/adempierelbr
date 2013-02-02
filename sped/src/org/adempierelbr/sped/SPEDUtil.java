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
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.sped.bean.I_R0000;
import org.adempierelbr.sped.bean.I_R0100;
import org.adempierelbr.sped.contrib.bean.R0000;
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
	public static final String ECD_VERSION = "";
	public static final String EFD_VERSION = "";
	public static final String CONTRIB_VERSION = "002";
	
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
}	//	SPEDUtil
