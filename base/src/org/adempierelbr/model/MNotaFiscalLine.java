package org.adempierelbr.model;

import java.util.Properties;

import org.compiere.model.X_LBR_NotaFiscalLine;

/**
 *	MNotaFiscalLine
 *
 *	Model for X_LBR_NotaFiscalLine
 *	
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: MNotaFiscalLine.java, 08/01/2008 11:01:00 mgrigioni
 */
public class MNotaFiscalLine extends X_LBR_NotaFiscalLine {
    
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MNotaFiscalLine(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);	
	}
}