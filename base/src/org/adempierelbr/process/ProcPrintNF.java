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

import java.io.IOException;
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
 *	@version $Id: ProcPrintNF.java, 22/01/2008 13:38:00 mgrigioni
 */
public class ProcPrintNF extends SvrProcess
{
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
		
		for (i = p_LBR_NotaFiscal_ID;i<=p_LBR_NotaFiscal_ID_to;i++){
			
			MNotaFiscal NotaFiscal = new MNotaFiscal(getCtx(),i,get_TrxName());
			if (!NotaFiscal.isPrinted() && !NotaFiscal.isCancelled()){
				print(getCtx(),p_LBR_MatrixPrinter_ID,p_LBR_DocPrint_ID,i,null);
			}
			
			NotaFiscal.setIsPrinted(true);
			NotaFiscal.save(get_TrxName());
	
		}
			    
		return "ProcPrintNF Process Completed " + "Nota: " + p_LBR_NotaFiscal_ID;
		
	}	//	doIt
	
	public static void print(Properties ctx, int LBR_MatrixPrinter_ID, int LBR_DocPrint_ID, int LBR_NotaFiscal_ID, String Trx){
		
		X_LBR_MatrixPrinter MatrixPrinter = new X_LBR_MatrixPrinter(ctx,LBR_MatrixPrinter_ID,Trx);
		
		String PrinterType  = MatrixPrinter.getlbr_PrinterType();
		String PrinterName  = MatrixPrinter.getlbr_PrinterPath(); 
	    String charSet      = MatrixPrinter.getlbr_Characterset();
	    int pitch           = MatrixPrinter.getlbr_Pitch(); 
	    boolean condensed   = MatrixPrinter.islbr_IsCondensed();
	    
	    String sql       = "";
	    String subdocsql = "";
	    
		MDocPrintForm form = new MDocPrintForm();
		MDocPrint DoctypePrint = new MDocPrint(ctx,LBR_DocPrint_ID,Trx);
	    	
	    sql = "SELECT * " +
  	          "FROM LBR_NotaFiscal " +
  	          "WHERE LBR_NotaFiscal_ID = " + LBR_NotaFiscal_ID;
  
	    form.setFields(DoctypePrint, sql,false);
  
	    boolean hasSubDoc = DoctypePrint.islbr_HasSubDoc();
  
	    if (hasSubDoc){
	    	/**
	    	 * Produto
	    	 */
	    	if (DoctypePrint.getlbr_SubDoc_ID() != 0){
	    		MDocPrint SubDocPrint = new MDocPrint(ctx, DoctypePrint.getlbr_SubDoc_ID(),Trx);
	    		subdocsql = "SELECT * " +
  	                        "FROM Z_NotaFiscalLine " +
  		                    "WHERE LBR_NotaFiscal_ID = " + LBR_NotaFiscal_ID +
  		                    "AND lbr_IsService = 'N' ORDER BY Line";
	    		form.setFields(SubDocPrint, subdocsql, hasSubDoc);
	    	}
	    	/**
	    	 * Serviço
	    	 */
	    	if (DoctypePrint.getlbr_SubDoc2_ID() != 0){
	    		MDocPrint SubDocPrint = new MDocPrint(ctx, DoctypePrint.getlbr_SubDoc2_ID(),Trx);
	    		subdocsql = "SELECT * " +
                            "FROM Z_NotaFiscalLine " +
                            "WHERE LBR_NotaFiscal_ID = " + LBR_NotaFiscal_ID +
                            "AND lbr_IsService = 'Y' ORDER BY Line";
	    		form.setFields(SubDocPrint, subdocsql, hasSubDoc);
	    	}
	    }
	    	
	    DoctypePrint.print(PrinterType, PrinterName, charSet, condensed, pitch, form.getFields());
	    
	    if (MatrixPrinter.islbr_IsUnixPrinter()){
	    
	    	String impressora = MatrixPrinter.getlbr_UnixPrinterName();
	    	String arquivo    = MatrixPrinter.getlbr_PrinterPath();
	    
	    	try {
	    		Runtime.getRuntime().exec(new String[] { "lpr", "-P", impressora , arquivo });
	    	} catch (IOException e) {
	    		e.printStackTrace();
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