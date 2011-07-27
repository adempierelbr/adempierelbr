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

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.sql.Timestamp;
import java.util.logging.Level;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MConversionRate;
import org.compiere.model.MConversionType;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * 	Taxa Cambio Dolar Americano Banco Central do Brasil
 *	
 *  @author Avner Pinheiro
 *  @version $Id: ProcTaxaCambio.java, 26/07/2011 15:08:00 avner264 $
 */
public class ProcTaxaCambio extends SvrProcess
{

	private Timestamp dataCambio;
	private BigDecimal taxaVenda;
	
	private final String fonte = "http://www4.bcb.gov.br/pec/taxas/batch/taxas.asp?id=txdolar";
	
	private final int USD = 100;
	private final int BRL = 297;
	
	/**
	 * 	Prepare
	 */
	protected void prepare ()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		
	}	//	prepare

	/**
	 * 	Process
	 *	@return Info
	 *	@throws Exception
	 */
	protected String doIt() throws Exception
	{
		getPage(fonte);
		
		if (dataCambio == null || taxaVenda == null){
			return Msg.getMsg(Env.getAD_Language(getCtx()), "ProcessFailed", true);
		}
	
		int C_Conversion_Rate_ID = getC_Conversion_Rate_ID(AdempiereLBR.addDays(dataCambio, 1));
		MConversionRate rate = new MConversionRate(getCtx(),C_Conversion_Rate_ID,get_TrxName());
		
		if (rate.getValidFrom().equals(AdempiereLBR.addDays(dataCambio, 1)) &&
			rate.getMultiplyRate().equals(taxaVenda)){
			return Msg.getMsg(Env.getAD_Language(getCtx()), "ProcessOK", true) + 
				   "<br/>Câmbio já atualizado.";
		}
		
		rate.setC_Currency_ID(USD);
		rate.setC_Currency_ID_To(BRL);
		rate.setValidFrom(AdempiereLBR.addDays(dataCambio, 1));
		rate.setValidTo(AdempiereLBR.addDays(dataCambio, 1));
		rate.setMultiplyRate(taxaVenda);
		rate.setC_ConversionType_ID(MConversionType.getDefault(Env.getAD_Client_ID(getCtx())));
		rate.save(get_TrxName());
		
		return Msg.getMsg(Env.getAD_Language(getCtx()), "ProcessOK", true) + 
			   "<br/>Data de Câmbio: " + dataCambio + 
			   "<br/> Taxa de Venda: " + taxaVenda;
	}	//	doIt
	
    /**
     * Responsável em extrair as informações: data e taxa de venda.
     * @param texto
     */
    private void extract(String texto) {
    	         
        String textocota = new String();
                
        /**
         * Removendo texto que interessa com expressões regulares
         */
        
        Pattern tabelacota = Pattern.compile("<table cellspacing=\"1\" summary=\"Cotação de fechamento do Dólar americano\">(.*?)</table>");
        Matcher m = tabelacota.matcher(texto);
        if(m.find()) {
            //System.out.println(m.group());
            textocota = m.group();
        }
        
        Pattern datacota = Pattern.compile("(\\d\\d)/(\\d\\d)/(\\d\\d\\d\\d)");
        Matcher datam = datacota.matcher(textocota);
        
        if(datam.find()) {
            dataCambio = TextUtil.stringToTime(datam.group(),"dd/MM/yyyy");
        }
        
        Pattern taxacota = Pattern.compile("(\\d),(\\d+)</td></tr>");
        Matcher taxacotam = taxacota.matcher(textocota);
        
        if(taxacotam.find()) {
            taxaVenda = new BigDecimal((taxacotam.group().replaceAll("</td></tr>", "")).replace(",", "."));
        }
    } //extract

    private void getPage(String fonte) {
    	try {
            URL url = new URL(fonte);
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            connection.setRequestProperty("Request-Method", "GET");
            connection.setDoInput(true);
            connection.connect();
            BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream(),TextUtil.ISO88591));
            StringBuffer newData = new StringBuffer(10000);
            String s = "";
            while (null != ((s = br.readLine()))) {
                newData.append(s+"\n");
            }
            br.close();
            
            //Chamada do método para extrair as informações da página
            this.extract(newData.toString());

        }
    	catch (MalformedURLException e) {
            System.err.println("Erro na URL");
            e.getMessage();
            e.printStackTrace();
        }
    	catch (IOException e) {
            System.err.println("Erro de I/O");
            e.getMessage();
            e.printStackTrace();
        }
    	catch (Exception e) {
            System.err.println("Erro geral");
            e.printStackTrace();
            e.getMessage();
        }
    } //getPage
    
    private int getC_Conversion_Rate_ID(Timestamp validFrom){
    	
    	String sql = "select c_conversion_rate_ID " +
    			     "from C_Conversion_Rate " +
    			     "where c_Currency_ID = ? " +
    			     "and c_Currency_ID_TO = ? " +
    			     "and validfrom = ? " +
    			     "and ad_Client_ID in (0,?) " +
    			     "order by AD_Client_ID desc"; 
    	
    	int C_Conversion_Rate_ID = DB.getSQLValue(get_TrxName(), sql,
    			new Object[]{USD,BRL,validFrom,Env.getAD_Client_ID(getCtx())});
    	
		if (C_Conversion_Rate_ID == -1){
			C_Conversion_Rate_ID = 0;
		}
    	
    	return C_Conversion_Rate_ID;
    }
	
} //ProcTaxaCambio