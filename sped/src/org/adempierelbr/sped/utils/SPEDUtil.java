package org.adempierelbr.sped.utils;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.List;
import java.util.Properties;

import org.adempierelbr.model.MLBRNotaFiscal;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.util.Env;
import org.compiere.util.Msg;

public class SPEDUtil 
{
	
	/*
	 * Códido do País - BRASIL
	 */
	public static String COD_PAIS = "01058"; 
	
	/**
	 * Varificar se o valor passado do campo é válido
	 * 
	 * Obs.: Usado para validar e lançar erro nos campos do SPED
	 * 
	 * @param value
	 * @param ColumnName
	 * @param isMandatory
	 * @return
	 */
	public static Object checkValue(Object value, String ColumnName, boolean isMandatory) throws Exception
	{
		
		try
		{
			/*
			 * Se o valor for nullo, é inválido
			 */
			if(value == null && isMandatory)
				throw new Exception("null");
			
			/*
			 * Se for String, verificar se é obrigatório e não vazio
			 */
			if(value instanceof String)
			{
				if(isMandatory && ((String) value).trim().isEmpty())
					throw new Exception("Vazio");
				else
					value = "";
			}
			
	
			/*
			 * Se for Bigdecimal, verificar se é diferente de zero
			 */
			if(value instanceof BigDecimal)
			{
				
				if(isMandatory && ((BigDecimal) value).compareTo(Env.ZERO) == 0)
					throw new Exception("Zero");
				else 
					value = Env.ZERO;
				
			}
			
			/*
			 * Se for Bigdecimal, verificar se é diferente de zero
			 */
			if(value instanceof Integer)
			{
				if(isMandatory && ((Integer) value).intValue() == 0)
					throw new Exception("Zero");
				else
					value = 0;
			} 
			
		}
		catch (Exception ex)
		{
			/*
			 * Mostrar ou não nome da coluna no erro
			 */
			if(ColumnName == null || ColumnName.isEmpty())
				throw new Exception("Valor inválido: " + ex.getMessage());
			else
				throw new Exception("Valor inválido para a coluna " + Msg.translate(Env.getCtx(), ColumnName) + ": " + ex.getMessage());
		}
		
		
		/*
		 * retornar o valor validado
		 */
		return value;
	}
	
	
	/**
	 * Varificar se o valor passado do campo é válido
	 * 
	 * Obs.: Usado para validar e lançar erro nos campos do SPED
	 * 
	 * @param value
	 * @param ColumnName
	 * @param isMandatory
	 * @return String
	 */
	public static String checkValue(String value, String ColumnName, boolean isMandatory) throws Exception
	{
		return (String) checkValue((Object) value, ColumnName, isMandatory);
	}

	
	/**
	 * Varificar se o valor passado do campo é válido
	 * 
	 * Obs.: Usado para validar e lançar erro nos campos do SPED
	 * 
	 * @param value
	 * @param ColumnName
	 * @param isMandatory
	 * @return Integer
	 */
	public static Integer checkValue(Integer value, String ColumnName, boolean isMandatory) throws Exception
	{
		return (Integer) checkValue((Object) value, ColumnName, isMandatory);
	}
	
	
	/**
	 * Varificar se o valor passado do campo é válido
	 * 
	 * Obs.: Usado para validar e lançar erro nos campos do SPED
	 * 
	 * @param value
	 * @param ColumnName
	 * @param isMandatory
	 * @return BigDecimal
	 */
	public static BigDecimal checkValue(BigDecimal value, String ColumnName, boolean isMandatory) throws Exception
	{
		return (BigDecimal) checkValue((Object) value, ColumnName, isMandatory);
	}
	
	
	/**
	 * Varificar se o valor passado do campo é válido
	 * 
	 * Obs.: Usado para validar e lançar erro nos campos do SPED
	 * 
	 * @param value
	 * @param ColumnName
	 * @return String
	 */
	public static String checkValue(String value, String ColumnName) throws Exception
	{
		return checkValue(value, ColumnName, false);
	}
	
	
	/**
	 * Varificar se o valor passado do campo é válido
	 * 
	 * Obs.: Usado para validar e lançar erro nos campos do SPED
	 * 
	 * @param value
	 * @param ColumnName
	 * @return BigDecimal
	 */
	public static BigDecimal checkValue(BigDecimal value, String ColumnName) throws Exception
	{
		return checkValue(value, ColumnName, false);
	}
	
	/**
	 * Varificar se o valor passado do campo é válido
	 * 
	 * Obs.: Usado para validar e lançar erro nos campos do SPED
	 * 
	 * @param value
	 * @param ColumnName
	 * @return Integer
	 */
	public static Integer checkValue(Integer value, String ColumnName) throws Exception
	{
		return checkValue(value, ColumnName, false);
	}
	
	
	/**
	 * Varificar se o valor passado do campo é válido
	 * 
	 * Obs.: Usado para validar e lançar erro nos campos do SPED
	 * 
	 * @param value
	 * @return String
	 */
	public static String checkValue(String value) throws Exception
	{
		return checkValue(value, null, false);
	}
	
	
	/**
	 * Varificar se o valor passado do campo é válido
	 * 
	 * Obs.: Usado para validar e lançar erro nos campos do SPED
	 * 
	 * @param value
	 * @return BigDecimal
	 */
	public static BigDecimal checkValue(BigDecimal value) throws Exception
	{
		return checkValue(value, null, false);
	}
	
	
	/**
	 * Varificar se o valor passado do campo é válido
	 * 
	 * Obs.: Usado para validar e lançar erro nos campos do SPED
	 * 
	 * @param value
	 * @return Integer
	 */
	public static Integer checkValue(Integer value) throws Exception
	{
		return checkValue(value, null, false);
	}
	
	
	/**
	 * Retorna as Notas Fiscais por período (compra, venda ou ambos)
	 * @param dateFrom
	 * @param dateTo
	 * @param isSOTrx: true = venda, false = compra, null = ambos
	 * @return MNotaFiscal[]
	 */
	public static MLBRNotaFiscal[] getNFs (Properties ctx, int AD_Org_ID, Timestamp dateFrom, Timestamp dateTo, Boolean isSOTrx, String trxName)
	{
		
		/*
		 * Filtro
		 */
		String whereClause = " AD_Org_ID=? 																	" +
							 " AND (CASE WHEN IsSOTrx='Y' THEN DateDoc 										" +
							 "			ELSE NVL(lbr_DateInOut, DateDoc) END) BETWEEN ? AND ?				";

		
		/*
		 * Filtrar para trazer só NF-e caso seja saída e todas se for entrada
		 */
		whereClause += " AND ((IsSOTrx = 'Y' AND LBR_NFeProt IS NOT NULL) OR (IsSOTrx = 'N')) ";

		/*
		 * Filtrar por Saída e Entrada
		 */
		if (isSOTrx != null)
			whereClause += " AND IsSOTrx='" + (isSOTrx ? "Y" : "N") + "'";

		
		/*
		 * Ordenar por data
		 */
		String orderBy = " (CASE WHEN IsSOTrx='Y' THEN DateDoc ELSE NVL(lbr_DateInOut, DateDoc) END)		";

		
		/*
		 * Query
		 */
		MTable table = MTable.get(Env.getCtx(), MLBRNotaFiscal.Table_Name);
		Query q =  new Query(ctx, table, whereClause.toString(), trxName);
	          q.setOrderBy(orderBy);
		      q.setParameters(new Object[]{Env.getAD_Client_ID(ctx), dateFrom, dateTo});

	    List<MLBRNotaFiscal> list = q.list();
	    MLBRNotaFiscal[] nfs = new MLBRNotaFiscal[list.size()];
	    
	    return list.toArray(nfs);
	    
	}	//	get
	
	
	
	
	
	
}
