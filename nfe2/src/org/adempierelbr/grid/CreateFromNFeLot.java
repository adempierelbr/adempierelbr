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
package org.adempierelbr.grid;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Vector;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.util.NFeUtil;
import org.compiere.grid.CreateFrom;
import org.compiere.minigrid.IMiniTable;
import org.compiere.model.GridTab;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;

/**
 *  	Código comum para a versão SWING e ZK da janela de criação de NF
 *
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *			<li>Melhorias no funcionamento e classe original
 *
 *  @author Mario Grigioni
 *  @version  $Id: CreateFromNFeLot, 21/06/2010 16:51:00 mgrigioni Exp $
 */
public class CreateFromNFeLot extends CreateFrom 
{
	/**	Resultado	*/
	protected String result = "";
	
	/**
	 * 	Constructor
	 */
	public CreateFromNFeLot (GridTab mTab)
	{
		super(mTab);
		log.info(mTab.toString());
	}	//	CreateFromNFeLot
	
	/**
	 * 	Init
	 */
	public boolean dynInit () throws Exception 
	{
		log.config("init");
		//
        setTitle(Msg.translate(Env.getCtx(), "LBR_NFeLot_ID") + " .. " + Msg.translate(Env.getCtx(), "CreateFrom"));
		return true;
	}	//	dynInit
	
	/**
	 * 	Retorna a Matriz com as informações das NFs
	 * 
	 * 	@return Matriz de NF
	 */
	protected Vector<Vector<Object>> getNFeLotData(int AD_Org_ID)
	{
		/**
		 *  Selected        - 0
		 *  Documentno      - 1
		 *  DateTrx    		- 2
		 *  BPName     		- 3
		 *  CNPJ            - 4
		 *  UF				- 5
		 */
		Vector<Vector<Object>> data = new Vector<Vector<Object>>();
		String sql = "SELECT nf.Documentno, nf.DateDoc, nf.BPName, nf.lbr_BPCNPJ, "
			+ "nf.lbr_BPRegion, nf.LBR_NotaFiscal_ID "
			+ "FROM LBR_NotaFiscal nf " +
					"INNER JOIN AD_Attachment att ON (nf.LBR_NotaFiscal_ID = att.Record_ID " +
					"AND att.AD_Table_ID = ?) "
			+ "WHERE nf.LBR_NFeID IS NOT NULL AND nf.LBR_NFeLot_ID IS NULL "
			+ "AND nf.IsCancelled = 'N' "
			+ "AND nf.AD_Org_ID IN (?, 0) "
			+ "AND nf.LBR_IsOwnDocument='Y' "
			+ "AND nf.DocStatus='IP' "
			+ "ORDER BY 1";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), null);
			pstmt.setInt(1, MLBRNotaFiscal.Table_ID);
			pstmt.setInt(2, AD_Org_ID);
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				Vector<Object> line = new Vector<Object>(6);
				line.add(new Boolean(false));       //  0-Selection
				//
				KeyNamePair kp = new KeyNamePair(rs.getInt(6), rs.getString(1));
				//
				line.add(kp);						//	1-DocumentNo
				line.add(rs.getTimestamp(2));       //  2-DateTrx
				line.add(rs.getString(3));			//	3-BPName
				line.add(rs.getString(4));			//	4-CNPJ
				line.add(rs.getString(5));			//	5-UF
				data.add(line);
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		finally{
			DB.close(rs, pstmt);
		}
        
        return data;
	}

	/**
	 * 	Not Used
	 */
	public void info () 
	{

	}	//	info
	
	/**
	 * 	Configuração das Colunas
	 * 	@param miniTable
	 */
	protected void configureMiniTable (IMiniTable miniTable)
	{
		miniTable.setColumnClass(0, Boolean.class, false);      //  0-Selection
		miniTable.setColumnClass(1, String.class, true);   		//  1-DocumentNo
		miniTable.setColumnClass(2, Timestamp.class, true);     //  2-TrxDate
		miniTable.setColumnClass(3, String.class, true);        //  3-BPName
		miniTable.setColumnClass(4, String.class, true);    	//  4-lbr_CNPJ
		miniTable.setColumnClass(5, String.class, true);    	//  5-lbr_BPRegion
		
        //  Table UI
		miniTable.autoSize();
	}	//	configureMiniTable

	/**
	 * 	Save
	 */
	public boolean save (IMiniTable miniTable, String trxName) 
	{
		log.config("");
		int rows = miniTable.getRowCount();
		if (rows == 0)
			return false;

		//  fixed values
		int LBR_NFeLot_ID = Env.getContextAsInt(Env.getCtx(), getGridTab().getWindowNo(), "LBR_NFeLot_ID");

		//  Lines
		for (int i = 0; i < rows; i++)
		{
			if (((Boolean)miniTable.getValueAt(i, 0)).booleanValue())
			{
				KeyNamePair pp = (KeyNamePair)miniTable.getValueAt(i, 1);
				int LBR_NotaFiscal_ID = pp.getKey();
				//
				MLBRNotaFiscal nf = new MLBRNotaFiscal (Env.getCtx(), LBR_NotaFiscal_ID, null);
				String nfeID = NFeUtil.checkXMLFile(nf);
				//
				if (nfeID == null)
				{
					log.severe ("Anexo NFe não encontrado. Nota Fiscal: " + nf.getDocumentNo());
					result += "Anexo NFe não encontrado. Nota Fiscal: " + nf.getDocumentNo() + "\n";
					continue;
				}
				
				//	Atualiza o campo lbr_NFeID, caso ele esteja diferente do anexo
				if (!nfeID.equals(nf.getlbr_NFeID()))
					nf.setlbr_NFeID(nfeID); 
				
				nf.setLBR_NFeLot_ID(LBR_NFeLot_ID);
				log.fine("LBR_NotaFiscal_ID="+LBR_NotaFiscal_ID);
				//
				if (!nf.save())
				{
					result += "Problemas na inclusão da NF ao lote (Verifique LOG). Nota Fiscal: " + nf.getDocumentNo() + "\n";
					log.log(Level.SEVERE, "Problemas na inclusão da NF ao lote (save). Nota Fiscal: " + nf.getDocumentNo());
				}
			}   //   if selected
		}   //  for all rows
		return true;
	}	//	save
	
	/**
	 * 	Retorna o resultado do processamento (save)
	 * 
	 * 	@return Resultado do processamento
	 */
	protected String getResult ()
	{
		if (result == null)
			return "";
		//
		return result;
	}	//	getResult
	
	/**
	 * 	OIS Columns
	 */
	protected Vector<String> getOISColumnNames()
	{
		//  Header Info
		Vector<String> columnNames = new Vector<String>(5);
		columnNames.add(Msg.getMsg(Env.getCtx(), "Select"));
		columnNames.add(Msg.getElement(Env.getCtx(), "DocumentNo"));
		columnNames.add(Msg.translate(Env.getCtx(), "Date"));
		columnNames.add(Msg.translate(Env.getCtx(), "BPName"));
		columnNames.add(Msg.translate(Env.getCtx(), "lbr_CNPJ"));
		columnNames.add(Msg.translate(Env.getCtx(), "lbr_BPRegion"));
	    
	    return columnNames;
	}	//	getOISColumnNames
}	//	CreateFromNFeLot
