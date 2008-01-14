package org.adempierelbr.validator;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;

import org.adempierelbr.util.POLBR;
import org.compiere.apps.search.Info_Column;
import org.compiere.model.MBPartner;
import org.compiere.model.MClient;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.PO;
import org.compiere.util.CLogger;
import org.compiere.util.DB;

/**
 *	ValidatorBPartner
 *
 *  Validate CPF and CNPJ
 *	
 *	@author Mario Grigioni
 *	@version $Id: ValidatorBPartner.java, 31/10/2007 10:51:00 mgrigioni
 */
public class ValidatorBPartner implements ModelValidator
{
	/**
	 *	Constructor.
	 *	The class is instanciated when logging in and client is selected/known
	 */
	public ValidatorBPartner ()
	{
		super ();
	}	//	ValidatorBPartner
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ValidatorBPartner.class);
	/** Client			*/
	private int		m_AD_Client_ID = -1;
	
	
	/**
	 *	Initialize Validation
	 *	@param engine validation engine 
	 *	@param client client
	 */
	public void initialize (ModelValidationEngine engine, MClient client)
	{
		m_AD_Client_ID = client.getAD_Client_ID();

		log.info(client.toString());
		
		//	ModelChange
		engine.addModelChange("C_BPartner", this); //Parceiro de Negócios
		engine.addModelChange("AD_OrgInfo", this); //Divisão
	}	//	initialize

	/**
	 *	Get Client to be monitored
	 *	@return AD_Client_ID client
	 */
	public int getAD_Client_ID()
	{
		return m_AD_Client_ID;
	}	//	getAD_Client_ID

	/**
	 *	User Login.
	 *	Called when preferences are set
	 *	@param AD_Org_ID org
	 *	@param AD_Role_ID role
	 *	@param AD_User_ID user
	 *	@return error message or null
	 */
	public String login (int AD_Org_ID, int AD_Role_ID, int AD_User_ID)
	{
		log.info("AD_User_ID=" + AD_User_ID);
		return null;
	}	//	login
	
    /**
     *	Model Change of a monitored Table.
     *	Called after PO.beforeSave/PO.beforeDelete
     *	when you called addModelChange for the table
     *	@param po persistent object
     *	@param type TYPE_
     *	@return error message or null
     *	@exception Exception if the recipient wishes the change to be not accept.
     */
	public String modelChange (PO po, int type) throws Exception
	{
		if (po.get_TableName().equalsIgnoreCase("C_BPartner") && (type == CHANGETYPE_CHANGE || type == CHANGETYPE_NEW))
		{
			MBPartner bp = (MBPartner)po;
			return modelChange(bp);
		}
		
		else if (po.get_TableName().equalsIgnoreCase("AD_OrgInfo") && 
				(type == CHANGETYPE_CHANGE || type == CHANGETYPE_NEW || type == TYPE_AFTER_CHANGE)) {
			
			String CNPJ = (String)po.get_Value("lbr_CNPJ");
			if (!(CNPJ == null || CNPJ.equals("") || CNPJ.startsWith(" "))){
				if (!validaCNPJ(CNPJ)){
					return "CNPJ Inválido";
				}
			}
		}
		
		log.info(po.toString()+" | TYPE:"+type );
		return null;
	}	//	modelChange
	
	private String modelChange(MBPartner bp){
		
		int AD_Client_ID = bp.getAD_Client_ID();

		boolean isValid = POLBR.get_ValueAsBoolean(bp.get_Value("lbr_BPTypeBRIsValid"));
		
		String  BPTypeBR = (String)bp.get_Value("lbr_BPTypeBR");
		String  AD_Language = bp.getAD_Language();
		
		if (AD_Language == null || AD_Language.equals("") || !AD_Language.equalsIgnoreCase("pt_BR")) return null;
		
		// If not validated
		if (!isValid) {
		
			//If Individual - Validate CPF
			if (BPTypeBR.equalsIgnoreCase("PF")){
					String CPF = (String)bp.get_Value("lbr_CPF");
					if (!validaCPF(CPF)){
						return "CPF Inválido";
					}
					if (!consultaCPF(CPF, AD_Client_ID)){
						return "CPF Duplicado";
					}		
			}
			//Else if Legal Entity - Validate CNPJ
			else if (BPTypeBR.equalsIgnoreCase("PJ")){
				String CNPJ = (String)bp.get_Value("lbr_CNPJ");
				if (!validaCNPJ(CNPJ)){
					return "CNPJ Inválido";
				}
				if (!consultaCNPJ(CNPJ, AD_Client_ID)){
					return "CNPJ Duplicado";
				}
					
			}
			
			bp.set_ValueOfColumn("lbr_BPTypeBRIsValid", true);
			
		}
		
		log.info(bp.toString());
		return null;
	} //modelChange - BPartner
	
	/**
	 *	Validate Document.
	 *	Called as first step of DocAction.prepareIt 
     *	when you called addDocValidate for the table.
     *	Note that totals, etc. may not be correct.
	 *	@param po persistent object
	 *	@param timing see TIMING_ constants
     *	@return error message or null
	 */
	public String docValidate (PO po, int timing)
	{
		return null;
	}	//	docValidate
		
	/**
	 * 	Update Info Window Columns.
	 * 	- add new Columns
	 * 	- remove columns
	 * 	- change display sequence
	 *	@param columns array of columns
	 *	@param sqlFrom from clause, can be modified
	 *	@param sqlOrder order by clause, can me modified
	 *	@return true if you updated columns, sequence or sql From clause
	 */
	public boolean updateInfoColumns (ArrayList<Info_Column> columns, 
		StringBuffer sqlFrom, StringBuffer sqlOrder)
	{
		/**		*
		int AD_Role_ID = Env.getAD_Role_ID (Env.getCtx());	// Can be Role/User specific 
		String from = sqlFrom.toString();
		if (from.startsWith ("M_Product"))
		{
			columns.add (new Info_Column("Header", "'sql'", String.class).seq(35));
			return true;
		}/** 	*/
		return false;
	}	//	updateInfoColumns
	
	
	/**
	 * 	String Representation
	 *	@return info
	 */
	public String toString ()
	{
		StringBuffer sb = new StringBuffer ("AdempiereLBR - Powered by Kenos");
		return sb.toString ();
	}	//	toString
	
		
	/**
	 *	validaCPF
	 *	Validates CPF
	 *	@param String xCPF
	 *	@return boolean true or false
	 */
	public static boolean validaCPF(String xCPF){
		int d1,d4,xx,nCount,resto,digito1,digito2;
		String Check;
		String Separadores = "/-.";
		d1 = 0; d4 = 0; xx = 1;
		
		if (xCPF.equals("000.000.000-00") ||
			xCPF.equals("111.111.111-11") ||
			xCPF.equals("222.222.222-22") ||
			xCPF.equals("333.333.333-33") ||
			xCPF.equals("444.444.444-44") ||
			xCPF.equals("555.555.555-55") ||
			xCPF.equals("666.666.666-66") ||
			xCPF.equals("777.777.777-77") ||
			xCPF.equals("888.888.888-88") ||
			xCPF.equals("999.999.999-99"))
		{
			return false;
		}
		
		for (nCount = 0; nCount < xCPF.length() -2; nCount++) {
			String s_aux = xCPF.substring(nCount, nCount+1);
			if (Separadores.indexOf(s_aux) == -1) {
				d1 = d1 + ( 11 - xx ) * Integer.valueOf (s_aux).intValue();
				d4 = d4 + ( 12 - xx ) * Integer.valueOf (s_aux).intValue();
				xx++;
			}
		}
		
		resto = (d1 % 11);
		
		if (resto < 2) {
			digito1 = 0;
		}
		else {
			digito1 = 11 - resto;
		}
		
		d4 = d4 + 2 * digito1;
		resto = (d4 % 11);
		
		if (resto < 2) {
			digito2 = 0;
		}
		else {
			digito2 = 11 - resto;
		}

		Check = String.valueOf(digito1) + String.valueOf(digito2);
		String s_aux2 = xCPF.substring (xCPF.length()-2, xCPF.length());

		if (s_aux2.compareTo (Check) != 0){
			return false;
		}
		return true;
	} // validaCPF
	
	/**
	 *	validaCNPJ
	 *	Validates CNPJ
	 *	@param String xCNPJ
	 *	@return boolean true or false
	 */
	public static boolean validaCNPJ(String xCNPJ) {
		int d1,d4,xx,nCount,fator,resto,digito1,digito2;
	    String Check, s_aux;
	    String Separadores = "/-.";
	    d1 = 0;
	    d4 = 0;
	    xx = 0;
	    
	    for (nCount = 0; nCount < xCNPJ.length()-2; nCount++) {
	      s_aux = xCNPJ.substring (nCount, nCount+1);
	      if (Separadores.indexOf(s_aux) == -1) {
	    	  if (xx < 4) {
	    		  fator = 5 - xx;
	          }
	          else {
	              fator = 13 - xx;
	          }
	    	  
	          d1 = d1 + Integer.valueOf (s_aux).intValue() * fator;
	          
	          if (xx < 5) {
	              fator = 6 - xx;
	          }
	          else {
	              fator = 14 - xx;
	          }
	          
	          d4 += Integer.valueOf (s_aux).intValue() * fator;
	          xx++;
	      }
	    }
	    
	    resto = (d1 % 11);
	    
	    if (resto < 2) {
	      digito1 = 0;
	    }
	    else{
	      digito1 = 11 - resto;
	    }

	    d4 = d4 + 2 * digito1;
	    resto = (d4 % 11);
	    
	    if (resto < 2) {
	      digito2 = 0;
	    }
	    else {
	      digito2 = 11 - resto;
	    }

	    Check = String.valueOf(digito1) + String.valueOf(digito2);

	    if (Check.compareTo(xCNPJ.substring(xCNPJ.length()-2, xCNPJ.length() )) !=0) {
	      return false;
	    }
	    return true;
	} //validaCPNJ
	
	/**
	 *	consultaCNPJ
	 *	Check if this CNPJ is already on database
	 *	@param String xCNPJ
	 *	@return boolean true or false
	 */
	public boolean consultaCNPJ(String xCNPJ, int AD_Client_ID) {
		int iCNPJ = 0;
		String sql = "SELECT count(lbr_CNPJ) " +
				     "FROM C_BPartner " +
				     "WHERE lbr_CNPJ = ? AND AD_Client_ID = ?";
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setString (1, xCNPJ);
			pstmt.setInt(2, AD_Client_ID);
			ResultSet rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				iCNPJ = rs.getInt(1);
			}
			rs.close ();
			pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		try
		{
			if (pstmt != null)
				pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			pstmt = null;
		}		
		if (iCNPJ > 0) 
			return false;
		else 
			return true;
	} // consultaCNPJ
		
	/**
	 *	consultaCPF
	 *	Check if this CPF is already on database
	 *	@param String xCPF
	 *	@return boolean true or false
	 */
	public boolean consultaCPF(String xCPF, int AD_Client_ID) {
		int iCPF = 0;
		String sql = "SELECT count(lbr_CPF) " +
				     "FROM C_BPartner " +
				     "WHERE lbr_CPF = ? AND AD_Client_ID = ?";
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setString (1, xCPF);
			pstmt.setInt(2, AD_Client_ID);
			ResultSet rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				iCPF = rs.getInt(1);
			}
			rs.close ();
			pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		try
		{
			if (pstmt != null)
				pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			pstmt = null;
		}		
		if (iCPF > 0) 
			return false;
		else 
			return true;
	}
	
	
}