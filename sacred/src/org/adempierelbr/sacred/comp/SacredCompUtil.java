package org.adempierelbr.sacred.comp;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.sacred.CounterSacred;
import org.adempierelbr.sacred.comp.beans.B0R0000;
import org.adempierelbr.sacred.comp.beans.B0R0150;
import org.adempierelbr.sacred.comp.beans.B0R0200;
import org.adempierelbr.sacred.comp.beans.B0R0300;
import org.adempierelbr.sacred.comp.beans.B5R5310;
import org.adempierelbr.sacred.comp.beans.B5R5325;
import org.adempierelbr.sacred.comp.beans.B5R5330;
import org.adempierelbr.sacred.comp.beans.B5R5335;
import org.adempierelbr.sacred.comp.beans.B5R5350;
import org.adempierelbr.sacred.comp.beans.B9R9900;
import org.adempierelbr.sacred.comp.beans.B5R5315;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.TaxBR;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MCountry;
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MPeriod;
import org.compiere.model.MProduct;
import org.compiere.model.MRegion;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

public class SacredCompUtil{

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(SacredCompUtil.class);

	private static Properties ctx = null;
	private static String     trx = null;
	private static String     regionName = "SP";
	private static String     country    = "BR";

	private static ArrayList<String> _BPartner = new ArrayList<String>();
	private static ArrayList<String> _MProduct = new ArrayList<String>();
	
	private static Map<Integer,ArrayList<Integer>> _NFLines = new HashMap<Integer,ArrayList<Integer>>();

	public static BigDecimal credito      = Env.ZERO;

	public static final String   NFF      = "01";
	public static final String   CTRC     = "09";
	public static final String   NFe      = "31";

	public static final String   ARTIGO   = "71";
	public static final String[] _Artigos =
		new String[]{"Inciso I - Operações interestaduais com alíquota 7%",
		             "Inciso I - Operações interestaduais com alíquota 12%",
		             "Inciso I - Operações internas com alíquota 7%",
		             "Inciso I - Operações internas",
		             "Inciso I - Outras",
		             "Inciso II - Redução de Base de Cálculo",
		             "Inciso III - Saídas sem pagamento de Imposto – Exportação",
		             "Inciso III - Saídas sem pagamento de Imposto – Exportação Indireta",
		             "Inciso III - Saídas sem pagamento de Imposto – ZF Manaus",
		             "Inciso III - Saídas sem pagamento de Imposto – Diferimento",
		             "Inciso III - Saídas sem pagamento de Imposto – Isenção",
		             "Inciso III - Saídas sem pagamento de Imposto – ST",
		             "Inciso III - Saídas sem pagamento de Imposto – Outras"};

	public static void setEnv(Properties ctx, String trx){
		SacredCompUtil.ctx = ctx;
		SacredCompUtil.trx = trx;

		MOrgInfo oi = MOrgInfo.get(ctx, Env.getAD_Org_ID(ctx),trx);
		MLocation loc = new MLocation(ctx,oi.getC_Location_ID(),trx);
		MRegion   reg = new MRegion(ctx,loc.getC_Region_ID(),trx);
		SacredCompUtil.regionName = reg.getName();

		credito = Env.ZERO;

		_BPartner = new ArrayList<String>();
		_MProduct = new ArrayList<String>();
		_NFLines  = new HashMap<Integer,ArrayList<Integer>>();
	}

	public static Properties getCtx(){
		return ctx;
	}

	public static String get_TrxName(){
		return trx;
	}
	
	public static Map<Integer,ArrayList<Integer>> getLines(){
		return _NFLines;
	}

	public static B0R0000 createR0000(Timestamp dateFrom){
		MOrgInfo orgInfo = MOrgInfo.get(getCtx(), Env.getAD_Org_ID(getCtx()),null);
		MLocation orgLoc = new MLocation(getCtx(),orgInfo.getC_Location_ID(),null);

		String NOME = orgInfo.get_ValueAsString("lbr_LegalEntity");
		String CNPJ = orgInfo.get_ValueAsString("lbr_CNPJ");
		String IE   = orgInfo.get_ValueAsString("lbr_IE");
		String CNAE = orgInfo.get_ValueAsString("lbr_CNAE");
		String CMUN = BPartnerUtil.getCityCode(orgLoc);

		return new B0R0000(dateFrom, NOME, CNPJ, IE, CNAE, CMUN);
	} //createR0000

	public static B0R0150 createR0150(MLBRNotaFiscal nf){

		String COD_PAR  = TextUtil.toNumeric(nf.getlbr_BPCNPJ());
		boolean isEx    = false;
		if (COD_PAR == null || COD_PAR.trim().equals("")){
			MBPartner bp = new MBPartner(getCtx(),nf.getC_BPartner_ID(),null);
			COD_PAR = TextUtil.toNumeric(bp.getValue());
			isEx = true;
		}

		if (_BPartner.contains(COD_PAR))
			return null;

		String NOME     = nf.getBPName();
		String CNPJ     = nf.getlbr_BPCNPJ();
		String IE       = nf.getlbr_BPIE();
		String UF       = isEx ? BPartnerUtil.EXTREG : nf.getlbr_BPRegion();
		String CEP      = nf.getlbr_BPPostal();
		String END      = nf.getlbr_BPAddress1();
		String NUM      = nf.getlbr_BPAddress2();
		String COMPL    = nf.getlbr_BPAddress4();
		String BAIRRO   = nf.getlbr_BPAddress3();

		String COD_MUN  = "";
		String COD_PAIS = "01058"; //BRASIL
		if (nf.getC_BPartner_Location_ID() != 0){
			MBPartnerLocation bpl = new MBPartnerLocation(getCtx(),nf.getC_BPartner_Location_ID(),null);
			MLocation loc = new MLocation(getCtx(),bpl.getC_Location_ID(),null);
			MCountry bpCountry = new MCountry(getCtx(),loc.getC_Country_ID(),null);

			COD_MUN  = BPartnerUtil.getCityCode(loc);
			COD_PAIS = bpCountry.get_ValueAsString("lbr_CountryCode");
		}
		else
			return null; //SEM ENDERECO

		String FONE     = nf.getlbr_BPPhone();

		_BPartner.add(COD_PAR);

		return new B0R0150(COD_PAR, NOME, COD_PAIS, CNPJ, IE, UF, CEP, END,
				NUM, COMPL, BAIRRO, COD_MUN, FONE);
	} //createR0150
	
	public static B0R0200 createR0200(MLBRNotaFiscalLine nfl){

		int M_Product_ID = nfl.getM_Product_ID();
		if (M_Product_ID <= 0)
			return null;
		
		ArrayList<Integer> temp = _NFLines.get(M_Product_ID);
		if (temp == null)
			temp = new ArrayList<Integer>();
		
		temp.add(nfl.get_ID());
		_NFLines.put(M_Product_ID, temp);
		
		String COD_ITEM  = MProduct.get(ctx,M_Product_ID).getValue();
		COD_ITEM = COD_ITEM.trim();
		
		if (_MProduct.contains(COD_ITEM))
			return null;

		String DESCR_ITEM = nfl.getProductName();
		String UNI        = nfl.getlbr_UOMName();
		
		String COD_GEN = "00";
		if (nfl.getlbr_NCMName() != null && nfl.getlbr_NCMName().length() > 2)
			COD_GEN    = nfl.getlbr_NCMName().substring(0, 2);

		_MProduct.add(COD_ITEM);

		return new B0R0200(COD_ITEM, DESCR_ITEM, UNI, COD_GEN);
	} //createR0200

	public static ArrayList<B0R0300> createR0300(){

		ArrayList<B0R0300> artigos = new ArrayList<B0R0300>();

		for (int i=0;i<_Artigos.length;i++){
			String inciso = (_Artigos[i].substring(0, _Artigos[i].indexOf('-'))).trim();
			artigos.add(new B0R0300(String.valueOf(i+1),ARTIGO,inciso,_Artigos[i]));
		}

		return artigos;
	} //createR0300
	
	public static B5R5310 createR5310(int M_Product_ID, int C_Period_ID, BigDecimal medICMS_INI, BigDecimal medICMS_FIM){

		String COD_ITEM  = MProduct.get(ctx,M_Product_ID).getValue();
		COD_ITEM = COD_ITEM.trim();
		
		BigDecimal QUANT_INI = getQuantidade(M_Product_ID,C_Period_ID,true);
		BigDecimal CUS_INI   = QUANT_INI.multiply(getCusto(M_Product_ID,C_Period_ID,true));
		BigDecimal ICMS_INI  = CUS_INI.multiply(medICMS_INI.divide(Env.ONEHUNDRED, TaxBR.MCROUND));
		BigDecimal QUANT_FIM = getQuantidade(M_Product_ID,C_Period_ID,false);
		BigDecimal CUS_FIM   = QUANT_FIM.multiply(getCusto(M_Product_ID,C_Period_ID,false));
		BigDecimal ICMS_FIM  = CUS_FIM.multiply(medICMS_FIM.divide(Env.ONEHUNDRED, TaxBR.MCROUND));
		
		if (QUANT_INI.signum() == -1 || QUANT_FIM.signum() == -1) //NAO LANCAR SE SALDO NEGATIVO
			return null;
		
		return new B5R5310(COD_ITEM,QUANT_INI,CUS_INI,ICMS_INI,QUANT_FIM,CUS_FIM,ICMS_FIM);
	} //createR5315

	public static B5R5315 createR5315(int NUM_LANC, int C_Period_ID, int LBR_NotaFiscalLine_ID){

		MLBRNotaFiscalLine nfl = new MLBRNotaFiscalLine(ctx,LBR_NotaFiscalLine_ID,trx);
		MLBRNotaFiscal nf = new MLBRNotaFiscal(ctx,nfl.getLBR_NotaFiscal_ID(),trx);
		
		String COD_PAR  = TextUtil.toNumeric(nf.getlbr_BPCNPJ());
		if (COD_PAR == null || COD_PAR.trim().equals("")){
			MBPartner bp = new MBPartner(getCtx(),nf.getC_BPartner_ID(),null);
			COD_PAR = TextUtil.toNumeric(bp.getValue());
		}

		Timestamp DT_MOV = nf.getDateDoc();
		String    TIP_DOC    = NFF;
		if (nf.getlbr_NFeID() != null)
			TIP_DOC = NFe;

		String SER              = nf.getSerieNo();
		String NUM_DOC          = nf.getDocNo(); //DocumentNo without Serie
		String HIST             = nf.getDescription();
		String CFOP             = nfl.getlbr_CFOPName();
		String COD_LEGAL        = getCOD_LEGAL(nf);
		String COD_LANC         = getCOD_LANC(COD_LEGAL);
		
		BigDecimal QUAN = nfl.getQty();
		BigDecimal CUST_MERC = getCusto(nfl.getM_Product_ID(),C_Period_ID,false);
		BigDecimal VL_ICMS = nfl.getICMSAmt();
		
		BigDecimal PERC_CRDOUT  = Env.ZERO;
		BigDecimal VALOR_CRDOUT = Env.ZERO;
		BigDecimal VALOR_DESP   = Env.ZERO;

		return new B5R5315(Integer.toString(NUM_LANC),DT_MOV,HIST,TIP_DOC,COD_LEGAL,SER,NUM_DOC,
				CFOP,COD_PAR,COD_LANC,nf.isSOTrx(),QUAN,CUST_MERC,VL_ICMS,PERC_CRDOUT,
				VALOR_CRDOUT,VALOR_DESP);
	} //createR5315
	
	public static B5R5325 createR5325(int C_Period_ID, BigDecimal medICMS, String COD_LEGAL, int LBR_NotaFiscalLine_ID){
		
		if (COD_LEGAL == null)
			return null;
		
		MLBRNotaFiscalLine nfl = new MLBRNotaFiscalLine(ctx,LBR_NotaFiscalLine_ID,trx);
		
		BigDecimal VALOR_OP_ITEM  = nfl.getLineTotalAmt();
		//((custo*qtd)/medICMS) - valorICMS
		BigDecimal ICMS_GERA_ITEM = (getCusto(nfl.getM_Product_ID(),C_Period_ID,false).multiply(nfl.getQty()).multiply
		                            (medICMS.divide(Env.ONEHUNDRED, TaxBR.MCROUND))).subtract(nfl.getICMSAmt());
		
		credito = credito.add(ICMS_GERA_ITEM);
		
		return new B5R5325(COD_LEGAL,VALOR_OP_ITEM,ICMS_GERA_ITEM);
	} //createR5325
	
	public static B5R5330 createR5330(int LBR_NotaFiscalLine_ID){
		
		MLBRNotaFiscalLine nfl = new MLBRNotaFiscalLine(ctx,LBR_NotaFiscalLine_ID,trx);
		
		BigDecimal VALOR_BC_ITEM = nfl.getICMSBaseAmt();
		BigDecimal ALIQ_ITEM = nfl.getICMSRate();
		BigDecimal ICMS_DEB_ITEM = nfl.getICMSAmt();
		
		return new B5R5330(VALOR_BC_ITEM,ALIQ_ITEM,ICMS_DEB_ITEM);
	} //createR5330
	
	public static B5R5335 createR5335(int LBR_NotaFiscalLine_ID){

		MLBRNotaFiscalLine nfl = new MLBRNotaFiscalLine(ctx,LBR_NotaFiscalLine_ID,trx);
		MLBRNotaFiscal nf = new MLBRNotaFiscal(ctx,nfl.getLBR_NotaFiscal_ID(),trx);
		
		String NUM_DECL_EXP = nf.getLBR_DE().getlbr_DE();
		String COMP_OPER    = "0";
		BigDecimal SERV_COMUN = Env.ZERO;

		return new B5R5335(NUM_DECL_EXP,COMP_OPER,SERV_COMUN);
	} //createR5335

	public static B5R5350 createR5350(int LBR_NotaFiscalLine_ID){
		
		MLBRNotaFiscalLine nfl = new MLBRNotaFiscalLine(ctx,LBR_NotaFiscalLine_ID,trx);
		
		BigDecimal VALOR_OP_ITEM       = nfl.getLineTotalAmt();
		BigDecimal VALOR_BC_ITEM       = nfl.getICMSBaseAmt();
		BigDecimal ALIQ_ITEM           = nfl.getICMSRate();
		BigDecimal ICMS_DEB_ITEM       = nfl.getICMSAmt();
		BigDecimal ICMS_OPER_ITEM      = Env.ZERO;
		BigDecimal ICMS_OPER_ITEM_CRED = Env.ZERO;
		
		return new B5R5350(VALOR_OP_ITEM,VALOR_BC_ITEM,ALIQ_ITEM,ICMS_DEB_ITEM,
				ICMS_OPER_ITEM,ICMS_OPER_ITEM_CRED);
	} //createB5R5350
	
	public static B9R9900[] createR9900(){

		ArrayList<B9R9900> list = new ArrayList<B9R9900>();
		String[] regs = CounterSacred.getRegsSacred();
		for(int i=0; i<regs.length; i++){
			String reg = regs[i];
			int    qtd = CounterSacred.getCounter(reg);
			list.add(new B9R9900(reg.substring(2),""+qtd));
		}

		return list.toArray(new B9R9900[list.size()]);
	} //createR9900
	
	/**
	 * Retorna as Notas Fiscais por período (compra ou venda)
	 * @param dateFrom
	 * @param dateTo
	 * @param isSOTrx: true = venda, false = compra
	 * @return MNotaFiscal[]
	 */
	public static MLBRNotaFiscal[] getNotaFiscal(Timestamp dateFrom, Timestamp dateTo, boolean isSOTrx){

		ArrayList<MLBRNotaFiscal> list = new ArrayList<MLBRNotaFiscal>();

		String sql = "SELECT DISTINCT DateDoc, LBR_NotaFiscal_ID " +
				     "FROM Z_CREDICMS " +
				     "WHERE DateDoc BETWEEN ? AND ? " +
				     "AND IsSOTrx = ? AND AD_Client_ID = ?";

		sql += "ORDER BY DateDoc, LBR_NotaFiscal_ID";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{

			pstmt = DB.prepareStatement(sql, null);
			pstmt.setTimestamp(1, dateFrom);
			pstmt.setTimestamp(2, dateTo);
			pstmt.setString(3, isSOTrx ? "Y" : "N");
			pstmt.setInt(4, Env.getAD_Client_ID(ctx));
			rs = pstmt.executeQuery();
			while (rs.next()){
				list.add(new MLBRNotaFiscal(ctx,rs.getInt("LBR_NotaFiscal_ID"),null));
			}

		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}

		return list.toArray(new MLBRNotaFiscal[list.size()]);
	} //getNotaFiscal
	
	private static String getCOD_LEGAL(MLBRNotaFiscal nf){
		
		String COD_LEGAL = null;

		String bpRegion = nf.getlbr_BPRegion();
		if (bpRegion.equalsIgnoreCase(regionName)){ //MESMO ESTADO
			if (nf.getTaxRate("ICMS").compareTo(new BigDecimal("18")) >= 0){
				COD_LEGAL = null; //NAO SE ENQUADRA EM NENHUM ARTIGO
			}
			else if (nf.getTaxRate("ICMS").compareTo(new BigDecimal("7")) >= 0 &&
				nf.getTaxRate("ICMS").compareTo(new BigDecimal("12")) < 0){
				COD_LEGAL = "0003"; //ENTRE 7% e 12%
			}
			else{
			    COD_LEGAL = "0004"; //INTERNO OUTROS
			}
		}
		else{ //OUTRO ESTADO
			String bpCountry = nf.getlbr_BPCountry();
			if (!bpCountry.equalsIgnoreCase(country)){ //EXPORTACAO
				COD_LEGAL = "0007";
			}
			else{
				String bpSuframa = nf.get_ValueAsString("lbr_BPSuframa");
				if (!bpSuframa.equals("")){
					COD_LEGAL = "0009"; //ZONA FRANCA
				}
				else{
					if (nf.getTaxRate("ICMS").compareTo(new BigDecimal("18")) >= 0){
						COD_LEGAL = null; //NAO SE ENQUADRA EM NENHUM ARTIGO
					}
					else if (nf.getTaxRate("ICMS").compareTo(new BigDecimal("7")) >= 0 &&
						nf.getTaxRate("ICMS").compareTo(new BigDecimal("12")) < 0){
						COD_LEGAL = "0001"; //ENTRE 7% e 12%
					}
					else{
					    COD_LEGAL = "0002"; //ENTRE 12% e 18%
					}
				}
			}
		} //COD_LEGAL

		return COD_LEGAL;
	} //getCOD_LEGAL
	
	private static String getCOD_LANC(String COD_LEGAL){
		
		if (COD_LEGAL == null || COD_LEGAL.trim().isEmpty())
			return "317776"; //Ficha 6F
		
		if (COD_LEGAL.equals("0001") || // FORA 7%
		    COD_LEGAL.equals("0002") || // FORA 12%	
		    COD_LEGAL.equals("0003") || // INTERNO 7 %
		    COD_LEGAL.equals("0004") || // INTERNO OUTROS
		    COD_LEGAL.equals("0005")){  // OUTRAS
			return "317771"; //Ficha 6A
		}
		else if (COD_LEGAL.equals("0006")){ //REDUCAO BASE DE CALCULO
			return "317772"; //Ficha 6B
		}
		else if (COD_LEGAL.equals("0007") || //EXPORTACAO
				 COD_LEGAL.equals("0008")){  //EXPORTACAO INDIRETA
			return "317773"; //Ficha 6C
		}
		else if (COD_LEGAL.equals("0009")){ //ZONA FRANCA
			return "317774"; //Ficha 6D
		}
		else if (COD_LEGAL.equals("0010") ||
				 COD_LEGAL.equals("0011") ||
				 COD_LEGAL.equals("0013")){
			return "317775"; //Ficha 6E
		}
		
		return "317776"; //NENHUM DOS CASOS Ficha 6F 
	} //getCOD_LANC
	
	/**
	 * Quantidade por Período (inicial ou final)
	 * @param M_Product_ID
	 * @param C_Period_ID
	 * @param isStart = true (primeiro dia) / false (último dia)
	 * @return BigDecimal Quantidade
	 */
	public static BigDecimal getQuantidade(int M_Product_ID, int C_Period_ID, boolean isStart){

		MPeriod period = MPeriod.get(ctx, C_Period_ID);
		Timestamp date = isStart ? period.getStartDate() : period.getEndDate();
		
		String sql = "SELECT QtyOnDate(?,?) FROM DUAL";
		
		BigDecimal quantidade = DB.getSQLValueBD(trx, sql, new Object[]{M_Product_ID,date});
		
		return quantidade == null ? Env.ZERO : quantidade;
	} //getQuantidade
	
	/**
	 * Custo por Período (inicial ou final)
	 * @param M_Product_ID
	 * @param C_Period_ID
	 * @param isStart = true (mês anterior) / false (mês atual)
	 * @return BigDecimal Custo
	 */
	public static BigDecimal getCusto(int M_Product_ID, int C_Period_ID, boolean isStart){

		if (isStart){ //busca período anterior
			C_Period_ID = AdempiereLBR.getPreviousPeriod_ID(ctx, C_Period_ID);
		}
			
		String sql = "SELECT getCurrentCost(?,?,?) FROM DUAL";
		
		BigDecimal custo = DB.getSQLValueBD(trx, sql, new Object[]{Env.getAD_Client_ID(ctx),M_Product_ID,C_Period_ID});
		
		return custo == null ? Env.ZERO : custo;
	} //getCusto
	
	public static BigDecimal getValorICMS(Timestamp dateFrom, Timestamp dateTo, boolean isSOTrx){

		BigDecimal valorICMS = Env.ZERO;

		String sql = "SELECT SUM(ValorICMS) " +
	                 "FROM Z_CREDICMS " +
	                 "WHERE DateDoc BETWEEN ? AND ? " +
	                 "AND IsSOTrx = ? AND AD_Client_ID = ?";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{

			pstmt = DB.prepareStatement(sql, null);
			pstmt.setTimestamp(1, dateFrom);
			pstmt.setTimestamp(2, dateTo);
			pstmt.setString(3, isSOTrx ? "Y" : "N");
			pstmt.setInt(4, Env.getAD_Client_ID(ctx));
			rs = pstmt.executeQuery();
			if (rs.next()){
				valorICMS = rs.getBigDecimal(1);
			}

		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}

		return valorICMS;
	} //getValorICMS

	/**
	 * Média ICMS Compras por período
	 * @param dateFrom
	 * @param dateTo
	 * @return BigDecimal medICMS
	 */
	public static BigDecimal getMedICMS(Timestamp dateFrom, Timestamp dateTo){

		BigDecimal medICMS = getValorICMS(dateFrom,dateTo,false);

		medICMS = medICMS.divide(getValor(dateFrom,dateTo,false), TaxBR.MCROUND);

		return medICMS.setScale(4, TaxBR.ROUND).multiply(Env.ONEHUNDRED);
	} //getMedICMS
	
	/**
	 * Retorna o valor total por período (compra ou venda)
	 * @param dateFrom
	 * @param dateTo
	 * @param isSOTrx: true = venda, false = compra
	 * @return BigDecimal valor
	 */
	public static BigDecimal getValor(Timestamp dateFrom, Timestamp dateTo, boolean isSOTrx){

		BigDecimal valor = Env.ZERO;

		String sql = "SELECT SUM(ValorContabil) " +
				     "FROM Z_CREDICMS " +
				     "WHERE DateDoc BETWEEN ? AND ? " +
				     "AND IsSOTrx = ? AND AD_Client_ID = ?";


		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{

			pstmt = DB.prepareStatement(sql, null);
			pstmt.setTimestamp(1, dateFrom);
			pstmt.setTimestamp(2, dateTo);
			pstmt.setString(3, isSOTrx ? "Y" : "N");
			pstmt.setInt(4, Env.getAD_Client_ID(ctx));
			rs = pstmt.executeQuery();
			if (rs.next()){
				valor = rs.getBigDecimal(1);
			}

		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}

		return valor;
	} //getValor
	
} //SacredCompUtil