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
package org.adempierelbr.cce.beans.retevento;

import org.adempierelbr.cce.beans.retevento.infevento.InfEvento;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * 		RetEvento Bean
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: RetEvento.java, v1.0 2012/05/20 7:11:11 PM, ralexsander Exp $
 */
@XStreamAlias ("retEvento")
public class RetEvento
{
	@SuppressWarnings("unused")
	@XStreamAsAttribute
	private String versao;
	
	@SuppressWarnings("unused")
	@XStreamAsAttribute
	private String xmlns="http://www.portalfiscal.inf.br/nfe";
	
	private InfEvento infEvento;

	public InfEvento getInfEvento()
	{
		return infEvento;
	}	//	getInfEvento
}	//	RetEvento
