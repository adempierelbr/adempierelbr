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

import org.adempierelbr.util.TaxBR;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MTable;
import org.compiere.model.Query;
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
public class MLBRNotaFiscalLine extends X_LBR_NotaFiscalLine {

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
	public MLBRNotaFiscalLine(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNotaFiscalLine (Properties ctx, ResultSet rs, String trxName)
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
	public X_LBR_NFLineTax[] getTaxes(){

		String whereClause = "LBR_NotaFiscalLine_ID = ?";

		MTable table = MTable.get(getCtx(), X_LBR_NFLineTax.Table_Name);
		Query query =  new Query(getCtx(), table, whereClause, get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_NotaFiscalLine_ID()});

		List<X_LBR_NFLineTax> list = query.list();

		return list.toArray(new X_LBR_NFLineTax[list.size()]);
	} //getTaxes
	
	public BigDecimal getFreightAmt(){
		MLBRNotaFiscal nf = new MLBRNotaFiscal(getCtx(),getLBR_NotaFiscal_ID(),get_TrxName());
		return getFreightAmt(nf.getTotalLines().add(nf.getlbr_ServiceTotalAmt()),nf.getFreightAmt());
	}

	protected BigDecimal getFreightAmt(BigDecimal totalLinesAmt, BigDecimal totalFreightAmt){

		if (totalLinesAmt.signum() <= 0 || totalFreightAmt.signum() <= 0)
			return Env.ZERO;
		
		BigDecimal lineAmt = getLineTotalAmt();
		BigDecimal freightAmt = lineAmt.divide(totalLinesAmt, TaxBR.MCROUND);
		           freightAmt = totalFreightAmt.multiply(freightAmt);

		return freightAmt.setScale(TaxBR.SCALE, TaxBR.ROUND);
	} //getFreightAmt
	
	public BigDecimal getInsuranceAmt(){
		MLBRNotaFiscal nf = new MLBRNotaFiscal(getCtx(),getLBR_NotaFiscal_ID(),get_TrxName());
		return getFreightAmt(nf.getTotalLines().add(nf.getlbr_ServiceTotalAmt()),nf.getlbr_InsuranceAmt());
	}

	protected BigDecimal getInsuranceAmt(BigDecimal totalLinesAmt, BigDecimal totalInsuranceAmt){

		if (totalLinesAmt.signum() <= 0 || totalInsuranceAmt.signum() <= 0)
			return Env.ZERO;
		
		BigDecimal lineAmt = getLineTotalAmt();
		BigDecimal insuranceAmt = lineAmt.divide(totalLinesAmt, TaxBR.MCROUND);
		           insuranceAmt = totalInsuranceAmt.multiply(insuranceAmt);

		return insuranceAmt.setScale(TaxBR.SCALE, TaxBR.ROUND);
	} //getInsuranceAmt
	
	public BigDecimal getDiscountAmt(){
		MLBRNotaFiscal nf = new MLBRNotaFiscal(getCtx(),getLBR_NotaFiscal_ID(),get_TrxName());
		return getFreightAmt(nf.getTotalLines().add(nf.getlbr_ServiceTotalAmt()),nf.getDiscountAmt());
	}

	protected BigDecimal getDiscountAmt(BigDecimal totalLinesAmt, BigDecimal totalDiscountAmt){

		if (totalLinesAmt.signum() <= 0 || totalDiscountAmt.signum() <= 0)
			return Env.ZERO;
		
		BigDecimal lineAmt = getLineTotalAmt();
		BigDecimal discountAmt = lineAmt.divide(totalLinesAmt, TaxBR.MCROUND);
		           discountAmt = totalDiscountAmt.multiply(discountAmt);

		return discountAmt.setScale(TaxBR.SCALE, TaxBR.ROUND);
	} //getDiscountAmt
	
	/**
	 * Retorna a DIs da Linha
	 * @return X_LBR_NFDI
	 */
	public X_LBR_NFDI getDI(){
		
		String   whereClause = "LBR_NotaFiscal_ID = ? AND lbr_NFDI_ID = ?";
		Object[] parameters  = new Object[]{getLBR_NotaFiscal_ID(),getLBR_NFDI_ID()};
		
		MTable table = MTable.get(getCtx(), X_LBR_NFDI.Table_Name);
		Query query =  new Query(getCtx(), table, whereClause, get_TrxName());
	 		  query.setParameters(parameters);

	 	return (X_LBR_NFDI)query.firstOnly();
	} //getDI

	public BigDecimal getTotalOperationAmt(){
		
		BigDecimal lineAmt      = getLineTotalAmt();
		BigDecimal freightAmt   = getFreightAmt();		
		BigDecimal insuranceAmt = getInsuranceAmt();
		BigDecimal discountAmt  = getDiscountAmt().negate();
		BigDecimal siscomexAmt  = getlbr_LineTotalSISCOMEX();
		BigDecimal taxAmt       = getIPIAmt().add(getTaxAmt("ICMSST"));
		
		String cfop = getCFOP();
		//Para operações com exterior pegar todos os impostos
		if (cfop.startsWith("3") || cfop.startsWith("7")){
			taxAmt = getTotalTaxAmt();
		}
			
		//VALOR LINHA + FRETE + SEGURO + SISCOMEX + IPI = VALOR TOTAL DA OPERACAO
		return (lineAmt.add(freightAmt).add(insuranceAmt).add(siscomexAmt).add
			   (taxAmt).add(discountAmt)).setScale(TaxBR.SCALE, TaxBR.ROUND);
	}
	
	/**
	 * Retorna CFOP sem formatação
	 * Ex. CFOP 1.101 = 1101
	 * Ex. CFOP Z.ZZZ = 0000
	 * @return String CFOP formatação (só numeros)
	 */
	public String getCFOP(){
		return TextUtil.lPad(TextUtil.toNumeric(getlbr_CFOPName()),4);
	}
	
	/**
	 * isAsset (verifica se a linha é um ativo fixo)
	 * @return boolean
	 */
	public boolean isAsset(){
		
		boolean isAsset = false;
		
		//COMPRA DE ATIVO O CREDITO É LANÇADO NO BLOCO G
		if (getCFOP().equals("1551") || getCFOP().equals("2551") || getCFOP().equals("3551"))
			isAsset = true;
		
		return isAsset;
	} //isAsset
	
	/**
	 * Retorno o valor de TODOS os impostos da linha
	 * @return TotalTaxAmt
	 */
	public BigDecimal getTotalTaxAmt(){
		String sql = "SELECT SUM(lbr_TaxAmt) FROM LBR_NFLineTax " +
                     "WHERE LBR_NotaFiscalLine_ID = ? AND lbr_TaxAmt >= 0 ";
		//
		BigDecimal result = DB.getSQLValueBD(get_TrxName(), sql, new Object[]{getLBR_NotaFiscalLine_ID()});
		return result == null ? Env.ZERO : result;
	} //getTotalTaxAmt
	
	/**
	 * Retorno o valor do Imposto
	 * @param taxIndicator (Ex. PIS, COFINS, ICMS)
	 * @return TaxAmt
	 */
	public BigDecimal getTaxAmt(String taxIndicator){

		if (taxIndicator == null)
			return Env.ZERO;

		String sql = "SELECT SUM(lbr_TaxAmt) FROM LBR_NFLineTax " +
		             "WHERE LBR_NotaFiscalLine_ID = ? " +
		             "AND LBR_TaxGroup_ID IN (SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?)";
		//
		BigDecimal result = DB.getSQLValueBD(get_TrxName(), sql, new Object[]{getLBR_NotaFiscalLine_ID(),taxIndicator.toUpperCase()});
		return result == null ? Env.ZERO : result;
	} //getTaxAmt

	/**
	 * Retorna a Base de Cálculo do Imposto
	 * @param taxIndicator (Ex. PIS, COFINS, ICMS)
	 * @return TaxBaseAmt 
	 */
	public BigDecimal getTaxBaseAmt(String taxIndicator){

		if (taxIndicator == null)
			return Env.ZERO;

		String sql = "SELECT SUM(lbr_TaxBaseAmt) FROM LBR_NFLineTax " +
		             "WHERE LBR_NotaFiscalLine_ID = ? " +
		             "AND LBR_TaxGroup_ID IN (SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?)";
		//
		BigDecimal result = DB.getSQLValueBD(get_TrxName(), sql, new Object[]{getLBR_NotaFiscalLine_ID(),taxIndicator.toUpperCase()});
		return result == null ? Env.ZERO : result;
	} //getTaxBase

	/**
	 * Retorna a redução da Base de Cálculo
	 * @return BigDecimal amt
	 */
	public BigDecimal getTaxBaseReduction(String taxIndicator){

		if (taxIndicator == null)
			return Env.ZERO;

		String sql = "SELECT AVG(lbr_TaxBase) FROM LBR_NFLineTax " +
		             "WHERE LBR_NotaFiscalLine_ID = ? AND LBR_TaxGroup_ID IN " +
		             "(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?)";
		//
		BigDecimal result = DB.getSQLValueBD(get_TrxName(), sql, new Object[]{getLBR_NotaFiscalLine_ID(),taxIndicator.toUpperCase()});
		return result == null ? Env.ZERO : result;
	} //getTaxBaseReduction

	/**
	 * Retorna a Alíquota do Imposto
	 * @param taxIndicator (Ex. PIS, COFINS, ICMS)
	 * @return TaxRate 
	 */
	public BigDecimal getTaxRate(String taxIndicator){

		if (taxIndicator == null)
			return Env.ZERO;

		String sql = "SELECT AVG(lbr_TaxRate) FROM LBR_NFLineTax " +
		             "WHERE LBR_NotaFiscalLine_ID = ? " +
		             "AND LBR_TaxGroup_ID IN (SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?)";
		//

		BigDecimal result = DB.getSQLValueBD(get_TrxName(), sql, new Object[]{getLBR_NotaFiscalLine_ID(),taxIndicator.toUpperCase()});
		return result == null ? Env.ZERO : result;
	} //getTaxRate

	/**
	 *  Retorno a LBR_NFLineTax
	 *
	 *  @return	LBR_NFLineTax
	 */
	public X_LBR_NFLineTax getTax(String taxIndicator)
	{

		if (taxIndicator == null)
			return null;

		String whereClause = "LBR_NotaFiscalLine_ID = ? AND LBR_TaxGroup_ID IN " +
				             "(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?)";

		MTable table = MTable.get(getCtx(), X_LBR_NFLineTax.Table_Name);
		Query query =  new Query(getCtx(), table, whereClause, get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_NotaFiscalLine_ID(),taxIndicator.toUpperCase()});

		List<X_LBR_NFLineTax> list = query.list();
		if (list.size() == 1)
			return (list.toArray(new X_LBR_NFLineTax[list.size()]))[0];

		return null;
	}	//	getICMSTax


	/**
	 *  Retorno o valor da Base de ICMSST
	 *
	 *  @return	BigDecimal	Base ICMSST
	 */
	public BigDecimal getICMSSTBase()
	{
		return getTaxBaseAmt("ICMSST");
	}	//	getICMSSTBase
	
	
	/**
	 *  Retorno a LBR_NFLineTax do ICMS
	 *
	 *  @return	LBR_NFLineTax
	 */
	public X_LBR_NFLineTax getICMSTax()
	{
		return getTax("ICMS");
	}	//	getICMSTax

	/**
	 *  Retorno o valor do ICMS
	 *
	 *  @return	BigDecimal	Valor ICMS
	 */
	public BigDecimal getICMSAmt()
	{
		return getTaxAmt("ICMS");
	}	//	getICMSAmt

	/**
	 *  Retorno o valor da Base de ICMS
	 *
	 *  @return	BigDecimal	Base ICMS
	 */
	public BigDecimal getICMSBaseAmt()
	{
		return getTaxBaseAmt("ICMS");
	}	//	getICMSBase

	/**
	 *  Retorno o valor da Redução da Base de ICMS
	 *
	 *  @return	BigDecimal	Redução da Base de ICMS
	 */
	public BigDecimal getICMSBaseReduction()
	{
		return getTaxBaseReduction("ICMS");
	}	//	getICMSBaseReduction

	/**
	 *  Retorno a alíquota de ICMS
	 *
	 *  @return	BigDecimal	Alíquota ICMS
	 */
	public BigDecimal getICMSRate()
	{
		return getTaxRate("ICMS");
	}	//	getICMSRate
	
	/**
	 * Formata e retorna a Situação Tributária do ICMS
	 * 
	 * @return String Situação Tributária do ICMS
	 */
	public String getCST_ICMS(){
		String CST_ICMS = getlbr_TaxStatus();
		
		if (CST_ICMS == null || CST_ICMS.isEmpty() || CST_ICMS.length() != 3){
			CST_ICMS = TextUtil.lPad(CST_ICMS, 3);
		}
		
		if (CST_ICMS.equals("000") && getICMSAmt().signum() == 0){
			CST_ICMS = "040"; //ISENTO
		}
		
		return CST_ICMS;
	} //getCST_ICMS

	/**
	 *  Retorno a LBR_NFLineTax do IPI
	 *
	 *  @return	LBR_NFLineTax
	 */
	public X_LBR_NFLineTax getIPITax()
	{
		return getTax("IPI");
	}	//	getIPITax

	/**
	 *  Retorno o valor do IPI
	 *
	 *  @return	BigDecimal	Valor IPI
	 */
	public BigDecimal getIPIAmt()
	{
		return getTaxAmt("IPI");
	}	//	getIPIAmt

	/**
	 *  Retorno o valor da Base de IPI
	 *
	 *  @return	BigDecimal	Base IPI
	 */
	public BigDecimal getIPIBaseAmt()
	{
		return getTaxBaseAmt("IPI");
	}	//	getIPIBase

	/**
	 *  Retorno a alíquota de IPI
	 *
	 *  @return	BigDecimal	Alíquota IPI
	 */
	public BigDecimal getIPIRate()
	{
		return getTaxRate("IPI");
	}	//	getIPIRate
	
	/**
	 * Formata e retorna a Situação Tributária do IPI
	 * 
	 * @return String Situação Tributária do IPI
	 */
	public String getCST_IPI(){
		String CST_IPI = getlbr_TaxStatusIPI();
		
		if (CST_IPI == null || CST_IPI.isEmpty() || CST_IPI.length() != 2){
			if (Integer.valueOf(getCFOP().substring(0, 1)).intValue() < 5) //ENTRADA
				CST_IPI = "00";
			else
				CST_IPI = "50";
		}
		
		if (getIPIAmt().signum() == 0){ //ISENTO
			if (CST_IPI.equals("00"))
				CST_IPI = "02";
			else if (CST_IPI.equals("50"))
				CST_IPI = "52";
		}
		
		return CST_IPI;
	} //getCST_IPI
	
	/**
	 * Formata e retorna a Situação Tributária do PIS
	 * @return String Situação Tributária do PIS
	 */
	public String getCST_PIS(){

		String CST_PIS = getlbr_TaxStatusPIS();
		
		if (Integer.valueOf(getCFOP().substring(0, 1)).intValue() < 5) //ENTRADA
			CST_PIS = "50";
		else
			CST_PIS = "01";
				
		if (getTaxAmt("COFINS").signum() != 1){ //ISENTO
			if (CST_PIS.equals("50"))
				CST_PIS = "98";
			else if (CST_PIS.equals("01"))
				CST_PIS = "07";
		}
		
		return CST_PIS;
	} //getCST_PIS
	
	/**
	 * Formata e retorna a Situação Tributária do COFINS
	 * @return String Situação Tributária do COFINS
	 */
	public String getCST_COFINS(){
		
		String CST_COFINS = getlbr_TaxStatusCOFINS();
		
		if (Integer.valueOf(getCFOP().substring(0, 1)).intValue() < 5) //ENTRADA
			CST_COFINS = "50";
		else
			CST_COFINS = "01";
				
		if (getTaxAmt("COFINS").signum() != 1){ //ISENTO
			if (CST_COFINS.equals("50"))
				CST_COFINS = "98";
			else if (CST_COFINS.equals("01"))
				CST_COFINS = "07";
		}
		
		return CST_COFINS;
	} //getCST_COFINS

} //MNotaFiscalLine