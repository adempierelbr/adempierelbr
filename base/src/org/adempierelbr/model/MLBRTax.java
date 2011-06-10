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
import java.math.RoundingMode;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.util.ServiceTaxes;
import org.adempierelbr.util.TaxBR;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MInvoiceTax;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrderTax;
import org.compiere.model.MPaymentTerm;
import org.compiere.model.MSysConfig;
import org.compiere.model.MTable;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *	MTax
 *
 *	Model for X_LBR_Tax
 *
 *  [ 1954195 ] AD_Client no Configurador de Impostos, mgrigioni
 *  [ 1967062 ] LBR_Tax criado sem necessidade, mgrigioni
 *  [ 2200626 ] Lista de Preço Brasil, mgrigioni
 *
 *	@author Mario Grigioni
 *  @contributor Fernando Lucktemberg (Faire, www.faire.com.br)
 *	@version $Id: MTax.java, 26/01/2010 09:10:00 mgrigioni
 */
public class MLBRTax extends X_LBR_Tax {

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MLBRTax.class);

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	/** Exceptions Type Constants **/
	public static final String EXCEPTION_PRODUCT = "P";
	public static final String EXCEPTION_GROUP   = "G";

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRTax(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRTax (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}

	/**
	 *  Constructor to be used when migrating from Adempiere Tax
	 *
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 *  @param ArrayList<String> Tax Names (LBR)
	 *  @param ArrayList<BigDecimal> Tax Rates
	 */
	public MLBRTax(Properties ctx, String trx, ArrayList<String> taxNames, ArrayList<BigDecimal> taxRates, ArrayList<BigDecimal> taxBases)
	{
		this(ctx,0,trx);
		this.save(trx);

		if(taxNames.size() == taxRates.size())
		{
			for(int i = 0; i < taxNames.size(); i++)
			{
				String 		taxName 		= taxNames.get(i);
				BigDecimal 	taxRate 		= taxRates.get(i);
				BigDecimal  taxBase			= taxBases.get(i);

				int	LBR_TaxName_ID 			= getTaxName_ID(taxName);

				if(LBR_TaxName_ID > 0
						&& taxRate != null)
				{
					X_LBR_TaxLine line = new X_LBR_TaxLine(ctx,0,null);
					line.setLBR_Tax_ID(this.get_ID());
					line.setLBR_TaxName_ID(LBR_TaxName_ID);
					line.setlbr_TaxRate(taxRate);
					line.setlbr_TaxBase(taxBase == null ? Env.ZERO : taxBase);
					line.setlbr_PostTax(true);
					line.save();
				}
			}
		}

		this.setDescription();
		this.save(trx);
	}

	private int getTaxName_ID(String taxName)
	{
		String sql = "";

		if(taxName != null && !taxName.equals(""))
		{
			sql = "SELECT LBR_TaxName_ID " +
					"FROM LBR_TaxName " +
					"WHERE TRIM(Name)='" + taxName + "' " +
					"AND AD_Client_ID = " + Env.getAD_Client_ID(getCtx());
			return DB.getSQLValue(null, sql);
		}
		else
			return 0;
	}

	public static String validateWithhold(MOrder order){
		return validateWithhold(order,null);
	}

	public static String validateWithhold(MInvoice invoice){
		return validateWithhold(null,invoice);
	}

	private static String validateWithhold (MOrder order, MInvoice invoice)
	{
		Boolean hasWhSummary = false, hasLeastThanThreshold = false;

		boolean isOrder = true;
		boolean isTaxIncluded = false;

		PO   document = null;
		PO[] doctaxes = null;
		if (order != null){
			document = order;
			doctaxes = order.getTaxes(true);
			isOrder  = true;
			isTaxIncluded = order.isTaxIncluded();
		}
		else{
			document = invoice;
			doctaxes = invoice.getTaxes(true);
			isOrder  = false;
			isTaxIncluded = invoice.isTaxIncluded();
		}

		Properties ctx    	  = document.getCtx();
		String     trx    	  = document.get_TrxName();
		int		   whDocument = document.get_ID();

		ServiceTaxes[] serviceTaxes = getServiceTaxes(document,isOrder,trx);

		for (ServiceTaxes serviceTax : serviceTaxes)
		{
			for (PO doctax : doctaxes)
			{
				BigDecimal taxAmount = Env.ZERO;

				Integer C_Tax_ID = (Integer)doctax.get_Value("C_Tax_ID");
				if (C_Tax_ID == null || C_Tax_ID.intValue() == 0)
					continue;

				org.compiere.model.MTax tax = new org.compiere.model.MTax(ctx, C_Tax_ID, trx);
				if (tax.get_Value("LBR_TaxName_ID") == null)
					continue;

				X_LBR_TaxName lbr_TaxName = new X_LBR_TaxName(ctx, (Integer) tax.get_Value("LBR_TaxName_ID"), trx);

				//Somente continua se o imposto tiver retenção
				if(!lbr_TaxName.isHasWithHold())
					continue;

				log.fine("TaxName ID: " + serviceTax.getLBR_TaxName_ID());
				log.fine("TaxName ID LBR: " + lbr_TaxName.getLBR_TaxName_ID());
				log.fine("Withhold Threshold: " + serviceTax.getThreshold());
				log.fine("Withhold Total: " + serviceTax.getGrandTotal());

				//O imposto será apagado caso o valor da NF não tenha atingido o limiar de retenção
				//ou se estiver marcado para as retenções serem lançadas em outra fatura.
				if (serviceTax.getLBR_TaxName_ID() == lbr_TaxName.getLBR_TaxName_ID()
						&& (serviceTax.getThreshold().compareTo(serviceTax.getGrandTotal()) == 1))
				{
					doctax.delete(true);
					if (isOrder)
						document.set_ValueOfColumn("LBR_Withhold_Order_ID", null);
					else
						document.set_ValueOfColumn("LBR_Withhold_Invoice_ID", null);

					hasLeastThanThreshold = true;
				}

				//Limiar atingido
				else if (serviceTax.getLBR_TaxName_ID() == lbr_TaxName.getLBR_TaxName_ID())
				{
					Integer[] taxLines = getTaxLines(document,isOrder,serviceTax.getLBR_TaxName_ID(),trx);

					if (isOrder){
						taxAmount = ((MOrderTax)doctax).getTaxAmt().negate();
						((MOrderTax)doctax).setTaxAmt(taxAmount);
					}
					else{
						taxAmount = ((MInvoiceTax)doctax).getTaxAmt().negate();
						((MInvoiceTax)doctax).setTaxAmt(taxAmount);
					}

					doctax.save(trx);

					boolean retroactive = MSysConfig.getBooleanValue("LBR_ALLOW_RETROACTIVE_SERVICETAX", true, document.getAD_Client_ID());

					//Invoice com retenção própria.
					if(taxLines.length == 0 || !hasLeastThanThreshold)
					{

						/**
						 * Caso a linha possua imposto incluso o valor total estará correto,
						 * caso contrário o processo de calcular os impostos terá adicionado o valor das
						 * reteções indevidamente, então deve tirar a retenção e tirar o valor que foi
						 * adicionado indevidamente.
						 * */
						if (isOrder)
							taxAmount = ((MOrderTax) doctax).isTaxIncluded() ? taxAmount : taxAmount.multiply(new BigDecimal("2"));
						else
							taxAmount = ((MInvoiceTax) doctax).isTaxIncluded() ? taxAmount : taxAmount.multiply(new BigDecimal("2"));


						/**
						 * O campo LBR_Withhold_Document_ID preenchido significa que a reteção foi
						 * efetuada, este campo NULL significa que não há retenção ou o limiar ainda
						 * não foi atingido.
						 * */
						if (isOrder){
							log.info("LBR_Withhold_Order_ID: " + whDocument +
									 " GrandTotal = " + ((MOrder)document).getGrandTotal() + " + " + taxAmount);

							document.set_ValueOfColumn("LBR_Withhold_Order_ID", whDocument);
							((MOrder)document).setGrandTotal(((MOrder)document).getGrandTotal().add(taxAmount));
							((MOrder)document).save(trx);
						}
						else{
							log.info("LBR_Withhold_Invoice_ID: " + whDocument +
									 " GrandTotal = " + ((MInvoice)document).getGrandTotal() + " + " + taxAmount);

							document.set_ValueOfColumn("LBR_Withhold_Invoice_ID", whDocument);
							((MInvoice)document).setGrandTotal(((MInvoice)document).getGrandTotal().add(taxAmount));
							((MInvoice)document).save(trx);
						}

						continue;
					}

					else if (retroactive) {

						//Nesta etapa o imposto será lançado
						//com referência à outras ordens
						for (int i=0; i < taxLines.length; i++)
						{
							X_LBR_TaxLine taxLine = new X_LBR_TaxLine(ctx, taxLines[i], trx);

							BigDecimal TaxAmt     = (BigDecimal)doctax.get_Value("TaxAmt");
							BigDecimal TaxBaseAmt = (BigDecimal)doctax.get_Value("TaxBaseAmt");

							BigDecimal OldTaxAmt     = taxLine.getlbr_TaxAmt().setScale(TaxBR.SCALE, RoundingMode.HALF_UP).negate();
							BigDecimal OldTaxBaseAmt = taxLine.getlbr_TaxBaseAmt();

							TaxAmt     = TaxAmt.add(OldTaxAmt).setScale(TaxBR.SCALE, RoundingMode.HALF_UP);
							TaxBaseAmt = TaxBaseAmt.add(OldTaxBaseAmt).setScale(2, RoundingMode.HALF_UP);

							saveDocTax(doctax,isOrder,Env.getAD_Org_ID(ctx),TaxAmt,TaxBaseAmt,isTaxIncluded,trx);

							if (isOrder){
								BigDecimal grandTotal = ((MOrder)document).getGrandTotal();
								((MOrder)document).setGrandTotal(grandTotal.add(OldTaxAmt).setScale(TaxBR.SCALE, RoundingMode.HALF_UP));
							}
							else{
								BigDecimal grandTotal = ((MInvoice)document).getGrandTotal();
								((MInvoice)document).setGrandTotal(grandTotal.add(OldTaxAmt).setScale(TaxBR.SCALE, RoundingMode.HALF_UP));
							}

							setReferenceDoc(ctx, isOrder, whDocument,taxLine.getLBR_Tax_ID(),trx);

							hasWhSummary = true;
						} //end for

						if (isOrder)
							((MOrder)document).save(trx);
						else
							((MInvoice)document).save(trx);
					} //end if
				} //limiar atingido

			} //doctax

		} //document

		if (!isOrder){
			//Fix - Ajustar PaySchedule
			MPaymentTerm pt = new MPaymentTerm(ctx, ((MInvoice)document).getC_PaymentTerm_ID(), trx);
			log.fine(pt.toString());
			pt.apply((MInvoice)document);
		}

		if(hasLeastThanThreshold)
			log.warning("Retenções não contabilizadas, por não atingir o limiar.");

		if(hasWhSummary)
			log.warning("Retenções de outras Faturas contidas nesta Fatura.");

		return "";
	} //validateWithhold

	private static ServiceTaxes[] getServiceTaxes(PO document, boolean isOrder, String trx){

		ArrayList<ServiceTaxes> taxes = new ArrayList<ServiceTaxes>();

		boolean IsSOTrx = document.get_ValueAsBoolean("IsSOTrx");

		StringBuffer sql = new StringBuffer();

		sql.append("SELECT brtn.LBR_TaxName_ID, SUM(brtn.WithHoldThreshold) AS WithHoldThreshold, ")
		   .append("SUM(ABS(d.TotalLines)) AS GrandTotal ");

		if (isOrder){
			sql.append("FROM ").append(MOrder.Table_Name).append(" d ");
			sql.append("INNER JOIN ").append(MOrderLine.Table_Name).append(" dl ");
			sql.append("ON d.C_Order_ID = dl.C_Order_ID ");
		}
		else{
			sql.append("FROM ").append(MInvoice.Table_Name).append(" d ");
			sql.append("INNER JOIN ").append(MInvoiceLine.Table_Name).append(" dl ");
			sql.append("ON d.C_Invoice_ID = dl.C_Invoice_ID ");
		}

		sql.append("INNER JOIN C_Tax t ON t.Parent_Tax_ID = dl.C_Tax_ID ")
		   .append("INNER JOIN LBR_TaxName brtn ON brtn.LBR_TaxName_ID = t.LBR_TaxName_ID ")
		   .append("INNER JOIN C_DocType dt ON dt.C_DocType_ID = d.C_DocTypeTarget_ID ") // BF [2946291]
		   .append("WHERE brtn.HasWithhold = 'Y' AND d.C_BPartner_ID = ? ")
		   .append("AND (dt.IsSOTrx = 'N' OR dt.DocSubTypeSO IS NULL OR " +
		   		        "dt.DocSubTypeSO NOT IN ('ON','OB')) ")
		   .append("AND TRUNC(d.DateAcct,'MM') = TRUNC(")
		   .append(DB.TO_DATE((Timestamp)document.get_Value("DateAcct"))).append(",'MM') ")	//	BF [2782374]
		   .append("AND (d.DocStatus = 'CO' OR d.");

		if (isOrder)
			sql.append(MOrder.Table_Name);
		else
			sql.append(MInvoice.Table_Name);

		sql.append("_ID = ?) AND d.IsSOTrx = ? ");
		sql.append("GROUP BY brtn.LBR_TaxName_ID");


		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = DB.prepareStatement (sql.toString(), trx);
			pstmt.setInt(1, (Integer)document.get_Value("C_BPartner_ID"));
			//pstmt.setTimestamp(2, (Timestamp)document.get_Value("DateAcct"));
			pstmt.setInt(2, document.get_ID());
			pstmt.setString(3, IsSOTrx ? "Y" : "N");
			rs = pstmt.executeQuery ();

			while (rs.next ()) {
				taxes.add(new ServiceTaxes(rs.getInt(1), rs.getBigDecimal(2), rs.getBigDecimal(3)));
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
			DB.close(rs, pstmt);
		}

		ServiceTaxes[] retValue = new ServiceTaxes[taxes.size()];
		taxes.toArray(retValue);
		return retValue;
	} //getServiceTaxes

	private static Integer[] getTaxLines(PO document, boolean isOrder, int LBR_TaxName_ID, String trx){

		ArrayList<Integer> taxLines = new ArrayList<Integer>();

		boolean IsSOTrx = document.get_ValueAsBoolean("IsSOTrx");

		StringBuffer sql = new StringBuffer();

		//Verificar se já houve alguma retenção para o cliente no mês
		sql.append("SELECT DISTINCT tl.LBR_TaxLine_ID ");

		if (isOrder){
			sql.append("FROM ").append(MOrder.Table_Name).append(" d ");
			sql.append("INNER JOIN ").append(MOrderLine.Table_Name).append(" dl ");
			sql.append("ON d.C_Order_ID = dl.C_Order_ID ");
		}
		else{
			sql.append("FROM ").append(MInvoice.Table_Name).append(" d ");
			sql.append("INNER JOIN ").append(MInvoiceLine.Table_Name).append(" dl ");
			sql.append("ON d.C_Invoice_ID = dl.C_Invoice_ID ");
		}

		sql.append("INNER JOIN LBR_TaxLine tl ON tl.LBR_Tax_ID = dl.LBR_Tax_ID ")
		   .append("INNER JOIN LBR_TaxName brtn ON brtn.LBR_TaxName_ID = tl.LBR_TaxName_ID ")
		   .append("INNER JOIN C_DocType dt ON dt.C_DocType_ID = d.C_DocTypeTarget_ID ") // BF [2946291]
		   .append("WHERE brtn.HasWithhold = 'Y' AND d.C_BPartner_ID = ? ")
		   .append("AND (dt.IsSOTrx = 'N' OR dt.DocSubTypeSO IS NULL OR " +
		   		        "dt.DocSubTypeSO NOT IN ('ON','OB')) ")
		   .append("AND TRUNC(d.DateAcct,'MM') = TRUNC(")
		   .append(DB.TO_DATE((Timestamp)document.get_Value("DateAcct"))).append(",'MM') ")	//	BF [2782374]
		   .append("AND d.DocStatus = 'CO' ");

		if (isOrder){
			sql.append("AND (d.LBR_Withhold_Order_ID IS NULL OR d.LBR_Withhold_Order_ID = ?)");
			sql.append("AND d.").append(MOrder.Table_Name).append("_ID <> ? ");
		}
		else{
			sql.append("AND (d.LBR_Withhold_Invoice_ID IS NULL OR d.LBR_Withhold_Invoice_ID = ?)");
			sql.append("AND d.").append(MInvoice.Table_Name).append("_ID <> ? ");
		}

		sql.append("AND d.IsSOTrx = ? AND brtn.LBR_TaxName_ID = ? ");


		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = DB.prepareStatement (sql.toString(), trx);
			pstmt.setInt(1, (Integer)document.get_Value("C_BPartner_ID"));
			//pstmt.setTimestamp(2, (Timestamp)document.get_Value("DateAcct"));
			pstmt.setInt(2, document.get_ID());
			pstmt.setInt(3, document.get_ID());
			pstmt.setString(4, IsSOTrx ? "Y" : "N");
			pstmt.setInt(5, LBR_TaxName_ID);
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				taxLines.add(rs.getInt(1));
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
	       DB.close(rs, pstmt);
		}

		Integer[] retValue = new Integer[taxLines.size()];
		taxLines.toArray(retValue);
		return retValue;
	} //getTaxLines

	private static boolean saveDocTax(PO doctax, boolean isOrder, int AD_Org_ID, BigDecimal TaxAmt,
			BigDecimal TaxBaseAmt, boolean isTaxIncluded, String trx){

		if (isOrder){
			((MOrderTax)doctax).setAD_Org_ID(AD_Org_ID);
			((MOrderTax)doctax).setTaxAmt(TaxAmt);
			((MOrderTax)doctax).setTaxBaseAmt(TaxBaseAmt);
			((MOrderTax)doctax).setIsTaxIncluded(isTaxIncluded);
			return ((MOrderTax)doctax).save(trx);
		}
		else{
			((MInvoiceTax)doctax).setAD_Org_ID(AD_Org_ID);
			((MInvoiceTax)doctax).setTaxAmt(TaxAmt);
			((MInvoiceTax)doctax).setTaxBaseAmt(TaxBaseAmt);
			((MInvoiceTax)doctax).setIsTaxIncluded(isTaxIncluded);
			return ((MInvoiceTax)doctax).save(trx);
		}
	} //saveDocTax

	private static boolean setReferenceDoc(Properties ctx, boolean isOrder, int whDocument, Integer LBR_Tax_ID, String trx){

		int Document_ID = 0;
		String sql = "";

		if (isOrder)
			sql = "SELECT DISTINCT C_Order_ID FROM C_OrderLine WHERE LBR_Tax_ID=?";
		else
			sql = "SELECT DISTINCT C_Invoice_ID FROM C_InvoiceLine WHERE LBR_Tax_ID=?";

		Document_ID = DB.getSQLValue(trx, sql, LBR_Tax_ID);

		if (isOrder){
			MOrder oldOrder = new MOrder(ctx, Document_ID, trx);
			oldOrder.set_ValueOfColumn("LBR_Withhold_Order_ID", whDocument);
			 return oldOrder.save(trx);
		}
		else{
			MInvoice oldInvoice = new MInvoice(ctx, Document_ID, trx);
			oldInvoice.set_ValueOfColumn("LBR_Withhold_Invoice_ID", whDocument);
			return oldInvoice.save(trx);
		}
	} //setReferenceDoc

	/**************************************************************************
	 * 	setDescription
	 */
	public void setDescription ()
	{
		String Description = "";
		X_LBR_TaxLine[] lines = getLines();
		for (X_LBR_TaxLine line : lines){

			/*
			if (line.getlbr_TaxRate().signum() == 0){
				line.delete(true,get_TrxName());
				continue;
			}
			*/

			X_LBR_TaxName tax = new X_LBR_TaxName(getCtx(),line.getLBR_TaxName_ID(),null);
			String name = tax.getName().trim();
			String rate = String.format("%,.2f", line.getlbr_TaxRate());
			Description += ", " + name + "-" + rate;
		}

		if (Description.startsWith(", ")) Description = Description.substring(2);
		if (Description.equals("")) Description = null;

		setDescription(Description);
	}

	/**************************************************************************
	 *  copyTo - Copy the current MTax and return a new copy of the Object
	 *  @return MTax newTax
	 */
	public MLBRTax copyTo(){

		MLBRTax newTax = new MLBRTax(getCtx(),0,get_TrxName());
		newTax.setDescription(getDescription());
		newTax.save(get_TrxName());

		X_LBR_TaxLine[] lines = getLines();
		for (int i=0; i<lines.length; i++){
			X_LBR_TaxLine newLine = new X_LBR_TaxLine(getCtx(),0,get_TrxName());
			newLine.setLBR_Tax_ID(newTax.getLBR_Tax_ID());
			newLine.setLBR_TaxName_ID(lines[i].getLBR_TaxName_ID());
			newLine.setlbr_TaxRate(lines[i].getlbr_TaxRate());
			newLine.setlbr_TaxBase(lines[i].getlbr_TaxBase());
			newLine.setlbr_PostTax(lines[i].islbr_PostTax());
			newLine.save(get_TrxName());
		}

		return newTax;
	} //copyTo

	/**************************************************************************
	 *  copyLinesTo - Copy lines from the current MTax to the newTax param
	 *  @param MLBRTax newTax
	 */
	public void copyLinesTo(MLBRTax newTax){

		newTax.deleteLines(); //delete old lines

		X_LBR_TaxLine[] lines = getLines();
		for (int i=0; i<lines.length; i++){
			X_LBR_TaxLine newLine = new X_LBR_TaxLine(getCtx(),0,get_TrxName());
			newLine.setLBR_Tax_ID(newTax.getLBR_Tax_ID());
			newLine.setLBR_TaxName_ID(lines[i].getLBR_TaxName_ID());
			newLine.setlbr_TaxRate(lines[i].getlbr_TaxRate());
			newLine.setlbr_TaxBase(lines[i].getlbr_TaxBase());
			newLine.setlbr_PostTax(lines[i].islbr_PostTax());
			newLine.save(get_TrxName());
		}

		newTax.setDescription();
		newTax.save();
	} //copyLinesTo

	/**
	 * copyLinesTo
	 * @param LBR_Tax_ID
	 */
	public void copyLinesTo(int LBR_Tax_ID){

		if (LBR_Tax_ID == 0)
			return;

		MLBRTax newTax = new MLBRTax(getCtx(),LBR_Tax_ID,get_TrxName());
		copyLinesTo(newTax);
	} //copyLines
	
	public static BigDecimal getTaxAmt(int LBR_Tax_ID, String trx){
		return getTaxAmt(LBR_Tax_ID,trx,false);
	}

	/**************************************************************************
	 *  getTaxAmt
	 *  @return BigDecimal TaxAmt
	 */
	public static BigDecimal getTaxAmt(int LBR_Tax_ID,String trx, boolean isPriceBR){

		String sql = "SELECT LBR_TaxName_ID, lbr_TaxAmt " +
				     "FROM LBR_TaxLine " +
				     "WHERE LBR_Tax_ID = ?";

		BigDecimal taxAmt = Env.ZERO;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt(1, LBR_Tax_ID);
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				X_LBR_TaxName taxName = new X_LBR_TaxName(Env.getCtx(),rs.getInt(1),trx);
				
				if (isPriceBR){
					if(taxName.getName().trim().indexOf("IPI") != -1 || taxName.isHasWithHold())
						continue;
				}
				
				BigDecimal amt = rs.getBigDecimal(2);
				if (amt != null){
					amt = amt.setScale(TaxBR.SCALE, RoundingMode.HALF_UP);
					taxAmt = taxAmt.add(amt);
				}
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}

		return taxAmt.setScale(TaxBR.SCALE, RoundingMode.HALF_UP);
	} //getTaxAmt

	/**************************************************************************
	 *  getLines
	 *  @return X_LBR_TaxLine[] lines
	 */
	public X_LBR_TaxLine[] getLines(){

		String whereClause = "LBR_Tax_ID = ?";

		MTable table = MTable.get(getCtx(), X_LBR_TaxLine.Table_Name);
		Query q =  new Query(getCtx(), table, whereClause, get_TrxName());
		q.setParameters(new Object[]{getLBR_Tax_ID()});

		List<X_LBR_TaxLine> list = q.list();
		X_LBR_TaxLine[] lines = new X_LBR_TaxLine[list.size()];
		return list.toArray(lines);
	} //getLines
	
	public X_LBR_TaxLine getIPILine(){
		
		String sql = "SELECT LBR_TaxLine_ID " +
				     "FROM LBR_TaxLine " +
				     "WHERE LBR_Tax_ID = ? " +
				     "AND LBR_TaxName_ID IN (SELECT LBR_TaxName_ID FROM LBR_TaxName WHERE Name LIKE '%IPI%')";
		
		int LBR_TaxLine_ID = DB.getSQLValue(get_TrxName(), sql, getLBR_Tax_ID());
		return LBR_TaxLine_ID > 0 ? new X_LBR_TaxLine(getCtx(),LBR_TaxLine_ID,get_TrxName()) : null;
	} //getIPILine

	/**************************************************************************
	 *  getLines
	 *  @return Map<LBR_TaxName_ID,X_LBR_TaxLine> taxes
	 */
	public static Map<Integer,X_LBR_TaxLine> getLines(Properties ctx, int LBR_Tax_ID, String trxName){

		String whereClause = "LBR_Tax_ID = ?";

		MTable table = MTable.get(ctx, X_LBR_TaxLine.Table_Name);
		Query q =  new Query(ctx, table, whereClause, trxName);
		q.setParameters(new Object[]{LBR_Tax_ID});

		Map<Integer,X_LBR_TaxLine> taxes = new HashMap<Integer,X_LBR_TaxLine>();
		List<X_LBR_TaxLine> list = q.list();

		for(X_LBR_TaxLine line : list){
			taxes.put(line.getLBR_TaxName_ID(), line);
		}

		return taxes;
	} //getLines

	/**************************************************************************
	 *  getLine
	 *  @return Integer LBR_TaxLine_ID
	 */
	public static int getLine(int LBR_Tax_ID, int LBR_TaxName_ID, String trx){

		String sql = "SELECT LBR_TaxLine_ID FROM LBR_TaxLine " +
				     "WHERE LBR_Tax_ID = ? AND LBR_TaxName_ID = ?";

		int LBR_TaxLine_ID = DB.getSQLValue(trx, sql,
				new Object[]{LBR_Tax_ID,LBR_TaxName_ID});

		return LBR_TaxLine_ID;
	} //getLine

	/**************************************************************************
	 *  getC_Tax_ID
	 *  @return Integer C_Tax_ID
	 */
	public static int getC_Tax_ID(int Parent_Tax_ID, int LBR_TaxName_ID, String trx){

		String sql = "SELECT C_Tax_ID FROM C_Tax " +
				     "WHERE Parent_Tax_ID = ? AND LBR_TaxName_ID = ?";

		int C_Tax_ID = DB.getSQLValue(trx, sql,
				new Object[]{Parent_Tax_ID,LBR_TaxName_ID});

		return C_Tax_ID;
	} //getC_Tax_ID

	public void deleteLines(){

		String sql = "DELETE FROM LBR_TaxLine " +
        	         "WHERE LBR_Tax_ID=" + getLBR_Tax_ID();
		DB.executeUpdate(sql, get_TrxName());

	}

	public boolean delete(boolean force, String trxName){

		deleteLines();
		return super.delete(force, trxName);

	}

	public String toString(){

		String Description = getDescription();

		if (Description == null || Description.trim().equals("")){
			//return super.toString();
			return "";
		}

		return Description;
	}

	public static int getLBR_TaxConfiguration_ID(Properties ctx, boolean isSOTrx, String ExceptionType, Integer ID){

		if (ExceptionType == null) ExceptionType = "";
		if (ID == null) ID = -1;

		StringBuffer sql = new StringBuffer();

		sql.append("SELECT LBR_TaxConfiguration_ID ");
		sql.append("FROM LBR_TaxConfiguration ");
		sql.append("WHERE AD_Client_ID = ? AND ");

		if (isSOTrx)
			sql.append("IsSOTrx = 'Y'");
		else
			sql.append("lbr_IsPOTrx = 'Y'");

		if (ExceptionType.equals(EXCEPTION_PRODUCT))
			sql.append(" AND M_Product_ID = ").append(ID);
		else if (ExceptionType.equals(EXCEPTION_GROUP))
			sql.append(" AND LBR_FiscalGroup_Product_ID = ").append(ID);
		else
			sql.append(" AND M_Product_ID is null AND LBR_FiscalGroup_Product_ID is null");

		int LBR_TaxConfiguration_ID = DB.getSQLValue(null, sql.toString(), Env.getAD_Client_ID(ctx));

		return LBR_TaxConfiguration_ID;
	} //getLBR_TaxConfiguration_ID

	/**
	 * @deprecated
	 */
	public static int getLBR_TaxConfig_BPartner(Integer LBR_TaxConfiguration_ID, Integer C_BPartner_ID){

		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;
		if (C_BPartner_ID == null) C_BPartner_ID = -1;

		String sql = "SELECT LBR_Tax_ID " +
				     "FROM LBR_TaxConfig_BPartner " +
				     "WHERE LBR_TaxConfiguration_ID = ? " +
				     "AND C_BPartner_ID = ?";

		int LBR_Tax_ID = DB.getSQLValue(null, sql,
				new Object[]{LBR_TaxConfiguration_ID,C_BPartner_ID});

		return LBR_Tax_ID;
	} //getLBR_TaxConfig_BPartner

	public static X_LBR_TaxConfig_BPartner getX_LBR_TaxConfig_BPartner(Integer LBR_TaxConfiguration_ID, Integer C_BPartner_ID){

		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;
		if (C_BPartner_ID == null) C_BPartner_ID = -1;

		String sql = "SELECT LBR_TaxConfig_BPartner_ID " +
				     "FROM LBR_TaxConfig_BPartner " +
				     "WHERE LBR_TaxConfiguration_ID = ? " +
				     "AND C_BPartner_ID = ?";

		int LBR_TaxConfig_ID = DB.getSQLValue(null, sql,
				new Object[]{LBR_TaxConfiguration_ID,C_BPartner_ID});

		if (LBR_TaxConfig_ID == -1) return null;

		return new X_LBR_TaxConfig_BPartner(Env.getCtx(),LBR_TaxConfig_ID,null);
	} //getX_LBR_TaxConfig_BPartner

	/**
	 * @deprecated
	 */
	public static int getLBR_TaxConfig_BPGroup(Integer LBR_TaxConfiguration_ID, Integer LBR_FiscalGroup_BPartner_ID){

		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;
		if (LBR_FiscalGroup_BPartner_ID == null) LBR_FiscalGroup_BPartner_ID = -1;

		String sql = "SELECT LBR_Tax_ID " +
				     "FROM LBR_TaxConfig_BPGroup " +
				     "WHERE LBR_TaxConfiguration_ID = ? " +
				     "AND LBR_FiscalGroup_BPartner_ID = ?";

		int LBR_Tax_ID = DB.getSQLValue(null, sql,
				new Object[]{LBR_TaxConfiguration_ID, LBR_FiscalGroup_BPartner_ID});

		return LBR_Tax_ID;
	} //getLBR_TaxConfig_BPGroup

	public static X_LBR_TaxConfig_BPGroup getX_LBR_TaxConfig_BPGroup(Integer LBR_TaxConfiguration_ID, Integer LBR_FiscalGroup_BPartner_ID){

		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;
		if (LBR_FiscalGroup_BPartner_ID == null) LBR_FiscalGroup_BPartner_ID = -1;

		String sql = "SELECT LBR_TaxConfig_BPGroup_ID " +
				     "FROM LBR_TaxConfig_BPGroup " +
				     "WHERE LBR_TaxConfiguration_ID = ? " +
				     "AND LBR_FiscalGroup_BPartner_ID = ?";

		int LBR_TaxConfig_ID = DB.getSQLValue(null, sql,
				new Object[]{LBR_TaxConfiguration_ID,LBR_FiscalGroup_BPartner_ID});

		if (LBR_TaxConfig_ID == -1) return null;

		return new X_LBR_TaxConfig_BPGroup(Env.getCtx(),LBR_TaxConfig_ID,null);
	} //getX_LBR_TaxConfig_BPGroup

	/**
	 * @deprecated
	 */
	public static int getLBR_TaxConfig_Product(Integer LBR_TaxConfiguration_ID){

		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;

		String sql = "SELECT LBR_Tax_ID " +
				     "FROM LBR_TaxConfig_Product " +
				     "WHERE LBR_TaxConfiguration_ID = ?";

		int LBR_Tax_ID = DB.getSQLValue(null, sql, LBR_TaxConfiguration_ID);

		return LBR_Tax_ID;
	} //getLBR_TaxConfig_Product

	public static X_LBR_TaxConfig_Product getX_LBR_TaxConfig_Product(Integer LBR_TaxConfiguration_ID){

		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;

		String sql = "SELECT LBR_TaxConfig_Product_ID " +
				     "FROM LBR_TaxConfig_Product " +
				     "WHERE LBR_TaxConfiguration_ID = ?";

		int LBR_TaxConfig_ID = DB.getSQLValue(null, sql,LBR_TaxConfiguration_ID);

		if (LBR_TaxConfig_ID == -1) return null;

		return new X_LBR_TaxConfig_Product(Env.getCtx(),LBR_TaxConfig_ID,null);
	} //getX_LBR_TaxConfig_Product

	/**
	 * @deprecated
	 */
	public static int getLBR_TaxConfig_ProductGroup(Integer LBR_TaxConfiguration_ID){

		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;

		String sql = "SELECT LBR_Tax_ID " +
				     "FROM LBR_TaxConfig_ProductGroup " +
				     "WHERE LBR_TaxConfiguration_ID = ?";

		int LBR_Tax_ID = DB.getSQLValue(null, sql, LBR_TaxConfiguration_ID);

		return LBR_Tax_ID;
	} //getLBR_TaxConfig_ProductGroup

	public static X_LBR_TaxConfig_ProductGroup getX_LBR_TaxConfig_ProductGroup(Integer LBR_TaxConfiguration_ID){

		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;

		String sql = "SELECT LBR_TaxConfig_ProductGroup_ID " +
				     "FROM LBR_TaxConfig_ProductGroup " +
				     "WHERE LBR_TaxConfiguration_ID = ?";

		int LBR_TaxConfig_ID = DB.getSQLValue(null, sql,LBR_TaxConfiguration_ID);

		if (LBR_TaxConfig_ID == -1) return null;

		return new X_LBR_TaxConfig_ProductGroup(Env.getCtx(),LBR_TaxConfig_ID,null);
	} //getX_LBR_TaxConfig_ProductGroup

	/**
	 * @deprecated
	 */
	public static int getLBR_TaxConfig_Region(Integer LBR_TaxConfiguration_ID, Integer C_Region_ID, Integer To_Region_ID){

		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;
		if (C_Region_ID == null) C_Region_ID = -1;
		if (To_Region_ID == null) To_Region_ID = -1;

		String sql = "SELECT LBR_Tax_ID " +
				     "FROM LBR_TaxConfig_Region " +
				     "WHERE LBR_TaxConfiguration_ID = ? " +
				     "AND C_Region_ID = ? " +
				     "AND To_Region_ID = ?";

		int LBR_Tax_ID = DB.getSQLValue(null, sql,
				new Object[]{LBR_TaxConfiguration_ID,C_Region_ID,To_Region_ID});

		return LBR_Tax_ID;
	} //getLBR_TaxConfig_Region

	public static X_LBR_TaxConfig_Region getX_LBR_TaxConfig_Region(Integer LBR_TaxConfiguration_ID, Integer C_Region_ID, Integer To_Region_ID){

		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;
		if (C_Region_ID == null) C_Region_ID = -1;
		if (To_Region_ID == null) To_Region_ID = -1;

		String sql = "SELECT LBR_TaxConfig_Region_ID " +
				     "FROM LBR_TaxConfig_Region " +
				     "WHERE LBR_TaxConfiguration_ID = ? " +
				     "AND C_Region_ID = ? " +
				     "AND To_Region_ID = ?";

		int LBR_TaxConfig_ID = DB.getSQLValue(null, sql,
				new Object[]{LBR_TaxConfiguration_ID,C_Region_ID,To_Region_ID});

		if (LBR_TaxConfig_ID == -1) return null;

		return new X_LBR_TaxConfig_Region(Env.getCtx(),LBR_TaxConfig_ID,null);
	} //getX_LBR_TaxConfig_Region

} //MTaxLBR