package org.adempierelbr.sped.efd.process;

import java.sql.Timestamp;
import java.util.logging.Level;

import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.sped.CounterSped;
import org.adempierelbr.sped.utils.SPEDUtil;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MPeriod;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;

/**
 * Processo para geração do SPED EFD
 * 
 * 
 * @author Pablo Boff Pigozzo
 * @version 01/08/2012, 08:20 
 * 
 * Old: 
 * @author Mario Grigioni
 * @version $Id: ProcGenerateEFD, 07/02/2011, 09:43, mgrigioni
 */
public class ProcGenerateEFD extends SvrProcess
{
	/** 
	 * Arquivo   
	 */
	private String p_FilePath = null;
	
	/** 
	 * Período   
	 */
	private int p_C_Period_ID = 0;
	
	/** 
	 * Organização 
	 */
	private int p_AD_Org_ID = 0;
	
	
	/**
	 * Prepare - e.g., get Parameters.
	 * 
	 */
	protected void prepare ()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals("File_Directory"))
				p_FilePath = para[i].getParameter().toString();
			else if (name.equals("C_Period_ID"))
				p_C_Period_ID = para[i].getParameterAsInt();
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = para[i].getParameterAsInt();
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}	//	for
	}	//	prepare

	
	
	/**
	 * Do It
	 */
	protected String doIt () throws Exception
	{
		/*
		 * Tempo inicial
		 */
		long start = System.currentTimeMillis();

		
		/*
		 * Validar Organização e Periodo
		 */
		if (p_C_Period_ID == 0)
			throw new IllegalArgumentException("@C_Period_ID@ @Mandatory@");
		
		if (p_AD_Org_ID == 0)
			throw new IllegalArgumentException("@AD_Org_ID@ @Mandatory@");

		/*
		 * Carregar Período e datas
		 */
		MPeriod period = new MPeriod(getCtx(), p_C_Period_ID, get_TrxName());
		Timestamp dateFrom = period.getStartDate();
		Timestamp dateTo   = period.getEndDate();
		
		/*
		 * Caminho do Arquivo
		 */
		String fileName = p_FilePath;
		
		/*
		 * Rodar Processo
		 */
		StringBuilder result = generateEFD(dateFrom,dateTo);
		
		/*
		 * Se o caminho não terminar com /, colocá-la 
		 */
		if (!(p_FilePath.endsWith(AdempiereLBR.getFileSeparator())))
			fileName += AdempiereLBR.getFileSeparator();
		
		/*
		 * Nome do arquivo
		 * 
		 * EDF_CNPJ_DATA.txt
		 */
		I_W_AD_OrgInfo oi = POWrapper.create(MOrgInfo.get(getCtx(), p_AD_Org_ID, get_TrxName()), I_W_AD_OrgInfo.class);
		fileName += "EFD_" + oi.getlbr_CNPJ() + "_" + TextUtil.timeToString(dateFrom, "MMyyyy") + ".txt";
		
		/*
		 * Gerar Arquivo no disco
		 */
		TextUtil.generateFile(result.toString(), fileName);
		
		/*
		 * Tempo Final
		 */
		long end = System.currentTimeMillis();		
		String tempoDecorrido = AdempiereLBR.executionTime(start, end);
		
		/*
		 * Retorno
		 */
		return "Arquivo(s) Gerado(s) com Sucesso: " + fileName + 
		       " <br>** Tempo decorrido: <font color=\"008800\">" + tempoDecorrido + "</font>";
	}	//	doIt
	
	
	
	
	
	/**
	 * @param ctx
	 * @return
	 * @throws Exception
	 */
	private StringBuilder generateEFD(Timestamp dateFrom, Timestamp dateTo) throws Exception
	{
		// Zerar Contadores
		CounterSped.clear();
		
		// Carregar NFs
		MLBRNotaFiscal[] nfs = SPEDUtil.getNFs(getCtx(), p_AD_Org_ID, dateFrom, dateTo, null, get_TrxName());
		
		
		
		
		return null;
	}
	
	
	public static void main(String args[])
	{
		ProcGenerateEFD efd = new ProcGenerateEFD();
		
		try 
		{
			efd.generateEFD(new Timestamp(System.currentTimeMillis()), new Timestamp(System.currentTimeMillis()));
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
	
}	//	ProcGenerateEFD