/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2011 Ricardo Santana                                         *
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
package org.adempierelbr.webui.apps.form;

import java.util.Vector;
import java.util.logging.Level;

import org.adempiere.webui.apps.AEnv;
import org.adempiere.webui.apps.form.WCreateFromWindow;
import org.adempiere.webui.component.ListModelTable;
import org.adempiere.webui.event.ValueChangeEvent;
import org.adempiere.webui.event.ValueChangeListener;
import org.adempiere.webui.window.FDialog;
import org.adempierelbr.grid.CreateFromNFeLot;
import org.compiere.minigrid.IMiniTable;
import org.compiere.model.GridTab;
import org.compiere.util.CLogger;

/**
 *  	Seleção de Faturas no Lote da NFe, classe criada com base na versão anterior
 *	
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *			<li>Melhorias no funcionamento e classe original
 *	
 *	@contributor Mario Grioni
 *			<li>Adaptação da versão para o modelo do 360 na versão SWING
 *
 *  @version $Id: WCreateFromNFeLotUI.java, v1.0 2012/03/15 6:37:56 PM, ralexsander Exp $
 */
public class WCreateFromNFeLotUI extends CreateFromNFeLot implements ValueChangeListener
{	
	/**
	 * 	Constructor
	 */
	public WCreateFromNFeLotUI (GridTab mTab)
	{
		super(mTab);
		log.info(getGridTab().toString());
		
		p_WindowNo = getGridTab().getWindowNo();
		window = new WCreateFromWindow (this, p_WindowNo);

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
		AEnv.showWindow (window);
	}   //  VCreateFromNFeLotUI

	/** Window No               */
	private int p_WindowNo;
	
	/**	Dialog					*/
	private WCreateFromWindow window;
	
	/**	Logger					*/
	private CLogger log = CLogger.getCLogger(getClass());
		
	/**
	 *  Dynamic Init
	 *  @throws Exception if Lookups cannot be initialized
	 *  @return true if initialized
	 */
	public boolean dynInit() throws Exception
	{
		log.config("init");
		
		super.dynInit();
		window.setTitle(getTitle());
		loadNFeLot();
		
		return true;
	}   //  dynInit
    
	/**
	 *  Change Listener
	 *  @param e event
	 */
	public void valueChange (ValueChangeEvent e)
	{
		log.config(e.getPropertyName() + "=" + e.getNewValue());
		window.tableChanged(null);
	}   //  vetoableChange
		
	/**
	 * 	Load NFe Lot
	 */
	protected void loadNFeLot ()
	{
		loadTableOIS (getNFeLotData());
	}	//	loadNFeLot
	
	/**
	 *  Load NFeLot data into Table
	 *  @param data data
	 */
	protected void loadTableOIS (Vector<?> data)
	{
		window.getWListbox().clear();

		//  Remove previous listeners
		window.getWListbox().getModel().removeTableModelListener(window);
		
		//  Set Model
		ListModelTable model = new ListModelTable (data);
		model.addTableModelListener(window);
		window.getWListbox().setData(model, getOISColumnNames());
		// 
		configureMiniTable(window.getWListbox());
	}   //  loadOrder
	
	/**
	 * 	Show Window
	 */
	public void showWindow()
	{
		window.setVisible(true);
	}	//	showWindow
	
	/**
	 * 	Close Window
	 */
	public void closeWindow()
	{
		window.dispose();
	}	//	closeWindow
	
	/**
	 * 	Save
	 */
	public boolean save (IMiniTable miniTable, String trxName)
	{
		super.save (miniTable, trxName);
		//
		if (getResult().length() > 1)
			FDialog.error (p_WindowNo, getResult());
		
		return true;
	}	//	save
}	//	WCreateFromNFeLotUI
