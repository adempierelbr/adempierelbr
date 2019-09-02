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
package org.adempierelbr.sped.efd.bean;

import java.math.BigDecimal;
import java.sql.Timestamp;

import org.adempierelbr.annotation.XMLFieldProperties;
import org.adempierelbr.sped.RegSped;

/**
 * REGISTRO K280: CORREÇÃO DE APONTAMENTO - ESTOQUE ESCRITURADO
 * 
 * @author Rogério Feitosa (Kenos, www.kenos.com.br)
 * @version $Id: RK280.java, v1.0 2019/01/09 10:56:21, kenos_rfeitosa Exp $
 */
public class RK280 extends RegSped
{
	@XMLFieldProperties(id = "DT_EST")
	private Timestamp DT_EST;
	@XMLFieldProperties(id = "COD_ITEM")
	private String COD_ITEM;
	@XMLFieldProperties(id = "QTD_COR_POS")
	private BigDecimal QTD_COR_POS;
	@XMLFieldProperties(id = "QTD_COR_NEG")
	private BigDecimal QTD_COR_NEG;	
	@XMLFieldProperties(id = "IND_EST")
	private String IND_EST;
	@XMLFieldProperties(id = "COD_PART")
	private String COD_PART;

	/**
	 * Constructor
	 */
	public RK280() {
		super();
	} // RK100
	
	public Timestamp getDT_EST()
	{
		return DT_EST;
	}

	public void setDT_EST(Timestamp dT_EST)
	{
		DT_EST = dT_EST;
	}

	public String getCOD_ITEM()
	{
		return COD_ITEM;
	}

	public void setCOD_ITEM(String cOD_ITEM)
	{
		COD_ITEM = cOD_ITEM;
	}

	public BigDecimal getQTD_COR_POS()
	{
		return QTD_COR_POS;
	}

	public void setQTD_COR_POS(BigDecimal qTD_COR_POS)
	{
		QTD_COR_POS = qTD_COR_POS;
	}

	public BigDecimal getQTD_COR_NEG()
	{
		return QTD_COR_NEG;
	}

	public void setQTD_COR_NEG(BigDecimal qTD_COR_NEG)
	{
		QTD_COR_NEG = qTD_COR_NEG;
	}

	public String getIND_EST()
	{
		return IND_EST;
	}

	public void setIND_EST(String iND_EST)
	{
		IND_EST = iND_EST;
	}

	public String getCOD_PART()
	{
		return COD_PART;
	}

	public void setCOD_PART(String cOD_PART)
	{
		COD_PART = cOD_PART;
	}

	/**
	 * 
	 */
	public int compareTo(Object arg0)
	{
		return 0;
	}

} // RK200