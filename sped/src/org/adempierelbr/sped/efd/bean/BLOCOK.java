/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil * This program is free
 * software; you can redistribute it and/or modify it * under the terms version
 * 2 of the GNU General Public License as published * by the Free Software
 * Foundation. This program is distributed in the hope * that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied * warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. * See the GNU General
 * Public License for more details. * You should have received a copy of the GNU
 * General Public License along * with this program; if not, write to the Free
 * Software Foundation, Inc., * 59 Temple Place, Suite 330, Boston, MA
 * 02111-1307 USA. *
 *****************************************************************************/
package org.adempierelbr.sped.efd.bean;

import java.util.ArrayList;
import java.util.List;

import org.adempierelbr.annotation.XMLFieldProperties;

/**
 * BLOCO H: INVENTÁRIO FÍSICO
 * 
 * 
 * @author Pablo Boff Pigozzo, pablobp4
 * @version $ 07/08/2012 11:03 $
 */
public class BLOCOK {
	@XMLFieldProperties(needsValidation = true, id = "RK001")
	private RK001 rK001;
	
	@XMLFieldProperties(needsValidation = true, id = "RK100")
	private RK100 rK100;
	
	@XMLFieldProperties(needsValidation = true, id = "RK200")
	private List<RK200> rK200 = new ArrayList<RK200>();
	
	@XMLFieldProperties(needsValidation = true, id = "RK280")
	private List<RK280> rK280 = new ArrayList<RK280>();

	@XMLFieldProperties(needsValidation = true, id = "RK990")
	private RK990 rK990;

	public RK001 getrK001() {
		return rK001;
	}

	public void setrK001(RK001 rK001) {
		this.rK001 = rK001;
	}

	public RK100 getrK100()
	{
		return rK100;
	}

	public void setrK100(RK100 rK100)
	{
		this.rK100 = rK100;
	}

	public List<RK200> getrK200()
	{
		return rK200;
	}

	public void setrK200(List<RK200> rK200)
	{
		this.rK200 = rK200;
	}

	public List<RK280> getrK280()
	{
		return rK280;
	}

	public void setrK280(List<RK280> rK280)
	{
		this.rK280 = rK280;
	}

	public RK990 getrK990() {
		return rK990;
	}

	public void setrK990(RK990 rK990) {
		this.rK990 = rK990;
	}
	
	// 
	public void addrK200(RK200 rK200)
	{
		// adicionar a lista
		this.rK200.add(rK200);
	}
	
	// 
	public void addrK280(RK280 rK280)
	{
		// adicionar a lista
		this.rK280.add(rK280);
	}
	
	/**
	 * To String
	 */
	@Override
	public String toString() {
		//
		StringBuilder result = new StringBuilder();

		// init
		result.append(rK001);
		
		// K100
		result.append(rK100);
		
		// itens, qtdes e valores
		if(getrK200() != null)
		{

			// K200
			for (RK200 reg : getrK200())
				result.append(reg);
			
		}
		
		// itens, qtdes e valores
		if(getrK280() != null)
		{

			// K280
			for (RK280 reg : getrK280())
				result.append(reg);
			
		}

		// counter
		result.append(rK990);

		//
		return result.toString();
	}

} // R0000