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
package org.adempierelbr.util;

import com.java4less.textprinter.JobProperties;
import com.java4less.textprinter.PrinterFactory;
import com.java4less.textprinter.TextPrinter;
import com.java4less.textprinter.TextPrinterException;
import com.java4less.textprinter.TextProperties;
import com.java4less.textprinter.ports.FilePort;

public class PrintTest{

	@SuppressWarnings("unused")
	public static void main(String[] args){

        TextPrinter printer = PrinterFactory.getPrinter("PLAIN"); // tipo da impressora
        FilePort port = new FilePort("/Users/mgrigioni/teste.txt"); // localização da impressora
        JobProperties job = printer.getDefaultJobProperties();
        job.cols = 190; // colunas na folha
        job.rows = 98; // linhas na folha
        String characterSet = null;

        try {
        	printer.startJob(port, job);

    	    TextProperties prop = printer.getDefaultTextProperties();
    	    if (!(characterSet == null || characterSet.equals(""))){
    	    	prop.characterSet = characterSet;
    	    }

    	    prop.condensed = true;
    	    prop.pitch = 12;

   	     	int v = 0;

    	    //String ESCP = "C60"; //ESPAÇAMENTO LINHAS (COMANDO ESCP2)
    	    //printer.printString(ESCP,0,0,prop);

   	     	for (int i=1;i<job.rows;i++){
   	     		for (int j=0;j<job.cols;j++){
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
