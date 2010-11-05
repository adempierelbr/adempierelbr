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

import java.sql.ResultSet;
import java.util.Properties;

import org.compiere.model.MOrgInfo;
import org.compiere.model.MSysConfig;
import org.compiere.util.Env;

import com.java4less.textprinter.JobProperties;
import com.java4less.textprinter.PrinterFactory;
import com.java4less.textprinter.TextPrinter;
import com.java4less.textprinter.TextPrinterException;
import com.java4less.textprinter.TextProperties;
import com.java4less.textprinter.ports.FilePort;

/**
 *	MDocPrint
 *
 *	Model for X_LBR_DocPrint
 *
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@contributor Fernando Lucktemberg (Faire Consultoria, www.faire.com.br)
 *	@version $Id: MDocPrint.java, 12/11/2007 13:38:00 mgrigioni
 */
public class MLBRDocPrint extends X_LBR_DocPrint {

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

    private FilePort port;
    private TextPrinter printer;
    JobProperties job;
    TextProperties prop;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRDocPrint(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRDocPrint (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}

	public static int getLBR_DocPrint_ID(Properties ctx){

		MOrgInfo orgInfo = MOrgInfo.get(ctx, Env.getAD_Org_ID(ctx), null);
		Integer LBR_DocPrint_ID = (Integer)orgInfo.get_Value("LBR_DocPrint_ID");
		if (LBR_DocPrint_ID == null){
			LBR_DocPrint_ID = 0;
		}

		return LBR_DocPrint_ID.intValue();

	} // getLBR_DocPrint_ID

	public void startJob(String PrinterType, String PrinterName,
			String charSet, boolean condensed, int pitch){

		printer = PrinterFactory.getPrinter(PrinterType); // tipo da impressora
		port = new FilePort(PrinterName); // localização da impressora
		job = printer.getDefaultJobProperties();
		job.cols = getlbr_NoCols(); // colunas na folha
		job.rows = getlbr_NoRows(); // linhas na folha

		try {

			printer.startJob(port, job);
			prop = printer.getDefaultTextProperties();

			if (!(charSet == null || charSet.equals("")))
				prop.characterSet = charSet;

			prop.condensed = condensed;
			prop.pitch = pitch;

		} catch (TextPrinterException ex) {
			ex.printStackTrace();
		}
	} //startJob

	public static void unixPrint(MLBRMatrixPrinter MatrixPrinter){

	    if (MatrixPrinter.islbr_IsUnixPrinter()){

	    	String impressora = MatrixPrinter.getlbr_UnixPrinterName();
	    	String arquivo    = MatrixPrinter.getlbr_PrinterPath();

	    	try {
	    		Runtime.getRuntime().exec(new String[] { "lpr", "-P", impressora , arquivo });
	    	} catch (Exception e) {
	    		e.printStackTrace();
	    	}
	    }

	} //unixPrint

	/***************************************************************************
	 * Public Print
	 */
	public void addPage(MLBRDocPrintFormField[] fields){

		//COMANDOS ESCP - linespacing = 1/8
		if (enableLineSpacing()){
			String ESCP = "C60";
			printer.printString(ESCP,0,0,prop);
		}

	    int lenght = fields.length;

	    for (int i=0;i<lenght;i++){
	    	printer.printString(fields[i].getValue(), fields[i].getLocationY(), fields[i].getLocationX(), prop);
		}
	} //addPage

	public void endJob(){
		try {
			printer.endJob(); //Finish Job
		}
		catch (TextPrinterException ex) {
			ex.printStackTrace();
		}
	} //endJob

	public void newPage(){

		try {
			printer.newPage();
		}
		catch (TextPrinterException ex) {
			ex.printStackTrace();
		}
	} //newPage

	private boolean enableLineSpacing(){
		return MSysConfig.getBooleanValue("LBR_ENABLE_LINESPACING_COMMAND", false);
	} //enableLineSpacing

	@Deprecated
	public void print(String PrinterType, String PrinterName,
	          String charSet, boolean condensed,
	          int pitch,MLBRDocPrintFormField[] fields){

		TextPrinter printer = PrinterFactory.getPrinter(PrinterType); // tipo da impressora
		FilePort port = new FilePort(PrinterName); // localização da impressora
		JobProperties job = printer.getDefaultJobProperties();
		job.cols = getlbr_NoCols(); // colunas na folha
		job.rows = getlbr_NoRows(); // linhas na folha

		try {
			printer.startJob(port, job);

			TextProperties prop = printer.getDefaultTextProperties();
			if (!(charSet == null || charSet.equals("")))
				prop.characterSet = charSet;

			prop.condensed = true;
			//prop.pitch = pitch;

			//COMANDOS ESCP - linespacing = 1/8
			if (enableLineSpacing()){
				String ESCP = "C60";
				printer.printString(ESCP,0,0,prop);
			}

			int lenght = fields.length;
			for (int i=0;i<lenght;i++){
				printer.printString(fields[i].getValue(), fields[i].getLocationY(), fields[i].getLocationX(), prop);
			}

			//Finish Job
			printer.endJob();
		}
		catch (TextPrinterException ex) {
			ex.printStackTrace();
		}

	}//print

} //MDocPrint