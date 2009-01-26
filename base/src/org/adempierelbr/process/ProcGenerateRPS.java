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
package org.adempierelbr.process;

import java.io.FileWriter;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.util.POLBR;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;


/**
 *	ProcGenerateRPS
 *
 *  Process to Generate RPS
 *  
 *	 
 *	@author Alvaro Montenegro
 *  @contributor Mario Grigioni (Kenos, www.kenos.com.br), mgrigioni
 *	@version $Id: ProcGenerateRPS.java, 17/04/2008 10:38:00 amontenegro
 */
public class ProcGenerateRPS extends SvrProcess
{
	
	/** Data Emissão     */
	private Timestamp p_DateFrom;
	private Timestamp p_DateTo;
	
	/** Tipos de Formatacao */
	private static final int FORMATAR_DATA = 1;
	private static final int FORMATAR_VALOR = 2;
	private static final int FORMATAR_SOMENTE_NUMEROS = 3;
	
	/**	Arquivo	               */
	private String p_FilePath = null;
	
	/**	Extensão do Arquivo			*/
	public static final String ext = ".txt";
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ProcGenerateRPS.class);

	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if(name.equals("lbr_DocDate"))
			{
				p_DateFrom = (Timestamp)para[i].getParameter();
				p_DateTo   = (Timestamp)para[i].getParameter_To();
			}
			else if(name.equals("File_Directory"))
			{
				p_FilePath = para[i].getParameter().toString();
			}
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message
	 *  @throws Exception if not successful
	 */
	protected String doIt() throws Exception
	{
		log.info("GenerateRPS Process ");

		Properties ctx = getCtx();
		String     trx = get_TrxName();
		String     fileName = p_FilePath;

	    if (!(fileName.endsWith(POLBR.getFileSeparator()))) 
	    	fileName += POLBR.getFileSeparator();
		
		String date1Str = POLBR.dateTostring(p_DateFrom, "ddMMyy");
		String date2Str = POLBR.dateTostring(p_DateTo, "ddMMyy");
		
		fileName += "rps" + date1Str + "_" + date2Str + ext;
		
		generate(ctx,trx,fileName,p_DateFrom,p_DateTo);
	
		return "GenerateRPS Process Completed ";
		
	}	//	doIt
	
	private void generate(Properties ctx, String trx, String FileName, Timestamp from, Timestamp to) throws IOException
	{
		FileWriter fw = TextUtil.createFile(FileName, false);
		int totalRows = 0;
		
		MOrg Org = MOrg.get(ctx, Env.getContextAsInt(ctx,"#AD_Org_ID"));
		MOrgInfo OrgInfo = Org.getInfo();
		
		String ccm = OrgInfo.get_ValueAsString("lbr_CCM");
		
		generateHeader(fw,from,to,ccm);
		
		StringBuffer sql = new StringBuffer("");
		
		sql.append("SELECT * FROM LBR_RPS_v ")
		   .append(getWhereClause());
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), trx);
			pstmt.setInt(1, Env.getAD_Client_ID(ctx));
			pstmt.setInt(2, Env.getAD_Org_ID(ctx));
			pstmt.setTimestamp(3, from);
			pstmt.setTimestamp(4, to);
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				TextUtil.addLine(fw, TextUtil.pad(rs.getInt("tipo_de_registro"), ' ', 1, false));
				TextUtil.addLine(fw, TextUtil.pad(rs.getString("tipo_de_rps"), ' ', 5, false));
				TextUtil.addLine(fw, TextUtil.pad(rs.getString("serie_do_rps"), ' ', 5, false));
				TextUtil.addLine(fw, TextUtil.pad(rs.getString("numero_do_rps"), '0', 12, true, true, true));
				TextUtil.addLine(fw, TextUtil.pad(RPSDataFormat(FORMATAR_DATA, rs.getTimestamp("data_de_emissao_do_rps")), ' ', 8, false));
				TextUtil.addLine(fw, TextUtil.pad(rs.getString("situacao_do_rps"), ' ', 1, false));
				TextUtil.addLine(fw, TextUtil.pad(RPSDataFormat(FORMATAR_VALOR, rs.getBigDecimal("valor_dos_servicos")), '0', 15, true));
				TextUtil.addLine(fw, TextUtil.pad(RPSDataFormat(FORMATAR_VALOR, rs.getBigDecimal("valor_das_deducoes")), '0', 15, true));
				TextUtil.addLine(fw, TextUtil.pad(RPSDataFormat(FORMATAR_SOMENTE_NUMEROS, rs.getString("codigo_do_servico_prestado")), '0', 5, true));
				TextUtil.addLine(fw, TextUtil.pad(RPSDataFormat(FORMATAR_VALOR, rs.getBigDecimal("aliquota")), '0', 4, true));
				TextUtil.addLine(fw, TextUtil.pad(rs.getInt("iss_retido"), ' ', 1, false));
				TextUtil.addLine(fw, TextUtil.pad(rs.getString("indicador_pf_pj_tomador"), ' ', 1, false));
				TextUtil.addLine(fw, TextUtil.pad(rs.getString("cpf_cnpj_tomador"), '0', 14, true, true, true));
				TextUtil.addLine(fw, TextUtil.pad(rs.getString("insc_municipal_tomador"), '0', 8, true, true, true));
				TextUtil.addLine(fw, TextUtil.pad(rs.getString("insc_estadual_tomador"), '0', 12, true, true, true));
				TextUtil.addLine(fw, TextUtil.pad(rs.getString("nome_razao_tomador"), ' ', 75, false));
				TextUtil.addLine(fw, TextUtil.pad(rs.getString("tipo_end_tomador"), ' ', 3, false));
				TextUtil.addLine(fw, TextUtil.pad(rs.getString("end_tomador"), ' ', 50, false));
				TextUtil.addLine(fw, TextUtil.pad(rs.getString("num_tomador"), ' ', 10, false));
				TextUtil.addLine(fw, TextUtil.pad(rs.getString("complemento_tomador"), ' ', 30, false));
				TextUtil.addLine(fw, TextUtil.pad(rs.getString("bairro_tomador"), ' ', 30, false));
				TextUtil.addLine(fw, TextUtil.pad(rs.getString("cidade_tomador"), ' ', 50, false));
				TextUtil.addLine(fw, TextUtil.pad(rs.getString("uf_tomador"), ' ', 2, false));
				TextUtil.addLine(fw, TextUtil.pad(rs.getString("cep_tomador"), '0', 8, true, true, true));
				TextUtil.addLine(fw, TextUtil.pad(rs.getString("email_tomador"), ' ', 75, false));
				TextUtil.addLine(fw, replaceACSII(rs.getString("discriminacao_dos_servicos")));
				TextUtil.addEOL(fw);
				totalRows++;
			}
 		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally
		{
			DB.close(rs, pstmt);
			rs = null; pstmt = null;
		}
		
		try
		{
			sql = new StringBuffer("SELECT SUM(valor_dos_servicos) AS totalServicos, ")
				.append("SUM(valor_das_deducoes) AS totalDeducoes ")
				.append("FROM LBR_RPS_v ")
				.append(getWhereClause());
			
			pstmt = DB.prepareStatement(sql.toString(), get_TrxName());
			pstmt.setInt(1, Env.getAD_Client_ID(ctx));
			pstmt.setInt(2, Env.getAD_Org_ID(ctx));
			pstmt.setTimestamp(3, from);
			pstmt.setTimestamp(4, to);
			rs = pstmt.executeQuery();
			
			if(rs.next())
			{
				BigDecimal totalServicos = rs.getBigDecimal("totalServicos");
				BigDecimal totalDeducoes = rs.getBigDecimal("totalDeducoes");
				
				generateFooter(fw, totalRows, totalServicos, totalDeducoes);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally
		{
			DB.close(rs, pstmt);
			rs = null; pstmt = null;
		}

		TextUtil.closeFile(fw);
		
	}//generate
	
	private String getWhereClause()
	{
		return " WHERE AD_Client_ID = ? AND AD_Org_ID = ? AND Data_De_Emissao_Do_RPS BETWEEN ? AND ?";
	}
	
	private void generateHeader(FileWriter fw, Timestamp from, Timestamp to, String ccm) throws IOException
	{
		
		TextUtil.addLine(fw, "1"); //Tipo de Registro
		TextUtil.addLine(fw, "001"); //Versão do Arquivo
		TextUtil.addLine(fw, TextUtil.pad(ccm, ' ', 8, false)); //Inscrição Municipal do Prestador
		TextUtil.addLine(fw, RPSDataFormat(FORMATAR_DATA, from)); //Data de Início do Período Transferido no Arquivo
		TextUtil.addLine(fw, RPSDataFormat(FORMATAR_DATA, to)); //Data de Fim do Período Transferido no Arquivo
		TextUtil.addEOL(fw);
		
	} //generateHeader
	
	private void generateFooter(FileWriter fw, int lines, BigDecimal totalServicos, BigDecimal totalDeduces) throws IOException
	{
		
		TextUtil.addLine(fw, "9"); //Tipo de Registro
		TextUtil.addLine(fw, TextUtil.pad(lines, '0', 7, true));
		TextUtil.addLine(fw, TextUtil.pad(RPSDataFormat(FORMATAR_VALOR, totalServicos), '0', 15, true));
		TextUtil.addLine(fw, TextUtil.pad(RPSDataFormat(FORMATAR_VALOR, totalDeduces), '0', 15, true));
		TextUtil.addEOL(fw);
		
	} //generateFooter
	
	/**************************************************************************
	 * 	RPSDateFormat
	 *  Convert Timestamp to AAAAMMDD
	 *  Convert BigDecimal to specific format (10,54 ==> 00001054)
	 *  @param Timestamp dt
	 * 	@return String data
	 */
	private String RPSDataFormat(int formato, Object obj)
	{
		if (formato == FORMATAR_DATA)
		{
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
			String data = formatter.format(obj); 
			data = data.replaceAll("[/]", "");
			data = data.substring(0, 8);
			return data;
		}
		else if (formato == FORMATAR_VALOR)
		{
			BigDecimal valor = (BigDecimal) obj;
			if (valor == null)
				valor = Env.ZERO;
			
			String valor_txt = String.format("%10.2f", valor.doubleValue());
			String valor_result = "";
			
			for(int i=0; i < valor_txt.length(); i++)
			{
				if(Character.isDigit(valor_txt.charAt(i)))
					valor_result += "" + valor_txt.charAt(i);
			}
			
			return valor_result;
		}
		else if (formato == FORMATAR_SOMENTE_NUMEROS)
		{
			String texto = (String) obj;
			
			if(texto == null || texto.length() <= 0)
				return "";

			String texto_result = "";
			
			for(int i=0; i < texto.length(); i++)
			{
				if(Character.isDigit(texto.charAt(i)))
					texto_result += "" + texto.charAt(i);
			}
			
			return texto_result;
		}
		else
			return "";
	}
	
	private String replaceACSII(String str)
	{
		if (str == null || str.length() <= 0)
			str = " ";
		
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < str.length(); i++)
		{
			int c = (int) str.charAt(i);
			if ((c != 13) && (c != 10))
			{
				sb.append(str.charAt(i));
			} 
			else
			{
				sb.append("|");
			}
		}

		return sb.toString();
	}
	
} //ProcGenerateRPS