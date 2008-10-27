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
package org.adempierelbr.process;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.model.MDocPrint;
import org.adempierelbr.model.MDocPrintForm;
import org.adempierelbr.model.MNotaFiscal;
import org.compiere.model.X_LBR_MatrixPrinter;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;

/**
 *	ProcPrintNF
 *
 *	Process to Print Nota Fiscal
 *	
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *  @contributor Fernando Lucktemberg (Faire Consultoria, www.faire.com.br)
 *	@version $Id: ProcPrintNF.java, 22/01/2008 13:38:00 mgrigioni
 */
public class ProcPrintNF extends SvrProcess
{
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ProcPrintNF.class);
	
	/**	Impressora Matricial	        */
	private int p_LBR_MatrixPrinter_ID = 0;
	/**	Tipo de Document (Impressão)	*/
	private int p_LBR_DocPrint_ID      = 0;
	/** Nota Fiscal                     */
	private int p_LBR_NotaFiscal_ID    = 0;
	/** Nota Fiscal Final               */
	private int p_LBR_NotaFiscal_ID_to = 0;
	
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals("LBR_MatrixPrinter_ID"))
				p_LBR_MatrixPrinter_ID = para[i].getParameterAsInt();
			else if (name.equals("LBR_DocPrint_ID"))
				p_LBR_DocPrint_ID = para[i].getParameterAsInt();
			else if (name.equals("LBR_NotaFiscal_ID"))
				p_LBR_NotaFiscal_ID = para[i].getParameterAsInt();
			else if (name.equals("LBR_NotaFiscal_ID_to"))
				p_LBR_NotaFiscal_ID_to = para[i].getParameterAsInt();
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message
	 *  @throws Exception if not successful
	 */
	protected String doIt() throws Exception
	{
		log.info("ProcPrintNF Process " + "Nota: " + p_LBR_NotaFiscal_ID);
				
		if (p_LBR_NotaFiscal_ID == 0)
			throw new IllegalArgumentException("Nota == 0");
		
		if (p_LBR_NotaFiscal_ID_to == 0)
			p_LBR_NotaFiscal_ID_to = p_LBR_NotaFiscal_ID;
		
		if (p_LBR_NotaFiscal_ID_to < p_LBR_NotaFiscal_ID)
			throw new IllegalArgumentException("Intervalo Inválido");
		
		int i = 0;
		
		X_LBR_MatrixPrinter MatrixPrinter = new X_LBR_MatrixPrinter(getCtx(),p_LBR_MatrixPrinter_ID,null);
		
		String PrinterType  = MatrixPrinter.getlbr_PrinterType();
		String PrinterName  = MatrixPrinter.getlbr_PrinterPath(); 
	    String charSet      = MatrixPrinter.getlbr_Characterset();
	    int pitch           = MatrixPrinter.getlbr_Pitch(); 
	    boolean condensed   = MatrixPrinter.islbr_IsCondensed();
		
		MDocPrint DoctypePrint = new MDocPrint(getCtx(),p_LBR_DocPrint_ID,null);
	    DoctypePrint.startJob(PrinterType, PrinterName, charSet, condensed, pitch);
		if (i != 0)
			DoctypePrint.newPage();
		
		for (i = p_LBR_NotaFiscal_ID;i<=p_LBR_NotaFiscal_ID_to;i++){
			
			MNotaFiscal NotaFiscal = new MNotaFiscal(getCtx(),i,get_TrxName());
			
			if (!NotaFiscal.isPrinted() && !NotaFiscal.isCancelled()){
				print(getCtx(), i, MatrixPrinter, DoctypePrint,null);
			}
			
			NotaFiscal.setIsPrinted(true);
			NotaFiscal.setProcessed(true);
			NotaFiscal.save(get_TrxName());
	
		}
		
		DoctypePrint.endJob();
		
		MDocPrint.unixPrint(MatrixPrinter);
			    
		return "ProcPrintNF Process Completed " + "Nota: " + p_LBR_NotaFiscal_ID;
		
	}	//	doIt
	
	public static void print(Properties ctx, int LBR_NotaFiscal_ID, X_LBR_MatrixPrinter MatrixPrinter, MDocPrint DoctypePrint, String Trx){
		
		boolean lastpage    = true;
	    
		String sql = "SELECT count(*) " +
				     "FROM lbr_notafiscalline " +
				     "WHERE lbr_notafiscal_id = ?";
		int itens = 0;
		int noRows = 0;

		PreparedStatement pstmt = DB.prepareStatement(sql, Trx);
		try {

			pstmt.setInt(1, LBR_NotaFiscal_ID);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			itens = rs.getInt(1);
			pstmt.close();
			pstmt = null;
			rs.close();
			rs = null;
			sql = "SELECT lbr_norows FROM lbr_docprint WHERE lbr_docprint_id in " +
				  "(SELECT lbr_subdoc_id FROM lbr_docprint WHERE lbr_docprint_id = ?)";

			pstmt = DB.prepareStatement(sql, Trx);
			pstmt.setInt(1, DoctypePrint.getLBR_DocPrint_ID());
			rs = pstmt.executeQuery();
			rs.next();
			
			noRows = rs.getInt(1);
			pstmt.close();
			pstmt = null;
			rs.close();
			rs = null;			

		} catch (Exception e) {
			log.log(Level.SEVERE,"",e);
		}

		BigDecimal noPages = new BigDecimal(itens).divide(new BigDecimal(noRows), RoundingMode.UP);
		MDocPrintForm form;

		for(int i = 0; i < noPages.intValue(); i++){
			
			if (noPages.intValue() == (i+1)){
				lastpage = true;
			}
			else{
				lastpage = false;
			}

			form = new MDocPrintForm();
		    String subdocsql = "";	
		    sql = "SELECT * " +
	  	          "FROM Z_NotaFiscal_V " +
	  	          "WHERE LBR_NotaFiscal_ID = " + LBR_NotaFiscal_ID;

		    form.setFields(DoctypePrint, sql,false, new String((i+1) + "/" + noPages.intValue()),lastpage);
		    boolean hasSubDoc = DoctypePrint.islbr_HasSubDoc();

		    if (hasSubDoc){

		    	/**
		    	 * Produto
		    	 */

		    	if (DoctypePrint.getlbr_SubDoc_ID() != 0){

		    		MDocPrint SubDocPrint = new MDocPrint(ctx, DoctypePrint.getlbr_SubDoc_ID(),Trx);
		    		subdocsql = "SELECT * " +
	  	                        "FROM Z_NotaFiscalLine_V " +
	  		                    "WHERE LBR_NotaFiscal_ID = " + LBR_NotaFiscal_ID +
	  		                    " AND lbr_IsService = 'N' AND (line BETWEEN " + ((noRows * i) + 1) + 
	                            " AND " + (noRows * (i+1)) +") ORDER BY Line";

		    		form.setFields(SubDocPrint, subdocsql, hasSubDoc);

		    	}

		    	/**
		    	 * Serviço
		    	 */
		    	if (DoctypePrint.getlbr_SubDoc2_ID() != 0){

		    		MDocPrint SubDocPrint = new MDocPrint(ctx, DoctypePrint.getlbr_SubDoc2_ID(),Trx);
		    		subdocsql = "SELECT * " +
	                            "FROM Z_NotaFiscalLine_V " +
	                            "WHERE LBR_NotaFiscal_ID = " + LBR_NotaFiscal_ID +
	                            " AND lbr_IsService = 'Y' AND (line BETWEEN " + ((noRows * i) + 1) + 
	                            " AND " + (noRows * (i+1)) +") ORDER BY Line";

		    		form.setFields(SubDocPrint, subdocsql, hasSubDoc);

		    	}

		    }

		    DoctypePrint.addPage(form.getFields());
		    if(i + 1 < noPages.intValue()){
		    	DoctypePrint.newPage();
		    }

		}
    
	}
	
	/**************************************************************************
	 *  Get DefaultPrinter
	 *  @return int LBR_MatrixPrinter_ID
	 */
	public static int getDefaultPrinter(){
		
		CLogger	log = CLogger.getCLogger(ProcPrintNF.class);
		
		Integer LBR_MatrixPrinter_ID = null;
		String sql = "SELECT LBR_MatrixPrinter_ID " +
				     "FROM LBR_MatrixPrinter " +
				     "WHERE IsDefault = 'Y' order by LBR_MatrixPrinter_ID";
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement(sql,null);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next())
			{
				LBR_MatrixPrinter_ID = rs.getInt(1);
			}
			rs.close();
			pstmt.close();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally
		{
			try
			{
				if (pstmt != null)
					pstmt.close ();
			}
			catch (Exception e)
			{}
			pstmt = null;
		}
		
		if (LBR_MatrixPrinter_ID == null) LBR_MatrixPrinter_ID = 0;
		
		return LBR_MatrixPrinter_ID.intValue();
		
	}
	
}	//	ProcPrintNF