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
package org.adempierelbr.cce.beans.evento;

import org.adempierelbr.annotation.XMLFieldProperties;
import org.adempierelbr.cce.beans.Signature;
import org.adempierelbr.cce.beans.evento.infevento.InfEvento;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * 		Evento
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: Evento.java, v1.0 2012/05/14 1:21:57 AM, ralexsander Exp $
 */
@XStreamAlias ("evento")
public class Evento
{
	@XStreamAsAttribute
	@XMLFieldProperties	(id = "HP05")
	private String versao;
	
	@XStreamAsAttribute
	@SuppressWarnings("unused")
	private final String xmlns="http://www.portalfiscal.inf.br/nfe";
	
	@XMLFieldProperties	(needsValidation=true, id = "HP06")
	private InfEvento infEvento;
	
	@SuppressWarnings("unused")
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

	public InfEvento getInfEvento()
	{
		return infEvento;
	}	//	getInfEvento

	public void setInfEvento(InfEvento infEvento)
	{
		this.infEvento = infEvento;
	}	//	setInfEvento
}	//	Evento
