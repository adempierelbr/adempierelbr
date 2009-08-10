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
package org.adempierelbr.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.adempierelbr.util.TextUtil;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.model.X_LBR_NFLineTax;
import org.compiere.model.X_LBR_NotaFiscalLine;
import org.compiere.model.X_LBR_TaxGroup;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *	MNotaFiscalLine
 *
 *	Model for X_LBR_NotaFiscalLine
 *	
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: MNotaFiscalLine.java, 08/01/2008 11:01:00 mgrigioni
 */
public class MNotaFiscalLine extends X_LBR_NotaFiscalLine {
    
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/**	Process Message */
	private String		m_processMsg = null;
	
	public String getProcessMsg() {
		
		if (m_processMsg == null)
			m_processMsg = "";
		
		return m_processMsg;
	}

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MNotaFiscalLine(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);	
	}
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MNotaFiscalLine (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}
	
	/**************************************************************************
	 *  selbr_ServiceTaxes
	 *  Geração de String com Impostos da Linha (Serviço)
	 */
	public void setlbr_ServiceTaxes(){
		
		X_LBR_NFLineTax[] taxes = getTaxes();
		String serviceString = "IMPOSTOS: ";
		for(int i=0;i<taxes.length;i++){
			X_LBR_TaxGroup taxGroup = new X_LBR_TaxGroup(getCtx(),taxes[i].getLBR_TaxGroup_ID(),get_TrxName());
			serviceString += taxGroup.getName() + ":" + 
							 taxes[i].getlbr_TaxRate() + "% R$" + 
							 taxes[i].getlbr_TaxAmt() + ", ";  
		}
		
		serviceString = TextUtil.retiraPontoFinal(serviceString);
		
		if (taxes.length > 0)
			setlbr_ServiceTaxes("\n" + serviceString);
		else
			setlbr_ServiceTaxes("");
		
	} //setlbr_ServiceTaxes
	
	/**************************************************************************
	 *  getTaxes
	 *  @return X_LBR_NFLineTax[] taxes
	 */
	private X_LBR_NFLineTax[] getTaxes(){
		
		String whereClause = "LBR_NotaFiscalLine_ID = ?";
		
		MTable table = MTable.get(getCtx(), X_LBR_NFLineTax.Table_Name);		
		Query query =  new Query(table, whereClause, get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_NotaFiscalLine_ID()});
	 			
		List<X_LBR_NFLineTax> list = query.list();
		
		return list.toArray(new X_LBR_NFLineTax[list.size()]);	
	} //getTaxes
	
	/**
	 *  Retorno o valor do ICMS
	 *  
	 *  @return	BigDecimal	Valor ICMS
	 */
	public BigDecimal getICMSAmt()
	{
		String sql = "SELECT SUM(lbr_TaxAmt) FROM LBR_NFLineTax " +
				"WHERE LBR_NotaFiscalLine_ID = ? AND LBR_TaxGroup_ID IN " + 
				"(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE Name='ICMS')";
		//
		BigDecimal result = DB.getSQLValueBD(null, sql, getLBR_NotaFiscalLine_ID());	
		return result == null ? Env.ZERO : result;
	}	//	getICMSAmt
	
	/**
	 *  Retorno o valor da Base de ICMS
	 *  
	 *  @return	BigDecimal	Base ICMS
	 */
	public BigDecimal getICMSBase()
	{
		String sql = "SELECT SUM(lbr_TaxBaseAmt) FROM LBR_NFLineTax " +
				"WHERE LBR_NotaFiscalLine_ID = ? AND LBR_TaxGroup_ID IN " + 
				"(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE Name='ICMS')";
		
		return DB.getSQLValueBD(null, sql, getLBR_NotaFiscalLine_ID());	
	}	//	getICMSBase
	
	/**
	 *  Retorno o valor da Redução da Base de ICMS
	 *  
	 *  @return	BigDecimal	Redução da Base de ICMS
	 */
	public BigDecimal getICMSBaseReduction()
	{
		String sql = "SELECT AVG(lbr_TaxBase) FROM LBR_NFLineTax " +
				"WHERE LBR_NotaFiscalLine_ID = ? AND LBR_TaxGroup_ID IN " + 
				"(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE Name='ICMS')";
		
		return DB.getSQLValueBD(null, sql, getLBR_NotaFiscalLine_ID());	
	}	//	getICMSBaseReduction
	
	/**
	 *  Retorno a alíquota de ICMS
	 *  
	 *  @return	BigDecimal	Alíquota ICMS
	 */
	public BigDecimal getICMSRate()
	{
		String sql = "SELECT AVG(lbr_TaxRate) FROM LBR_NFLineTax " +
				"WHERE LBR_NotaFiscalLine_ID = ? AND LBR_TaxGroup_ID IN " + 
				"(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE Name='ICMS')";
		
		return DB.getSQLValueBD(null, sql, getLBR_NotaFiscalLine_ID());	
	}	//	getICMSRate
	
	/**
	 *  Retorno o valor do IPI
	 *  
	 *  @return	BigDecimal	Valor IPI
	 */
	public BigDecimal getIPIAmt()
	{
		String sql = "SELECT SUM(lbr_TaxAmt) FROM LBR_NFLineTax " +
				"WHERE LBR_NotaFiscalLine_ID = ? AND LBR_TaxGroup_ID IN " + 
				"(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE Name='IPI')";
		
		return DB.getSQLValueBD(null, sql, getLBR_NotaFiscalLine_ID());	
	}	//	getIPIAmt
	
	/**
	 *  Retorno o valor da Base de IPI
	 *  
	 *  @return	BigDecimal	Base IPI
	 */
	public BigDecimal getIPIBase()
	{
		String sql = "SELECT SUM(lbr_TaxBaseAmt) FROM LBR_NFLineTax " +
				"WHERE LBR_NotaFiscalLine_ID = ? AND LBR_TaxGroup_ID IN " + 
				"(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE Name='IPI')";
		
		return DB.getSQLValueBD(null, sql, getLBR_NotaFiscalLine_ID());	
	}	//	getIPIBase
	
	/**
	 *  Retorno a alíquota de IPI
	 *  
	 *  @return	BigDecimal	Alíquota IPI
	 */
	public BigDecimal getIPIRate()
	{
		String sql = "SELECT AVG(lbr_TaxRate) FROM LBR_NFLineTax " +
				"WHERE LBR_NotaFiscalLine_ID = ? AND LBR_TaxGroup_ID IN " + 
				"(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE Name='IPI')";
		
		return DB.getSQLValueBD(null, sql, getLBR_NotaFiscalLine_ID());	
	}	//	getIPIRate
}