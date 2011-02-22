package org.adempierelbr.sacred.simp;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.sacred.CounterSacred;
import org.adempierelbr.sacred.simp.beans.B0R0000;
import org.adempierelbr.sacred.simp.beans.B0R0150;
import org.adempierelbr.sacred.simp.beans.B0R0300;
import org.adempierelbr.sacred.simp.beans.B5R5315;
import org.adempierelbr.sacred.simp.beans.B5R5325;
import org.adempierelbr.sacred.simp.beans.B5R5330;
import org.adempierelbr.sacred.simp.beans.B5R5335;
import org.adempierelbr.sacred.simp.beans.B5R5350;
import org.adempierelbr.sacred.simp.beans.B9R9900;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.TaxBR;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MCountry;
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MRegion;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

public class SacredSimpUtil{

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(SacredSimpUtil.class);

	private static Properties ctx = null;
	private static String     trx = null;
	private static String     regionName = "SP";
	private static String     country    = "BR";

	private static ArrayList<String> _BPartner = new ArrayList<String>();

	public static BigDecimal custo       = Env.ZERO;

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
		SacredSimpUtil.ctx = ctx;
		SacredSimpUtil.trx = trx;

		MOrgInfo oi = MOrgInfo.get(ctx, Env.getAD_Org_ID(ctx),trx);
		MLocation loc = new MLocation(ctx,oi.getC_Location_ID(),trx);
		MRegion   reg = new MRegion(ctx,loc.getC_Region_ID(),trx);
		SacredSimpUtil.regionName = reg.getName();

		custo = Env.ZERO;

		_BPartner = new ArrayList<String>();
	}

	public static Properties getCtx(){
		return ctx;
	}

	public static String get_TrxName(){
		return trx;
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

	public static ArrayList<B0R0300> createR0300(){

		ArrayList<B0R0300> artigos = new ArrayList<B0R0300>();

		for (int i=0;i<_Artigos.length;i++){
			String inciso = (_Artigos[i].substring(0, _Artigos[i].indexOf('-'))).trim();
			artigos.add(new B0R0300(String.valueOf(i+1),ARTIGO,inciso,_Artigos[i]));
		}

		return artigos;
	} //createR0300

	public static B5R5315 createR5315(MLBRNotaFiscal nf){

		String COD_PAR  = TextUtil.toNumeric(nf.getlbr_BPCNPJ());
		if (COD_PAR == null || COD_PAR.trim().equals("")){
			MBPartner bp = new MBPartner(getCtx(),nf.getC_BPartner_ID(),null);
			COD_PAR = TextUtil.toNumeric(bp.getValue());
		}

		Timestamp DT_EMISSAO = nf.getDateDoc();
		String    TIP_DOC    = NFF;
		if (nf.getlbr_NFeID() != null)
			TIP_DOC = NFe;

		String SER              = nf.getSerieNo();
		String NUM_DOC          = nf.getDocNo(); //DocumentNo without Serie
		BigDecimal VALOR_SAI    = nf.getGrandTotal();
		BigDecimal PERC_CRDOUT  = Env.ZERO;
		BigDecimal VALOR_CRDOUT = Env.ZERO;

		return new B5R5315(DT_EMISSAO,TIP_DOC,SER,NUM_DOC,COD_PAR,VALOR_SAI,
				PERC_CRDOUT,VALOR_CRDOUT);
	} //createR5315

	public static B5R5325 createR5325(MLBRNotaFiscal nf, BigDecimal IVA_UTILIZADO, BigDecimal PER_MED_ICMS){

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

		if (COD_LEGAL == null)
			return null;

		BigDecimal cost = nf.getCost(2000000, 2000000);
		custo = custo.add(cost);

		BigDecimal CRED_EST_ICMS = cost.multiply(PER_MED_ICMS.divide(Env.ONEHUNDRED, TaxBR.MCROUND));
		BigDecimal ICMS_GERA     = CRED_EST_ICMS.subtract(nf.getICMSDebAmt());

		return new B5R5325(COD_LEGAL,IVA_UTILIZADO,PER_MED_ICMS,CRED_EST_ICMS,ICMS_GERA);
	} //createR5325

	public static B5R5330 createR5330(MLBRNotaFiscal nf){

		BigDecimal VALOR_BC = nf.getICMSBase();
		BigDecimal ICMS_DEB = nf.getICMSDebAmt();

		return new B5R5330(VALOR_BC,ICMS_DEB);
	} //createR5330

	public static B5R5335 createR5335(MLBRNotaFiscal nf){

		String NUM_DECL_EXP = nf.getLBR_DE().getlbr_DE();
		String COMP_OPER    = "0";

		return new B5R5335(NUM_DECL_EXP,COMP_OPER);
	} //createR5335

	public static B5R5350 createR5350(MLBRNotaFiscal nf){

		BigDecimal VALOR_BC = nf.getICMSBase();
		BigDecimal ICMS_DEB = nf.getICMSDebAmt();

		return new B5R5350(VALOR_BC,ICMS_DEB,"");
	} //createR5350

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
	 * IVA por período (COMPRAS - VENDAS) / COMPRAS
	 * @param dateFrom
	 * @param dateTo
	 * @return BigDecimal IVA
	 */
	public static BigDecimal getIVA(Timestamp dateFrom, Timestamp dateTo){

		BigDecimal compras = getValor(dateFrom,dateTo,false);
		BigDecimal vendas  = getValor(dateFrom,dateTo,true);

		BigDecimal iva = (vendas.subtract(compras)).divide(compras, TaxBR.MCROUND);

		return iva.setScale(4, TaxBR.ROUND);
	} //getIVA

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

} //SacredSimpUtil