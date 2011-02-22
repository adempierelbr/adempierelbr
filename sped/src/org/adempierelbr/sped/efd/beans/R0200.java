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
package org.adempierelbr.sped.efd.beans;

import java.math.BigDecimal;

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 0200: TABELA DE IDENTIFICAÇÃO DO ITEM (PRODUTOS E SERVIÇOS)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0200.java, 04/02/2011, 09:30:00, mgrigioni
 */
public class R0200 extends RegSped {
	
	private String COD_ITEM;
	private String DESCR_ITEM;
	private String COD_BARRA;
	private String COD_ANT_ITEM;
	private String UNID_INV;
	private String TIPO_ITEM;
	private String COD_NCM;
	private String EX_IPI;
	private String COD_GEN;
	private String COD_LST;
	
	private BigDecimal ALIQ_ICMS;
	
	/**
	 * Constructor
	 * @param COD_ITEM
	 * @param DESCR_ITEM
	 * @param COD_BARRA
	 * @param COD_ANT_ITEM
	 * @param UNID_INV
	 * @param TIPO_ITEM
	 * @param COD_NCM
	 * @param EX_IPI
	 * @param COD_LST
	 * @param ALIQ_ICMS
	 */
	public R0200(String COD_ITEM, String DESCR_ITEM, String COD_BARRA, String COD_ANT_ITEM,
			String UNID_INV, String TIPO_ITEM, String COD_NCM, String EX_IPI, String COD_LST, 
			BigDecimal ALIQ_ICMS)
	{
		super();
		this.COD_BARRA = COD_BARRA;
		this.COD_ANT_ITEM = COD_ANT_ITEM;
		setUNID_INV(UNID_INV);
		setTIPO_ITEM(TIPO_ITEM);
		setITEM(COD_ITEM,DESCR_ITEM); //setar depois do TIPO ITEM
		setCOD_NCM(COD_NCM); //setar depois do TIPO ITEM
		this.EX_IPI = EX_IPI;
		this.COD_LST = COD_LST;
		this.ALIQ_ICMS = ALIQ_ICMS;
	}	//	R0200
	
	public String getCOD_ITEM(){
		return this.COD_ITEM;
	}
	
	public String getTIPO_ITEM(){
		return this.TIPO_ITEM;
	}
	
	private void setITEM(String COD_ITEM, String DESCR_ITEM){
		
		COD_ITEM   = TextUtil.checkSize(RemoverAcentos.remover(COD_ITEM), 60);
		DESCR_ITEM = TextUtil.checkSize(RemoverAcentos.remover(DESCR_ITEM), 255);
		if (COD_ITEM.isEmpty()){
			log.finer("DEFINIDO COD_ITEM PADRAO");
			if (this.TIPO_ITEM.equals("09")){ //SERVICO
				COD_ITEM = "SERVICO";
				DESCR_ITEM = "PRESTACAO DE SERVICO";
			}
			else{
				COD_ITEM = "SEM CODIGO";
				DESCR_ITEM = "PRODUTO SEM CODIGO";
			}
		}
		
		this.COD_ITEM   = COD_ITEM;
		this.DESCR_ITEM = DESCR_ITEM;
	}
	
	private void setTIPO_ITEM(String TIPO_ITEM) {
		
		if (TIPO_ITEM == null || TIPO_ITEM.isEmpty())
			this.TIPO_ITEM = "99"; //OUTROS
		else
			this.TIPO_ITEM = TIPO_ITEM;
	}
	
	private void setUNID_INV(String UNID_INV) {
		
		if (UNID_INV == null || UNID_INV.isEmpty())
			this.UNID_INV = "UN"; //OUTROS
		else
			this.UNID_INV = TextUtil.checkSize(RemoverAcentos.remover(UNID_INV), 6).toUpperCase();
	}
	
	private void setCOD_NCM(String COD_NCM){
		
		if (this.TIPO_ITEM.equals("07") ||
			this.TIPO_ITEM.equals("08") ||
			this.TIPO_ITEM.equals("09") ||
			this.TIPO_ITEM.equals("10") ||
			this.TIPO_ITEM.equals("99")){ 
			this.COD_NCM = "";
			this.COD_GEN = "";
		}
		else{
			this.COD_NCM = TextUtil.checkSize(TextUtil.toNumeric(COD_NCM), 8);
			if (this.COD_NCM.length() != 8)
				this.COD_NCM = "";
		
			if (this.COD_NCM != null && this.COD_NCM.length() > 2)
				COD_GEN    = this.COD_NCM.substring(0, 2);
		}
	}

	/**
	 * Formata o Bloco 0 Registro 200
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(COD_ITEM)
            .append(PIPE).append(DESCR_ITEM)
            .append(PIPE).append(TextUtil.checkSize(COD_BARRA,255))
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(COD_ANT_ITEM),60))
            .append(PIPE).append(UNID_INV)
            .append(PIPE).append(TIPO_ITEM)
            .append(PIPE).append(COD_NCM)
            .append(PIPE).append(TextUtil.checkSize(EX_IPI,3))
            .append(PIPE).append(TextUtil.lPad(COD_GEN, 2))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(COD_LST), 4))
            .append(PIPE).append(TextUtil.toNumeric(ALIQ_ICMS,2,false))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result
				+ ((COD_ITEM == null) ? 0 : COD_ITEM.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		R0200 other = (R0200) obj;
		if (COD_ITEM == null) {
			if (other.COD_ITEM != null)
				return false;
		} else if (!COD_ITEM.equals(other.COD_ITEM))
			return false;
		return true;
	}
	
} // R0200