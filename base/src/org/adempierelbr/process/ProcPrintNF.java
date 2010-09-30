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

import org.adempierelbr.model.MLBRDocPrint;
import org.adempierelbr.model.MLBRDocPrintForm;
import org.adempierelbr.model.MLBRMatrixPrinter;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

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
		
		MLBRMatrixPrinter MatrixPrinter = new MLBRMatrixPrinter(getCtx(),p_LBR_MatrixPrinter_ID,null);
		
		String PrinterType  = MatrixPrinter.getlbr_PrinterType();
		String PrinterName  = MatrixPrinter.getlbr_PrinterPath(); 
	    String charSet      = MatrixPrinter.getlbr_Characterset();
	    int pitch           = MatrixPrinter.getlbr_Pitch(); 
	    boolean condensed   = MatrixPrinter.islbr_IsCondensed();
		
		MLBRDocPrint DoctypePrint = new MLBRDocPrint(getCtx(),p_LBR_DocPrint_ID,null);
	    DoctypePrint.startJob(PrinterType, PrinterName, charSet, condensed, pitch);
		if (i != 0)
			DoctypePrint.newPage();
		
		for (i = p_LBR_NotaFiscal_ID;i<=p_LBR_NotaFiscal_ID_to;i++){
			
			MLBRNotaFiscal NotaFiscal = new MLBRNotaFiscal(getCtx(),i,get_TrxName());
			
			if (!NotaFiscal.isPrinted() && !NotaFiscal.isCancelled()){
				print(getCtx(), i, MatrixPrinter, DoctypePrint,null);
			}
			
			NotaFiscal.setIsPrinted(true);
			NotaFiscal.setProcessed(true);
			NotaFiscal.save(get_TrxName());
	
		}
		
		DoctypePrint.endJob();
		
		MLBRDocPrint.unixPrint(MatrixPrinter);
			    
		return "ProcPrintNF Process Completed " + "Nota: " + p_LBR_NotaFiscal_ID;
		
	}	//	doIt
	
	public static void print(Properties ctx, int LBR_NotaFiscal_ID, MLBRMatrixPrinter MatrixPrinter, MLBRDocPrint DoctypePrint, String Trx){
		
		int noItens        = 0;
		int noRows         = 500;
		
		boolean lastpage   = true;

	    BigDecimal noPages = Env.ONE;
	    
	    MLBRDocPrint SubDoc1  = null;
	    MLBRDocPrint SubDoc2  = null;
		
	    noItens = getNoItens(LBR_NotaFiscal_ID,Trx);
		
		//checkSubDocuments
		int LBR_SubDoc_ID = DoctypePrint.getlbr_SubDoc_ID(); //Produtos
		int LBR_SubDoc2_ID = DoctypePrint.getlbr_SubDoc2_ID(); //Serviços
		
		if (LBR_SubDoc_ID != 0){
			SubDoc1 = new MLBRDocPrint(ctx,LBR_SubDoc_ID,Trx);
			noRows  = SubDoc1.getlbr_NoRows();
			if (noRows == 0) noRows = 500;
			noPages = new BigDecimal(noItens).divide(new BigDecimal(noRows), RoundingMode.UP);
		}
		
		if (LBR_SubDoc2_ID != 0){
			SubDoc2 = new MLBRDocPrint(ctx,LBR_SubDoc2_ID,Trx);
		}
		
		MLBRDocPrintForm form;

		for(int i = 0; i < noPages.intValue(); i++){
			
			if (noPages.intValue() == (i+1)){
				lastpage = true;
			}
			else{
				lastpage = false;
			}

			form = new MLBRDocPrintForm();
		    StringBuffer subdocsql = null;	
		    StringBuffer sql = new StringBuffer();
		    sql.append("SELECT * FROM ");
	  	    sql.append(DoctypePrint.getlbr_TableName());
	  	    sql.append(" WHERE LBR_NotaFiscal_ID = " + LBR_NotaFiscal_ID);

		    form.setFields(DoctypePrint, sql.toString(), false, new String((i+1) + "/" + noPages.intValue()),lastpage);
		    boolean hasSubDoc = DoctypePrint.islbr_HasSubDoc();

		    if (hasSubDoc){

		    	/**
		    	 * Produto
		    	 */

		    	if (LBR_SubDoc_ID != 0){

		    		MLBRDocPrint SubDocPrint = new MLBRDocPrint(ctx, DoctypePrint.getlbr_SubDoc_ID(),Trx);
		    		subdocsql = new StringBuffer();
		    		subdocsql.append("SELECT * FROM ");
		    		subdocsql.append(SubDoc1.getlbr_TableName());
	  		        subdocsql.append(" WHERE LBR_NotaFiscal_ID = " + LBR_NotaFiscal_ID);
	  		        subdocsql.append(" AND lbr_IsService = 'N' AND (line BETWEEN ");
	  		        subdocsql.append(((noRows * i) + 1)); 
	                subdocsql.append(" AND " + (noRows * (i+1)) +") ORDER BY Line");

		    		form.setFields(SubDocPrint, subdocsql.toString(), hasSubDoc);

		    	}

		    	/**
		    	 * Serviço
		    	 */
		    	if (LBR_SubDoc2_ID != 0){

		    		MLBRDocPrint SubDocPrint = new MLBRDocPrint(ctx, DoctypePrint.getlbr_SubDoc2_ID(),Trx);
		    		subdocsql = new StringBuffer();
		    		subdocsql.append("SELECT * FROM ");
	                subdocsql.append(SubDoc2.getlbr_TableName());
	                subdocsql.append(" WHERE LBR_NotaFiscal_ID = " + LBR_NotaFiscal_ID);
	                subdocsql.append(" AND lbr_IsService = 'Y' ORDER BY Line");

		    		form.setFields(SubDocPrint, subdocsql.toString(), hasSubDoc);

		    	}

		    }

		    DoctypePrint.addPage(form.getFields());
		    if(i + 1 < noPages.intValue()){
		    	DoctypePrint.newPage();
		    }

		}
    
	}
	
	private static int getNoItens(int LBR_NotaFiscal_ID, String Trx){
		
		int noItens = 0;
		
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT count(*) ");
		sql.append("FROM lbr_notafiscalline ");
		sql.append("WHERE lbr_notafiscal_id = ?");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			
			pstmt = DB.prepareStatement(sql.toString(), Trx);
			pstmt.setInt(1, LBR_NotaFiscal_ID);
			rs = pstmt.executeQuery();
			if (rs.next()){
				noItens = rs.getInt(1);
			}
		} catch (Exception e) {
			log.log(Level.SEVERE,"",e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		return noItens;
	} //getNoItens
			
}	//	ProcPrintNF