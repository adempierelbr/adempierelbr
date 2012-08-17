package org.adempierelbr.sped.efd.process;

import java.sql.Timestamp;
import java.util.logging.Level;

import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRFactFiscal;
import org.adempierelbr.sped.CounterSped;
import org.adempierelbr.sped.efd.EFDUtil;
import org.adempierelbr.sped.efd.bean.BLOCO0;
import org.adempierelbr.sped.efd.bean.BLOCOC;
import org.adempierelbr.sped.efd.bean.R0460;
import org.adempierelbr.sped.efd.bean.RC100;
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
		fileName += "EFD_" + TextUtil.toNumeric(oi.getlbr_CNPJ()) + "_" + TextUtil.timeToString(dateFrom, "MMyyyy") + ".txt";
		
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
		
		try
		{
			
			// Zerar Contadores (staticos)
			CounterSped.clear();

			// Fatos Fiscais
			MLBRFactFiscal[] factFiscals = MLBRFactFiscal.get(getCtx(), dateFrom, dateTo, p_AD_Org_ID, null, get_TrxName()); 

			// criar blocos
			BLOCO0 bloco0 = new BLOCO0();
			BLOCOC blocoC = new BLOCOC();
			
			// 0000 - abertura do arquivo
			bloco0.setR0000(EFDUtil.createR0000(getCtx(), dateFrom, dateTo, p_AD_Org_ID, get_TrxName()));
			
			// 0001 - se tiver fatos fiscais, então contem dados
			bloco0.setR0001(EFDUtil.createR0001(factFiscals.length > 0));

			// 0005 - dados adicionais da org
			bloco0.setR0005(EFDUtil.createR0005(getCtx(), p_AD_Org_ID, get_TrxName()));
					 		
			// 0100 - contator
			bloco0.setR0100(EFDUtil.createR0100(getCtx(), p_AD_Org_ID, get_TrxName()));
			
			// ultima nota fiscal do loop de fatos fiscais (somente auxiliar)
			int last_LBR_NotaFiscal_ID = 0;
			
			// registro C100 - montado de acordo com os fatos fiscais e depois adicionado ao bloco C
			RC100 rc100 = null;

			
			/*
			 * Loop de Fatos Fiscais. 
			 * 
			 * 	Obs.: Os fatos fiscais repetem de acordo com o numero de linhas da NF. 
			 * 		Ex.: Uma NF com 6 linhas, terá 6 fatos fiscais.
			 * 
			 * 	Devido a observação acima, deve-se tomar cuidado para tratar os registros agrupados, 
			 * 	como dados do corpo da NF 
			 */
			for(MLBRFactFiscal factFiscal : factFiscals)
			{
	
				String REG = EFDUtil.getBlocoNFModel(EFDUtil.getCOD_MOD(factFiscal)); 
				
				/*
				 * Gerar somente dos blocos C(produtos) e D(servicos).
				 */
				if(!(REG.startsWith("C") || REG.startsWith("D")))
					continue;
	
	
				/*
				 * Criar registros da NF, pois o fato fiscal se refere a uma nova NF
				 */
				if(last_LBR_NotaFiscal_ID != factFiscal.getLBR_NotaFiscal_ID())
				{
						
						
					/*
					 * R0150 - Parceiros de Negócios
					 */
					bloco0.addr0150(EFDUtil.createR0150(factFiscal));
					
					
					/*
					 * RC100
					 */
					if(REG.startsWith("C"))
					{
						// C100 - NF
						rc100 = EFDUtil.createRC100(factFiscal);

						// C120 - DI
						if(factFiscal.getLBR_NFDI_ID() > 0)
							rc100.setrC120(EFDUtil.createRC120(factFiscal));
						
						// 0460 - Obs do Lançamento Fiscal
						R0460 r0460 = EFDUtil.createR0460(rc100, bloco0.getR0460().size());
						bloco0.addr0460(r0460);
						
						// C195 - Associar a Obs do Lançamento Fiscal à NF
						rc100.addrC195(EFDUtil.createRC195(r0460));
					}
				}
				
				/*
				 * Unidades
				 */
				bloco0.addr0190(EFDUtil.createR0190(factFiscal));
				
				/*
				 * Produtos
				 */
				bloco0.addr0200(EFDUtil.createR0200(factFiscal));
				
				/*
				 * Add C170 ao C100
				 */
				if(REG.startsWith("C"))
					blocoC.getrC100().get(blocoC.getrC100().indexOf(rc100)).addrC170(EFDUtil.createRC170(factFiscal));
				
				/*
				 * Preencher com o ID da NF do fato fiscal
				 * para no próximo loop verificar se o próximo 
				 * fato pertence a esta mesma nota
				 */
				last_LBR_NotaFiscal_ID = factFiscal.getLBR_NotaFiscal_ID();
			
				
				
			} // loop fatos fiscais
			
			
			// finalizar bloco zero
			bloco0.setR0990(EFDUtil.createR0990());
			
			
			// 
			return new StringBuilder(blocoC.toString());
			
		}
		catch (Exception e) 
		{
			
			// mapear erro para facilitar o reconhecimento
			String className = e.getStackTrace()[0].getClassName();
			String methodName = e.getStackTrace()[0].getMethodName();
			int lineNumber = e.getStackTrace()[0].getLineNumber();
			String error = e.getLocalizedMessage();
			
			// lançar exception para retornar ao usuário
			throw new Exception("Falha ao gerar o arquivo! [" + className + "." + methodName + " Linha:" + lineNumber + "] Erro: " + error );
		}
		
		// return bloco0;
	}
	
	
	
	
	public static void main(String args[])
	{
		ProcGenerateEFD efd = new ProcGenerateEFD();
		
		try 
		{
			//efd.generateEFD(new Timestamp(System.currentTimeMillis()), new Timestamp(System.currentTimeMillis()));
			//efd.genTeste();
		} 
		catch (Exception e) 
		{
			System.out.println(e.getMessage());
		}
	}
	
}	//	ProcGenerateEF