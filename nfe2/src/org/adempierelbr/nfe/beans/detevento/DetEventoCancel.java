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
package org.adempierelbr.nfe.beans.detevento;

import org.adempierelbr.annotation.XMLFieldProperties;
import org.adempierelbr.cce.beans.Signature;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * 		Informações da carta de correção
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: InfEvento.java, v1.0 2012/05/12 16:44:58 PM, ralexsander Exp $
 */
public class DetEventoCancel
{
	@XStreamAsAttribute
	@XMLFieldProperties	(id = "HP18")
	private String versao;
	
	@XMLFieldProperties	(minSize=5, maxSize=60, id = "HP19")
	private final String descEvento = "Cancelamento de NF-e";
	
	@XMLFieldProperties	(minSize=15, maxSize=15, id = "HP20")
	private String nProt;
	
	@XMLFieldProperties	(minSize=15, maxSize=255, id = "HP21")
	private String xJust;
	
	@XStreamAlias ("Signature")
	private Signature signature;

	public String getVersao()
	{
		return versao;
	}	//	getVersao

	public void setVersao(String versao)
	{
		this.versao = versao;
	}	//	setVersao
	
	public String getDescEvento()
	{
		return descEvento;
	}	//	getDescEvento

	public String getNProt()
	{
		return nProt;
	}	//	getNProt
	
	public String getXJust()
	{
		return xJust;
	}	//	getXCondUso
	
}	//	DetEvento
