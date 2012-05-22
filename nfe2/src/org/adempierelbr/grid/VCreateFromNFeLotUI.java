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

import java.beans.PropertyChangeEvent;
import java.beans.VetoableChangeListener;
import java.util.Vector;
import java.util.logging.Level;

import javax.swing.table.DefaultTableModel;

import org.compiere.apps.ADialog;
import org.compiere.apps.AEnv;
import org.compiere.grid.VCreateFromDialog;
import org.compiere.minigrid.IMiniTable;
import org.compiere.model.GridTab;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

/**
 *  	Seleção de Faturas no Lote da NFe, classe criada com base na versão anterior
 *	
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *			<li>Melhorias no funcionamento e classe original
 *
 *  @author Mario Grigioni
 *  @version  $Id: CreateFromNFeLotUI, 21/06/2010 17:04:00 mgrigioni Exp $
 */
public class VCreateFromNFeLotUI extends CreateFromNFeLot implements VetoableChangeListener
{	
	/**
	 * 	Constructor
	 */
	public VCreateFromNFeLotUI (GridTab mTab)
	{
		super(mTab);
		log.info(getGridTab().toString());
		
		dialog = new VCreateFromDialog(this, getGridTab().getWindowNo(), true);
		
		p_WindowNo = getGridTab().getWindowNo();
		
		AD_Org_ID = (Integer) mTab.getValue("AD_Org_ID");

		try
		{
			if (!dynInit())
				return;

			setInitOK(true);
		}
		catch(Exception e)
		{
			log.log(Level.SEVERE, "", e);
			setInitOK(false);
		}
		AEnv.positionCenterWindow(Env.getWindow(p_WindowNo), dialog);
	}   //  VCreateFromNFeLotUI
	
	/** Window No               */
	private int p_WindowNo;

	/**	Dialog					*/
	private VCreateFromDialog dialog;
	
	/**	Logger					*/
	private CLogger log = CLogger.getCLogger(getClass());
	
	/** Organization              */
	private int AD_Org_ID;
		
	/**
	 *  Dynamic Init
	 *  @throws Exception if Lookups cannot be initialized
	 *  @return true if initialized
	 */
	public boolean dynInit() throws Exception
	{
		log.config("");
		
		super.dynInit();
		
		dialog.setTitle(getTitle());
		
		loadNFeLot();
		
		return true;
	}   //  dynInit
    
	/**
	 *  Change Listener
	 *  @param e event
	 */
	public void vetoableChange (PropertyChangeEvent e)
	{
		log.config(e.getPropertyName() + "=" + e.getNewValue());
		dialog.tableChanged(null);
	}   //  vetoableChange
		
	/**
	 * 	Load NFe Lot
	 */
	protected void loadNFeLot ()
	{
		loadTableOIS (getNFeLotData(AD_Org_ID));
	}	//	loadNFeLot
	
	/**
	 *  Load NFeLot data into Table
	 *  @param data data
	 */
	protected void loadTableOIS (Vector<?> data)
	{
		//  Remove previous listeners
		dialog.getMiniTable().getModel().removeTableModelListener(dialog);
		//  Set Model
		DefaultTableModel model = new DefaultTableModel(data, getOISColumnNames());
		model.addTableModelListener(dialog);
		dialog.getMiniTable().setModel(model);
		// 
		configureMiniTable(dialog.getMiniTable());
	}   //  loadOrder
	
	/**
	 * 	Show Window
	 */
	public void showWindow()
	{
		dialog.setVisible(true);
	}	//	showWindow
	
	/**
	 * 	Close Window
	 */
	public void closeWindow()
	{
		dialog.dispose();
	}	//	closeWindow
	
	/**
	 * 	Save
	 */
	public boolean save (IMiniTable miniTable, String trxName)
	{
		super.save (miniTable, trxName);
		//
		if (getResult().length() > 1)
			ADialog.error (p_WindowNo, dialog, getResult());
		
		return true;
	}	//	save
}	//	VCreateFromNFeLotUI
