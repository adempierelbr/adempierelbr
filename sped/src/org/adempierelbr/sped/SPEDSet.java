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

import java.util.TreeSet;

/**
 * 		Set para manter o arquivo ordenado e impedir adição de NULL
 * 		
 * 		TODO: Teste de performance, caso necessário mudar para HashSet e ordenar apenar no final
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 * 	@version $Id: SPEDSet.java, v1.0 2013/02/27 1:41:50 AM, ralexsander Exp $
 * 	@param <E>
 */
public class SPEDSet<E> extends TreeSet<E>
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 	Constructor
	 */
	public SPEDSet ()
	{
		super (SPEDComparator.get());
	}	//	SPEDSet
	
	/**
	 * 	Impede a adição de NULL
	 */
	@Override
	public boolean add (E e)
	{
		if (e == null)
			return false;
		return super.add(e);
	}	//	add
}	//	SPEDSet
