/******************************************************************************
 * Product: AdempiereLBR ERP & CRM Smart Business Solution                    *
 * Copyright (C) 1999-2007 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY, without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program, if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.adempierelbr.wrapper;

import org.compiere.model.*;

/** Generated Interface for C_DocType
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_W_C_DocType extends I_C_DocType 
{


    /** Column name LBR_DocTypeMovement_ID */
    public static final String COLUMNNAME_LBR_DocTypeMovement_ID = "LBR_DocTypeMovement_ID";

	/** Set Movement DocType.
	  * Defines the Movement Document Type used for the Material Movement
	  */
	public void setLBR_DocTypeMovement_ID (int LBR_DocTypeMovement_ID);

	/** Get Movement DocType.
	  * Defines the Movement Document Type used for the Material Movement
	  */
	public int getLBR_DocTypeMovement_ID();

	public I_C_DocType getLBR_DocTypeMovement() throws RuntimeException;

    /** Column name LBR_DocTypeNF_ID */
    public static final String COLUMNNAME_LBR_DocTypeNF_ID = "LBR_DocTypeNF_ID";

	/** Set NF DocType.
	  * Defines the NF Document Type used for the Nota Fiscal Window
	  */
	public void setLBR_DocTypeNF_ID (int LBR_DocTypeNF_ID);

	/** Get NF DocType.
	  * Defines the NF Document Type used for the Nota Fiscal Window
	  */
	public int getLBR_DocTypeNF_ID();

	public I_C_DocType getLBR_DocTypeNF() throws RuntimeException;

    /** Column name M_Warehouse_ID */
    public static final String COLUMNNAME_M_Warehouse_ID = "M_Warehouse_ID";

	/** Set Warehouse.
	  * Storage Warehouse and Service Point
	  */
	public void setM_Warehouse_ID (int M_Warehouse_ID);

	/** Get Warehouse.
	  * Storage Warehouse and Service Point
	  */
	public int getM_Warehouse_ID();

	public I_M_Warehouse getM_Warehouse() throws RuntimeException;

    /** Column name lbr_DANFEFormat */
    public static final String COLUMNNAME_lbr_DANFEFormat = "lbr_DANFEFormat";

	/** Set DANFE Format	  */
	public void setlbr_DANFEFormat (String lbr_DANFEFormat);

	/** Get DANFE Format	  */
	public String getlbr_DANFEFormat();

    /** Column name lbr_DocBaseType */
    public static final String COLUMNNAME_lbr_DocBaseType = "lbr_DocBaseType";

	/** Set LBR DocBaseType.
	  * Localization Brasil Document Base Type
	  */
	public void setlbr_DocBaseType (String lbr_DocBaseType);

	/** Get LBR DocBaseType.
	  * Localization Brasil Document Base Type
	  */
	public String getlbr_DocBaseType();

    /** Column name lbr_GenerateMovement */
    public static final String COLUMNNAME_lbr_GenerateMovement = "lbr_GenerateMovement";

	/** Set Generate Movement.
	  * Indicates if this document generates a material movement insted of a material shipment/receipt
	  */
	public void setlbr_GenerateMovement (boolean lbr_GenerateMovement);

	/** Get Generate Movement.
	  * Indicates if this document generates a material movement insted of a material shipment/receipt
	  */
	public boolean islbr_GenerateMovement();

    /** Column name lbr_HasFiscalDocument */
    public static final String COLUMNNAME_lbr_HasFiscalDocument = "lbr_HasFiscalDocument";

	/** Set Has Fiscal Document.
	  * Identifies if the this document has fiscal document
	  */
	public void setlbr_HasFiscalDocument (boolean lbr_HasFiscalDocument);

	/** Get Has Fiscal Document.
	  * Identifies if the this document has fiscal document
	  */
	public boolean islbr_HasFiscalDocument();

    /** Column name lbr_HasOpenItems */
    public static final String COLUMNNAME_lbr_HasOpenItems = "lbr_HasOpenItems";

	/** Set Has Open Items.
	  * Identifies if this Document Has Open Items
	  */
	public void setlbr_HasOpenItems (boolean lbr_HasOpenItems);

	/** Get Has Open Items.
	  * Identifies if this Document Has Open Items
	  */
	public boolean islbr_HasOpenItems();

    /** Column name lbr_IsAutomaticInvoice */
    public static final String COLUMNNAME_lbr_IsAutomaticInvoice = "lbr_IsAutomaticInvoice";

	/** Set Automatic Invoice.
	  * Identifies if this Document generates Invoices automatically
	  */
	public void setlbr_IsAutomaticInvoice (boolean lbr_IsAutomaticInvoice);

	/** Get Automatic Invoice.
	  * Identifies if this Document generates Invoices automatically
	  */
	public boolean islbr_IsAutomaticInvoice();

    /** Column name lbr_IsAutomaticShipment */
    public static final String COLUMNNAME_lbr_IsAutomaticShipment = "lbr_IsAutomaticShipment";

	/** Set Automatic Shipment.
	  * Identifies if this Document generates Shipments automatically
	  */
	public void setlbr_IsAutomaticShipment (boolean lbr_IsAutomaticShipment);

	/** Get Automatic Shipment.
	  * Identifies if this Document generates Shipments automatically
	  */
	public boolean islbr_IsAutomaticShipment();

    /** Column name lbr_IsManufactured */
    public static final String COLUMNNAME_lbr_IsManufactured = "lbr_IsManufactured";

	/** Set Is Manufactured.
	  * Defines if the Product is Manufactured
	  */
	public void setlbr_IsManufactured (boolean lbr_IsManufactured);

	/** Get Is Manufactured.
	  * Defines if the Product is Manufactured
	  */
	public boolean islbr_IsManufactured();

    /** Column name lbr_IsOwnDocument */
    public static final String COLUMNNAME_lbr_IsOwnDocument = "lbr_IsOwnDocument";

	/** Set Is Own Document.
	  * Identifies this is an own document
	  */
	public void setlbr_IsOwnDocument (boolean lbr_IsOwnDocument);

	/** Get Is Own Document.
	  * Identifies this is an own document
	  */
	public boolean islbr_IsOwnDocument();

    /** Column name lbr_IsReturn */
    public static final String COLUMNNAME_lbr_IsReturn = "lbr_IsReturn";

	/** Set Is Return.
	  * Defines if the is a return of manufactured products
	  */
	public void setlbr_IsReturn (boolean lbr_IsReturn);

	/** Get Is Return.
	  * Defines if the is a return of manufactured products
	  */
	public boolean islbr_IsReturn();

    /** Column name lbr_NFModel */
    public static final String COLUMNNAME_lbr_NFModel = "lbr_NFModel";

	/** Set NF Model.
	  * Identifies the model of Nota Fiscal
	  */
	public void setlbr_NFModel (String lbr_NFModel);

	/** Get NF Model.
	  * Identifies the model of Nota Fiscal
	  */
	public String getlbr_NFModel();

    /** Column name lbr_NFSerie */
    public static final String COLUMNNAME_lbr_NFSerie = "lbr_NFSerie";

	/** Set NF Serie	  */
	public void setlbr_NFSerie (String lbr_NFSerie);

	/** Get NF Serie	  */
	public String getlbr_NFSerie();

    /** Column name lbr_NFeEnv */
    public static final String COLUMNNAME_lbr_NFeEnv = "lbr_NFeEnv";

	/** Set NFe Environment	  */
	public void setlbr_NFeEnv (String lbr_NFeEnv);

	/** Get NFe Environment	  */
	public String getlbr_NFeEnv();
}
