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
import java.io.FileReader;
import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.Properties;

import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * 		Model for MLBRIBPTax
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
	 * Buscar alíquota de acordo com a Tabela do IBPT
	 * 
	 * @param ctx
	 * @param isImport retornar aliquota importada
	 * @param LBR_NCM_ID ncm
	 * @param trxName
	 * @return
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
	public static void ImportFromCSV (Properties ctx, String filePath, String trxName) throws Exception
	{
		try 
		{
			// excluir todas as linhas para reinserir todas novamente 
			// pois é mais rápido que fazer verficiação e update nos que alteraram somente
			DB.executeUpdate("DELETE FROM LBR_IBPTax WHERE AD_Client_ID=?", Env.getAD_Client_ID(ctx), trxName);
			
			// 
			@SuppressWarnings("resource")
			BufferedReader in = new BufferedReader(new FileReader(filePath));

			//
			String linha;
			
			// idx linha 
			int idxline = 0;
			
			// versao
			String version = "";
			
			// para cada linha, inserir no BD
			while ((linha = in.readLine()) != null) 
			{
				// index da linha
				idxline++;
					
				// buscar campos
				String conteudo[] = linha.split(";");

				// Ex: 20021000;01;0;Ex 01 - Cozidos (exceto em água ou vapor) e congelados;31.45;38.94;
				String ncm = conteudo[0];
				
				// verificar se o NCM está cadastrado no Adempiere, senão desconsiderar
				int LBR_NCM_ID = getLBR_NCM_ID (ncm, trxName);
				
				// só pegar a versão do arquivo na primeira linha
				if (idxline == 1)
					version = conteudo[6];
				
				if (LBR_NCM_ID > 0)
				{
					// inserir registro
					MLBRIBPTax m_ibptax = new MLBRIBPTax(ctx, 0, trxName);
					m_ibptax.setLBR_NCM_ID(LBR_NCM_ID);
					m_ibptax.setAD_Client_ID(Env.getAD_Client_ID(ctx));
					m_ibptax.setAD_Org_ID(0);
					m_ibptax.setDescription(conteudo[3]);
					m_ibptax.setlbr_TaxRate(new BigDecimal(conteudo[4]));
					m_ibptax.setlbr_TaxRateImp(new BigDecimal(conteudo[5]));
					m_ibptax.setVersion(version);
					m_ibptax.saveEx(trxName);
				}
			}
		} 
		
		// tratar erro e dar um retorno mais amigável ao usuário
		catch (Exception ex) 
		{
			// 
			ex.printStackTrace();
			
			// logar erro
			log.severe("Falha ao importar IBPTax CSV File. Error: " + ex.getMessage());
			
			// lança erro ao usuário
			throw new Exception("Falha ao importar arquivo. Erro: " + ex.getMessage());
		}
	}
	
	/**
	 * Retornar o NCM de acordo com a linha do arquivo CSV.
	 * 
	 * @param String NCM - NCM Plano, sem pontos
	 */
	private static int getLBR_NCM_ID (String ncm, String trxName)
	{
		// ncm é null ou vazio
		if(ncm == null || ncm.isEmpty())
			return -1;
		
		// query
		String sql = "SELECT LBR_NCM_ID FROM LBR_NCM WHERE REPLACE(Value, '.', '')=? ORDER BY AD_Client_ID DESC";
		
		// exec query
		return DB.getSQLValue (trxName, sql, ncm);
	}	//	getLBR_NCM_ID
}	//	MLBRIBPTax