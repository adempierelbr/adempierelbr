package org.adempierelbr.gia.util;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.gia.beans.CR05;
import org.adempierelbr.gia.beans.CR10;
import org.adempierelbr.gia.beans.CR14;
import org.adempierelbr.gia.beans.CR20;
import org.adempierelbr.model.X_LBR_ApuracaoICMSLine;
import org.adempierelbr.model.X_LBR_ICMSBasis;
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MPeriod;
import org.compiere.model.MRegion;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

public class GIAUtil{
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(GIAUtil.class);
	
	private static Properties ctx = null;
	private static String     trx = null;
	
	private static MOrgInfo   orgInfo = null;
	private static MPeriod    period  = null;
	private static String     regionName = "SP";

	public static void setEnv(Properties ctx, String trx, int C_Period_ID){
		GIAUtil.ctx = ctx;
		GIAUtil.trx = trx;
		
		MOrgInfo oi    = MOrgInfo.get(ctx, Env.getAD_Org_ID(ctx),trx);
		MLocation loc  = new MLocation(ctx,oi.getC_Location_ID(),trx);
		MRegion   reg  = new MRegion(ctx,loc.getC_Region_ID(),trx);
		MPeriod period = new MPeriod(ctx,C_Period_ID,trx);
		
		GIAUtil.regionName = reg.getName();
		GIAUtil.orgInfo    = oi;
		GIAUtil.period     = period;
	} //setEnv
	
	public static CR05 createCR05(){
		
		String CNPJ   = orgInfo.get_ValueAsString("lbr_CNPJ");
		String IE     = orgInfo.get_ValueAsString("lbr_IE");
		Timestamp REF = period.getStartDate();
		BigDecimal SALDOCREDPERIODOANT = getCumulatedAmt();
		
		return new CR05(IE,CNPJ,REF,SALDOCREDPERIODOANT);
	} //createCR05
	
	public static CR10[] createCR10(){
		
		ArrayList<CR10> list = new ArrayList<CR10>();
		
		String sql = "SELECT CFOP, SUM(ValorContabil) as ValorContabil, SUM(BaseICMS) as Base, " +
				     "SUM(ValorICMS) as ValorImposto, SUM(IsentoICMS) as ValorIsento, " +
				     "SUM(OutrosICMS) as ValorOutras, SUM(ValorIPI) as ValorIPI " +
				     "FROM lbr_SitICMS_v " +
				     "WHERE IsCancelled = 'N' " +
				     "AND DataEntrada BETWEEN ? AND ? " +
				     "AND AD_Client_ID = ? " +
				     "GROUP BY CFOP ORDER BY 1"; 
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setTimestamp(1, period.getStartDate());
			pstmt.setTimestamp(2, period.getEndDate());
			pstmt.setInt(3, Env.getAD_Client_ID(ctx));
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				list.add(new CR10(rs.getString("CFOP"), rs.getBigDecimal("ValorContabil"),
						rs.getBigDecimal("Base"), rs.getBigDecimal("ValorImposto"), rs.getBigDecimal("ValorIsento"),
						rs.getBigDecimal("ValorOutras"), rs.getBigDecimal("ValorIPI")));
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		return list.toArray(new CR10[list.size()]);
	} //createCR10
	
	public static CR14[] createCR14(String CFOP){
		
		ArrayList<CR14> list = new ArrayList<CR14>();
		
		String sql = "SELECT CFOP, UF, SUM(ValorContabil) as ValorContabil, SUM(BaseICMS) as Base, " +
				     "SUM(ValorICMS) as ValorImposto, SUM(OutrosICMS) as ValorOutras " +
				     "FROM lbr_SitICMS_v " +
				     "WHERE IsCancelled = 'N' " +
				     "AND DataEntrada BETWEEN ? AND ? " +
				     "AND AD_Client_ID = ? AND CFOP = ? " +
				     "GROUP BY CFOP, UF ORDER BY 1,2"; 
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setTimestamp(1, period.getStartDate());
			pstmt.setTimestamp(2, period.getEndDate());
			pstmt.setInt(3, Env.getAD_Client_ID(ctx));
			pstmt.setString(4, CFOP);
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				String UF = EstadoBR.getEstadoBR(rs.getString("UF")).getCodigo();
				BigDecimal valorContabil_1 = rs.getBigDecimal("ValorContabil");
				BigDecimal valorContabil_2 = Env.ZERO;
				BigDecimal base_1 = rs.getBigDecimal("Base");
				BigDecimal base_2 = Env.ZERO;
				
				if (CFOP.equals("6.107") || CFOP.equals("6.108")){
					valorContabil_2 = valorContabil_1;
					base_2 = base_1;
					valorContabil_1 = Env.ZERO; base_1 = Env.ZERO;
				}
				
				list.add(new CR14(CFOP, UF, valorContabil_1, base_1, valorContabil_2, 
						base_2, rs.getBigDecimal("ValorImposto"), rs.getBigDecimal("ValorOutras")));
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		return list.toArray(new CR14[list.size()]);
	} //createCR14
	
	public static CR20[] createCR20(){
		
		ArrayList<CR20> list = new ArrayList<CR20>();
		
		String sql = "SELECT * FROM LBR_ApuracaoICMSLine al " +
				     "WHERE al.LBR_ApuracaoICMS_ID = " +
				     "(SELECT LBR_ApuracaoICMS_ID " +
				      "FROM LBR_ApuracaoICMS ap " +
				      "WHERE ap.C_Period_ID = ? AND ap.AD_Client_ID = ?)";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt(1, period.getC_Period_ID());
			pstmt.setInt(2, Env.getAD_Client_ID(ctx));
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				X_LBR_ApuracaoICMSLine icmsLine = new X_LBR_ApuracaoICMSLine(ctx,rs,trx);
				X_LBR_ICMSBasis  fund = new X_LBR_ICMSBasis(ctx,icmsLine.getLBR_ICMSBasis_ID(),trx);
				
				list.add(new CR20(fund.getValue(), icmsLine.getAmt(),
						fund.getType().equals("P") ? "0" : "1", fund.getHelp(),icmsLine.getDescription()));
				
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		return list.toArray(new CR20[list.size()]);
	} //createCR20
	
	private static BigDecimal getCumulatedAmt(){
		
		BigDecimal amt = null;
		
		String sql = "SELECT TotalAmt FROM LBR_ApuracaoICMS ai " +
				     "WHERE ai.C_Period_ID = " +
				     	"(SELECT p1.C_Period_ID FROM C_Period p1 " +
				     	"WHERE p1.StartDate = " +
				     		"(SELECT TRUNC(p2.StartDate-1,'MM') FROM C_Period p2 " +
				     		"WHERE p2.C_Period_ID = ?) AND p1.AD_Client_ID = ?)";
		
		amt = DB.getSQLValueBD(get_TrxName(), sql, 
				new Object[]{period.getC_Period_ID(),Env.getAD_Client_ID(ctx)});
		
		if (amt == null)
			amt =  Env.ZERO;
		
		return amt;
	} //getCumulatedAmt	
	
	public static Properties getCtx(){
		return ctx;
	}
	
	public static String get_TrxName(){
		return trx;
	}
	
	public static MOrgInfo getOrgInfo(){
		return orgInfo;
	}
	
	public static String getRegionName(){
		return regionName;
	}
	
} //GIAUtil