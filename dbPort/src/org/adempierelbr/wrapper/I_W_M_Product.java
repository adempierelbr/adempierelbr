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

/** Generated Interface for M_Product
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_W_M_Product extends I_M_Product 
{


    /** Column name LBR_AttributeType */
    public static final String COLUMNNAME_LBR_AttributeType = "LBR_AttributeType";

	/** LBR_AttributeType AD_Reference_ID=1120278 */
	public static final int LBR_ATTRIBUTETYPE_AD_Reference_ID=1120278;

	/** Tracking = R00 */
	public static final String LBR_ATTRIBUTETYPE_Tracking = "R00";

	/** Medicine = X01 */
	public static final String LBR_ATTRIBUTETYPE_Medicine = "X01";

	/** Fuel = X02 */
	public static final String LBR_ATTRIBUTETYPE_Fuel = "X02";

	/** Vehicle = X03 */
	public static final String LBR_ATTRIBUTETYPE_Vehicle = "X03";

	/** Gun = X04 */
	public static final String LBR_ATTRIBUTETYPE_Gun = "X04";

	/** Medicine and Tracking = R01 */
	public static final String LBR_ATTRIBUTETYPE_MedicineAndTracking = "R01";

	/** Fuel and Tracking = R02 */
	public static final String LBR_ATTRIBUTETYPE_FuelAndTracking = "R02";

	/** Vehicle and Tracking = R03 */
	public static final String LBR_ATTRIBUTETYPE_VehicleAndTracking = "R03";

	/** Gun and Tracking = R04 */
	public static final String LBR_ATTRIBUTETYPE_GunAndTracking = "R04";


	/** Set Attribute Type	  */
	public void setLBR_AttributeType (String LBR_AttributeType);

	/** Get Attribute Type	  */
	public String getLBR_AttributeType();

    /** Column name LBR_CEST_ID */
    public static final String COLUMNNAME_LBR_CEST_ID = "LBR_CEST_ID";

	/** Set CEST.
	  * Brazilian Specifier code Tax
	  */
	public void setLBR_CEST_ID (int LBR_CEST_ID);

	/** Get CEST.
	  * Brazilian Specifier code Tax
	  */
	public int getLBR_CEST_ID();

    /** Column name LBR_FiscalGroup_Product_ID */
    public static final String COLUMNNAME_LBR_FiscalGroup_Product_ID = "LBR_FiscalGroup_Product_ID";

	/** Set Fiscal Group - Product.
	  * Primary key table LBR_FiscalGroup_Product
	  */
	public void setLBR_FiscalGroup_Product_ID (int LBR_FiscalGroup_Product_ID);

	/** Get Fiscal Group - Product.
	  * Primary key table LBR_FiscalGroup_Product
	  */
	public int getLBR_FiscalGroup_Product_ID();

    /** Column name LBR_LegalProductDescription */
    public static final String COLUMNNAME_LBR_LegalProductDescription = "LBR_LegalProductDescription";

	/** Set Legal Product Description	  */
	public void setLBR_LegalProductDescription (String LBR_LegalProductDescription);

	/** Get Legal Product Description	  */
	public String getLBR_LegalProductDescription();

    /** Column name LBR_NBS_ID */
    public static final String COLUMNNAME_LBR_NBS_ID = "LBR_NBS_ID";

	/** Set NBS.
	  * Primary key table LBR_NBS
	  */
	public void setLBR_NBS_ID (int LBR_NBS_ID);

	/** Get NBS.
	  * Primary key table LBR_NBS
	  */
	public int getLBR_NBS_ID();

    /** Column name LBR_NCM_ID */
    public static final String COLUMNNAME_LBR_NCM_ID = "LBR_NCM_ID";

	/** Set NCM.
	  * Primary key table LBR_NCM
	  */
	public void setLBR_NCM_ID (int LBR_NCM_ID);

	/** Get NCM.
	  * Primary key table LBR_NCM
	  */
	public int getLBR_NCM_ID();

    /** Column name LBR_ProductCategory_ID */
    public static final String COLUMNNAME_LBR_ProductCategory_ID = "LBR_ProductCategory_ID";

	/** Set Product Category.
	  * Primary key table LBR_ProductCategory
	  */
	public void setLBR_ProductCategory_ID (int LBR_ProductCategory_ID);

	/** Get Product Category.
	  * Primary key table LBR_ProductCategory
	  */
	public int getLBR_ProductCategory_ID();

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

    /** Column name lbr_ItemTypeBR */
    public static final String COLUMNNAME_lbr_ItemTypeBR = "lbr_ItemTypeBR";

	/** lbr_ItemTypeBR AD_Reference_ID=1120224 */
	public static final int LBR_ITEMTYPEBR_AD_Reference_ID=1120224;

	/** Mercadoria para Revenda = 00 */
	public static final String LBR_ITEMTYPEBR_MercadoriaParaRevenda = "00";

	/** Materia-Prima = 01 */
	public static final String LBR_ITEMTYPEBR_Materia_Prima = "01";

	/** Embalagem = 02 */
	public static final String LBR_ITEMTYPEBR_Embalagem = "02";

	/** Produto em Processo = 03 */
	public static final String LBR_ITEMTYPEBR_ProdutoEmProcesso = "03";

	/** Produto Acabado = 04 */
	public static final String LBR_ITEMTYPEBR_ProdutoAcabado = "04";

	/** Subproduto = 05 */
	public static final String LBR_ITEMTYPEBR_Subproduto = "05";

	/** Produto Intermediario = 06 */
	public static final String LBR_ITEMTYPEBR_ProdutoIntermediario = "06";

	/** Material de Uso e Consumo = 07 */
	public static final String LBR_ITEMTYPEBR_MaterialDeUsoEConsumo = "07";

	/** Ativo Imobilizado = 08 */
	public static final String LBR_ITEMTYPEBR_AtivoImobilizado = "08";

	/** Servicos = 09 */
	public static final String LBR_ITEMTYPEBR_Servicos = "09";

	/** Outros insumos = 10 */
	public static final String LBR_ITEMTYPEBR_OutrosInsumos = "10";

	/** Outras = 99 */
	public static final String LBR_ITEMTYPEBR_Outras = "99";


	/** Set Item Type (SPED)	  */
	public void setlbr_ItemTypeBR (String lbr_ItemTypeBR);

	/** Get Item Type (SPED)	  */
	public String getlbr_ItemTypeBR();

    /** Column name lbr_ProductSource */
    public static final String COLUMNNAME_lbr_ProductSource = "lbr_ProductSource";

	/** lbr_ProductSource AD_Reference_ID=1000031 */
	public static final int LBR_PRODUCTSOURCE_AD_Reference_ID=1000031;

	/** 0 - Domestic = 0 */
	public static final String LBR_PRODUCTSOURCE_0_Domestic = "0";

	/** 1 - Imported = 1 */
	public static final String LBR_PRODUCTSOURCE_1_Imported = "1";

	/** 2 - Imported - Acquired from a domestic distributor = 2 */
	public static final String LBR_PRODUCTSOURCE_2_Imported_AcquiredFromADomesticDistributor = "2";

	/** 3 - Domestic with between 40 percent and 70 percent Imported = 3 */
	public static final String LBR_PRODUCTSOURCE_3_DomesticWithBetween40PercentAnd70PercentImported = "3";

	/** 4 - Product acquired from Manaus = 4 */
	public static final String LBR_PRODUCTSOURCE_4_ProductAcquiredFromManaus = "4";

	/** 5 - Domestic until 40 percent Imported = 5 */
	public static final String LBR_PRODUCTSOURCE_5_DomesticUntil40PercentImported = "5";

	/** 6 - Foreign - Direct import no similar national = 6 */
	public static final String LBR_PRODUCTSOURCE_6_Foreign_DirectImportNoSimilarNational = "6";

	/** 7 - Foreign - Acquired from a domestic distributor no similar national = 7 */
	public static final String LBR_PRODUCTSOURCE_7_Foreign_AcquiredFromADomesticDistributorNoSimilarNational = "7";

	/** 8 - Domestic above 70 percent Imported = 8 */
	public static final String LBR_PRODUCTSOURCE_8_DomesticAbove70PercentImported = "8";


	/** Set Product Source.
	  * Defines the Product Source
	  */
	public void setlbr_ProductSource (String lbr_ProductSource);

	/** Get Product Source.
	  * Defines the Product Source
	  */
	public String getlbr_ProductSource();

    /** Column name lbr_ServiceCode */
    public static final String COLUMNNAME_lbr_ServiceCode = "lbr_ServiceCode";

	/** Set Service Code.
	  * Service Code used for Nota Fiscal de Servicos Eletronica
	  */
	public void setlbr_ServiceCode (String lbr_ServiceCode);

	/** Get Service Code.
	  * Service Code used for Nota Fiscal de Servicos Eletronica
	  */
	public String getlbr_ServiceCode();
}
