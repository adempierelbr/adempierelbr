package org.adempierelbr.process;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.compiere.model.MSequence;
import org.compiere.model.PO;
import org.compiere.model.X_M_Production;
import org.compiere.model.X_M_ProductionLine;
import org.compiere.model.X_M_ProductionPlan;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;

/**
 * Esta classe tem por objetivo criar uma produção negativa com base em uma produção realizada
 * @author pedroquina
 *
 */
public class ProcCancelProduction extends SvrProcess {

	
	@Override
	protected void prepare() {
		
	}

	@Override
	protected String doIt() throws Exception {
		
		int p_Record_ID = getRecord_ID();		
		boolean isCreated = false;
		boolean isCancelled = false;
		boolean processed = false;
		int ad_Client_ID = 0;
		int ad_Org_ID = 0;
		
		log.info("Search fields in M_Production");

		/**
		 * Get Info + Lock
		 */
		String sql = " SELECT IsCreated " + ", Processed " + ", AD_Client_ID "
				+ ", AD_Org_ID, isCancelled " + " FROM M_Production "
				+ " WHERE M_Production_ID = " + p_Record_ID;
		PreparedStatement pstmt = DB.prepareStatement(sql, get_TrxName());
		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {
			isCancelled = rs.getString("IsCancelled").equals("Y");
			isCreated = rs.getString("IsCreated").equals("Y");
			processed = rs.getString("Processed").equals("Y");
			ad_Client_ID = rs.getInt("AD_Client_ID");
			ad_Org_ID = rs.getInt("AD_Org_ID");
		}
		rs.close();
		pstmt.close();
		pstmt = null;

		if ( isCreated && processed && isCancelled ){
			log.info("Already Posted");
			return "@AlreadyPosted@";

		}
		
		
		X_M_Production producaoOriginal = new X_M_Production(getCtx(),p_Record_ID, get_TrxName());
		X_M_Production producaoDestino = new X_M_Production(getCtx(), 0, null);
		
		PO.copyValues(producaoOriginal, producaoDestino);
		producaoDestino.setAD_Org_ID(producaoOriginal.getAD_Org_ID());
		producaoDestino.set_ValueOfColumn("IsCancelled", "Y");
		producaoDestino.setDescription("Esta produção cancela a produção (ID) : " + p_Record_ID);
		producaoDestino.save();
		
		//Criar Planos de Produção
		if ( ! criarPlanoProducao(producaoOriginal,producaoDestino) ) {
			return "Não há plano de produção ou linha de plano de produção !!!!";
		}
		
		// Cancela a produção de cancelamento
		processarCancelamento(producaoDestino.getM_Production_ID());
		
		// atualizar produção de cancelamento
		producaoOriginal.setDescription("Cancelada pela produção (ID) : " + producaoDestino.getM_Production_ID() );
		producaoOriginal.set_ValueOfColumn("isCreated", "Y");
		producaoOriginal.setProcessed(true);
		producaoOriginal.set_ValueOfColumn("IsCancelled", "Y");
		producaoOriginal.save();
		
		return "";
	}

	private boolean criarPlanoProducao(X_M_Production producaoOriginal,X_M_Production producaoDestino) throws SQLException{
		String sql = "select m_productionplan_id from m_productionplan where m_production_id="+producaoOriginal.getM_Production_ID();
		PreparedStatement pstmt = DB.prepareStatement(sql, get_TrxName());
		ResultSet rs = pstmt.executeQuery();
		int m_ProductionPlan_ID=0;
		X_M_ProductionPlan planoOriginal=null;
		X_M_ProductionPlan planoDestino=null;
		boolean existePlano = false;
		boolean existeLinha = false;
		while (rs.next()) {
			existePlano = true;
			m_ProductionPlan_ID=rs.getInt("m_productionplan_id");
			planoOriginal = new X_M_ProductionPlan(getCtx(), m_ProductionPlan_ID, get_TrxName());
			planoDestino = new X_M_ProductionPlan(getCtx(), 0,get_TrxName());
			PO.copyValues(planoOriginal, planoDestino);
			planoDestino.setAD_Org_ID(planoOriginal.getAD_Org_ID());
			planoDestino.setM_Production_ID(producaoDestino.getM_Production_ID());
			planoDestino.setProductionQty(planoOriginal.getProductionQty().negate());
			planoDestino.setProcessed(true);
			planoDestino.save();
			existeLinha = criarLinhaProducao(planoOriginal, planoDestino);
			if ( ! existeLinha ){
				return existeLinha;
			}
		}
		rs.close();
		pstmt.close();
		pstmt = null;
		return existePlano;
	}

	private boolean criarLinhaProducao(X_M_ProductionPlan planoOriginal,X_M_ProductionPlan planoDestino) throws SQLException {
		String sql = "select m_productionline_id from m_productionline where m_productionplan_id="+planoOriginal.getM_ProductionPlan_ID();
		PreparedStatement pstmt = DB.prepareStatement(sql, get_TrxName());
		ResultSet rs = pstmt.executeQuery();
		int m_ProductionPlan_ID=0;
		X_M_ProductionLine linhaOriginal=null;
		X_M_ProductionLine linhaDestino=null;
		boolean existeLinha = false;
		while (rs.next()) {
			existeLinha = true;
			m_ProductionPlan_ID=rs.getInt("m_productionline_id");
			linhaOriginal = new X_M_ProductionLine(getCtx(), m_ProductionPlan_ID, get_TrxName());
			linhaDestino = new X_M_ProductionLine(getCtx(), 0,get_TrxName());
			PO.copyValues(linhaOriginal, linhaDestino);
			linhaDestino.setAD_Org_ID(planoDestino.getAD_Org_ID());
			linhaDestino.setM_ProductionPlan_ID(planoDestino.getM_ProductionPlan_ID());
			linhaDestino.setMovementQty(linhaOriginal.getMovementQty().negate());
			linhaDestino.setProcessed(true);
			linhaDestino.save();
		}
		rs.close();
		pstmt.close();
		pstmt = null;
		
		return existeLinha;
	}

	/**
	 * Método copiado e adaptado da classe M_Production_Run
	 * @param p_Record_ID
	 * @throws SQLException 
	 */
	private String processarCancelamento(int p_Record_ID) throws SQLException{


		// All Production Lines
		String sql = " SELECT pl.M_ProductionLine_ID, pl.AD_Client_ID, pl.AD_Org_ID,p.MovementDate, "
				+ " pl.M_Product_ID, pl.M_AttributeSetInstance_ID, pl.MovementQty,pl.M_Locator_ID "
				+ " FROM M_Production p, M_ProductionLine pl, M_ProductionPlan pp "
				+ " WHERE p.M_Production_ID=pp.M_Production_ID "
				+ " AND pp.M_ProductionPlan_ID=pl.M_ProductionPlan_ID "
				+ " AND pp.M_Production_ID= "
				+ p_Record_ID
				+ " ORDER BY pp.Line, pl.Line";

		PreparedStatement CUR_PL_Post = null;

		CUR_PL_Post = DB.prepareStatement(sql, get_TrxName());
		ResultSet pl = CUR_PL_Post.executeQuery();
		while (pl.next()) {
			sql = " select bomQtyOnHand (" + pl.getInt("M_Product_ID")
					+ ", null," + pl.getInt("M_Locator_ID") + ") FROM DUAL";
			PreparedStatement cnsql = null;
			cnsql = DB.prepareStatement(sql, get_TrxName());
			ResultSet cs = cnsql.executeQuery();
			int countTo = 0;
			if (cs.next())
				countTo = cs.getInt(1);
			cs.close();
			cnsql.close();
			cnsql = null;

			//	Check Stock levels for reductions
			if ((pl.getInt("MovementQty") < 0)
					&& ((countTo) + pl.getInt("MovementQty") < 0))

			{

				DB.rollback(true, get_TrxName());

				sql = " SELECT '@NotEnoughStocked@: ' || Name	"//INTO
						// Message
						+ " FROM M_Product WHERE M_Product_ID="
						+ pl.getInt("M_Product_ID");
				PreparedStatement cnMess = null;
				cnMess = DB.prepareStatement(sql, get_TrxName());
				ResultSet cm = cnMess.executeQuery();
				String varmess = null;
				if (cm.next())
					varmess = cm.getString(1);
				cm.close();
				cnMess.close();
				cnMess = null;
				return varmess;

			}

			//	Adjust Quantity at Location
			String sqlupd = " UPDATE M_Storage " + " SET	QtyOnHand = QtyOnHand + "
					+ pl.getInt("MovementQty") + ","
					+ " Updated = SysDate " + " WHERE	M_Locator_ID = "
					+ pl.getInt("M_Locator_ID")
					+ " AND   M_AttributeSetInstance_ID = COALESCE("
					+ pl.getInt("M_AttributeSetInstance_ID") + ",0)"
					+ " AND	M_Product_ID =" + pl.getInt("M_Product_ID");
			int cntu = DB.executeUpdate(sqlupd, get_TrxName());


			//    Product not on Stock yet
			if (cntu == 0) {
				String sqlins = "INSERT INTO M_Storage "
						+ " (M_Product_ID, M_Locator_ID, M_AttributeSetInstance_ID, "
						+ " AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, "
						+ " QtyOnHand, QtyReserved, QtyOrdered) "
						+ " VALUES " + "(" + pl.getInt("M_Product_ID")
						+ "," + pl.getInt("M_Locator_ID") + ", COALESCE("
						+ pl.getInt("M_AttributeSetInstance_ID") + ",0), "
						+ pl.getInt("AD_Client_ID") + ","
						+ pl.getInt("AD_Org_ID")
						+ ", 'Y', SysDate, 0, SysDate, 0, "
						+ pl.getInt("MovementQty") + ", 0, 0)";
				int cnti = DB.executeUpdate(sqlins, get_TrxName());


			}

			//    Create Transaction Entry
			int nextNo = MSequence.getNextID(pl.getInt("AD_Org_ID"),
					"M_Transaction", get_TrxName());
			String sqlins = " INSERT INTO M_Transaction"
					+ " (M_Transaction_ID, M_ProductionLine_ID,"
					+ " AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy,"
					+ " MovementType, M_Locator_ID, M_Product_ID, M_AttributeSetInstance_ID,"
					+ " MovementDate, MovementQty)" + " VALUES "
					+ "(?,?,?,?,'Y',SysDate,0,SysDate,0,"
					+ "'P-',?,?,COALESCE(?,0)," // not distinguishing
					// between
					// assemby/disassembly
					+ "?,?)";
			PreparedStatement pstmt = DB.prepareStatement(sqlins,
					ResultSet.TYPE_SCROLL_INSENSITIVE,
					ResultSet.CONCUR_UPDATABLE, get_TrxName());
			pstmt.setInt(1, nextNo);
			pstmt.setInt(2, pl.getInt("M_ProductionLine_ID"));
			pstmt.setInt(3, pl.getInt("AD_Client_ID"));
			pstmt.setInt(4, pl.getInt("AD_Org_ID"));
			pstmt.setInt(5, pl.getInt("M_Locator_ID"));
			pstmt.setInt(6, pl.getInt("M_Product_ID"));
			pstmt.setInt(7, pl.getInt("M_AttributeSetInstance_ID"));
			pstmt.setTimestamp(8, pl.getTimestamp("MovementDate"));
			pstmt.setDouble(9, pl.getDouble("MovementQty"));
			int cnti = pstmt.executeUpdate();
			//

		}
		pl.close();
		CUR_PL_Post.close();
		CUR_PL_Post = null;

		return "OK";
	}
	
	
	
}
