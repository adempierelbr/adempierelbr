/******************************************************************************
 * Copyright (C) 2013 Kenos Assessoria e Consultoria de Sistemas Ltda         *
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
package org.adempierelbr.sped.process;

import java.sql.Timestamp;
import java.util.Properties;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempierelbr.model.MLBRFactFiscal;
import org.adempierelbr.sped.SPEDUtil;
import org.adempierelbr.sped.contrib.bean.Bloco0;
import org.adempierelbr.sped.contrib.bean.BlocoA;
import org.adempierelbr.sped.contrib.bean.R0000;
import org.adempierelbr.sped.contrib.bean.R0100;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MPeriod;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.CLogger;

/**
 * 		Processo para validar e gerar os Registros do SPED
 * 
 *  @author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: GenerateSPEDContrib.java, v1.0 2013/MM/DD 2:51:51 PM, ralexsander Exp $
 */
public class GenerateSPEDContrib extends SvrProcess
{
	/** Context	& Trx	*/
	private Properties ctx;
	private String trxName;
	
	/**	Periods			*/
	private int p_C_Period_ID = 0;
	private int p_To_Period_ID = 0;
	private Timestamp dateFrom;
	private Timestamp dateTo;
	
	/**	Organization	*/
	private int p_AD_Org_ID = 0;
	private MOrgInfo orgInfo;
	
	/** Cód. SPED 		*/
	private String p_CodFin = "0";
	private String p_RecAnterior = "";
	
	/** Log				*/
	private CLogger log = CLogger.getCLogger (GenerateSPEDContrib.class);

	/**
	 *  Prepare, get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals(MPeriod.COLUMNNAME_C_Period_ID))
			{
				p_C_Period_ID = para[i].getParameterAsInt();
				p_To_Period_ID = para[i].getParameter_ToAsInt();
			}
			else if (name.equals(MOrgInfo.COLUMNNAME_AD_Org_ID))
			{
				p_AD_Org_ID = para[i].getParameterAsInt();
			}
			else if (name.equals("p_CodFin"))	//	FIXME: Criar script e coluna
			{
				p_CodFin = (String) para[i].getParameter();
			}
			else if (name.equals("p_RecAnterior"))	//	FIXME: Criar script e coluna
			{
				p_RecAnterior = (String) para[i].getParameter();
			}
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		//
		ctx = getCtx();
		trxName = get_TrxName();
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message (variables are parsed)
	 *  @throws Exception if not successful e.g.
	 */
	protected String doIt() throws Exception
	{
		/**
		 * 	Check Parameters
		 */
		if (p_C_Period_ID <= 0)
			throw new AdempiereUserError ("@FillMandatory@  @C_BankAccount_ID@");
		
		if (p_AD_Org_ID == 0)
			throw new IllegalArgumentException("@AD_Org_ID@ @Mandatory@");
		
		/**
		 * 	Period Validation
		 */
		if (p_To_Period_ID <= 0)
			p_To_Period_ID = p_C_Period_ID;
		
		MPeriod period = new MPeriod (ctx, p_C_Period_ID, trxName);
		
		dateFrom = period.getStartDate();
		dateTo   = period.getEndDate();
		//
		orgInfo = MOrgInfo.get(ctx, p_AD_Org_ID, trxName);
		
		try
		{
			genSPEDContrib ();
		}
		catch (AdempiereException e)
		{
			//	Erro já tratado no gerador
			throw e;
		}
		catch (Exception e)
		{
			//	Erro genérico
			throw new AdempiereException("Unkown Error: " + e.getLocalizedMessage());
		}
		
		return null;
	}	//	doIt

	/**
	 * 	Gera o Arquivo do SPED
	 * @throws AdempiereException, Exception 
	 */
	private void genSPEDContrib () throws AdempiereException, Exception
	{
		//	Fatos Fiscais
		MLBRFactFiscal[] facts = MLBRFactFiscal.get (ctx, dateFrom, dateTo, p_AD_Org_ID, null, trxName);		
		
		//	Inicio do Arquivo
		Bloco0 b0 = new Bloco0();
		BlocoA bA = new BlocoA();
		
		//	Registro 0000
		b0.setR0000 (SPEDUtil.fillR0000 (new R0000(), ctx, dateFrom, dateTo, p_CodFin, orgInfo, "", p_RecAnterior, trxName));
		
		//	Registro 0100
		b0.setR0100 ((R0100) SPEDUtil.fillR0100 (new R0100 (), ctx, orgInfo, trxName));
		
		//	Registro 0110
		b0.setR0110 (SPEDUtil.getR0110 ("1", "2", "1", ""));	//	FIXME
		
		//	Registro 0140
		b0.setR0140 (SPEDUtil.getR0140 (ctx, new MOrgInfo[]{orgInfo}, trxName));
		
		//	Registro 0150
		b0.setR0150 (SPEDUtil.getR0150 ());
		
		//	Registro 0190
		b0.setR0190 (SPEDUtil.getR0190 ());
		
		//	Registro 0200
		b0.setR0200 (SPEDUtil.getR0200 ());
		
		//	Registro A010
//		bA.s
		
		//	Fatos Fiscais
		for (MLBRFactFiscal fact  : facts)
		{
			log.finer ("Running Fact inside Loop: " + fact);
			
			//	TODO
		}
	}	//	genSPEDContrib
	
	
	
	
	
	
	
	
	
	
	
	
	
}	//	GenerateSPEDContrib
