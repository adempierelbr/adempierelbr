package org.adempierelbr.util;

import com.java4less.textprinter.JobProperties;
import com.java4less.textprinter.PrinterFactory;
import com.java4less.textprinter.TextPrinter;
import com.java4less.textprinter.TextPrinterException;
import com.java4less.textprinter.TextProperties;
import com.java4less.textprinter.ports.FilePort;

public class PrintTest{

	public static void main(String[] args){
		
        TextPrinter printer = PrinterFactory.getPrinter("PLAIN"); // tipo da impressora
        FilePort port = new FilePort("c:\\teste.txt"); // localização da impressora
        JobProperties job = printer.getDefaultJobProperties();
        job.cols = 140; // colunas na folha
        job.rows = 75; // linhas na folha
        String characterSet = null;
        		
        try {
        	printer.startJob(port, job);
        	        
    	    TextProperties prop = printer.getDefaultTextProperties();
    	    if (!(characterSet == null || characterSet.equals("")))
    	    	prop.characterSet = characterSet;
    	    
    	    prop.condensed = true;
    	    prop.pitch = 12;
    	    
   	     	int v = 0;
 	    
   	     	for (int i=0;i<job.cols;i++){
   	     		for (int j=0;j<job.rows;j++){
   	     			printer.printString(Integer.toString(v),i,j,prop);
   	     			v++;
   	     			if (v > 9){
   	     				v = 0;
   	     			}
   	     		}
   	     		v = 0;
   	     	}
   	     	
    	    //Finish Job
            printer.endJob();
        }
        catch (TextPrinterException ex) {
        	ex.printStackTrace();
    	}
		
		
	}
}