package org.adempierelbr.process;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.compiere.model.MProduct;
import org.compiere.model.PO;
import org.compiere.model.X_M_Production;
import org.compiere.model.X_M_ProductionLine;
import org.compiere.model.X_M_ProductionPlan;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;

/**
 * Esta classe tem por objetivo criar uma produção negativa com base em uma
 * produção realizada
 * 
 * @author pedroquina
 * @contributor William Souza (Kenos, www.kenos.com.br)
 */
public class ProcCancelProduction extends SvrProcess
{

	private int p_Record_ID = 0;
	
	@Override
	protected void prepare()
	{
		p_Record_ID = getRecord_ID();
	}	//prepare

	@Override
	protected String doIt() throws Exception
	{
		
		boolean isCreated = false;
		boolean isCancelled = false;
		boolean processed = false;
		
		log.info("Search fields in M_Production");
		
		X_M_Production producaoOriginal = new X_M_Production(getCtx(), p_Record_ID,	get_TrxName());
		X_M_Production producaoDestino = new X_M_Production(getCtx(), 0, get_TrxName());

		isCreated 	= producaoOriginal.isCreated();
		processed 	= producaoOriginal.isProcessed();
		isCancelled = producaoOriginal.get_ValueAsBoolean("IsCancelled");
		
		
		if (isCreated && processed && isCancelled)
		{
			log.info("Already Posted");
			return "@AlreadyPosted@";
		}

		PO.copyValues(producaoOriginal, producaoDestino);
		producaoDestino.setAD_Org_ID(producaoOriginal.getAD_Org_ID());
		producaoDestino.set_ValueOfColumn("IsCancelled", "Y");
		producaoDestino.setDescription("Esta produção cancela a produção (ID) : "+ p_Record_ID);
		producaoDestino.save();

		// Criar Planos de Produção
		if (!criarPlanoProducao(producaoOriginal, producaoDestino))
		{
			return "Não há plano de produção ou linha de plano de produção !!!!";
		}

		// atualizar produção de cancelamento
		producaoOriginal.setDescription("Cancelada pela produção (ID) : " + producaoDestino.getM_Production_ID());
		producaoOriginal.set_ValueOfColumn("isCreated", "Y");
		producaoOriginal.setProcessed(true);
		producaoOriginal.set_ValueOfColumn("IsCancelled", "Y");
		producaoOriginal.save();

		// Cancela a produção de cancelamento
		return processarCancelamento(producaoDestino.getM_Production_ID());
	} 	// doIt

	private boolean criarPlanoProducao(X_M_Production producaoOriginal,	X_M_Production producaoDestino) throws SQLException
	{
		String sql = "SELECT M_ProductionPlan_ID FROM M_ProductionPlan WHERE M_Production_ID ="
				+ producaoOriginal.getM_Production_ID();
		PreparedStatement pstmt = DB.prepareStatement(sql, get_TrxName());
		ResultSet rs = pstmt.executeQuery();
		int m_ProductionPlan_ID = 0;
		X_M_ProductionPlan planoOriginal = null;
		X_M_ProductionPlan planoDestino = null;
		boolean existePlano = false;
		boolean existeLinha = false;
		while (rs.next())
		{
			existePlano = true;
			m_ProductionPlan_ID = rs.getInt("M_ProductionPlan_ID");
			planoOriginal = new X_M_ProductionPlan(getCtx(), m_ProductionPlan_ID,
					get_TrxName());
			planoDestino = new X_M_ProductionPlan(getCtx(), 0, get_TrxName());
			PO.copyValues(planoOriginal, planoDestino);
			planoDestino.setAD_Org_ID(planoOriginal.getAD_Org_ID());
			planoDestino.setM_Production_ID(producaoDestino.getM_Production_ID());
			planoDestino.setProductionQty(planoOriginal.getProductionQty().negate());
			planoDestino.setProcessed(true);
			planoDestino.save();
			existeLinha = criarLinhaProducao(planoOriginal, planoDestino);
			if (!existeLinha)
			{
				return existeLinha;
			}
		}
		rs.close();
		pstmt.close();
		pstmt = null;
		return existePlano;
		
	}	// criarPlanoProducao

	private boolean criarLinhaProducao(X_M_ProductionPlan planoOriginal, X_M_ProductionPlan planoDestino) throws SQLException
	{
		String sql = "SELECT M_ProductionLine_ID FROM M_ProductionLine WHERE M_ProductionPlan_ID ="
				+ planoOriginal.getM_ProductionPlan_ID();
		PreparedStatement pstmt = DB.prepareStatement(sql, get_TrxName());
		ResultSet rs = pstmt.executeQuery();
		int m_ProductionPlan_ID = 0;
		X_M_ProductionLine linhaOriginal = null;
		X_M_ProductionLine linhaDestino = null;
		boolean existeLinha = false;
		while (rs.next())
		{
			existeLinha = true;
			m_ProductionPlan_ID = rs.getInt("M_ProductionLine_ID");
			linhaOriginal = new X_M_ProductionLine(getCtx(), m_ProductionPlan_ID,
					get_TrxName());
			linhaDestino = new X_M_ProductionLine(getCtx(), 0, get_TrxName());
			PO.copyValues(linhaOriginal, linhaDestino);
			linhaDestino.setAD_Org_ID(planoDestino.getAD_Org_ID());
			linhaDestino.setM_ProductionPlan_ID(planoDestino
					.getM_ProductionPlan_ID());
			linhaDestino.setMovementQty(linhaOriginal.getMovementQty().negate());
			linhaDestino.setProcessed(true);
			linhaDestino.save();
		}
		rs.close();
		pstmt.close();
		pstmt = null;

		return existeLinha;
		
	}	// criarLinhaProducao

	/**
	 * Método copiado e adaptado da classe M_Production_Run
	 * 
	 * @param p_Record_ID
	 * @throws SQLException
	 */
	private String processarCancelamento(int p_Record_ID) throws SQLException
	{
		// All Production Lines
		String sql = " SELECT pl.M_ProductionLine_ID, pl.AD_Client_ID, pl.AD_Org_ID,p.MovementDate, "
				+ " pl.M_Product_ID, pl.M_AttributeSetInstance_ID, pl.MovementQty,pl.M_Locator_ID "
				+ " FROM M_Production p, M_ProductionLine pl, M_ProductionPlan pp "
				+ " WHERE p.M_Production_ID=pp.M_Production_ID "
				+ " AND pp.M_ProductionPlan_ID=pl.M_ProductionPlan_ID "
				+ " AND pp.M_Production_ID= "
				+ p_Record_ID + " ORDER BY pp.Line, pl.Line";

		PreparedStatement CUR_PL_Post = null;

		CUR_PL_Post = DB.prepareStatement(sql, get_TrxName());
		ResultSet pl = CUR_PL_Post.executeQuery();
		while (pl.next())
		{
			sql = " SELECT BomQtyOnHand (" + pl.getInt("M_Product_ID") + ", null,"
					+ pl.getInt("M_Locator_ID") + ") FROM DUAL";
			PreparedStatement cnsql = null;
			cnsql = DB.prepareStatement(sql, get_TrxName());
			ResultSet cs = cnsql.executeQuery();
			int countTo = 0;
			if (cs.next())
				countTo = cs.getInt(1);
			cs.close();
			cnsql.close();
			cnsql = null;

			// Check Stock levels for reductions
			if ((pl.getInt("MovementQty") < 0)
					&& ((countTo) + pl.getInt("MovementQty") < 0))

			{
				DB.rollback(true, get_TrxName());

				MProduct produto = new MProduct(getCtx(), pl.getInt("M_Product_ID"), get_TrxName());
				return "@NotEnoughStocked@: " + produto.getName();
			}

			// Adjust Quantity at Location
			String sqlupd = " UPDATE M_Storage SET	QtyOnHand = QtyOnHand + "
					+ pl.getInt("MovementQty") + ", Updated = SysDate "
					+ " WHERE	M_Locator_ID = " + pl.getInt("M_Locator_ID")
					+ " AND   M_AttributeSetInstance_ID = COALESCE("
					+ pl.getInt("M_AttributeSetInstance_ID") + ",0)"
					+ " AND	M_Product_ID =" + pl.getInt("M_Product_ID");
			int cntu = DB.executeUpdate(sqlupd, get_TrxName());

			// Product not on Stock yet
			if (cntu == 0)
			{
				String sqlins = "INSERT INTO M_Storage "
						+ " (M_Product_ID, M_Locator_ID, M_AttributeSetInstance_ID, "
						+ " AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, "
						+ " QtyOnHand, QtyReserved, QtyOrdered) VALUES ("
						+ pl.getInt("M_Product_ID") + ","
						+ pl.getInt("M_Locator_ID") + ", COALESCE("
						+ pl.getInt("M_AttributeSetInstance_ID") + ",0), "
						+ pl.getInt("AD_Client_ID") + "," + pl.getInt("AD_Org_ID")
						+ ", 'Y', SysDate, 0, SysDate, 0, "
						+ pl.getInt("MovementQty") + ", 0, 0)";
				DB.executeUpdate(sqlins, get_TrxName());

			}

			// Create Transaction Entry
			int nextNo = DB.getNextID(pl.getInt("AD_Org_ID"),
					"M_Transaction", get_TrxName());
			String sqlins = " INSERT INTO M_Transaction (M_Transaction_ID, M_ProductionLine_ID,"
					+ " AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy,"
					+ " MovementType, M_Locator_ID, M_Product_ID, M_AttributeSetInstance_ID,"
					+ " MovementDate, MovementQty) "
					+ "VALUES (?,?,?,?,'Y',SysDate,0,SysDate,0,'P-',?,?,COALESCE(?,0), ?,?)";
			
			PreparedStatement pstmt = DB.prepareStatement(sqlins,
					ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE,
					get_TrxName());
			
			pstmt.setInt(1, nextNo);
			pstmt.setInt(2, pl.getInt("M_ProductionLine_ID"));
			pstmt.setInt(3, pl.getInt("AD_Client_ID"));
			pstmt.setInt(4, pl.getInt("AD_Org_ID"));
			pstmt.setInt(5, pl.getInt("M_Locator_ID"));
			pstmt.setInt(6, pl.getInt("M_Product_ID"));
			pstmt.setInt(7, pl.getInt("M_AttributeSetInstance_ID"));
			pstmt.setTimestamp(8, pl.getTimestamp("MovementDate"));
			pstmt.setDouble(9, pl.getDouble("MovementQty"));
			pstmt.executeUpdate();

		}
		pl.close();
		CUR_PL_Post.close();
		CUR_PL_Post = null;

		return "@Success@";
		
	}	// processarCancelamento
}	//	ProcCancelProduction