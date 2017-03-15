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

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;

import org.adempierelbr.util.TextUtil;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * 		Model for MLBRIBPTax
 * 	
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 * 		<li> Alteração para diferenciar alíquotas Estaduais e Federais
 * 		<li> Possibilidade para customizar a mensagem do IBPT, sem alterar o código
 * 
 * 	@author Pablo Boff Pigozzo
 * 	@version $Id: MLBRIBPTax.java, v1.0 2013/07/29 11:42:10 AM, ralexsander Exp $
 */
public class MLBRIBPTax extends X_LBR_IBPTax
{
	/**
	 * Serializable
	 */
	private static final long serialVersionUID = 1L;
	
	/** Logger */
	private static CLogger log = CLogger.getCLogger(MLBRIBPTax.class);
	

	/**************************************************************************
	 * Default Constructor
	 * 
	 * @param Properties ctx
	 * @param int ID (0 create new)
	 * @param String trx
	 */
	public MLBRIBPTax (Properties ctx, int LBR_IBPTax_ID, String trx)
	{
		super (ctx, LBR_IBPTax_ID, trx);
	}	//	MLBRIBPTax

	/**
	 * Load Constructor
	 * 
	 * @param ctx context
	 * @param rs result set record
	 * @param trxName transaction
	 */
	public MLBRIBPTax (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRIBPTax
	
	/**
	 * 		Get IBPT (Global Search)
	 * @author Ricardo Santana (Kenos, www.kenos.com.br)
	 * @param ctx
	 * @param LBR_NCM_ID
	 * @param dateTrx
	 * @param trxName
	 * @return
	 */
	public static MLBRIBPTax getByNCM (Properties ctx, int C_Region_ID, int LBR_NCM_ID, Timestamp dateTrx, String trxName)
	{
		String sql = "AD_Client_ID IN (0, ?)"
				+ " AND LBR_NCM_ID=?"
				+ " AND ValidFrom<=" + DB.TO_DATE (dateTrx) 
				+ " AND (ValidTo IS NULL OR ValidTo>= " + DB.TO_DATE (dateTrx) + ")";
		//
		return new Query (ctx, Table_Name, sql, trxName)
			.setParameters (new Object[]{Env.getAD_Client_ID(ctx), LBR_NCM_ID})
			.setOrderBy("AD_Client_ID DESC, ValidFrom DESC")
			.first();
	}	//	get
	
	/**
	 * 		Get IBPT (Global Search)
	 * @author Ricardo Santana (Kenos, www.kenos.com.br)
	 * @param ctx
	 * @param LBR_NCM_ID
	 * @param dateTrx
	 * @param trxName
	 * @return
	 */
	public static MLBRIBPTax getByNBS (Properties ctx, int C_Region_ID, int LBR_NBS_ID, Timestamp dateTrx, String trxName)
	{
		String sql = "AD_Client_ID IN (0, ?)"
				+ " AND LBR_NBS_ID=?"
				+ " AND ValidFrom<=" + DB.TO_DATE (dateTrx) 
				+ " AND (ValidTo IS NULL OR ValidTo>= " + DB.TO_DATE (dateTrx) + ")";
		//
		return new Query (ctx, Table_Name, sql, trxName)
			.setParameters (new Object[]{Env.getAD_Client_ID(ctx), LBR_NBS_ID})
			.setOrderBy("AD_Client_ID DESC, ValidFrom DESC")
			.first();
	}	//	get
	
	/**
	 * 		Get IBPT with selected version
	 * @param ctx
	 * @param LBR_NCM_ID
	 * @param LBR_NBS_ID
	 * @param dateTrx
	 * @param trxName
	 * @return
	 */
	private static MLBRIBPTax getByNCM (Properties ctx, int LBR_NCM_ID, String version, String trxName)
	{
		String sql = null;
		
		if (LBR_NCM_ID > 0)
			sql = "AD_Client_ID=?"
					+ " AND LBR_NCM_ID=?"
					+ " AND Version=?";
	
		//
		return new Query (ctx, Table_Name, sql, trxName)
			.setParameters (new Object[]{Env.getAD_Client_ID(ctx), LBR_NCM_ID, version})
			.setOrderBy("ValidFrom DESC")
			.firstOnly();
	}	//	get
	
	/**
	 * 		Get IBPT with selected version
	 * @param ctx
	 * @param LBR_NBS_ID
	 * @param dateTrx
	 * @param trxName
	 * @return
	 */
	private static MLBRIBPTax getByNBS (Properties ctx, int LBR_NBS_ID, String version, String trxName)
	{
		String sql = null;
		
		if (LBR_NBS_ID > 0)
			sql = "AD_Client_ID=?"
					+ " AND LBR_NBS_ID=?"
					+ " AND Version=?";		
		//
		return new Query (ctx, Table_Name, sql, trxName)
			.setParameters (new Object[]{Env.getAD_Client_ID(ctx), LBR_NBS_ID, version})
			.setOrderBy("ValidFrom DESC")
			.firstOnly();
	}	//	get

	/**
	 * Buscar alíquota de acordo com a Tabela do IBPT
	 * 
	 * @param ctx
	 * @param isImport retornar aliquota importada
	 * @param LBR_NCM_ID ncm
	 * @param trxName
	 * @return
	 * @deprecated
	 */
	public static BigDecimal getTaxRate (Properties ctx, boolean isImport, int LBR_NCM_ID, String trxName)
	{
		// query
		String sql = "SELECT " + (isImport ? "LBR_TaxRateImp" : "LBR_TaxRate") + 
				" FROM LBR_IBPTax WHERE AD_Client_ID IN (0, ?) AND LBR_NCM_ID=?" +
				" ORDER BY AD_Client_ID DESC";
		
		// exec query
		BigDecimal ret = DB.getSQLValueBD (trxName, sql, new Object[]{Env.getAD_Client_ID(ctx), LBR_NCM_ID});
		
		// return
		return ret == null ? Env.ZERO : ret;
	}	//	getTaxRate
	
	/**
	 * Importar arquivo CSV e inserir no BD
	 * 
	 * @param ctx
	 * @param filePath
	 * @param trxName
	 * @throws Exception
	 */
	public static void ImportFromCSV (Properties ctx, String filePath, int p_C_Region_ID, boolean p_DeleteOld, String trxName) throws Exception
	{
		try 
		{
			// excluir todas as linhas para reinserir todas novamente 
			if (p_DeleteOld)
				DB.executeUpdate("DELETE FROM LBR_IBPTax WHERE AD_Client_ID=?", Env.getAD_Client_ID(ctx), trxName);
			
			// 
			@SuppressWarnings("resource")
			BufferedReader in = new BufferedReader(new InputStreamReader(new FileInputStream(filePath), "ISO8859_1"));

			//
			String linha = in.readLine();	//	Ignorar 1a linha
			
			// para cada linha, inserir no BD
			while ((linha = in.readLine()) != null) 
			{
				// buscar campos
				String conteudo[] = linha.split(";");
				
				/*	
				 * 	0 - NCM
				 * 	1 - EX IPI
				 * 	2 - Tipo (0 - NCM / 1 e 2 - NBS) - NCM = Produto / NBS = Serviço
				 * 	3 - Descrição
				 * 	4 - % Federal (Nacionais)
				 * 	5 - % Federal (Importados)
				 * 	6 - % Estadual
				 * 	7 - % Municipal
				 * 	8 - Vigência Início
				 * 	9 - Vigência Fim
				 * 10 - Chave
				 * 11 - Versão
				 * 12 - Fonte
				 */
				if (conteudo.length < 5)
					continue;
				
				//	pesquissar existente
				MLBRIBPTax m_ibptax = null;				
				
				// Se o Tipo (conteudo[2]) for 0, buscar por NCM (Produto)
				if ("0".equals(conteudo[2]))
				{	
					// Ex: 20021000;01;0;Ex 01 - Cozidos (exceto em água ou vapor) e congelados;31.45;38.94;
					String ncmName = conteudo[0];
					MLBRNCM ncm = MLBRNCM.get (ctx, ncmName, trxName);
					
					// verificar se o NCM está cadastrado no Adempiere, senão desconsiderar
					if (ncm == null)
					{
						log.info ("NCM não encontrado para importar IBPT: " + ncmName);
						continue;
					}
					
					m_ibptax = getByNCM (ctx, ncm.getLBR_NCM_ID(),conteudo[11], trxName);
					
					//	inserir registro
					if (m_ibptax == null)
						m_ibptax = new MLBRIBPTax (ctx, 0, trxName);
					
					m_ibptax.setLBR_NCM_ID(ncm.getLBR_NCM_ID());
					
				}
				// Se o Tipo (conteudo[2]) for 1 ou 2, buscar por NBS (Serviço)
				else
				{
					String nbsName = conteudo[0];
					MLBRNBS nbs = MLBRNBS.get(ctx, nbsName, trxName);
					
					// verificar se o NBS está cadastrado no Adempiere, senão desconsiderar
					if (nbs == null)
					{
						log.info ("NBS não encontrado para importar IBPT: " + nbsName);
						continue;
					}
					
					m_ibptax = getByNBS (ctx, nbs.getLBR_NBS_ID(), conteudo[11], trxName);
					
					//	inserir registro
					if (m_ibptax == null)
						m_ibptax = new MLBRIBPTax (ctx, 0, trxName);
					
					m_ibptax.setLBR_NBS_ID(nbs.getLBR_NBS_ID());
				}				
				
				m_ibptax.setAD_Client_ID(Env.getAD_Client_ID(ctx));
				m_ibptax.setAD_Org_ID(0);
				m_ibptax.setC_Region_ID(p_C_Region_ID);
				m_ibptax.setDescription(conteudo[3]);
				m_ibptax.setlbr_TaxRate(new BigDecimal(conteudo[4]));
				m_ibptax.setlbr_TaxRateImp(new BigDecimal(conteudo[5]));
				m_ibptax.setLBR_TaxRateRegion(new BigDecimal (conteudo[6]));
				m_ibptax.setLBR_TaxRateCity(new BigDecimal (conteudo[7]));
				m_ibptax.setValidFrom(TextUtil.stringToTime(conteudo[8], "dd/MM/yyyy"));
				m_ibptax.setValidTo(TextUtil.stringToTime(conteudo[9], "dd/MM/yyyy"));
				m_ibptax.setValue(conteudo[10]);
				m_ibptax.setVersion(conteudo[11]);
				m_ibptax.setLBR_Source(conteudo[12]);
				m_ibptax.saveEx();
			}
		} 
		
		// tratar erro e dar um retorno mais amigável ao usuário
		catch (Exception ex) 
		{
			// logar erro
			log.severe("Falha ao importar IBPTax CSV File. Error: " + ex.getMessage());
			
			// lança erro ao usuário
			throw new Exception("Falha ao importar arquivo. Erro: " + ex.getMessage());
		}
	}	//	ImportFromCSV
	
	/**
	 * 	Get Tax Rate for National and Imported
	 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
	 */
	public BigDecimal getlbr_TaxRate(boolean imported)
	{
		if (imported) 
			return super.getlbr_TaxRateImp();
		return super.getlbr_TaxRate();
	}	//	getlbr_TaxRate
}	//	MLBRIBPTax