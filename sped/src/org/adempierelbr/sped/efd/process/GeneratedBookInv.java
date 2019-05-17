package org.adempierelbr.sped.efd.process;

import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempierelbr.model.X_LBR_SPED;
import org.compiere.model.MPeriod;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * 			Gerar Inventário SPED Bloco K
 * 
 * @author Rogério Feitosa (Kenos, www.kenos.com.br)
 * @version $Id: ProcGeneratedBookInv.java, v1.0 2019/01/28 17:59:55, kenos_rfeitosa Exp $
 * 
 */
public class GeneratedBookInv extends SvrProcess
{

	//	SPED
	private int p_LBR_SPED_ID = 0;
	
	/**
	 * 
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals("LBR_SPED_ID"))
				p_LBR_SPED_ID = para[i].getParameterAsInt();
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}	//	for
		
	}

	/**
	 * 
	 */
	protected String doIt() throws Exception
	{
		if (p_LBR_SPED_ID <= 0)
			throw new AdempiereException("Obrigatório SPED");
		
		//	SPED
		X_LBR_SPED sped = new X_LBR_SPED(Env.getCtx(), p_LBR_SPED_ID, null);
		
		//	Periodo
		MPeriod period = MPeriod.get(Env.getCtx(), sped.getC_Period_ID());
		
		//	DELETAR Registros do período
		DB.executeUpdate("DELETE FROM LBR_BookInventory WHERE AD_Client_ID = " + 
						sped.getAD_Client_ID() + " AND LBR_SPED_ID = " + sped.getLBR_SPED_ID() + ";", null);
		
		// Identificar ID da Sequencia da tabela LBR_BookInventory
		int nextId = DB.getSQLValue(null, "SELECT AD_Sequence_ID FROM AD_Sequence WHERE Name='LBR_BookInventory' " + 
											" AND AD_Client_ID IN (" + sped.getAD_Client_ID() + ",0)");
		
		//	Se não encontrar a Sequência
		if (nextId < 0)
			return "Próximo ID da tabela LBR_BookInventory não encontrada";
		
		// sql
		String sql = " INSERT INTO LBR_BookInventory (ad_client_id, ad_org_id,  " 						+ 
				"   c_bpartner_id, lbr_sped_id, created, createdby, isactive, isrevalidate,  " + 
				"   lbr_bookinventory_id, lbr_warehousetype, movementdate," + 
				"   m_product_id, qtybook, updated, updatedby)									" +
				"   SELECT mt.AD_Client_ID, mt.AD_Org_ID, l.C_BPartner_ID, " + sped.getLBR_SPED_ID() + "," 			+ 
				" 	current_timestamp, " + sped.getUpdatedBy() + ", 'Y', 'N', nextid(" + nextId + ",'Y'), " +
				"   wh.lbr_WarehouseType,	" + DB.TO_DATE(period.getEndDate()) + ", mt.M_Product_ID,	" +
				"	ROUND(SUM(MovementQty), 4), current_timestamp, " + sped.getUpdatedBy() + 
				" 	FROM M_Transaction mt																	" +
				"	INNER JOIN M_Product p ON mt.M_Product_id = p.M_Product_id							" +
				"	INNER JOIN M_Locator l ON mt.M_Locator_id = l.M_Locator_id 							" +
				"	INNER JOIN M_Warehouse wh ON wh.M_Warehouse_id = l.M_Warehouse_id					" +
				" WHERE mt.AD_Client_ID = " + getAD_Client_ID()											  +
				"   AND mt.AD_Org_ID = " + sped.getAD_Org_ID()											  +
				"	AND mt.MovementDate <= " + DB.TO_DATE(period.getEndDate())							  +
				"	AND wh.AD_Org_ID = mt.AD_Org_ID 													" +
				"	AND p.lbr_ItemTypeBR IN ('00', '01', '02','03', '04','05', '06', '10')				" +
				" GROUP BY																				" +
				" mt.AD_Client_ID, mt.AD_Org_ID, mt.M_Product_ID, l.C_BPartner_ID, wh.lbr_WarehouseType " + 
				" HAVING SUM(MovementQty) > 0															" +
				" ORDER BY mt.M_Product_ID																";
		
		//	Gerar Inventário Bloco K
		DB.executeUpdate(sql, null);
		
		return "@Sucess@ Inventário Bloco K Gerado";
	}	//	doit
}
