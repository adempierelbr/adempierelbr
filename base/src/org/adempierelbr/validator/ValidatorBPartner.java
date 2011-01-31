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
package org.adempierelbr.validator;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;

import org.brazilutils.br.uf.UF;
import org.brazilutils.br.uf.ie.InscricaoEstadual;
import org.compiere.apps.search.Info_Column;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MClient;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MSysConfig;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.PO;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *	ValidatorBPartner
 *
 *  Validate CPF and CNPJ
 *
 *	@author Mario Grigioni
 *	@contributor Ricardo Santana (www.kenos.com.br)
 *		BF [ 2808639 ] - Erro ao salvar registro na C_BPartner_Location
 *	@contributor Fernando de O. Moraes (www.faire.com.br)
 *		BF [ 3168869  ] - Erro na logica de marcar um parceiro de negocios como valido (lbr_BPTypeBRIsValid)
 *	@version $Id: ValidatorBPartner.java, 31/10/2007 10:51:00 mgrigioni
 */
public class ValidatorBPartner implements ModelValidator
{

	/** BPartner Category (CFOP) */
	private static final int m_LBR_BPartnerCategory_ID = 1000006;

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
		//client = null for global validator
		if (client != null) {
			m_AD_Client_ID = client.getAD_Client_ID();
			log.info(client.toString());
		}
		else  {
			log.info("Initializing global validator: "+this.toString());
		}

		engine.addModelChange(MBPartner.Table_Name, this);
		engine.addModelChange(MBPartnerLocation.Table_Name, this);
		engine.addModelChange(MOrgInfo.Table_Name, this);
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

		if (getAD_Client_ID() > 0 && AD_Org_ID == 0 && AD_User_ID != 100)
			return "Não é possível logar com Org = *";

		Boolean isUseUnifiedBP = MSysConfig.getBooleanValue("LBR_USE_UNIFIED_BP", false);

		if(isUseUnifiedBP)
			log.info("LBR: Usando PN unificados.");
		else
			log.info("LBR: Usando um PN por Filial (Normal).");

		//	Load Enviroment
		Env.setContext(Env.getCtx(), "#LBR_USE_UNIFIED_BP", isUseUnifiedBP);

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

		boolean isChange      = (type == TYPE_CHANGE || type == TYPE_NEW);
		boolean isAfterChange = type == TYPE_AFTER_CHANGE;

		if (po instanceof MBPartner && isChange){
			return modelChange((MBPartner)po);
		}

		else if (po instanceof MBPartnerLocation && isChange){
			return modelChange ((MBPartnerLocation)po);
		}

		else if (po instanceof MOrgInfo && (isChange || isAfterChange)){

			String CNPJ = po.get_ValueAsString("lbr_CNPJ");
			if (!CNPJ.trim().equals("")){
				if (!validaCNPJ(CNPJ)){
					return "CNPJ Inválido";
				}
			}

		}

		return null;
	}	//	modelChange

	/**
	 *  Validate MBPartnerLocation
	 *
	 * @param bpl
	 * @return
	 */
	private String modelChange(MBPartnerLocation bpl)
	{
		//	BF [ 2808639 ] - Erro notado pelo usuario gmichels
		if (!MSysConfig.getBooleanValue("LBR_USE_UNIFIED_BP", false))
			return "";

		MBPartner bp = new MBPartner(Env.getCtx(), bpl.getC_BPartner_ID(), bpl.get_TrxName());
		String  BPTypeBR = (String)bp.get_Value("lbr_BPTypeBR");

		boolean isValid = bp.get_ValueAsBoolean("lbr_BPTypeBRIsValid");

		//BF - trying to inactive record
		if (bpl.is_ValueChanged("IsActive") && !bpl.isActive())
			return null;

		if (!isValid || BPTypeBR == null || !BPTypeBR.equalsIgnoreCase("PJ"))
			return null;

		String CNPJMatriz = (String)bp.get_Value("lbr_CNPJ");
		String CNPJFilial = (String)bpl.get_Value("lbr_CNPJ");

		if(CNPJMatriz.substring(0, 10).equalsIgnoreCase(CNPJFilial.substring(0, 10)))
		{
			if (!validaCNPJ(CNPJFilial))
				return "CNPJ Inválido";

			if (!consultaCNPJ(CNPJFilial, bpl.getAD_Client_ID(), bpl.get_ID(), bpl.get_TableName()))
				return "CNPJ Duplicado";
		}
		else
			return "CNPJ não corresponde com a Matriz.";

		bpl.set_ValueOfColumn("lbr_BPTypeBRIsValid", true);

		return "";
	}	//	ModelChange - MBPartnerLocation

	private String modelChange(MBPartner bp){

		int AD_Client_ID = bp.getAD_Client_ID();

		boolean isValid = bp.get_ValueAsBoolean("lbr_BPTypeBRIsValid");

		String  BPTypeBR = (String)bp.get_Value("lbr_BPTypeBR");
		String  AD_Language = bp.getAD_Language();

		if (AD_Language == null || AD_Language.equals("") || !AD_Language.equalsIgnoreCase("pt_BR")) return null;

		//	If not validated or trying to activate an inactive record
		if (!isValid || (bp.is_ValueChanged("IsActive") && bp.isActive())) {

			//If Individual - Validate CPF
			if (BPTypeBR.equalsIgnoreCase("PF")){
					String CPF = (String)bp.get_Value("lbr_CPF");

					if (CPF == null){
						return "CPF Nulo";
					}

					if (CPF.indexOf('.') == -1 || CPF.length() < 14){
						return "CPF Inválido";
					}

					if (!validaCPF(CPF)){
						return "CPF Inválido";
					}

					if (!consultaCPF(CPF, AD_Client_ID, bp.get_ID())){
						return "CPF Duplicado";
					}
					//BF - 3168869 
					bp.set_ValueOfColumn("lbr_BPTypeBRIsValid", true);
			}
			//Else if Legal Entity - Validate CNPJ
			else if (BPTypeBR.equalsIgnoreCase("PJ"))
			{
				String CNPJ = (String)bp.get_Value("lbr_CNPJ");

				if (CNPJ == null){
					return "CNPJ Nulo";
				}

				if (CNPJ.indexOf('.') == -1 || CNPJ.length() < 18){
					return "CNPJ Inválido";
				}
				if (!isValid && !validaCNPJ(CNPJ)){
					return "CNPJ Inválido";
				}
				if (!consultaCNPJ(CNPJ, AD_Client_ID, bp.get_ID(), bp.get_TableName())){
					return "CNPJ Duplicado";
				}

				if(MSysConfig.getBooleanValue("LBR_USE_UNIFIED_BP", false))
					bp.set_CustomColumn("lbr_CNPJ", CNPJ.substring(0, 10) + "/0000-00");
				
				//BF - 3168869 
				bp.set_ValueOfColumn("lbr_BPTypeBRIsValid", true);
			}else
				//BF - 3168869 
				bp.set_ValueOfColumn("lbr_BPTypeBRIsValid", false);
			
			
		}

		// FR [ 1898697 ] Validador BPartner - CFOP Group
		// mgrigioni, 21/02/2008 (Kenos, http://www.kenos.com.br)
		// Isento IE
		if (bp.get_ValueAsBoolean("lbr_IsIEExempt")){

			//Cliente
			if (bp.isCustomer()){
				Integer LBR_CustomerCategory_ID = (Integer)bp.get_Value("LBR_CustomerCategory_ID");
				if (LBR_CustomerCategory_ID == null || LBR_CustomerCategory_ID.intValue() == 0){
					bp.set_ValueOfColumn("LBR_CustomerCategory_ID", m_LBR_BPartnerCategory_ID);
				}
			}
			//Fornecedor
			if (bp.isVendor()){
				Integer LBR_VendorCategory_ID = (Integer)bp.get_Value("LBR_VendorCategory_ID");
				if (LBR_VendorCategory_ID == null || LBR_VendorCategory_ID.intValue() == 0){
					bp.set_ValueOfColumn("LBR_VendorCategory_ID", m_LBR_BPartnerCategory_ID);
				}
			}

		}

		// FR [ 1925151 ] ValidatorBPartner - Tipo de Transação
		// mgrigioni, 25/03/2008 (Kenos, http://www.kenos.com.br)
		String lbr_TransactionType = bp.get_ValueAsString("lbr_TransactionType");
		if (lbr_TransactionType == null || lbr_TransactionType.equals("")){
			bp.set_ValueOfColumn("lbr_TransactionType", "END"); //End User
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
		StringBuffer sb = new StringBuffer ("ValidatorBPartner@AdempiereLBR - Powered by Kenos");
		return sb.toString ();
	}	//	toString


	/**
	 *	validaCPF
	 *	Validates CPF
	 *	@param String xCPF
	 *	@return boolean true or false
	 */
	public static boolean validaCPF(String xCPF)
	{
		try
		{
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
		}
		catch (Exception e)
		{
			return false;
		}
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
	 * validaIE
	 * @param ie
	 * @param uf
	 * @return NULL if Invalid OR IE with onlynumbers
	 */
	@SuppressWarnings("deprecation")
	public static String validaIE(String ie, UF uf){

		if (uf != null && !ie.toUpperCase().contains("ISENT"))
		{
			InscricaoEstadual iEstadual = uf.getInscricaoEstadual();
			iEstadual.setNumber(ie);
			//
			if (!iEstadual.isValid()){
				if (iEstadual.getInvalidCause() != null)
					return null;
				else
					return iEstadual.getNumber();
			}
			else
				return iEstadual.getNumber();
		}

		if (uf == null)
			ie = "";

		return ie;
	} //validaIE


	/**
	 *	consultaCNPJ
	 *	Check if this CNPJ is already on database
	 *	@param String xCNPJ
	 *	@return boolean true or false
	 */
	public boolean consultaCNPJ(String xCNPJ, int AD_Client_ID, int C_BPartner_ID, String TableName)
	{
		Boolean isUnifiedBP = MSysConfig.getBooleanValue("LBR_USE_UNIFIED_BP", false);
		int iCNPJ = 0;
		String sql = "SELECT COUNT(lbr_CNPJ) " +
				     "FROM " + TableName + " ";

		if(isUnifiedBP && TableName.equals("C_BPartner"))
			sql += "WHERE SUBSTR(lbr_CNPJ, 1, 10) = ? AND AD_Client_ID = ? ";
		else
			sql += "WHERE lbr_CNPJ = ? AND AD_Client_ID = ? ";

		sql += "AND " + TableName + "_ID <> ? AND IsActive='Y'";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
		//	System.out.println("" + xCNPJ.substring(0,10));
			pstmt = DB.prepareStatement (sql, null);
			if(isUnifiedBP && TableName.equals("C_BPartner"))
				pstmt.setString (1, xCNPJ.substring(0,10));
			else
				pstmt.setString (1, xCNPJ);
			pstmt.setInt(2, AD_Client_ID);
			pstmt.setInt(3, C_BPartner_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				iCNPJ = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
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
	public boolean consultaCPF(String xCPF, int AD_Client_ID, int C_BPartner_ID) {
		int iCPF = 0;
		String sql = "SELECT count(lbr_CPF) " +
				     "FROM C_BPartner " +
				     "WHERE lbr_CPF = ? AND AD_Client_ID = ?" +
				     "AND C_BPartner_ID <> ? AND IsActive = 'Y'";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setString (1, xCPF);
			pstmt.setInt(2, AD_Client_ID);
			pstmt.setInt(3, C_BPartner_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				iCPF = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}

		if (iCPF > 0)
			return false;
		else
			return true;
	}	//	consultaCPF
}