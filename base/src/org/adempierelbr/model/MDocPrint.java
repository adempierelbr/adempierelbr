package org.adempierelbr.model;

import java.util.Properties;

import org.compiere.model.X_LBR_DocPrint;

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
 *	@version $Id: MDocPrint.java, 12/11/2007 13:38:00 mgrigioni
 */
public class MDocPrint extends X_LBR_DocPrint {
    
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
	public MDocPrint(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);	
	}
		
	/**************************************************************************
	 * 	Public Print
	 */
	public void print(String PrinterType, String PrinterName, 
			          String charSet, boolean condensed,
			          int pitch,MDocPrintFormField[] fields){
		
		
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
    	    
    	    prop.condensed = condensed;
    	    prop.pitch = pitch;
    	    
    	    //COMANDOS ESCP - linespacing = 1/8
    	    //String ESCP = "C60";
    	    //printer.printString(ESCP,0,0,prop);

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
    	        
    }
	
} //MDocPrint