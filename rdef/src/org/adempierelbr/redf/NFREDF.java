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
package org.adempierelbr.redf;

import org.adempierelbr.redf.beans.Registro20;
import org.adempierelbr.redf.beans.Registro30;
import org.adempierelbr.redf.beans.Registro40;
import org.adempierelbr.redf.beans.Registro50;
import org.adempierelbr.redf.beans.Registro60;

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

	/**
	 * @return the registro20
	 */
	public Registro20 getRegistro20() {
		return Registro20;
	}

	/**
	 * @param registro20 the registro20 to set
	 */
	public void setRegistro20(Registro20 registro20) {
		Registro20 = registro20;
	}

	/**
	 * @return the registro30
	 */
	public Registro30 getRegistro30() {
		return Registro30;
	}

	/**
	 * @param registro30 the registro30 to set
	 */
	public void setRegistro30(Registro30 registro30) {
		Registro30 = registro30;
	}

	/**
	 * @return the registro40
	 */
	public Registro40 getRegistro40() {
		return Registro40;
	}

	/**
	 * @param registro40 the registro40 to set
	 */
	public void setRegistro40(Registro40 registro40) {
		Registro40 = registro40;
	}

	/**
	 * @return the registro50
	 */
	public Registro50 getRegistro50() {
		return Registro50;
	}

	/**
	 * @param registro50 the registro50 to set
	 */
	public void setRegistro50(Registro50 registro50) {
		Registro50 = registro50;
	}

	/**
	 * @return the registro60
	 */
	public Registro60 getRegistro60() {
		return Registro60;
	}

	/**
	 * @param registro60 the registro60 to set
	 */
	public void setRegistro60(Registro60 registro60) {
		Registro60 = registro60;
	}
	
	
}	//	NFREDF