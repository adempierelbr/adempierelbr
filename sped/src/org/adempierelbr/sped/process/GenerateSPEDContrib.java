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
import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRFactFiscal;
import org.adempierelbr.sped.CounterSped;
import org.adempierelbr.sped.SPEDUtil;
import org.adempierelbr.sped.contrib.bean.Bloco0;
import org.adempierelbr.sped.contrib.bean.BlocoA;
import org.adempierelbr.sped.contrib.bean.BlocoC;
import org.adempierelbr.sped.contrib.bean.BlocoD;
import org.adempierelbr.sped.contrib.bean.BlocoF;
import org.adempierelbr.sped.contrib.bean.R0000;
import org.adempierelbr.sped.contrib.bean.R0100;
import org.adempierelbr.sped.contrib.bean.SPEDContrib;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
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
	
	private String p_FilePath = "";

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
			else if (name.equals("File_Directory"))
			{
				p_FilePath = (String) para[i].getParameter();
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
		MPeriod toPeriod = new MPeriod (ctx, p_To_Period_ID, trxName);
		
		dateFrom = period.getStartDate();
		dateTo   = toPeriod.getEndDate();
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
			e.printStackTrace();
			
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
		CounterSped.clear ();
		//
		SPEDUtil.processFacts (ctx, MLBRFactFiscal.get (ctx, dateFrom, dateTo, p_AD_Org_ID, null, trxName), SPEDUtil.TYPE_CONTRIB, trxName);
		
		//	Inicio do Arquivo
		Bloco0 b0 = new Bloco0();
		BlocoA bA = new BlocoA();
		BlocoC bC = new BlocoC();
		BlocoD bD = new BlocoD();
		BlocoF bF = new BlocoF();
		
		//	Registro 0000
		b0.setR0000 (SPEDUtil.fillR0000 (new R0000(), ctx, dateFrom, dateTo, p_CodFin, orgInfo, "", p_RecAnterior, trxName));
		//	Registro 0100
		b0.setR0100 ((R0100) SPEDUtil.fillR0100 (new R0100 (), ctx, orgInfo, trxName));
		//	Registro 0110
		b0.setR0110 (SPEDUtil.getR0110 (SPEDUtil.COD_INC_TRIB_NAO_CUM, SPEDUtil.IND_APRO_CRED_PROPORCIONAL, 
				SPEDUtil.COD_TIPO_CONT_ALIQ_BASICA, ""));	//	FIXME
		//	Registro 0140
		b0.setR0140 (SPEDUtil.getR0140 (ctx, new MOrgInfo[]{orgInfo}, trxName));
		//	Registro 0150
		b0.setR0150 (SPEDUtil.getR0150 ());
		//	Registro 0190
		b0.setR0190 (SPEDUtil.getR0190 ());
		//	Registro 0200
		b0.setR0200 (SPEDUtil.getR0200 ());
		
		//	Registro A010
		bA.setRA010 (SPEDUtil.getRA010 ());
		//	Registro A100
		bA.setRA100 (SPEDUtil.getRA100 ());
		
		//	Registro C010
		bC.setRC010 (SPEDUtil.getRC010 ());
		//	Registro C010
		bC.setRC100 (SPEDUtil.getRC100 ());
		//	Registro C010
		bC.setRC500 (SPEDUtil.getRC500 ());
		
		//	Registro D010
		bD.setRD010 (SPEDUtil.getRD010 ());
		//	Registro D010
		bD.setRD100 (SPEDUtil.getRD100 ());
		//	Registro D010
		bD.setRD500 (SPEDUtil.getRD500 ());
		
		String fileName = p_FilePath;
		
		if (!(p_FilePath.endsWith(AdempiereLBR.getFileSeparator())))
			fileName += AdempiereLBR.getFileSeparator();
		
		/*
		 * Nome do arquivo
		 * 
		 * EDF_CNPJ_DATA.txt
		 */
		I_W_AD_OrgInfo oi = POWrapper.create(MOrgInfo.get(getCtx(), p_AD_Org_ID, get_TrxName()), I_W_AD_OrgInfo.class);
		fileName += "EFD_" + TextUtil.toNumeric(oi.getlbr_CNPJ()) + "_" + TextUtil.timeToString(dateFrom, "MMyyyy") + ".txt";
		
		SPEDContrib sped = new SPEDContrib ();
		sped.setB0 ((Bloco0) b0.get (SPEDUtil.TYPE_CONTRIB));
		sped.setBA ((BlocoA) bA.get (SPEDUtil.TYPE_CONTRIB));
		sped.setBC ((BlocoC) bC.get (SPEDUtil.TYPE_CONTRIB));
		sped.setBD ((BlocoD) bD.get (SPEDUtil.TYPE_CONTRIB));
		sped.setBF ((BlocoF) bF.get (SPEDUtil.TYPE_CONTRIB));
//		sped.setB0 ((Bloco0) b0.get (SPEDUtil.TYPE_CONTRIB));
		
		/*
		 * Gerar Arquivo no disco
		 */
		TextUtil.generateFile (sped.toString(), fileName);
		
	}	//	genSPEDContrib

}	//	GenerateSPEDContrib
