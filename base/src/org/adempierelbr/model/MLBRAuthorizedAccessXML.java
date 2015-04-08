/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2011 Ricardo Santana                                         *
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
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import org.compiere.model.Query;
import org.compiere.util.Env;

/**
 * 		Model for LBR_AuthorizedAccessXML
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRAuthorizedAccessXML.java, v1.0 2015/04/04 16:42:25 PM, ralexsander Exp $
 */
public class MLBRAuthorizedAccessXML extends X_LBR_AuthorizedAccessXML
{	
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = 1L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRAuthorizedAccessXML (Properties ctx, int ID, String trx)
	{
		super (ctx, ID, trx);	
	}	//	MLBRADI
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRAuthorizedAccessXML (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRADI
	
	/**
	 * Get records limited by org
	 * @param AD_Org_ID
	 * @return
	 */
	public static MLBRAuthorizedAccessXML[] get (int AD_Org_ID)
	{
		return get (AD_Org_ID, 0);
	}	//	get

	/**
	 * Get records limited by org and partner
	 * @param AD_Org_ID
	 * @param C_BPartner_ID
	 * @return
	 */
	public static MLBRAuthorizedAccessXML[] get (int AD_Org_ID, int C_BPartner_ID)
	{
		List<Object> parameters = new ArrayList<Object>();
		parameters.add(AD_Org_ID);
		
		String where = "AD_Org_ID IN (0,?) AND (C_BPartner_ID IS NULL";
		
		if (C_BPartner_ID > 0)
		{
			where += " OR C_BPartner_ID=?";
			parameters.add(C_BPartner_ID);
		}
		where += ")";
		
		List<MLBRAuthorizedAccessXML> list = new Query (Env.getCtx(), MLBRAuthorizedAccessXML.Table_Name, where, null)
			.setParameters(parameters)
			.list();
		//
		MLBRAuthorizedAccessXML[] retValue = new MLBRAuthorizedAccessXML[list.size()];
		list.toArray(retValue);
		return retValue;
	}	//	get
	
	/**
	 * 	Before Save
	 *	@param newRecord new
	 *	@return true
	 */
	protected boolean beforeSave (boolean newRecord)
	{
		//If Individual - Validate CPF
		if (getlbr_BPTypeBR().equalsIgnoreCase("PF")){
				String CPF = getlbr_CPF();

				if (CPF == null){
					log.warning("CPF Nulo");
					return false;
				}

				if (CPF.indexOf('.') == -1 || CPF.length() < 14){
					log.warning("CPF Inválido");
					return false;
				}

				if (!validaCPF(CPF)){
					log.warning("CPF Inválido");
					return false;
				}				
		}
		//Else if Legal Entity - Validate CNPJ
		else if (getlbr_BPTypeBR().equalsIgnoreCase("PJ"))
		{
			String CNPJ = getlbr_CNPJ();

			if (CNPJ == null){
				log.warning("CNPJ Nulo");
				return false;
			}

			if (CNPJ.indexOf('.') == -1 || CNPJ.length() < 18){
				log.warning("CNPJ Inválido");
				return false;
			}
			if (!validaCNPJ(CNPJ)){
				log.warning("CNPJ Inválido");
				return false;
			}
		}

		return true;
	}
	
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
	
}	//	MLBRAuthorizedAccessXML
