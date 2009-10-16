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
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.model.MNotaFiscal;
import org.adempierelbr.model.MNotaFiscalLine;
import org.adempierelbr.util.POLBR;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MLocation;
import org.compiere.model.MNote;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MRegion;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *	Generate GIA Files
 *	
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ProcGenerateSINTEGRA.java, 2009/04/08 15:57:00 ralexsander 
 */
public class ProcGenerateGIA extends SvrProcess
{
	/**
	 *	Estado Brasileiro
	 *
	 *	@author Ricardo Santana
	 */
	@SuppressWarnings("unused")
	private class EstadoBR implements Comparator, Comparable
	{
		Integer   	CODIGO;
		String 		UF;
		String   	NOME;
		Boolean   	ZFM_ALC;
		
		/**
		 * 	Constructor
		 * 
		 * @param codigo
		 * @param uf
		 * @param nome
		 * @param zfm_alc
		 */
		private EstadoBR (Integer codigo, String uf, String nome,
				Boolean zfm_alc) 
		{
			this.CODIGO		=codigo;
			this.UF			=uf;
			this.NOME		=nome;
			this.ZFM_ALC	=zfm_alc;
		}	//	EstadoBR
		
		/**
		 * 	Retorna o Codigo do Estado
		 * 
		 * @return	Codigo do Estado
		 */
		private String getCodigo()
		{
			return this.CODIGO.toString();
		}

		/**
		 * 	Comparador para Collection
		 * 
		 * @see java.util.Comparator#compare(java.lang.Object, java.lang.Object)
		 */
		public int compare (Object o1, Object o2)
		{
			if (o1 == null)									//	Depois
				return 1;
			else if (o2 == null)
				return -1;									//	Antes
			else if (o1 instanceof EstadoBR 
					&& o2 instanceof EstadoBR)
			{
				EstadoBR e1 = (EstadoBR) o1;
				EstadoBR e2 = (EstadoBR) o2;
				//
				if (e1.CODIGO == null)						//	Depois
					return 1;
				else if (e2.CODIGO == null)					// 	Antes
					return -1;
				else
					return e1.CODIGO.compareTo(e2.CODIGO);	//	Comparar
			}
			else
				return 0;									//	Não é EstadoBR
		}

		/**
		 * 	Comparador para Collection
		 */
		public int compareTo (Object o)
		{
			return compare (this, o);
		}
	}	//	EstadoBR
	
	/**
	 *	Registro 1
	 *
	 *	@author Ricardo Santana
	 */
	private class Registro1
	{
		Timestamp 	DATAHORAGERACAO;
		String  	VERSAOFRONTEND	="0000";
		String		VERSAOPREF		="0208";
		
		/**
		 * 	Constructor
		 * 	
		 * @param dataHoraGeracao
		 */
		private Registro1 (Timestamp dataHoraGeracao) 
		{
			//
			this.DATAHORAGERACAO		=dataHoraGeracao;
		}	//	Registro1
				
		/**
		 * 	Formata no padrão da GIA
		 * 
		 * @return String formatada
		 */
		private String format(Integer count)
		{
			StringBuffer result = new StringBuffer("");
			//
			String data = TextUtil.timeToString(this.DATAHORAGERACAO, "yyyyMMdd");
			String hora = TextUtil.timeToString(this.DATAHORAGERACAO, "hhmmss");
			//
			result.append("0101")										//	1	2+2	N
				.append(TextUtil.lPad(data					, 8))		//	2	8	D
				.append(TextUtil.lPad(hora					, 6))		//	3	6	H
				.append(TextUtil.lPad(this.VERSAOFRONTEND	, 4))		//	4	4	N
				.append(TextUtil.lPad(this.VERSAOPREF		, 4))		//	5	4	N
				.append(TextUtil.lPad(count.toString()		, 4));		//	6	4	N
			return result.toString();
		}	//	format
	}	//	Registro1
	
	/**
	 *	Registro 5
	 *
	 *	@author Ricardo Santana
	 */
	private class Registro5
	{
		String 		IE;
		String  	CNPJ;
		String		CNAE;
		String		REGTRIB;
		Timestamp	REF;
		Timestamp	REFINICIAL;
		String		TIPO;
		String		MOVIMENTO;
		String		TRANSMITIDA;
		BigDecimal	SALDOCPERANT;
		BigDecimal	SALDOCPERANTST;
		String		ORIGEMSW;
		String		ORIGEMPREDIG;
		BigDecimal	ICMSFIXPER;
		String		CHAVEINTERNA;
		Integer		Q10;
		Integer		Q20;
		Integer		Q30;
		Integer		Q31;
		
		/**
		 * 	Constructor
		 * 	
		 * @param dataHoraGeracao
		 */
		private Registro5 (String ie, String cnpj, String cnae, String regTrib, Timestamp ref,
				Timestamp refInicial, String tipo, String movimento, String transmitida,
				BigDecimal saldoCPerAnt, BigDecimal saldoCPerAntST, String origemSW,
				String origemPreDig, BigDecimal icmsFixPer, String chaveInterna,
				Integer q10, Integer q20, Integer q30, Integer q31) 
		{
			//
			this.IE				=ie;
			this.CNPJ			=cnpj;
			this.CNAE			=cnae;
			this.REGTRIB		=regTrib;
			this.REF			=ref;
			this.REFINICIAL		=refInicial;
			this.TIPO			=tipo;
			this.MOVIMENTO		=movimento;
			this.TRANSMITIDA	=transmitida;
			this.SALDOCPERANT	=saldoCPerAnt;
			this.SALDOCPERANTST	=saldoCPerAntST;
			this.ORIGEMSW		=origemSW;
			this.ORIGEMPREDIG	=origemPreDig;
			this.ICMSFIXPER		=icmsFixPer;
			this.CHAVEINTERNA	=chaveInterna;
			this.Q10			=q10;
			this.Q20			=q20;
			this.Q30			=q30;
			this.Q31 			=q31;		
		}	//	Registro5

		/**
		 * 	Formata no padrão da GIA
		 * 
		 * @return String formatada
		 */
		private String format()
		{
			StringBuffer result = new StringBuffer("");
			//
			String ref 			= TextUtil.timeToString(this.REF, "yyyyMM");
//			String refInicial 	= TextUtil.timeToString(this.REFINICIAL, "yyyyMM");
			String refInicial	= "000000";		//	FIXME: Verificar porque não valida com a data
			this.CNAE 			= "0000000";	//	CNAE não é mais usado nas novas versoes	
			//
			result.append("05")											//	1	2	N
				.append(TextUtil.lPad(this.IE				, 12))		//	2	14	X
				.append(TextUtil.lPad(this.CNPJ				, 14))		//	3	12	X
				.append(TextUtil.lPad(this.CNAE				, 7))		//	4	7	N
				.append(TextUtil.lPad(this.REGTRIB			, 2))		//	5	2	N
				.append(TextUtil.lPad(ref					, 6))		//	6	8	N
				.append(TextUtil.lPad(refInicial			, 6))		//	7	8	N
				.append(TextUtil.lPad(this.TIPO				, 2))		//	8	2	N
				.append(TextUtil.lPad(this.MOVIMENTO		, 1))		//	9	1	N
				.append(TextUtil.lPad(this.TRANSMITIDA		, 1))		//	10	1	N
				.append(TextUtil.lPad(this.SALDOCPERANT		, 15))		//	11	15	N
				.append(TextUtil.lPad(this.SALDOCPERANTST	, 15))		//	12	15	N
				.append(TextUtil.lPad(this.ORIGEMSW			, 14))		//	13	14	N
				.append(TextUtil.lPad(this.ORIGEMPREDIG		, 1))		//	14	1	N
				.append(TextUtil.lPad(this.ICMSFIXPER		, 15))		//	15	15	N
				.append(TextUtil.lPad(this.CHAVEINTERNA		, 32))		//	16	32	N
				.append(TextUtil.lPad(""+this.Q10			, 4))		//	17	4	N
				.append(TextUtil.lPad(""+this.Q20			, 4))		//	18	4	N
				.append(TextUtil.lPad(""+this.Q30			, 4))		//	19	4	N
				.append(TextUtil.lPad(""+this.Q31			, 4));		//	20	4	N
			return result.toString();
		}	//	format
	}	//	Registro5
	
	/**
	 *	Registro 10
	 *
	 *	@author Ricardo Santana
	 */
	private class Registro10 
	{
		String   	CFOP;
		BigDecimal 	VALORCONTABIL;
		BigDecimal  BASECALCULO;
		BigDecimal  IMPOSTO;
		BigDecimal	ISENTASNAOTRIB;
		BigDecimal 	OUTRAS;
		BigDecimal 	IMPOSTORETIDOST;
		BigDecimal	IMPRETSUBSTITUTOST;
		BigDecimal 	IMPRETSUBSTITUIDO;
		BigDecimal 	OUTROSIMPOSTOS;
		
		/**
		 * 	Constructor
		 * 	
		 * @param cfop
		 * @param valorcontabil
		 * @param basecalculo
		 * @param imposto
		 * @param isentasnaotrib
		 * @param outras
		 * @param impostoretidost
		 */
		private Registro10 (String cfop, BigDecimal valorcontabil, BigDecimal basecalculo, 
				BigDecimal imposto, BigDecimal isentasnaotrib, BigDecimal outras, 
				BigDecimal impostoretidost, BigDecimal impretsubstitutost, 
				BigDecimal impretsubstituido, BigDecimal outrosimpostos) 
		{
			if (valorcontabil == null) 
				valorcontabil 		= Env.ZERO;
			//
			if (basecalculo == null) 
				basecalculo 		= Env.ZERO;
			//
			if (imposto == null) 
				imposto 			= Env.ZERO;
			//
			if (isentasnaotrib == null) 
				isentasnaotrib 		= Env.ZERO;
			//
			if (outras == null) 
				outras 				= Env.ZERO;
			//
			if (impostoretidost == null) 
				impostoretidost 	= Env.ZERO;
			//
			if (impretsubstitutost == null) 
				impretsubstitutost 	= Env.ZERO;
			//
			if (impretsubstituido == null) 
				impretsubstituido	= Env.ZERO;
			//
			if (outrosimpostos == null) 
				outrosimpostos		= Env.ZERO;
			//
			this.CFOP				=cfop;
			this.VALORCONTABIL		=valorcontabil;
			this.BASECALCULO		=basecalculo;
			this.IMPOSTO			=imposto;
			this.ISENTASNAOTRIB		=isentasnaotrib;
			this.OUTRAS				=outras;
			this.IMPOSTORETIDOST	=impostoretidost;
			this.IMPRETSUBSTITUTOST	=impretsubstitutost;
			this.IMPRETSUBSTITUIDO	=impretsubstituido;
			this.OUTROSIMPOSTOS		=outrosimpostos;
		}	//	Registro10
		
		/**
		 * 	Add
		 * 
		 * @param valorcontabil
		 * @param basecalculo
		 * @param imposto
		 * @param isentasnaotrib
		 * @param outras
		 * @param impostoretidost
		 * @param impretsubstitutost
		 * @param impretsubstituido
		 * @param outrosimpostos
		 */
		private void add (BigDecimal valorcontabil, BigDecimal basecalculo, 
				BigDecimal imposto, BigDecimal isentasnaotrib, BigDecimal outras, 
				BigDecimal impostoretidost, BigDecimal impretsubstitutost, 
				BigDecimal impretsubstituido, BigDecimal outrosimpostos)
		{
			if (valorcontabil == null) 
				valorcontabil 		= Env.ZERO;
			//
			if (basecalculo == null) 
				basecalculo 		= Env.ZERO;
			//
			if (imposto == null) 
				imposto 			= Env.ZERO;
			//
			if (isentasnaotrib == null) 
				isentasnaotrib 		= Env.ZERO;
			//
			if (outras == null) 
				outras 				= Env.ZERO;
			//
			if (impostoretidost == null) 
				impostoretidost 	= Env.ZERO;
			//
			if (impretsubstitutost == null) 
				impretsubstitutost 	= Env.ZERO;
			//
			if (impretsubstituido == null) 
				impretsubstituido	= Env.ZERO;
			//
			if (outrosimpostos == null) 
				outrosimpostos		= Env.ZERO;
			//
			this.VALORCONTABIL		=VALORCONTABIL		.add(valorcontabil);
			this.BASECALCULO		=BASECALCULO		.add(basecalculo);
			this.IMPOSTO			=IMPOSTO			.add(imposto);
			this.ISENTASNAOTRIB		=ISENTASNAOTRIB		.add(isentasnaotrib);
			this.OUTRAS				=OUTRAS				.add(outras);
			this.IMPOSTORETIDOST	=IMPOSTORETIDOST	.add(impostoretidost);
			this.IMPRETSUBSTITUTOST	=IMPRETSUBSTITUTOST	.add(impretsubstitutost);
			this.IMPRETSUBSTITUIDO	=IMPRETSUBSTITUIDO	.add(impretsubstituido);
			this.OUTROSIMPOSTOS		=OUTROSIMPOSTOS		.add(outrosimpostos);
		}	//	add
		
		/**
		 * 	Formata no padrão da GIA
		 * 
		 * @return String formatada
		 */
		private String format(Integer count)
		{
			StringBuffer result = new StringBuffer("");
			
			result.append("10")											//	1	2	N
				.append(TextUtil.rPad(this.CFOP			, '0', 6))		//	2	6	X
				.append(TextUtil.lPad(this.VALORCONTABIL	, 15))		//	3	15	N
				.append(TextUtil.lPad(this.BASECALCULO		, 15))		//	4	15	N
				.append(TextUtil.lPad(this.IMPOSTO			, 15))		//	5	15	N
				.append(TextUtil.lPad(this.ISENTASNAOTRIB	, 15))		//	6	15	N
				.append(TextUtil.lPad(this.OUTRAS			, 15))		//	7	15	N
				.append(TextUtil.lPad(this.IMPOSTORETIDOST	, 15))		//	8	15	N
				.append(TextUtil.lPad(this.IMPRETSUBSTITUTOST,15))		//	9	15	N
				.append(TextUtil.lPad(this.IMPRETSUBSTITUIDO, 15))		//	10	15	N
				.append(TextUtil.lPad(this.OUTROSIMPOSTOS	, 15))		//	11	15	N
				.append(TextUtil.lPad(count.toString()		, 4));		//	12	4	N
			return result.toString();
		}	//	format
	}	//	Registro10
	
	/**
	 *	Registro 14
	 *
	 *	@author Ricardo Santana
	 */
	private class Registro14
	{
		EstadoBR   	UF;
		BigDecimal 	VALOR_CONTABIL_1;
		BigDecimal  BASECALCULO_1;
		BigDecimal  VALOR_CONTABIL_2;
		BigDecimal	BASECALCULO_2;
		BigDecimal 	IMPOSTO;
		BigDecimal 	OUTRAS;
		BigDecimal	ICMSCOBRADOST;
		BigDecimal 	PETROLEOENERGIA;
		BigDecimal 	OUTROSPRODUTOS;
		Integer 	BENEF;
		
		/**
		 * 	Constructor
		 * 	
		 * @param cfop
		 * @param valorcontabil
		 * @param basecalculo
		 * @param imposto
		 * @param isentasnaotrib
		 * @param outras
		 * @param impostoretidost
		 */
		private Registro14 (EstadoBR uf, BigDecimal valor_contabil_1, BigDecimal basecalculo_1, 
				BigDecimal valor_contabil_2, BigDecimal basecalculo_2, BigDecimal imposto, 
				BigDecimal outras, BigDecimal icmscobradost, BigDecimal petroleoenergia,
				BigDecimal outrosprodutos, Integer benef)
		{
			if (valor_contabil_1 == null) 
				valor_contabil_1 	= Env.ZERO;
			//
			if (basecalculo_1 == null) 
				basecalculo_1 		= Env.ZERO;
			//
			if (valor_contabil_2 == null) 
				valor_contabil_2 	= Env.ZERO;
			//
			if (basecalculo_2 == null) 
				basecalculo_2 		= Env.ZERO;
			//
			if (imposto == null) 
				imposto 			= Env.ZERO;
			//
			if (outras == null) 
				outras 				= Env.ZERO;
			//
			if (icmscobradost == null) 
				icmscobradost 		= Env.ZERO;
			//
			if (petroleoenergia == null) 
				petroleoenergia		= Env.ZERO;
			//
			if (outrosprodutos == null) 
				outrosprodutos		= Env.ZERO;
			//
			this.UF					=uf;
			this.VALOR_CONTABIL_1	=valor_contabil_1;
			this.BASECALCULO_1		=basecalculo_1;
			this.VALOR_CONTABIL_2	=valor_contabil_2;
			this.BASECALCULO_2		=basecalculo_2;
			this.IMPOSTO			=imposto;
			this.OUTRAS				=outras;
			this.ICMSCOBRADOST		=icmscobradost;
			this.PETROLEOENERGIA	=petroleoenergia;
			this.OUTROSPRODUTOS		=outrosprodutos;
			this.BENEF				=benef;
		}	//	Registro14
		
		/**
		 * 	Add
		 * 
		 * @param valor_contabil_1
		 * @param basecalculo_1
		 * @param valor_contabil_2
		 * @param basecalculo_2
		 * @param imposto
		 * @param outras
		 * @param icmscobradost
		 * @param petroleoenergia
		 * @param outrosprodutos
		 */
		private void add (BigDecimal valor_contabil_1, BigDecimal basecalculo_1, 
				BigDecimal valor_contabil_2, BigDecimal basecalculo_2, BigDecimal imposto, 
				BigDecimal outras, BigDecimal icmscobradost, BigDecimal petroleoenergia,
				BigDecimal outrosprodutos)
		{
			if (valor_contabil_1 == null) 
				valor_contabil_1 	= Env.ZERO;
			//
			if (basecalculo_1 == null) 
				basecalculo_1 		= Env.ZERO;
			//
			if (valor_contabil_2 == null) 
				valor_contabil_2 	= Env.ZERO;
			//
			if (basecalculo_2 == null) 
				basecalculo_2 		= Env.ZERO;
			//
			if (imposto == null) 
				imposto 			= Env.ZERO;
			//
			if (outras == null) 
				outras 				= Env.ZERO;
			//
			if (icmscobradost == null) 
				icmscobradost 		= Env.ZERO;
			//
			if (petroleoenergia == null) 
				petroleoenergia		= Env.ZERO;
			//
			if (outrosprodutos == null) 
				outrosprodutos		= Env.ZERO;
			//
			this.VALOR_CONTABIL_1	=VALOR_CONTABIL_1	.add(valor_contabil_1);
			this.BASECALCULO_1		=BASECALCULO_1		.add(basecalculo_1);
			this.VALOR_CONTABIL_2	=VALOR_CONTABIL_2	.add(valor_contabil_2);
			this.BASECALCULO_2		=BASECALCULO_2		.add(basecalculo_2);
			this.IMPOSTO			=IMPOSTO			.add(imposto);
			this.OUTRAS				=OUTRAS				.add(outras);
			this.ICMSCOBRADOST		=ICMSCOBRADOST		.add(icmscobradost);
			this.PETROLEOENERGIA	=PETROLEOENERGIA	.add(petroleoenergia);
			this.OUTROSPRODUTOS		=OUTROSPRODUTOS		.add(outrosprodutos);
		}	//	add
		
		/**
		 * 	Formata no padrão da GIA
		 * 
		 * @return String formatada
		 */
		private String format(Integer count)
		{
			StringBuffer result = new StringBuffer("");
			//
			result.append("14")											//	1	2	N
				.append(TextUtil.lPad(this.UF.getCodigo()	, 2))		//	2	2	X
				.append(TextUtil.lPad(this.VALOR_CONTABIL_1	, 15))		//	3	15	N
				.append(TextUtil.lPad(this.BASECALCULO_1	, 15))		//	4	15	N
				.append(TextUtil.lPad(this.VALOR_CONTABIL_2	, 15))		//	5	15	N
				.append(TextUtil.lPad(this.BASECALCULO_2	, 15))		//	6	15	N
				.append(TextUtil.lPad(this.IMPOSTO			, 15))		//	7	15	N
				.append(TextUtil.lPad(this.OUTRAS			, 15))		//	8	15	N
				.append(TextUtil.lPad(this.ICMSCOBRADOST	, 15))		//	9	15	N
				.append(TextUtil.lPad(this.PETROLEOENERGIA	, 15))		//	10	15	N
				.append(TextUtil.lPad(this.OUTROSPRODUTOS	, 15))		//	11	15	N
				.append(TextUtil.rPad(this.BENEF.toString()	, 1))		//	12	15	N
				.append(TextUtil.lPad(count.toString()		, 4));		//	13	4	N
			return result.toString();
		}	//	format
	}	//	Registro14
	
	/**	Arquivo							*/
	private String p_FilePath = null;
	
	/** Periodo a ser pesquisado		*/
	private Timestamp p_DateFrom;
	private Timestamp p_DateTo;
	
	/** Organização						*/
	private int p_AD_Org_ID = 0;
	private String orgRegion = "";
	
	/**	Erros e Advertências			*/
	private StringBuffer errors = new StringBuffer("");
	
	/**	Saldos							*/
	private BigDecimal p_SaldoInicial 	= Env.ZERO;
	private BigDecimal p_SaldoInicialST = Env.ZERO;
	
	/**	Results							*/
	private Registro1 registro1;
	private Registro5 registro5;
	private Map<String, Registro10>	registro10 = new HashMap<String, Registro10>();
	private Map<String, Registro14>	registro14 = new HashMap<String, Registro14>();
	private ArrayList<String> CFOPs = new ArrayList<String> ();
	
	/**	Estados Brasileiros - GIA		*/
	private EstadoBR AC = new EstadoBR(1, 	"AC", "ACRE", 					true);
	private EstadoBR AL = new EstadoBR(2, 	"AL", "ALAGOAS", 				false);
	private EstadoBR AP = new EstadoBR(3, 	"AP", "AMAPÁ", 					true);
	private EstadoBR AM = new EstadoBR(4, 	"AM", "AMAZONAS", 				true);
	private EstadoBR BA = new EstadoBR(5, 	"BA", "BAHIA", 					false);
	private EstadoBR CE = new EstadoBR(6, 	"CE", "CEARÁ", 					false);
	private EstadoBR DF = new EstadoBR(7, 	"DF", "DISTRITO FEDERAL", 		false);
	private EstadoBR ES = new EstadoBR(8, 	"ES", "ESPÍRITO SANTO", 		false);
	private EstadoBR GO = new EstadoBR(10, 	"GO", "GOIÁS",		 			false);
	private EstadoBR MA = new EstadoBR(12, 	"MA", "MARANHÃO", 				false);
	private EstadoBR MT = new EstadoBR(13, 	"MT", "MATO GROSSO", 			false);
	private EstadoBR MS = new EstadoBR(28, 	"MS", "MATO GROSSO DO SUL", 	false);
	private EstadoBR MG = new EstadoBR(14, 	"MG", "MINAS GERAIS", 			false);
	private EstadoBR PA = new EstadoBR(15, 	"PA", "PARÁ", 					false);
	private EstadoBR PB = new EstadoBR(16, 	"PB", "PARAÍBA", 				false);
	private EstadoBR PR = new EstadoBR(17, 	"PR", "PARANÁ", 				false);
	private EstadoBR PE = new EstadoBR(18, 	"PE", "PERNAMBUCO", 			false);
	private EstadoBR PI = new EstadoBR(19, 	"PI", "PIAUÍ", 					false);
	private EstadoBR RJ = new EstadoBR(22, 	"RJ", "RIO DE JANEIRO", 		false);
	private EstadoBR RN = new EstadoBR(20, 	"RN", "RIO GRANDE DO NORTE",	false);
	private EstadoBR RS = new EstadoBR(21, 	"RS", "RIO GRANDE DO SUL", 		false);
	private EstadoBR RO = new EstadoBR(23, 	"RO", "RONDÔNIA", 				true);
	private EstadoBR RR = new EstadoBR(24, 	"RR", "RORAIMA", 				true);
	private EstadoBR SC = new EstadoBR(25, 	"SC", "SANTA CATARINA", 		false);
	private EstadoBR SP = new EstadoBR(26, 	"SP", "SÃO PAULO",		 		false);
	private EstadoBR SE = new EstadoBR(27, 	"SE", "SERGIPE", 				false);
	private EstadoBR TO = new EstadoBR(29, 	"TO", "TOCANTINS", 				false);
	//
	private ArrayList<EstadoBR> estados = new ArrayList<EstadoBR>();
	
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
			else if (name.equals("lbr_DocDate"))
			{
				p_DateFrom = (Timestamp)para[i].getParameter();
				p_DateTo   = (Timestamp)para[i].getParameter_To();
			}
			else if (name.equals("File_Directory"))
				p_FilePath = para[i].getParameter().toString();
			
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = para[i].getParameterAsInt();
			
			else if (name.equals("BeginningBalance"))
				p_SaldoInicial = (BigDecimal) para[i].getParameter();
			
			else if (name.equals("lbr_SaldoInicialST"))
				;											//	TODO: ST
//				p_SaldoInicialST = (BigDecimal) para[i].getParameter();
			
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
		//
		initEstados();
	}	//	prepare
	
	/**
	 * 	Inicia os estados
	 */
	private void initEstados()
	{
		estados.add(AC);
		estados.add(AL);
		estados.add(AP);
		estados.add(AM);
		estados.add(BA);
		estados.add(CE);
		estados.add(DF);
		estados.add(ES);
		estados.add(GO);
		estados.add(MA);
		estados.add(MT);
		estados.add(MS);
		estados.add(MG);
		estados.add(PA);
		estados.add(PB);
		estados.add(PR);
		estados.add(PE);
		estados.add(PI);
		estados.add(RJ);
		estados.add(RN);
		estados.add(RS);
		estados.add(RO);
		estados.add(RR);
		estados.add(SC);
		estados.add(SP);
		estados.add(SE);
		estados.add(TO);
		//
		Collections.sort(estados);
	}

	/**
	 *  Perform process.
	 *  @return Message
	 *  @throws Exception if not successful
	 */
	protected String doIt() throws Exception
	{	
		Properties ctx = Env.getCtx();
		//
		MOrgInfo oi 	= new MOrg(ctx, p_AD_Org_ID, null).getInfo();
		if (oi.getC_Location_ID() <= 0)
			log.log (Level.SEVERE, "Localização da Organização não está cadastrada.");
		MLocation ol 	= new MLocation(ctx, oi.getC_Location_ID(), null);
		orgRegion 		= ol.getRegion().getName();
		//
		String fileName = p_FilePath;
		runGIA(ctx);
		StringBuffer result = getGIA();
		//
		if (!(p_FilePath.endsWith(POLBR.getFileSeparator()))) 
	    	fileName += POLBR.getFileSeparator();
		//
		fileName += "GIA_"+TextUtil.timeToString(p_DateFrom, "MM")
					+"_"+TextUtil.timeToString(p_DateTo, "MM")+".prf";
		//
		FileWriter fw = new FileWriter(fileName, false);
		fw.write(result.toString());
		fw.flush();
		fw.close();
		//
		return "";
	}	//	doIt
	
	/**
	 * Retorna os registros da GIA
	 * 
	 * @param ctx
	 * @param estado or null
	 * @return	SINTEGRA
	 * @throws Exception
	 */
	private void runGIA(Properties ctx) throws Exception
	{
		//
		if (p_AD_Org_ID == 0)
			throw new Exception("@AD_Org_ID@ @Mandatory@");
		//
		MOrgInfo oi 	= new MOrg(Env.getCtx(), p_AD_Org_ID, null).getInfo();
		//
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StringBuffer sql = new StringBuffer("");
		//
		StringBuffer whereClause = new StringBuffer("");
		//
		whereClause.append("AD_Client_ID=? ")
			.append("AND AD_Org_ID=? ")
			.append("AND lbr_CFOPReference NOT LIKE '%Z%' ");
		//
		whereClause.append("AND (CASE WHEN IsSOTrx='Y' THEN TRUNC(DateDoc) ELSE TRUNC(NVL(lbr_DateInOut, DateDoc)) END) BETWEEN ")
			.append(DB.TO_DATE(p_DateFrom))
			.append(" AND ")
			.append(DB.TO_DATE(p_DateTo));
		//
		MTable table = MTable.get(ctx, MNotaFiscal.Table_Name);		
		Query q =  new Query(table, whereClause.toString(), null);
		q.setParameters(new Object[]{Env.getAD_Client_ID(ctx), p_AD_Org_ID});
		List<MNotaFiscal> list = q.list();
		//
		sql.append("SELECT NVL(nfl.lbr_CFOPName,'0'), SUM(NVL(nfl.LineTotalAmt,0) + NVL(nfltipi.lbr_TaxAmt,0)), SUM(NVL(nflt.lbr_TaxBaseAmt,0)), ")
		.append("SUM(NVL(nflt.lbr_TaxAmt,0)), NVL(CASE WHEN nfl.lbr_CFOPName LIKE '%352' THEN 0 ELSE nflt.lbr_TaxRate END,0), " +
				"SUM((CASE WHEN nfl.lbr_TaxStatus LIKE '_20' OR " +
						"nfl.lbr_TaxStatus LIKE '_30' OR " +
						"nfl.lbr_TaxStatus LIKE '_40' OR " +
						"nfl.lbr_TaxStatus LIKE '_41' OR " +
						"nfl.lbr_TaxStatus LIKE '_60' OR " +
						"nfl.lbr_TaxStatus LIKE '_70' " +
					"THEN (NVL(nfl.LineTotalAmt,0) + NVL(nfltipi.lbr_TaxAmt,0)) - (NVL(nflt.lbr_TaxBaseAmt,0)) ELSE 0 END)) AS Isento, " +
					"SUM((CASE WHEN nfl.lbr_TaxStatus LIKE '_50' OR " +
						"nfl.lbr_TaxStatus LIKE '_51' OR " +
						"nfl.lbr_TaxStatus LIKE '_90' " +
					"THEN (NVL(nfl.LineTotalAmt,0) + NVL(nfltipi.lbr_TaxAmt,0)) - (NVL(nflt.lbr_TaxBaseAmt,0)) ELSE 0 END)) AS Outras, " +
					"SUM(NVL(nfltipi.lbr_TaxAmt,0)) AS ImpostoIPI FROM LBR_NotaFiscal nf ")
		.append("INNER JOIN  LBR_NotaFiscalLine nfl ON nf.LBR_NotaFiscal_ID=nfl.LBR_NotaFiscal_ID ")
		.append("LEFT JOIN   LBR_NFLineTax nflt ON (nflt.LBR_NotaFiscalLine_ID=nfl.LBR_NotaFiscalLine_ID ")
		.append("AND nflt.LBR_TaxGroup_ID IN (SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE Name='ICMS')) ")
		.append("LEFT JOIN   LBR_NFLineTax nfltipi ON (nfltipi.LBR_NotaFiscalLine_ID=nfl.LBR_NotaFiscalLine_ID ")
		.append("AND nfltipi.LBR_TaxGroup_ID IN (SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE Name='IPI')) ")
		.append("WHERE nf.LBR_NotaFiscal_ID = ? ")
		.append("AND nfl.lbr_CFOPName NOT LIKE '%1%933%' ")			
		.append("AND nfl.lbr_CFOPName NOT LIKE '%2%933%' ")
		.append("AND nfl.lbr_CFOPName NOT LIKE '%Z%' ")
		.append("GROUP BY NVL(CASE WHEN nfl.lbr_CFOPName LIKE '%352' THEN 0 ELSE nflt.lbr_TaxRate END,0), NVL(nfl.lbr_CFOPName,'0')");
		//
		for(MNotaFiscal NF : list)
		{
			DB.close(rs, pstmt);
			pstmt = DB.prepareStatement(sql.toString(), null);
			pstmt.setInt(1, NF.getLBR_NotaFiscal_ID());
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				String CFOP = TextUtil.toNumeric(rs.getString(1));
				
				//	Continuar
				if (CFOP == null || CFOP.equals(""))
					continue;
				//
				EstadoBR uf = getEstadoBR(NF.getlbr_BPRegion());
				BigDecimal valor_contabil_1 	= rs.getBigDecimal(2);
				BigDecimal basecalculo_1 		= rs.getBigDecimal(3);
				BigDecimal valor_contabil_2 	= Env.ZERO;
				BigDecimal basecalculo_2 		= Env.ZERO;
				BigDecimal imposto 				= rs.getBigDecimal(4);
				BigDecimal isenta 				= rs.getBigDecimal(6);
				BigDecimal outras 				= rs.getBigDecimal(7);
				BigDecimal icmscobradost 		= Env.ZERO;
				BigDecimal impretsubstitutost 	= Env.ZERO;
				BigDecimal impretsubstituido 	= Env.ZERO;
				BigDecimal petroleoenergia 		= Env.ZERO;
				BigDecimal outrosprodutos 		= Env.ZERO;
				BigDecimal outrosimpostos 		= rs.getBigDecimal(8);
				Integer benef 					= 0;
				
				if (CFOP.startsWith("6")
						&& (CFOP.equals("107") || CFOP.equals("108")))
				{
					valor_contabil_2	=	valor_contabil_1;
					basecalculo_2		=	basecalculo_1;
					valor_contabil_1	=	Env.ZERO;
					basecalculo_1		=	Env.ZERO;
				}
				//	Transação Fora do Estado
				if (CFOP.startsWith("2")
						|| CFOP.startsWith("6"))
				{
					//
					if (uf == null)
					{
						errors.append("UF Invalida - NF=" + NF.getDocumentNo());
						continue;
					}
					//
					Registro14 reg14 = null;
					//
					if (registro14.containsKey(uf.CODIGO + CFOP))
					{
						reg14 = registro14.get(uf.CODIGO + CFOP);
						reg14.add(valor_contabil_1, basecalculo_1, valor_contabil_2, 
								basecalculo_2, imposto, outras, icmscobradost, 
								petroleoenergia, outrosprodutos);
						registro14.remove(uf.CODIGO + CFOP);
					}
					else
					{
						reg14 = new Registro14(uf, valor_contabil_1, basecalculo_1, 
							valor_contabil_2, basecalculo_2, imposto, outras, icmscobradost, 
							petroleoenergia, outrosprodutos, benef);
					}
					registro14.put((uf.CODIGO + CFOP), reg14);
				}
				//
				Registro10 reg10 = null;
				//
				if (registro10.containsKey(CFOP))
				{
					reg10 = registro10.get(CFOP);
					reg10.add(valor_contabil_1, basecalculo_1, imposto, 
							isenta, outras, icmscobradost, impretsubstitutost, 
							impretsubstituido, outrosimpostos);
					registro10.remove(CFOP);
				}
				else
				{
					CFOPs.add(CFOP);
					reg10 = new Registro10(CFOP, valor_contabil_1, basecalculo_1, 
							imposto, isenta, outras, icmscobradost, impretsubstitutost,
							impretsubstituido, outrosimpostos);
				}
				registro10.put(CFOP, reg10);
			}
		}
		//
		String ie = (String) oi.get_Value("lbr_IE");
		String cnpj = (String) oi.get_Value("lbr_CNPJ");
		String cnae = (String) oi.get_Value("lbr_CNAE");

		//
		registro1 = new Registro1 (p_DateFrom);
		registro5 = new Registro5 (ie, cnpj, cnae, "01", p_DateFrom, p_DateFrom, 
				"01", "1", "0", p_SaldoInicial, p_SaldoInicialST, cnpj, "0", Env.ZERO, "0", 
				registro10.size(), 0, 0, 0);	//	FIXME:	Codigos HC
	}
	
	/**
	 * 
	 * @return
	 */
	private StringBuffer getGIA()
	{
		Collections.sort(CFOPs);
		Integer count14 = 0;
		//
		StringBuffer resultFinal = new StringBuffer("");
		//
		for (String CFOP : CFOPs)
		{
			count14 = 0;
			StringBuffer result14 = new StringBuffer("");
			BigDecimal fixRound = Env.ZERO;
			//
			if (CFOP.startsWith("1")			//	Entrada mesmo estado
					|| CFOP.startsWith("5"))	//	Saida mesmo estado
				;
			else
			{
				for (EstadoBR estado : estados)
				{
					Registro14 reg14 = registro14.get(estado.CODIGO + CFOP);
					//
					if (reg14 == null)
						continue;
					//
					String string14 = reg14.format(0);
					//
					if (string14 == null || string14.equals(""))
						continue;
					
					//	Validação do Estado
					//	Não é necessário discriminar o próprio estado no reg. 14
					if (estado.UF.equals(orgRegion))
					{
						int userID = Env.getContextAsInt(getCtx(), "#AD_User_ID");
						String msgText = "Há registros com divergencia de CFOP e estado. " +
									"É possível descobrir quais são estes registros utilizando " +
									"a busca avançada na janela de Nota Fiscal. Os dados da busca " +
									"são:\nCFOP = "+CFOP+"\nEstado (Fatura) = "+estado.UF+"\nData >-< " +
									TextUtil.timeToString(p_DateFrom, "dd/MM/yyyy")+" e " +
									TextUtil.timeToString(p_DateTo, "dd/MM/yyyy")+".";
						//
						MNote notice = new MNote (getCtx(), 640, userID,			//	Validation Error
								0, 0, null, msgText, null);
						notice.save();
						log.warning (msgText);
					}
					//
					fixRound = fixRound.add(reg14.VALOR_CONTABIL_1.setScale(2, BigDecimal.ROUND_HALF_UP));
					result14.append(string14).append(TextUtil.EOL_WIN32);
					count14++;
				}
			}
			Registro10 reg10 = registro10.get(CFOP);
			//
			if (reg10 == null)
				continue;
			//
			BigDecimal calculado = reg10.VALORCONTABIL.setScale(2, BigDecimal.ROUND_HALF_UP);
			//
			if (fixRound.compareTo(Env.ZERO) == 1 
					&& fixRound.compareTo(calculado) != 0)
			{
				BigDecimal diff = fixRound.subtract(calculado).abs();
				//	Se a DIFF for < 0,02 considerar erro de arredondamento
				if (diff.compareTo(new BigDecimal (0.02)) == -1)
				{
					log.warning("Arredondamento EFETUADO. CFOP["+CFOP+"] " +
							"SOMA["+calculado+"] " +
							"CALCULADO["+fixRound+"]");
					reg10.VALORCONTABIL = fixRound;
				}
				else
					log.warning("Arredondamento NÃO efetuado. Limite de 0,02 excedido. CFOP["+CFOP+"] " +
							"SOMA["+calculado+"] " +
							"CALCULADO["+fixRound+"]");
			}
			//
			String string10 = reg10.format(count14);
			//
			if (string10 == null || string10.equals(""))
				continue;

			resultFinal.append(string10).append(TextUtil.EOL_WIN32).append(result14);
		}
		//
		return resultFinal
			.insert(0, TextUtil.EOL_WIN32)
			.insert(0, registro5.format())
			.insert(0, TextUtil.EOL_WIN32)
			.insert(0, registro1.format(1));
	}	//	getGIA
	
	/**
	 * 	Retorna o estado brasileiro
	 * 
	 * @param uf
	 * @return
	 */
	private EstadoBR getEstadoBR (String uf)
	{
		if 		(uf == null)		return null;
		else if (uf.equals("AC")) 	return AC;
		else if (uf.equals("AL")) 	return AL;
		else if (uf.equals("AP")) 	return AP;
		else if (uf.equals("AM")) 	return AM;
		else if (uf.equals("BA")) 	return BA;
		else if (uf.equals("CE")) 	return CE;
		else if (uf.equals("DF")) 	return DF;
		else if (uf.equals("ES")) 	return ES;
		else if (uf.equals("GO")) 	return GO;
		else if (uf.equals("MA")) 	return MA;
		else if (uf.equals("MT")) 	return MT;
		else if (uf.equals("MS")) 	return MS;
		else if (uf.equals("MG")) 	return MG;
		else if (uf.equals("PA")) 	return PA;
		else if (uf.equals("PB")) 	return PB;
		else if (uf.equals("PR")) 	return PR;
		else if (uf.equals("PE")) 	return PE;
		else if (uf.equals("PI")) 	return PI;
		else if (uf.equals("RJ")) 	return RJ;
		else if (uf.equals("RN")) 	return RN;
		else if (uf.equals("RS")) 	return RS;
		else if (uf.equals("RO")) 	return RO;
		else if (uf.equals("RR")) 	return RR;
		else if (uf.equals("SC")) 	return SC;
		else if (uf.equals("SP")) 	return SP;
		else if (uf.equals("SE")) 	return SE;
		else if (uf.equals("TO")) 	return TO;
		else 						return null;
	}	//	getEstadoBR
}	//	ProcGenerateGIA