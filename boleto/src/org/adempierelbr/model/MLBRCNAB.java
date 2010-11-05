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

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.boleto.bank.MBancoBrasil;
import org.adempierelbr.boleto.bank.MBancoReal;
import org.adempierelbr.boleto.bank.MBradesco;
import org.adempierelbr.boleto.bank.MCaixaEconomica;
import org.adempierelbr.boleto.bank.MHsbc;
import org.adempierelbr.boleto.bank.MItau;
import org.adempierelbr.boleto.bank.MSantander_033;
import org.adempierelbr.boleto.bank.MSantander_353;
import org.adempierelbr.boleto.bank.MUnibanco;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MBankAccount;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.TimeUtil;

/**
 * MCNAB
 *
 * Generic Bank Model
 *
 * @author Mario Grigioni (Kenos, www.kenos.com.br)
 * @version $Id: MCNAB.java, 07/11/2007 10:45:02 mgrigioni
 */
public class MLBRCNAB extends X_LBR_CNAB
{

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MLBRCNAB.class);

	/**	File Prefix			*/
	public static final String prefix = "CB"; //COBRANÇA BANCÁRIA

	/**	File Extension			*/
	public static final String ext = ".REM"; //REMESSA

	public static final int BANCO_DO_BRASIL = 0;
	public static final int BRADESCO = 1;
	public static final int ITAU = 2;
	public static final int BANCO_REAL = 3;
    public static final int CAIXA_ECONOMICA = 4;
    public static final int UNIBANCO = 5;
    public static final int HSBC = 6;
    public static final int SANTANDER_033 = 7;
    public static final int SANTANDER_353 = 8;

	public MLBRCNAB(Properties ctx, int LBR_CNAB_ID, String trx) {
    	super(ctx,LBR_CNAB_ID,trx);
    }

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRCNAB (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//	MCNAB

	/**
	 * 	Generate CNAB File
	 *
	 * @param bNum
	 * @param fileName
	 * @param dateFrom
	 * @param dateTo
	 * @param bankAcct
	 * @param trxName
	 * @throws IOException
	 */
	public static void generateFile (int bNum, String fileName, Timestamp dateFrom,
			Timestamp dateTo, MBankAccount bankAcct, String trxName) throws IOException
	{

		switch(bNum){
			case MLBRCNAB.BANCO_DO_BRASIL  : new MBancoBrasil().generateFile (fileName, dateFrom, dateTo, bankAcct, trxName); break;
			case MLBRCNAB.BRADESCO         : new MBradesco().generateFile (fileName, dateFrom, dateTo, bankAcct, trxName); break;
			case MLBRCNAB.ITAU				: new MItau().generateFile (fileName, dateFrom, dateTo, bankAcct, trxName); break;
			case MLBRCNAB.BANCO_REAL		: new MBancoReal().generateFile (fileName, dateFrom, dateTo, bankAcct, trxName); break;
			case MLBRCNAB.CAIXA_ECONOMICA  : new MCaixaEconomica().generateFile (fileName, dateFrom, dateTo, bankAcct, trxName); break;
			case MLBRCNAB.UNIBANCO			: new MUnibanco().generateFile (fileName, dateFrom, dateTo, bankAcct, trxName); break;
			case MLBRCNAB.HSBC				: new MHsbc().generateFile (fileName, dateFrom, dateTo, bankAcct, trxName); break;
			case MLBRCNAB.SANTANDER_033	: new MSantander_033().generateFile (fileName, dateFrom, dateTo, bankAcct, trxName); break;
			case MLBRCNAB.SANTANDER_353	: new MSantander_353().generateFile (fileName, dateFrom, dateTo, bankAcct, trxName); break;
			default : log.log (Level.WARNING, "Unknown Bank");
		}

	}	//	generateFile

	/**************************************************************************
	 * 	getSystemDate
	 *  Get Adempiere System Date
	 * 	@return String dataFormatada
	 */
	public static String getSystemDate(Properties ctx)
	{
		String dataFormatada = CNABDateFormat(Env.getContextAsDate(ctx, "#Date"));
		return dataFormatada;
	}

	/**************************************************************************
	 * 	CNABDateFormat
	 *  Convert Timestamp to CNAB Format (DDMMYY)
	 *  @param Timestamp dt
	 * 	@return String data
	 */
	public static String CNABDateFormat(Timestamp dt)
	{
		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yy");
		String data = formatter.format(dt);
		data = data.replaceAll("[/]", "");
		data = data.substring(0, 6);
		return data;
	}

	/**************************************************************************
	 * 	CNABFormat
	 *  Clear String Mask and Fill with Zeros at left
	 *  @param String value
	 * 	@return String value
	 */
	public static String CNABFormat(String value, int qtdDigitos){
		 value = value == null ? "" : value.replaceAll("[.,-/]","");
		 return TextUtil.lPad(value, qtdDigitos);
	}	//	CNABFormat

	/**************************************************************************
	 * 	getModulo10
	 *  @param String value
	 * 	@return int dac
	 */
    public static int getModulo10(String campo){

		int multiplicador = 2;
		int multiplicacao = 0;
		int soma_campo = 0;

		for (int i = campo.length(); i > 0; i--) {
			multiplicacao = Integer.parseInt(campo.substring(i-1,i)) * multiplicador;

			if (multiplicacao >= 10) {
				multiplicacao = Integer.parseInt(String.valueOf(multiplicacao).substring(0,1)) + Integer.parseInt(String.valueOf(multiplicacao).substring(1,2));
			}
			soma_campo = soma_campo + multiplicacao;

			if (multiplicador == 1)
				multiplicador = 2;
			else
				multiplicador = 1;
		}
		int dac = 10 - (soma_campo%10);

		if (dac > 9)
			dac = 0;

        return dac;
    }

	/**************************************************************************
	 * 	getModulo11
	 *  @param String value
	 *  @param int type
	 * 	@return int dac
	 */
    public static int getModulo11(String campo,int type) {
    	//Modulo 11 - 234567   (type = 7)
    	//Modulo 11 - 23456789 (type = 9)

    	int multiplicador = 2;
		int multiplicacao = 0;
		int soma_campo = 0;

		for (int i = campo.length(); i > 0; i--) {
			multiplicacao = Integer.parseInt(campo.substring(i-1,i)) * multiplicador;

			soma_campo = soma_campo + multiplicacao;

			multiplicador++;
			if (multiplicador > 7 && type == 7)
				multiplicador = 2;
			else if (multiplicador > 9 && type == 9)
				multiplicador = 2;
		}

		int dac = 11 - (soma_campo%11);

        if (dac > 9 && type == 7)
            dac = 0;
        else if ((dac == 0 || dac == 1 || dac > 9) && type == 9)
        	dac = 1;

        return dac;
    }

	/**************************************************************************
	 * 	getFields
	 *  @param String sql
	 *  @param String trx
	 * 	@return MCNAB[] lines
	 */
	public static MLBRCNAB[] getFields(String where, Timestamp DateFrom, Timestamp DateTo, String trx){

		Properties ctx = Env.getCtx();

		String whereClause = "lbr_DocDate BETWEEN ? AND ? " +
				             "AND AD_Client_ID = ? " +
				             "AND lbr_IsCancelled = 'N' AND IsRegistered = 'N'";

		where = TextUtil.checkWhereClause(where);
		if (where != null)
			whereClause += " AND " + where;

		MTable table = MTable.get(ctx, MLBRCNAB.Table_Name);
		Query query =  new Query(ctx, table, whereClause, trx);
	 		  query.setParameters(new Object[]{TimeUtil.getDay(DateFrom),
	 				                           TimeUtil.getDay(DateTo),
	 				                           Env.getAD_Client_ID(ctx)});

		List<MLBRCNAB> list = query.list();

		//MARCA BOLETOS COMO REGISTRADOS
		setIsRegistered(DateFrom, DateTo, whereClause, Env.getAD_Client_ID(ctx), trx);

		return list.toArray(new MLBRCNAB[list.size()]);
	}	//	getFields

	/**************************************************************************
	 * 	getFields
	 *  @param String sql
	 *  @param String trx
	 * 	@return MCNAB[] lines
	 */
	public static MLBRCNAB[] getFields(int C_BankAccount_ID, String trx){

		Properties ctx = Env.getCtx();

		String whereClause = "C_BankAccount_ID = ? AND IsSelected = 'Y'";

		MTable table = MTable.get(ctx, MLBRCNAB.Table_Name);
		Query query =  new Query(ctx, table, whereClause, trx);
	 		  query.setParameters(new Object[]{C_BankAccount_ID});

		List<MLBRCNAB> list = query.list();

		//MARCA BOLETOS COMO REGISTRADOS
		setIsRegistered(C_BankAccount_ID,trx);

		return list.toArray(new MLBRCNAB[list.size()]);
	}	//	getFields

	/**
	 * 	Boleto registrado
	 *
	 * @param DateFrom
	 * @param DateTo
	 * @param where
	 * @param AD_Client_ID
	 * @param trx
	 */
	private static void setIsRegistered (Timestamp DateFrom, Timestamp DateTo, String where, int AD_Client_ID, String trx){

		PreparedStatement pstmt = null;

		String sql  = "UPDATE LBR_CNAB SET IsRegistered = 'Y' WHERE " + where;

		pstmt = DB.prepareStatement (sql.trim(), trx);
		try {
			pstmt.setTimestamp(1, DateFrom);
			pstmt.setTimestamp(2, DateTo);
			pstmt.setInt(3, Env.getContextAsInt(Env.getCtx(), "#AD_Client_ID"));
			pstmt.executeUpdate();
	   	}
    	catch (Exception e)
    	{
    		log.log(Level.SEVERE, "", e);
    	}
    	finally{
    	       DB.close(pstmt);
    	}
	}	//	setIsRegistered

	/**
	 * 	Boleto registrado
	 *
	 * @param C_BankAccount_ID
	 * @param trx
	 */
	private static void setIsRegistered (int C_BankAccount_ID, String trx){

		PreparedStatement pstmt = null;

		String sql  = "UPDATE LBR_CNAB SET IsRegistered = 'Y', IsSelected='N' " +
				      "WHERE C_BankAccount_ID = ? AND IsSelected = 'Y'";

        pstmt = DB.prepareStatement (sql.trim(), trx);
		try {
			pstmt.setInt(1, C_BankAccount_ID);
			pstmt.executeUpdate();
	   	}
    	catch (Exception e)
    	{
    		log.log(Level.SEVERE, "", e);
    	}
    	finally{
    	       DB.close(pstmt);
    	}

	}

	/**************************************************************************
	 * 	getLBR_CNAB_ID
	 *  @param int LBR_Boleto_ID
	 *  @param String trx
	 * 	@return int LBR_CNAB_ID
	 */
	public static int getLBR_CNAB_ID(int LBR_Boleto_ID, String trx){

	    PreparedStatement pstmt = null;
	 	ResultSet rs = null;

	 	String sql = "SELECT LBR_CNAB_ID FROM LBR_CNAB " +
	 			     "WHERE LBR_Boleto_ID = ?";

	 	int LBR_CNAB_ID = -1;

		try
    	{
    		pstmt = DB.prepareStatement (sql.trim(), trx);
    		pstmt.setInt(1, LBR_Boleto_ID);
    		rs = pstmt.executeQuery ();
    		if (rs.next ())
    		{
	    		LBR_CNAB_ID = rs.getInt(1);
    		}
    	}
    	catch (Exception e)
    	{
    		log.log(Level.SEVERE, "", e);
    	}
    	finally{
    	       DB.close(rs, pstmt);
    	}

		return LBR_CNAB_ID;
	} 	//	getLBR_CNAB_ID
}	//	MCNAB