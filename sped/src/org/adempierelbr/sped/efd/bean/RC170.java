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

import org.adempierelbr.annotation.XMLFieldProperties;
import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;
import org.compiere.util.Env;

/**
 * REGISTRO C170: ITENS DO DOCUMENTO (CÓDIGO 01, 1B, 04 e 55).
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC170.java, 07/02/2011, 09:39:00, mgrigioni
 */
public class RC170 extends RegSped{

	private Integer NUM_ITEM;
	private String COD_ITEM;
	private String DESCR_COMPL;
	private BigDecimal QTD;
	private String UNID;
	private BigDecimal VL_ITEM;
	private BigDecimal VL_DESC;
	private String IND_MOV;
	private String CST_ICMS;
	private String CFOP;
	private String COD_NAT;
	private BigDecimal VL_BC_ICMS;
	private BigDecimal ALIQ_ICMS;
	private BigDecimal VL_ICMS;
	private BigDecimal VL_BC_ICMS_ST;
	private BigDecimal ALIQ_ST;
	private BigDecimal VL_ICMS_ST;
	private String IND_APUR;
	private String CST_IPI;
	private String COD_ENQ;
	private BigDecimal VL_BC_IPI;
	private BigDecimal ALIQ_IPI;
	private BigDecimal VL_IPI;
	private String CST_PIS;
	private BigDecimal VL_BC_PIS;
	private BigDecimal ALIQ_PIS;
	private BigDecimal QUANT_BC_PIS;
	private BigDecimal ALIQ_PIS_REAIS;
	private BigDecimal VL_PIS;
	private String CST_COFINS;
	private BigDecimal VL_BC_COFINS;
	private BigDecimal ALIQ_COFINS;
	private BigDecimal QUANT_BC_COFINS;
	private BigDecimal ALIQ_COFINS_REAIS;
	private BigDecimal VL_COFINS;
	private String COD_CTA;

	
	/*
	 * Variável auxiliar usada para fazer os somatórios do 
	 * Registro C190. 
	 * 
	 * OBS.: Não validar e usar neste registro
	 */
	@XMLFieldProperties(needsValidation = false, id = "VL_OPER")
	private BigDecimal VL_OPER = Env.ZERO;
	
	/**
	 * Constructor
	 */
	public RC170() {
		super();
	}// RC170

	public BigDecimal getVL_OPER() {
		return VL_OPER;
	}

	public void setVL_OPER(BigDecimal vL_OPER) {
		VL_OPER = vL_OPER;
	}

	public Integer getNUM_ITEM() {
		return NUM_ITEM;
	}

	public void setNUM_ITEM(Integer nUM_ITEM) {
		NUM_ITEM = nUM_ITEM;
	}

	public String getCOD_ITEM() {
		return COD_ITEM;
	}

	public void setCOD_ITEM(String cOD_ITEM) {
		COD_ITEM = cOD_ITEM;
	}

	public String getDESCR_COMPL() {
		return DESCR_COMPL;
	}

	public void setDESCR_COMPL(String dESCR_COMPL) {
		DESCR_COMPL = dESCR_COMPL;
	}

	public BigDecimal getQTD() {
		return QTD;
	}

	public void setQTD(BigDecimal qTD) {
		QTD = qTD;
	}

	public String getUNID() {
		return UNID;
	}

	public void setUNID(String uNID) {
		UNID = uNID;
	}

	public BigDecimal getVL_ITEM() {
		return VL_ITEM;
	}

	public void setVL_ITEM(BigDecimal vL_ITEM) {
		VL_ITEM = vL_ITEM;
	}

	public BigDecimal getVL_DESC() {
		return VL_DESC;
	}

	public void setVL_DESC(BigDecimal vL_DESC) {
		VL_DESC = vL_DESC;
	}

	public String getIND_MOV() {
		return IND_MOV;
	}

	public void setIND_MOV(String iND_MOV) {
		IND_MOV = iND_MOV;
	}

	public String getCST_ICMS() {
		return CST_ICMS;
	}

	public void setCST_ICMS(String cST_ICMS) {
		CST_ICMS = cST_ICMS;
	}

	public String getCFOP() {
		return CFOP;
	}

	public void setCFOP(String cFOP) {
		CFOP = cFOP;
	}

	public String getCOD_NAT() {
		return COD_NAT;
	}

	public void setCOD_NAT(String cOD_NAT) {
		COD_NAT = cOD_NAT;
	}

	public BigDecimal getVL_BC_ICMS() {
		return VL_BC_ICMS;
	}

	public void setVL_BC_ICMS(BigDecimal vL_BC_ICMS) {
		VL_BC_ICMS = vL_BC_ICMS;
	}

	public BigDecimal getALIQ_ICMS() {
		return ALIQ_ICMS;
	}

	public void setALIQ_ICMS(BigDecimal aLIQ_ICMS) {
		ALIQ_ICMS = aLIQ_ICMS;
	}

	public BigDecimal getVL_ICMS() {
		return VL_ICMS;
	}

	public void setVL_ICMS(BigDecimal vL_ICMS) {
		VL_ICMS = vL_ICMS;
	}

	public BigDecimal getVL_BC_ICMS_ST() {
		return VL_BC_ICMS_ST;
	}

	public void setVL_BC_ICMS_ST(BigDecimal vL_BC_ICMS_ST) {
		VL_BC_ICMS_ST = vL_BC_ICMS_ST;
	}

	public BigDecimal getALIQ_ST() {
		return ALIQ_ST;
	}

	public void setALIQ_ST(BigDecimal aLIQ_ST) {
		ALIQ_ST = aLIQ_ST;
	}

	public BigDecimal getVL_ICMS_ST() {
		return VL_ICMS_ST;
	}

	public void setVL_ICMS_ST(BigDecimal vL_ICMS_ST) {
		VL_ICMS_ST = vL_ICMS_ST;
	}

	public String getIND_APUR() {
		return IND_APUR;
	}

	public void setIND_APUR(String iND_APUR) {
		IND_APUR = iND_APUR;
	}

	public String getCST_IPI() {
		return CST_IPI;
	}

	public void setCST_IPI(String cST_IPI) {
		CST_IPI = cST_IPI;
	}

	public String getCOD_ENQ() {
		return COD_ENQ;
	}

	public void setCOD_ENQ(String cOD_ENQ) {
		COD_ENQ = cOD_ENQ;
	}

	public BigDecimal getVL_BC_IPI() {
		return VL_BC_IPI;
	}

	public void setVL_BC_IPI(BigDecimal vL_BC_IPI) {
		VL_BC_IPI = vL_BC_IPI;
	}

	public BigDecimal getALIQ_IPI() {
		return ALIQ_IPI;
	}

	public void setALIQ_IPI(BigDecimal aLIQ_IPI) {
		ALIQ_IPI = aLIQ_IPI;
	}

	public BigDecimal getVL_IPI() {
		return VL_IPI;
	}

	public void setVL_IPI(BigDecimal vL_IPI) {
		VL_IPI = vL_IPI;
	}

	public String getCST_PIS() {
		return CST_PIS;
	}

	public void setCST_PIS(String cST_PIS) {
		CST_PIS = cST_PIS;
	}

	public BigDecimal getVL_BC_PIS() {
		return VL_BC_PIS;
	}

	public void setVL_BC_PIS(BigDecimal vL_BC_PIS) {
		VL_BC_PIS = vL_BC_PIS;
	}

	public BigDecimal getALIQ_PIS() {
		return ALIQ_PIS;
	}

	public void setALIQ_PIS(BigDecimal aLIQ_PIS) {
		ALIQ_PIS = aLIQ_PIS;
	}

	public BigDecimal getQUANT_BC_PIS() {
		return QUANT_BC_PIS;
	}

	public void setQUANT_BC_PIS(BigDecimal qUANT_BC_PIS) {
		QUANT_BC_PIS = qUANT_BC_PIS;
	}

	public BigDecimal getALIQ_PIS_REAIS() {
		return ALIQ_PIS_REAIS;
	}

	public void setALIQ_PIS_REAIS(BigDecimal aLIQ_PIS_REAIS) {
		ALIQ_PIS_REAIS = aLIQ_PIS_REAIS;
	}

	public BigDecimal getVL_PIS() {
		return VL_PIS;
	}

	public void setVL_PIS(BigDecimal vL_PIS) {
		VL_PIS = vL_PIS;
	}

	public String getCST_COFINS() {
		return CST_COFINS;
	}

	public void setCST_COFINS(String cST_COFINS) {
		CST_COFINS = cST_COFINS;
	}

	public BigDecimal getVL_BC_COFINS() {
		return VL_BC_COFINS;
	}

	public void setVL_BC_COFINS(BigDecimal vL_BC_COFINS) {
		VL_BC_COFINS = vL_BC_COFINS;
	}

	public BigDecimal getALIQ_COFINS() {
		return ALIQ_COFINS;
	}

	public void setALIQ_COFINS(BigDecimal aLIQ_COFINS) {
		ALIQ_COFINS = aLIQ_COFINS;
	}

	public BigDecimal getQUANT_BC_COFINS() {
		return QUANT_BC_COFINS;
	}

	public void setQUANT_BC_COFINS(BigDecimal qUANT_BC_COFINS) {
		QUANT_BC_COFINS = qUANT_BC_COFINS;
	}

	public BigDecimal getALIQ_COFINS_REAIS() {
		return ALIQ_COFINS_REAIS;
	}

	public void setALIQ_COFINS_REAIS(BigDecimal aLIQ_COFINS_REAIS) {
		ALIQ_COFINS_REAIS = aLIQ_COFINS_REAIS;
	}

	public BigDecimal getVL_COFINS() {
		return VL_COFINS;
	}

	public void setVL_COFINS(BigDecimal vL_COFINS) {
		VL_COFINS = vL_COFINS;
	}

	public String getCOD_CTA() {
		return COD_CTA;
	}

	public void setCOD_CTA(String cOD_CTA) {
		COD_CTA = cOD_CTA;
	}
	
	/**
	 * Valor da redução da Base de Cálculo do ICMS
	 * 
	 * Valor da Linha - Valor da Base de Cálculo do ICMS
	 * 
	 * Obs.: Somente cálcular se houver redução no campo 
	 * 
	 * @return
	 */
	public BigDecimal getVL_RED_BC_ICMS(){
		
		// valor da base
		BigDecimal baseICMS  = getVL_BC_ICMS();
		
		
		// redução = 1-(PERC_BC_ICMS/100)
		BigDecimal reduction = Env.ONE.subtract(getVL_RED_BC_ICMS().divide(Env.ONEHUNDRED, 12));
		
		// se for negativa ou zero, usar 1
		if (reduction.signum() != 1)
			reduction = Env.ONE;
		
		// BC/REDUCAO = VALOR DA BASE SEM REDUCAO
		return (baseICMS.divide(reduction, 12)).subtract(baseICMS);
	}
	
	

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result
				+ ((NUM_ITEM == null) ? 0 : NUM_ITEM.hashCode());
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
		RC170 other = (RC170) obj;
		if (NUM_ITEM == null) {
			if (other.NUM_ITEM != null)
				return false;
		} else if (!NUM_ITEM.equals(other.NUM_ITEM))
			return false;
		return true;
	}

	/**
	 * Comparador para Collection
	 * 
	 * @see java.util.Comparator#compare(java.lang.Object, java.lang.Object)
	 */
	public int compare(Object o1, Object o2) {
		if (o1 == null) // Depois
			return 1;
		else if (o2 == null)
			return -1; // Antes
		else if (o1 instanceof RC170 && o2 instanceof RC170) {
			RC170 e1 = (RC170) o1;
			RC170 e2 = (RC170) o2;
			//
			if (e1.NUM_ITEM == null) // Depois
				return 1;
			else if (e2.NUM_ITEM == null) // Antes
				return -1;
			else
				return e1.NUM_ITEM.compareTo(e2.NUM_ITEM); // Comparar
		} else
			return 0; //
	}

	/**
	 * Comparador para Collection
	 */
	public int compareTo(Object o) {
		return compare(this, o);
	}
	
	/**
	 * Formata o Bloco C Registro 170
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.lPad(NUM_ITEM, 3))
            .append(PIPE).append(COD_ITEM)
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(DESCR_COMPL), 255).trim())
            .append(PIPE).append(TextUtil.toNumeric(QTD, 5))
            .append(PIPE).append(UNID)
            .append(PIPE).append(TextUtil.toNumeric(VL_ITEM, 2))
            .append(PIPE).append(TextUtil.toNumeric(VL_DESC, 2))
            .append(PIPE).append(TextUtil.checkSize(IND_MOV, 1,1))
            .append(PIPE).append(TextUtil.checkSize(CST_ICMS, 3,3))
            .append(PIPE).append(CFOP)
            .append(PIPE).append(TextUtil.checkSize(COD_NAT, 10))
            .append(PIPE).append(TextUtil.toNumeric(VL_BC_ICMS, 2))
            .append(PIPE).append(TextUtil.toNumeric(ALIQ_ICMS, 2))
            .append(PIPE).append(TextUtil.toNumeric(VL_ICMS, 2))
            .append(PIPE).append(TextUtil.toNumeric(VL_BC_ICMS_ST, 2))
            .append(PIPE).append(TextUtil.toNumeric(ALIQ_ST, 2))
            .append(PIPE).append(TextUtil.toNumeric(VL_ICMS_ST, 2))
            .append(PIPE).append(TextUtil.checkSize(IND_APUR, 1,1))
            .append(PIPE).append(TextUtil.checkSize(CST_IPI, 2))
            .append(PIPE).append(TextUtil.checkSize(COD_ENQ, 3))
            .append(PIPE).append(TextUtil.toNumeric(VL_BC_IPI, 2))
            .append(PIPE).append(TextUtil.toNumeric(ALIQ_IPI, 2))
            .append(PIPE).append(TextUtil.toNumeric(VL_IPI, 2))
            .append(PIPE).append(TextUtil.checkSize(CST_PIS, 2))
            .append(PIPE).append(TextUtil.toNumeric(VL_BC_PIS, 2))
            .append(PIPE).append(TextUtil.toNumeric(ALIQ_PIS_REAIS, 2))
            .append(PIPE).append(TextUtil.toNumeric(QUANT_BC_PIS, 3))
            .append(PIPE).append(TextUtil.toNumeric(ALIQ_PIS, 4))
            .append(PIPE).append(TextUtil.toNumeric(VL_PIS, 2))
            .append(PIPE).append(TextUtil.checkSize(CST_COFINS, 2))
            .append(PIPE).append(TextUtil.toNumeric(VL_BC_COFINS, 2))
            .append(PIPE).append(TextUtil.toNumeric(ALIQ_COFINS_REAIS, 2))
            .append(PIPE).append(TextUtil.toNumeric(QUANT_BC_COFINS, 3))
            .append(PIPE).append(TextUtil.toNumeric(ALIQ_COFINS, 4))
            .append(PIPE).append(TextUtil.toNumeric(VL_COFINS, 2))
            .append(PIPE).append(TextUtil.checkSize(COD_CTA, 255))
            .append(PIPE);

		return format.append(EOL).toString();
	} // toString

}// RC170