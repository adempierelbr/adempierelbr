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
package org.adempierelbr.cce.beans.evento.infevento;

import java.sql.Timestamp;

import org.adempierelbr.annotation.Validate;
import org.adempierelbr.annotation.XMLFieldProperties;
import org.adempierelbr.cce.beans.evento.infevento.detevento.DetEvento;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MSysConfig;
import org.compiere.util.Env;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
import com.thoughtworks.xstream.annotations.XStreamOmitField;

/**
 * 		Grupo de informações do registro do Evento
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: InfEvento.java, v1.0 2012/05/12 16:44:58 PM, ralexsander Exp $
 */
@XStreamAlias ("infEvento")
public class InfEvento
{	
	/**		Error Msg	**/
	@XStreamOmitField
	private String errorMsg;
	
	@XStreamAlias ("Id")
	@XStreamAsAttribute
	@XMLFieldProperties	(minSize=54, maxSize=54, id = "HP07")
	public String id;
	
	@XMLFieldProperties	(minSize=2, maxSize=2, id = "HP08")
	private String cOrgao;
	
	@XMLFieldProperties	(minSize=1, maxSize=1, id = "HP09")
	private String tpAmb;
	
	@XMLFieldProperties	(minSize=14, maxSize=14, id = "HP10")
	private String CNPJ;
	
	@XMLFieldProperties	(isMandatory= false, minSize=11, maxSize=11, id = "HP11")
	private String CPF;
	
	@XMLFieldProperties	(minSize=44, maxSize=44, id = "HP12")
	private String chNFe;
	
	@XMLFieldProperties	(id = "HP13")
	private String dhEvento;
	
	@XMLFieldProperties	(minSize=6, maxSize=6, id = "HP14")
	private final String tpEvento = "110110";
	
	@XMLFieldProperties	(minSize=1, maxSize=2, id = "HP15")
	private String nSeqEvento;
	
	@XMLFieldProperties	(minSize=1, maxSize=4, id = "HP16")
	private String verEvento;
	
	@XMLFieldProperties	(needsValidation=true, id = "HP17")
	private DetEvento detEvento;

	public String getId()
	{
		return id;
	}	//	getId

	public void setId()
	{
		this.id = "ID" + getTpEvento() + getChNFe() + TextUtil.lPad (getNSeqEvento(), 2);
	}	//	setId

	public String getCOrgao()
	{
		return cOrgao;
	}	//	getCOrgao

	public void setCOrgao(String cOrgao)
	{
		this.cOrgao = cOrgao;
	}	//	setCOrgao

	public String getTpAmb()
	{
		return tpAmb;
	}	//	getTpAmb

	public void setTpAmb(String tpAmb)
	{
		this.tpAmb = tpAmb;
	}	//	setTpAmb

	public String getCNPJ()
	{
		return CNPJ;
	}	//	getCNPJ

	public void setCNPJ(String cNPJ)
	{
		this.CNPJ = TextUtil.retiraEspecial(cNPJ);
	}	//	setCNPJ

	public String getCPF()
	{
		return CPF;
	}	//	getCPF

	public void setCPF(String cPF)
	{
		this.CPF = cPF;
	}	//	setCPF

	public String getChNFe()
	{
		return chNFe;
	}	//	getChNFe

	public void setChNFe(String chNFe)
	{
		this.chNFe = chNFe;
	}	//	setChNFe

	public String getDhEvento()
	{
		return dhEvento;
	}	//	getDhEvento

	public void setDhEvento (Timestamp dhEvento)
	{
		this.dhEvento = TextUtil.timeToString (dhEvento, "yyyy-MM-dd'T'HH:mm:ss") + MSysConfig.getValue ("LBR_TIMEZONE", "-03:00", Env.getAD_Client_ID (Env.getCtx()));
	}	//	setDhEvento

	public String getTpEvento()
	{
		return tpEvento;
	}	//	getTpEvento

	public String getNSeqEvento()
	{
		return nSeqEvento;
	}	//	getNSeqEvento

	public void setNSeqEvento(String nSeqEvento)
	{
		this.nSeqEvento = nSeqEvento;
	}	//	setNSeqEvento

	public String getVerEvento()
	{
		return verEvento;
	}	//	getVerEvento

	public void setVerEvento(String verEvento)
	{
		this.verEvento = verEvento;
	}	//	setVerEvento

	public DetEvento getDetEvento()
	{
		return detEvento;
	}	//	getDetEvento

	public void setDetEvento(DetEvento detEvento)
	{
		this.detEvento = detEvento;
	}	//	setDetEvento
	
	/**
	 * 		Verifica se as informações são válidas
	 * 	@return true if is valid
	 */
	public boolean isValid ()
	{
		boolean isValid = true;
		errorMsg = Validate.doIt (this);
		
		if (errorMsg != null && errorMsg.length() > 0)
			return false;
		
		/**
		 * 	Validações adicionais
		 */
		if ("12".indexOf (tpAmb) == -1)
		{
			isValid = false;
			errorMsg += "Tipo de Ambiente de emiss\u00E3o desconhecido.\n";
		}
		
		return isValid;
	}	//	isValid

	public String getErrorMsg()
	{
		return errorMsg;
	}
}	//	InfEvento
