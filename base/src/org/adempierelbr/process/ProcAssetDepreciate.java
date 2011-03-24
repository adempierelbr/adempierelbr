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

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.TaxBR;
import org.compiere.model.MAsset;
import org.compiere.model.MAssetGroupAcct;
import org.compiere.model.MDepreciationWorkfile;
import org.compiere.model.MPeriod;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 *	ProcAssetDepreciate
 *
 *	Process to Depreciate Asset
 *	
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: ProcAssetDepreciate, 03/03/2011 10:07:00 mgrigioni
 */
public class ProcAssetDepreciate extends SvrProcess
{
	
	/** Ativo               */
	private static int p_A_Asset_ID = 0;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ProcAssetDepreciate.class);
	
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
		log.info("ProcAssetDepreciate Process " + "Ativo: " + p_A_Asset_ID);
		
		p_A_Asset_ID = getRecord_ID();
		
		String msg = depreciate(getCtx(),p_A_Asset_ID,get_TrxName());
		if (msg != null)
			return msg;
    
		return Msg.getMsg(Env.getAD_Language(getCtx()), "ProcessOK", true);
	}	//	doIt
	
	public static String depreciate(Properties ctx, int A_Asset_ID, String trxName){
		
		if (A_Asset_ID == 0)
			return "Erro. Ativo = 0";
		
		int AD_Org_ID       = Env.getAD_Org_ID(ctx);
		int C_AcctSchema_ID = Env.getContextAsInt(ctx, "$C_AcctSchema_ID");
		
		MPeriod currentPeriod = MPeriod.get(ctx, Env.getContextAsDate(ctx, "#Date"), AD_Org_ID);
		if (currentPeriod == null)
			return "Erro. Período Atual não encontrado";
		
		MAsset asset = new MAsset(ctx,A_Asset_ID,trxName);
		if (asset.isFullyDepreciated()){ //TOTALMENTE DEPRECIADO
			return null;
		}
		
		MPeriod assetPeriod = MPeriod.get(ctx,asset.getA_Asset_CreateDate(),AD_Org_ID);
		if (assetPeriod == null)
			return "Erro. Período da criação do ativo não encontrado";
		
		MAssetGroupAcct assetGroup = AdempiereLBR.getMAssetGroupAcct(ctx,asset.getA_Asset_Group_ID(),C_AcctSchema_ID);
		if (assetGroup.getUseLifeMonths() <= 0){
			return null;
		}
		
		Timestamp startDate = assetPeriod.getEndDate();
		Timestamp endDate   = currentPeriod.getEndDate();
		
		Timestamp endDepreciate = AdempiereLBR.addMonths(startDate, assetGroup.getUseLifeMonths()-1);
		          endDepreciate = AdempiereLBR.getLastDayOfMonth(endDepreciate);
		          
		if (endDepreciate.compareTo(endDate) < 0){
			endDate = endDepreciate;
		}
		
		int Last_Depreciation_Workfile_ID = 0;
		
		while(startDate.compareTo(endDate) <= 0){
			
			int A_Period_Posted = MPeriod.getC_Period_ID(ctx,startDate,AD_Org_ID);
			if (A_Period_Posted == 0){ //Não achou o período finaliza
				break;
			}
			
			startDate = AdempiereLBR.getLastDayOfMonth(AdempiereLBR.addDays(startDate, 1)); //Próximo período
			
			int A_Depreciation_Workfile_ID = getA_Depreciation_Workfile_ID(A_Asset_ID,A_Period_Posted,trxName);
			if (A_Depreciation_Workfile_ID > 0){
				Last_Depreciation_Workfile_ID = A_Depreciation_Workfile_ID;
				continue; //Já possui lançamento para este período
			}
			
			BigDecimal A_Asset_Cost       = asset.getA_QTY_Original(); //CUSTO DO ATIVO
			BigDecimal A_Accumulated_Depr = Env.ZERO; //DEPRECIAÇÃO ACUMULADA
			BigDecimal A_QTY_Current      = Env.ZERO; //VALOR DA DEPRECIACAO DO MES
			
			//VALORES
			if (Last_Depreciation_Workfile_ID != 0){ //ULTIMA REGISTRO
				MDepreciationWorkfile oldDepreciation = new MDepreciationWorkfile(ctx,Last_Depreciation_Workfile_ID,trxName);
				A_Asset_Cost = oldDepreciation.getA_Asset_Cost();
				A_QTY_Current = oldDepreciation.getA_QTY_Current();
				A_Accumulated_Depr = oldDepreciation.getA_Accumulated_Depr().add(A_QTY_Current);
			}
			else{ //OU PRIMEIRO, PEGA DA NF
				MLBRNotaFiscalLine nfLine = new MLBRNotaFiscalLine(ctx,asset.get_ValueAsInt("LBR_NotaFiscalLine_ID"),trxName);
				
				if (A_Asset_Cost.signum() != 1){
					A_Asset_Cost = nfLine.getTotalOperationAmt();
				
					if (A_Asset_Cost.signum() == 1){
						BigDecimal qtd = nfLine.getQty();
						if (qtd.signum() != 1){
							qtd = Env.ONE;
						}
						A_Asset_Cost = A_Asset_Cost.divide(qtd, TaxBR.MCROUND);	
					}
					else{
						break;
					}
				}
				
				A_QTY_Current = (A_Asset_Cost.divide(new BigDecimal(assetGroup.getUseLifeMonths()), TaxBR.MCROUND)).setScale(5, TaxBR.ROUND);
				A_Accumulated_Depr = A_QTY_Current;
			}
						
			MDepreciationWorkfile depreciation = new MDepreciationWorkfile(ctx,0,trxName);
			depreciation.setA_Asset_ID(A_Asset_ID);
			depreciation.setA_Period_Posted(A_Period_Posted);
			depreciation.setA_Asset_Life_Years(assetGroup.getUseLifeMonths() / 12);
			depreciation.setPostingType(MDepreciationWorkfile.POSTINGTYPE_Actual);
			depreciation.setA_Asset_Cost(A_Asset_Cost);
			depreciation.setA_Accumulated_Depr(A_Accumulated_Depr);
			depreciation.setA_QTY_Current(A_QTY_Current);
			if (!depreciation.save(trxName)){
				return "Erro. Problemas ao salvar a depreciação. " +
					   "A_Asset_ID = " + A_Asset_ID + ", A_Period_Posted = " + A_Period_Posted;
			}
			
			Last_Depreciation_Workfile_ID = depreciation.get_ID();
		} //loop dos meses
		
		if (getCountDeprecation(A_Asset_ID,trxName) == assetGroup.getUseLifeMonths()){
			asset.setAssetDepreciationDate(endDepreciate);
			asset.setIsFullyDepreciated(true);
			asset.save(trxName);
		}
		
		return null;
	} //depreciate
	
	private static int getA_Depreciation_Workfile_ID(int A_Asset_ID, int A_Period_Posted, String trxName){
		
		String sql = "SELECT A_Depreciation_Workfile_ID " +
				     "FROM A_Depreciation_Workfile " +
				     "WHERE A_Asset_ID = ? AND A_Period_Posted = ? AND IsActive = 'Y'";
		
		int A_Depreciation_Workfile_ID = DB.getSQLValue(trxName, sql, new Object[]{A_Asset_ID,A_Period_Posted});
	
		return A_Depreciation_Workfile_ID;
	} //getA_Depreciation_Workfile_ID
		
	private static int getCountDeprecation(int A_Asset_ID, String trxName){
		
		String sql = "SELECT COUNT(*) " +
				     "FROM A_Depreciation_Workfile " +
				     "WHERE A_Asset_ID = ? AND IsActive = 'Y'";
		
		int count = DB.getSQLValue(trxName, sql, A_Asset_ID);
	
		return count;
	} //getCountDeprecation

}	//	ProcAssetDepreciate