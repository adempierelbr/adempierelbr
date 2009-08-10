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
package org.adempierelbr.redf.beans;

/**
 *	Totalizador de Registros
 *	
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 * 	@version 	$Id: NFREDF,v 1.2 2009/08/06 12:01:00 ralexsander Exp $
 */
public class NFREDF
{
	private Registro20 			Registro20;
	private Registro30 			Registro30;
	private Registro40 			Registro40;
	private Registro50 			Registro50;
	private Registro60 			Registro60;
		
	/**
	 * Constructor
	 */
	public NFREDF (Registro20 Registro20, Registro30 Registro30, 
			Registro40 Registro40, Registro50 Registro50, Registro60 Registro60)
	{	
		this.Registro20 		= Registro20;
		this.Registro30			= Registro30;
		this.Registro40			= Registro40;
		this.Registro50			= Registro50;
		this.Registro60			= Registro60;
	}	//	NFREDF
}	//	NFREDF