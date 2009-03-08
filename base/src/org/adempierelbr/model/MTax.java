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
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.util.MTaxAmounts;
import org.adempierelbr.util.POLBR;
import org.adempierelbr.util.ServiceTaxes;
import org.adempierelbr.util.TaxBR;
import org.compiere.model.I_C_Invoice;
import org.compiere.model.I_C_InvoiceLine;
import org.compiere.model.I_C_Order;
import org.compiere.model.I_C_OrderLine;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MInvoiceTax;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrderTax;
import org.compiere.model.MPaymentTerm;
import org.compiere.model.MPriceList;
import org.compiere.model.MSysConfig;
import org.compiere.model.PO;
import org.compiere.model.X_LBR_Tax;
import org.compiere.model.X_LBR_TaxConfig_BPGroup;
import org.compiere.model.X_LBR_TaxConfig_BPartner;
import org.compiere.model.X_LBR_TaxConfig_Product;
import org.compiere.model.X_LBR_TaxConfig_ProductGroup;
import org.compiere.model.X_LBR_TaxConfig_Region;
import org.compiere.model.X_LBR_TaxLine;
import org.compiere.model.X_LBR_TaxName;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

import bsh.EvalError;

/**
 *	MTax
 *
 *	Model for X_LBR_Tax
 *
 *  [ 1954195 ] AD_Client no Configurador de Impostos, mgrigioni
 *  [ 1967062 ] LBR_Tax criado sem necessidade, mgrigioni
 *  [ 2200626 ] Lista de Preço Brasil, mgrigioni
 *	
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: MTax.java, 12/11/2007 13:38:00 mgrigioni
 */
public class MTax extends X_LBR_Tax {
    
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MTax.class);
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MTax(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);	
	}
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MTax (Properties ctx, ResultSet rs, String trxName)
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
	public MTax(Properties ctx, String trx, ArrayList<String> taxNames, ArrayList<BigDecimal> taxRates)
	{
		this(ctx,0,trx);
		
		if(taxNames.size() == taxRates.size())
		{
			for(int i = 0; i < taxNames.size(); i++)
			{
				String 		taxName 		= taxNames.get(i);
				BigDecimal 	taxRate 		= taxRates.get(i);
				
				int	LBR_TaxName_ID 			= getTaxName_ID(taxName);
				
				if(LBR_TaxName_ID > 0
						&& taxRate != null)
				{
					X_LBR_TaxLine line = new X_LBR_TaxLine(ctx,0,null);
					line.setLBR_Tax_ID(this.getLBR_Tax_ID());
					line.setLBR_TaxName_ID(LBR_TaxName_ID);
					line.setlbr_TaxRate(taxRate);
					line.setlbr_TaxBase(Env.ZERO);
					line.setlbr_PostTax(true);
					line.save();
				}
			}
		}
	}
	
	private int getTaxName_ID(String taxName)
	{
		// TODO Auto-generated method stub
		String sql = "";
		
		if(taxName != null && !taxName.equals(""))
		{
			sql = "SELECT LBR_TaxName_ID " +
					"FROM LBR_TaxName " +
					"WHERE Name='" + taxName + "'";
			return DB.getSQLValue(null, sql);
		}
		else 
			return 0;
	}

	public static MTaxAmounts modelChange(Properties ctx, MOrderLine oLine, String trx) throws EvalError{
		return modelChange(ctx,oLine,null,trx);
	}
	
	public static MTaxAmounts modelChange(Properties ctx, MInvoiceLine iLine, String trx) throws EvalError{
		return modelChange(ctx,null,iLine,trx);
	}

	private static MTaxAmounts modelChange(Properties ctx, MOrderLine oLine, 
			MInvoiceLine iLine, String trx) throws EvalError{
		
		BigDecimal totalLines = Env.ZERO; //TotalLines
		BigDecimal taxAmt     = Env.ZERO; //TaxAmt (all taxes)
		BigDecimal etaxAmt    = Env.ZERO; //Excluded TaxAmt
		BigDecimal substAmt   = Env.ZERO; //Substitution TaxAmt
		
		boolean isOrder = true;
				
		PO   document = null;
		PO   line     = null;
		PO   doctax   = null;
		PO[] lines    = null;
		if (oLine != null){
			document = new MOrder(ctx,oLine.getC_Order_ID(),trx);
			line     = oLine;
			lines    = ((MOrder)document).getLines(true,null);
			doctax   = TaxBR.getMOrderTax(ctx, document.get_ID(), (Integer)line.get_Value("C_Tax_ID"), trx);
		}
		else{
			document = new MInvoice(ctx,iLine.getC_Invoice_ID(),trx);
			line     = iLine;
			lines    = ((MInvoice)document).getLines(true);
			doctax   = TaxBR.getMInvoiceTax(ctx, document.get_ID(), (Integer)line.get_Value("C_Tax_ID"), trx);
			isOrder  = false;
		}

		MPriceList pList = new MPriceList(ctx,(Integer)document.get_Value("M_PriceList_ID"),trx);
		
		boolean brazilianlist = POLBR.get_ValueAsBoolean(pList.get_Value("lbr_BrazilianPriceList"));
		ArrayList<Integer> tIncluded = new ArrayList<Integer>();
		if (brazilianlist){
			tIncluded = MTaxIncludedList.getTaxes(ctx, pList.getM_PriceList_ID(), trx);
		}
		
		Integer C_Tax_ID = (Integer)line.get_Value("C_Tax_ID");
		if (C_Tax_ID == null)
			C_Tax_ID = 0;
		
		org.compiere.model.MTax tax = new org.compiere.model.MTax(ctx,C_Tax_ID,trx);
			
		if (tax.isSummary()){
		
			for (int i=0; i<lines.length; i++){
			
				int ID = lines[i].get_ID();
			
				TaxBR.calculateTaxes(ID, isOrder, trx);
				
				Integer LBR_Tax_ID = (Integer)lines[i].get_Value("LBR_Tax_ID");
				if (LBR_Tax_ID != null && LBR_Tax_ID.intValue() != 0){	
				
					org.compiere.model.MTax cTaxes[] = tax.getChildTaxes(false);
					for(org.compiere.model.MTax cTax : cTaxes){
						int LBR_TaxLine_ID = MTax.getLine(LBR_Tax_ID, (Integer)cTax.get_Value("LBR_TaxName_ID"), trx);
						if (LBR_TaxLine_ID != 0){
							X_LBR_TaxLine taxLine = new X_LBR_TaxLine(ctx,LBR_TaxLine_ID,trx);
							if (!tIncluded.contains(cTax.getC_Tax_ID()) && brazilianlist){
								etaxAmt = etaxAmt.add(taxLine.getlbr_TaxAmt());
							}
							
							X_LBR_TaxName taxName = new X_LBR_TaxName(ctx,taxLine.getLBR_TaxName_ID(),trx);
							if (taxName.getlbr_TaxType().equals(TaxBR.taxType_Substitution)){
								substAmt = substAmt.add(taxLine.getlbr_TaxAmt());
							}
							
							taxAmt = taxAmt.add(taxLine.getlbr_TaxAmt());
						}
					} //end for child taxes
				} //LBR_Tax_ID not null
			
			} //end for order lines
		
			//Precisão
			taxAmt   = taxAmt.setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP);
			etaxAmt  = etaxAmt.setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP);
			substAmt = substAmt.setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP);
			
			boolean isTaxIncluded = POLBR.get_ValueAsBoolean(document.get_Value("IsTaxIncluded"));
			totalLines = (BigDecimal)document.get_Value("TotalLines");
			if (totalLines == null) totalLines = Env.ZERO;
			
			if (isTaxIncluded){
				if (isOrder) //GrandTotal = Column not updatable
					((MOrder)document).setGrandTotal(totalLines.add(etaxAmt));
				else
					((MInvoice)document).setGrandTotal(totalLines.add(etaxAmt));
				
				saveDocTax(doctax, isOrder, document.getAD_Org_ID(), taxAmt,
						(BigDecimal)document.get_Value("GrandTotal"), isTaxIncluded, trx);
			}
			else{
				if (isOrder) //GrandTotal = Column not updatable
					((MOrder)document).setGrandTotal(totalLines.add(taxAmt));
				else
					((MInvoice)document).setGrandTotal(totalLines.add(taxAmt));
				
				saveDocTax(doctax, isOrder, document.getAD_Org_ID(), taxAmt,
						totalLines, isTaxIncluded, trx);
			}
			
			if(isOrder)
				((MOrder)document).save(trx);
			else
				((MInvoice)document).save(trx);
		} //isSummary
		
		return new MTaxAmounts(totalLines,taxAmt,etaxAmt,substAmt);
	} //modelChange
		
	public static MTaxAmounts docValidate(Properties ctx, MOrder order, String trx) throws EvalError{
		return docValidate(ctx,order,null,trx);
	}
	
	public static MTaxAmounts docValidate(Properties ctx, MInvoice invoice, String trx) throws EvalError{
		return docValidate(ctx,null,invoice,trx);
	}
	
	private static MTaxAmounts docValidate(Properties ctx, MOrder order, 
			MInvoice invoice, String trx) throws EvalError{
		
		BigDecimal totalLines = Env.ZERO; //TotalLines
		BigDecimal taxAmt     = Env.ZERO; //TaxAmt (all taxes)
		BigDecimal etaxAmt    = Env.ZERO; //Excluded TaxAmt
		BigDecimal substAmt   = Env.ZERO; //Substitution TaxAmt
		
		boolean isOrder       = true;
		boolean isTaxIncluded = false;
				
		PO   document = null;
		PO   doctax   = null;
		PO[] lines    = null;
		if (order != null){
			document = order;
			lines    = ((MOrder)document).getLines(true,null);
			isTaxIncluded = order.isTaxIncluded();
		}
		else{
			document = invoice;
			lines    = ((MInvoice)document).getLines(true);
			isOrder  = false;
			isTaxIncluded = invoice.isTaxIncluded();
		}
		
		TaxBR.deleteSummaryTax(document.get_ID(), isOrder, trx);
		
		MPriceList pList = new MPriceList(ctx,(Integer)document.get_Value("M_PriceList_ID"),trx);
		
		boolean brazilianlist = POLBR.get_ValueAsBoolean(pList.get_Value("lbr_BrazilianPriceList"));
		ArrayList<Integer> tIncluded = new ArrayList<Integer>();
		if (brazilianlist){
			tIncluded = MTaxIncludedList.getTaxes(ctx, pList.getM_PriceList_ID(), trx);
		}
		
		totalLines = (BigDecimal)document.get_Value("TotalLines");
		if (totalLines == null) totalLines = Env.ZERO;
		
		for (PO line : lines){
			
			Integer C_Tax_ID = (Integer)line.get_Value("C_Tax_ID");
			if (C_Tax_ID == null)
				C_Tax_ID = 0;
			
			org.compiere.model.MTax tax = new org.compiere.model.MTax(ctx,C_Tax_ID,trx);
			
			if (tax.isSummary()){
				
				//Cálculo dos Impostos (Linha)
				TaxBR.calculateTaxes(line.get_ID(), isOrder, trx);
				
				Integer LBR_Tax_ID = (Integer)line.get_Value("LBR_Tax_ID");
				
				if (LBR_Tax_ID != null && LBR_Tax_ID.intValue() != 0){
					
					org.compiere.model.MTax[] cTaxes = tax.getChildTaxes(false);
					
					for (org.compiere.model.MTax cTax : cTaxes){
						
						int LBR_TaxLine_ID = MTax.getLine(LBR_Tax_ID, (Integer)cTax.get_Value("LBR_TaxName_ID"), trx);
						if (LBR_TaxLine_ID != 0){
							
							X_LBR_TaxLine taxLine = new X_LBR_TaxLine(ctx,LBR_TaxLine_ID,trx);
							
							//Verifica se o Imposto deve ser Contabilizado
							if (taxLine.islbr_PostTax()){
								
								if (isOrder)
									doctax = TaxBR.getMOrderTax(ctx, document.get_ID(), cTax.getC_Tax_ID(), trx);
								else
									doctax = TaxBR.getMInvoiceTax(ctx, document.get_ID(), cTax.getC_Tax_ID(), trx);
								
								BigDecimal TaxAmt     = (BigDecimal)doctax.get_Value("TaxAmt");
								if (TaxAmt == null) TaxAmt = Env.ZERO;
								
								BigDecimal TaxBaseAmt = (BigDecimal)doctax.get_Value("TaxBaseAmt");
								if (TaxBaseAmt == null) TaxBaseAmt = Env.ZERO;
								
								BigDecimal lineTaxAmt = taxLine.getlbr_TaxAmt().setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP);
								
								saveDocTax(doctax, isOrder, document.getAD_Org_ID(), TaxAmt.add(lineTaxAmt),
										TaxBaseAmt.add(taxLine.getlbr_TaxBaseAmt()), isTaxIncluded, trx);
								
							} // postTax
							
							if (!tIncluded.contains(cTax.getC_Tax_ID()) && brazilianlist){
								etaxAmt = etaxAmt.add(taxLine.getlbr_TaxAmt());
							}
							
							X_LBR_TaxName taxName = new X_LBR_TaxName(ctx,taxLine.getLBR_TaxName_ID(),trx);
							if (taxName.getlbr_TaxType().equals(TaxBR.taxType_Substitution)){
								substAmt = substAmt.add(taxLine.getlbr_TaxAmt());
							}
							
							taxAmt = taxAmt.add(taxLine.getlbr_TaxAmt());
							
						} //LBR_TaxLine_ID != 0
						
					} //child taxes
					
				} //LBR_Tax_ID != null
				
			} //summary tax
			
		} //document lines
		
		//Precisão
		taxAmt   = taxAmt.setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP);
		etaxAmt  = etaxAmt.setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP);
		substAmt = substAmt.setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP);
		
		if (isTaxIncluded){
			if (isOrder) //GrandTotal = Column not updatable
				((MOrder)document).setGrandTotal(totalLines.add(etaxAmt));
			else
				((MInvoice)document).setGrandTotal(totalLines.add(etaxAmt));
		}
		else{
			if (isOrder) //GrandTotal = Column not updatable
				((MOrder)document).setGrandTotal(totalLines.add(taxAmt));
			else
				((MInvoice)document).setGrandTotal(totalLines.add(taxAmt));
		}
		
		if(isOrder)
			((MOrder)document).save(trx);
		else
			((MInvoice)document).save(trx);
		
		return new MTaxAmounts(totalLines,taxAmt,etaxAmt,substAmt);
	} //docValidate
	
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
					if(taxLines.length == 0)
					{
						
						/**
						 * O campo LBR_Withhold_Document_ID preenchido significa que a reteção foi
						 * efetuada, este campo NULL significa que não há retenção ou o limiar ainda
						 * não foi atingido.
						 * */
						if (isOrder){
							document.set_ValueOfColumn("LBR_Withhold_Order_ID", whDocument);
							((MOrder)document).setGrandTotal(((MOrder)document).getGrandTotal().add(taxAmount));
							((MOrder)document).save(trx);
						}
						else{
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
							
							BigDecimal OldTaxAmt     = taxLine.getlbr_TaxAmt().setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP).negate();
							BigDecimal OldTaxBaseAmt = taxLine.getlbr_TaxBaseAmt();
							
							TaxAmt     = TaxAmt.add(OldTaxAmt).setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP);
							TaxBaseAmt = TaxBaseAmt.add(OldTaxBaseAmt).setScale(2, BigDecimal.ROUND_HALF_UP);
							
							saveDocTax(doctax,isOrder,Env.getAD_Org_ID(ctx),TaxAmt,TaxBaseAmt,isTaxIncluded,trx);
							
							if (isOrder){
								BigDecimal grandTotal = ((MOrder)document).getGrandTotal();
								((MOrder)document).setGrandTotal(grandTotal.add(OldTaxAmt).setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP));
							}
							else{
								BigDecimal grandTotal = ((MInvoice)document).getGrandTotal();
								((MInvoice)document).setGrandTotal(grandTotal.add(OldTaxAmt).setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP));
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
		
		boolean IsSOTrx = POLBR.get_ValueAsBoolean(document.get_Value("IsSOTrx"));
		
		StringBuffer sql = new StringBuffer();
		
		sql.append("SELECT brtn.LBR_TaxName_ID, brtn.WithHoldThreshold, ")
		   .append("SUM(ABS(d.TotalLines)) AS GrandTotal ");
		
		if (isOrder){
			sql.append("FROM ").append(I_C_Order.Table_Name).append(" d ");
			sql.append("INNER JOIN ").append(I_C_OrderLine.Table_Name).append(" dl ");
			sql.append("ON d.C_Order_ID = dl.C_Order_ID ");
		}
		else{
			sql.append("FROM ").append(I_C_Invoice.Table_Name).append(" d ");
			sql.append("INNER JOIN ").append(I_C_InvoiceLine.Table_Name).append(" dl ");
			sql.append("ON d.C_Invoice_ID = dl.C_Invoice_ID ");
		}
		
		sql.append("INNER JOIN C_Tax t ON t.Parent_Tax_ID = dl.C_Tax_ID ")
		   .append("INNER JOIN LBR_TaxName brtn ON brtn.LBR_TaxName_ID = t.LBR_TaxName_ID ")
		   .append("WHERE brtn.HasWithhold = 'Y' AND d.C_BPartner_ID = ? ")
		   .append("AND TRUNC(d.DateAcct,'MM') = TRUNC(TO_DATE(?, 'YYYY-MM-DD HH24:MI:SS GMT'),'MM') ")
		   .append("AND (d.DocStatus = 'CO' OR d.");
		
		if (isOrder)
			sql.append(I_C_Order.Table_Name);
		else
			sql.append(I_C_Invoice.Table_Name);
		
		sql.append("_ID = ?) AND d.IsSOTrx = ? ");
		sql.append("GROUP BY brtn.LBR_TaxName_ID, brtn.WithHoldThreshold");


		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = DB.prepareStatement (sql.toString(), trx);
			pstmt.setInt(1, (Integer)document.get_Value("C_BPartner_ID"));
			pstmt.setTimestamp(2, (Timestamp)document.get_Value("DateAcct"));
			pstmt.setInt(3, document.get_ID());
			pstmt.setString(4, IsSOTrx ? "Y" : "N");
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
		
		boolean IsSOTrx = POLBR.get_ValueAsBoolean(document.get_Value("IsSOTrx"));
		
		StringBuffer sql = new StringBuffer();
	
		//Verificar se já houve alguma retenção para o cliente no mês
		sql.append("SELECT DISTINCT tl.LBR_TaxLine_ID ");
		
		if (isOrder){
			sql.append("FROM ").append(I_C_Order.Table_Name).append(" d ");
			sql.append("INNER JOIN ").append(I_C_OrderLine.Table_Name).append(" dl ");
			sql.append("ON d.C_Order_ID = dl.C_Order_ID ");
		}
		else{
			sql.append("FROM ").append(I_C_Invoice.Table_Name).append(" d ");
			sql.append("INNER JOIN ").append(I_C_InvoiceLine.Table_Name).append(" dl ");
			sql.append("ON d.C_Invoice_ID = dl.C_Invoice_ID ");
		}
		
		sql.append("INNER JOIN LBR_TaxLine tl ON tl.LBR_Tax_ID = dl.LBR_Tax_ID ")
		   .append("INNER JOIN LBR_TaxName brtn ON brtn.LBR_TaxName_ID = tl.LBR_TaxName_ID ")
		   .append("WHERE brtn.HasWithhold = 'Y' AND d.C_BPartner_ID = ? ")
		   .append("AND TRUNC(d.DateAcct,'MM') = TRUNC(TO_DATE(?, 'YYYY-MM-DD HH24:MI:SS GMT'),'MM') ")
		   .append("AND d.DocStatus = 'CO' ");
		
		if (isOrder){
			sql.append("AND (d.LBR_Withhold_Order_ID IS NULL OR d.LBR_Withhold_Order_ID = ?)");
			sql.append("AND d.").append(I_C_Order.Table_Name).append("_ID <> ? ");
		}
		else{
			sql.append("AND (d.LBR_Withhold_Invoice_ID IS NULL OR d.LBR_Withhold_Invoice_ID = ?)");
			sql.append("AND d.").append(I_C_Invoice.Table_Name).append("_ID <> ? ");
		}
		
		sql.append("AND d.IsSOTrx = ? AND brtn.LBR_TaxName_ID = ? ");


		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = DB.prepareStatement (sql.toString(), trx);
			pstmt.setInt(1, (Integer)document.get_Value("C_BPartner_ID"));
			pstmt.setTimestamp(2, (Timestamp)document.get_Value("DateAcct"));
			pstmt.setInt(3, document.get_ID());
			pstmt.setInt(4, document.get_ID());
			pstmt.setString(5, IsSOTrx ? "Y" : "N");
			pstmt.setInt(6, LBR_TaxName_ID);
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
		for (int i=0;i<lines.length;i++){
		
			X_LBR_TaxName tax = new X_LBR_TaxName(getCtx(),lines[i].getLBR_TaxName_ID(),null);
			String name = tax.getName().trim();
			String rate = String.format("%,.2f", lines[i].getlbr_TaxRate());
			Description += ", " + name + "-" + rate;
		}
		
		if (Description.startsWith(", ")) Description = Description.substring(2);
		if (Description.equals("")) Description = null;
		
		setDescription(Description);
	}
	
	/**************************************************************************
	 *  copyFrom
	 *  @return MTax newTax
	 */
	public MTax copyFrom(){
		
		MTax newTax = new MTax(getCtx(),0,get_TrxName());
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
	} //copyFrom
	
	/**************************************************************************
	 *  getTaxAmt
	 *  @return BigDecimal TaxAmt
	 */
	public static BigDecimal getTaxAmt(int LBR_Tax_ID,String trx){
		
		String sql = "SELECT lbr_TaxAmt " +
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
				BigDecimal amt = rs.getBigDecimal(1);
				if (amt != null){
					amt = amt.setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP);
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

		return taxAmt.setScale(TaxBR.scale, BigDecimal.ROUND_HALF_UP);
	} //getTaxAmt
	
	/**************************************************************************
	 *  getLines
	 *  @return X_LBR_TaxLine[] lines
	 */
	public X_LBR_TaxLine[] getLines(){
		
		String sql = "SELECT LBR_TaxLine_ID " +
				     "FROM LBR_TaxLine " +
				     "WHERE LBR_Tax_ID = ?";

		ArrayList<X_LBR_TaxLine> list = new ArrayList<X_LBR_TaxLine>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, get_TrxName());
			pstmt.setInt(1, getLBR_Tax_ID());
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				X_LBR_TaxLine line = new X_LBR_TaxLine(getCtx(),rs.getInt(1),get_TrxName());
				list.add (line);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}

		X_LBR_TaxLine[] retValue = new X_LBR_TaxLine[list.size()];
		list.toArray(retValue);
		return retValue;
	} //getLines
	
	/**************************************************************************
	 *  getLine
	 *  @return Integer LBR_TaxLine_ID
	 */
	public static int getLine(Integer LBR_Tax_ID, int LBR_TaxName_ID, String trx){
		
		if (LBR_Tax_ID == null)
			LBR_Tax_ID = -1;
		
		String sql = "SELECT LBR_TaxLine_ID " +
				     "FROM LBR_TaxLine " +
				     "WHERE LBR_Tax_ID = ? " +
				     "AND LBR_TaxName_ID = ?";

		Integer LBR_TaxLine_ID = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt(1, LBR_Tax_ID);
			pstmt.setInt(2, LBR_TaxName_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				LBR_TaxLine_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}

		if (LBR_TaxLine_ID == null) LBR_TaxLine_ID = 0;
			
		return LBR_TaxLine_ID.intValue();
	} //getLine
	
	/**************************************************************************
	 *  getC_Tax_ID
	 *  @return Integer C_Tax_ID
	 */
	public static int getC_Tax_ID(int Parent_Tax_ID, int LBR_TaxName_ID, String trx){

		Integer C_Tax_ID = null;
		
		String sql = "SELECT C_Tax_ID " +
				     "FROM C_Tax " +
				     "WHERE Parent_Tax_ID = ? " +
				     "AND LBR_TaxName_ID = ?";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt(1, Parent_Tax_ID);
			pstmt.setInt(2, LBR_TaxName_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				C_Tax_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}

		if (C_Tax_ID == null) C_Tax_ID = 0;
			
		return C_Tax_ID.intValue();
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
		
		Integer LBR_TaxConfiguration_ID = null;
		
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
		
		if (ExceptionType.equals("P"))
			sql.append(" AND M_Product_ID = ").append(ID);
		else if (ExceptionType.equals("G"))
			sql.append(" AND LBR_FiscalGroup_Product_ID = ").append(ID); 
		else
			sql.append(" AND M_Product_ID is null AND LBR_FiscalGroup_Product_ID is null");
			
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql.toString(), null);
			pstmt.setInt(1, Env.getAD_Client_ID(ctx));
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				LBR_TaxConfiguration_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = 0;
		
		return LBR_TaxConfiguration_ID.intValue();
		
	} //getLBR_TaxConfiguration_ID
	
	public static int getLBR_TaxConfig_BPartner(Integer LBR_TaxConfiguration_ID, Integer C_BPartner_ID){
		
		Integer LBR_Tax_ID = null;
		
		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;
		if (C_BPartner_ID == null) C_BPartner_ID = -1;
		
		String sql = "SELECT LBR_Tax_ID " +
				     "FROM LBR_TaxConfig_BPartner " +
				     "WHERE LBR_TaxConfiguration_ID = ? " +
				     "AND C_BPartner_ID = ?"; 
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, LBR_TaxConfiguration_ID);
			pstmt.setInt(2, C_BPartner_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				LBR_Tax_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		if (LBR_Tax_ID == null) LBR_Tax_ID = 0;
		
		return LBR_Tax_ID.intValue();
		
	} //getLBR_TaxConfig_BPartner
	
	public static X_LBR_TaxConfig_BPartner getX_LBR_TaxConfig_BPartner(Integer LBR_TaxConfiguration_ID, Integer C_BPartner_ID){

		Integer LBR_Tax_ID = null;
		
		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;
		if (C_BPartner_ID == null) C_BPartner_ID = -1;
		
		String sql = "SELECT LBR_TaxConfig_BPartner_ID " +
				     "FROM LBR_TaxConfig_BPartner " +
				     "WHERE LBR_TaxConfiguration_ID = ? " +
				     "AND C_BPartner_ID = ?"; 
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, LBR_TaxConfiguration_ID);
			pstmt.setInt(2, C_BPartner_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				LBR_Tax_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		if (LBR_Tax_ID == null) return null;
		
		return new X_LBR_TaxConfig_BPartner(Env.getCtx(),LBR_Tax_ID,null);
		
	} //getX_LBR_TaxConfig_BPartner
	
	public static int getLBR_TaxConfig_BPGroup(Integer LBR_TaxConfiguration_ID, Integer LBR_FiscalGroup_BPartner_ID){
		
		Integer LBR_Tax_ID = null;
		
		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;
		if (LBR_FiscalGroup_BPartner_ID == null) LBR_FiscalGroup_BPartner_ID = -1;
		
		String sql = "SELECT LBR_Tax_ID " +
				     "FROM LBR_TaxConfig_BPGroup " +
				     "WHERE LBR_TaxConfiguration_ID = ? " +
				     "AND LBR_FiscalGroup_BPartner_ID = ?"; 
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, LBR_TaxConfiguration_ID);
			pstmt.setInt(2, LBR_FiscalGroup_BPartner_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				LBR_Tax_ID = rs.getInt(1);
			}
			rs.close ();
			pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		if (LBR_Tax_ID == null) LBR_Tax_ID = 0;
		
		return LBR_Tax_ID.intValue();
		
	} //getLBR_TaxConfig_BPGroup
	
	public static X_LBR_TaxConfig_BPGroup getX_LBR_TaxConfig_BPGroup(Integer LBR_TaxConfiguration_ID, Integer LBR_FiscalGroup_BPartner_ID){
		
		Integer LBR_Tax_ID = null;
		
		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;
		if (LBR_FiscalGroup_BPartner_ID == null) LBR_FiscalGroup_BPartner_ID = -1;
		
		String sql = "SELECT LBR_TaxConfig_BPGroup_ID " +
				     "FROM LBR_TaxConfig_BPGroup " +
				     "WHERE LBR_TaxConfiguration_ID = ? " +
				     "AND LBR_FiscalGroup_BPartner_ID = ?"; 
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, LBR_TaxConfiguration_ID);
			pstmt.setInt(2, LBR_FiscalGroup_BPartner_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				LBR_Tax_ID = rs.getInt(1);
			}
			rs.close ();
			pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		if (LBR_Tax_ID == null) return null;
		
		return new X_LBR_TaxConfig_BPGroup(Env.getCtx(),LBR_Tax_ID,null);
		
	} //getX_LBR_TaxConfig_BPGroup
	
	public static int getLBR_TaxConfig_Product(Integer LBR_TaxConfiguration_ID){
		
		Integer LBR_Tax_ID = null;
		
		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;
		
		String sql = "SELECT LBR_Tax_ID " +
				     "FROM LBR_TaxConfig_Product " +
				     "WHERE LBR_TaxConfiguration_ID = ?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, LBR_TaxConfiguration_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				LBR_Tax_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		if (LBR_Tax_ID == null) LBR_Tax_ID = 0;
		
		return LBR_Tax_ID.intValue();
		
	} //getLBR_TaxConfig_Product
	
	public static X_LBR_TaxConfig_Product getX_LBR_TaxConfig_Product(Integer LBR_TaxConfiguration_ID){
		
		Integer LBR_Tax_ID = null;
		
		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;
		
		String sql = "SELECT LBR_TaxConfig_Product_ID " +
				     "FROM LBR_TaxConfig_Product " +
				     "WHERE LBR_TaxConfiguration_ID = ?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, LBR_TaxConfiguration_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				LBR_Tax_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		if (LBR_Tax_ID == null) return null;
		
		return new X_LBR_TaxConfig_Product(Env.getCtx(),LBR_Tax_ID,null);
		
	} //getX_LBR_TaxConfig_Product
	
	public static int getLBR_TaxConfig_ProductGroup(Integer LBR_TaxConfiguration_ID){
		
		Integer LBR_Tax_ID = null;
		
		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;
		
		String sql = "SELECT LBR_Tax_ID " +
				     "FROM LBR_TaxConfig_ProductGroup " +
				     "WHERE LBR_TaxConfiguration_ID = ?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, LBR_TaxConfiguration_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				LBR_Tax_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		if (LBR_Tax_ID == null) LBR_Tax_ID = 0;
		
		return LBR_Tax_ID.intValue();
		
	} //getLBR_TaxConfig_ProductGroup
	
	public static X_LBR_TaxConfig_ProductGroup getX_LBR_TaxConfig_ProductGroup(Integer LBR_TaxConfiguration_ID){
		
		Integer LBR_Tax_ID = null;
		
		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;
		
		String sql = "SELECT LBR_TaxConfig_ProductGroup_ID " +
				     "FROM LBR_TaxConfig_ProductGroup " +
				     "WHERE LBR_TaxConfiguration_ID = ?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, LBR_TaxConfiguration_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				LBR_Tax_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		if (LBR_Tax_ID == null) return null;
		
		return new X_LBR_TaxConfig_ProductGroup(Env.getCtx(),LBR_Tax_ID,null);
		
	} //getX_LBR_TaxConfig_ProductGroup
	
	public static int getLBR_TaxConfig_Region(Integer LBR_TaxConfiguration_ID, Integer C_Region_ID, Integer To_Region_ID){
		
		Integer LBR_Tax_ID = null;
		
		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;
		if (C_Region_ID == null) C_Region_ID = -1;
		if (To_Region_ID == null) To_Region_ID = -1;
		
		String sql = "SELECT LBR_Tax_ID " +
				     "FROM LBR_TaxConfig_Region " +
				     "WHERE LBR_TaxConfiguration_ID = ? " +
				     "AND C_Region_ID = ? " +
				     "AND To_Region_ID = ?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, LBR_TaxConfiguration_ID);
			pstmt.setInt(2, C_Region_ID);
			pstmt.setInt(3, To_Region_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				LBR_Tax_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		if (LBR_Tax_ID == null) LBR_Tax_ID = 0;
		
		return LBR_Tax_ID.intValue();
		
	} //getLBR_TaxConfig_Region
	
	public static X_LBR_TaxConfig_Region getX_LBR_TaxConfig_Region(Integer LBR_TaxConfiguration_ID, Integer C_Region_ID, Integer To_Region_ID){
		
		Integer LBR_Tax_ID = null;
		
		if (LBR_TaxConfiguration_ID == null) LBR_TaxConfiguration_ID = -1;
		if (C_Region_ID == null) C_Region_ID = -1;
		if (To_Region_ID == null) To_Region_ID = -1;
		
		String sql = "SELECT LBR_TaxConfig_Region_ID " +
				     "FROM LBR_TaxConfig_Region " +
				     "WHERE LBR_TaxConfiguration_ID = ? " +
				     "AND C_Region_ID = ? " +
				     "AND To_Region_ID = ?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt(1, LBR_TaxConfiguration_ID);
			pstmt.setInt(2, C_Region_ID);
			pstmt.setInt(3, To_Region_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				LBR_Tax_ID = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		if (LBR_Tax_ID == null) return null;
		
		return new X_LBR_TaxConfig_Region(Env.getCtx(),LBR_Tax_ID,null);
		
	} //getX_LBR_TaxConfig_Region
		
} //MTax