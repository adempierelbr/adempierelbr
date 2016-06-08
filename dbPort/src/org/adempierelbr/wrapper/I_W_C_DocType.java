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

    /** Column name lbr_DocBaseType */
    public static final String COLUMNNAME_lbr_DocBaseType = "lbr_DocBaseType";

	/** lbr_DocBaseType AD_Reference_ID=1000043 */
	public static final int LBR_DOCBASETYPE_AD_Reference_ID=1000043;

	/** Consignation Sales Order = OVEC- */
	public static final String LBR_DOCBASETYPE_ConsignationSalesOrder = "OVEC-";

	/** Consignation Shipment = EXEC- */
	public static final String LBR_DOCBASETYPE_ConsignationShipment = "EXEC-";

	/** Consignation Invoice = FAEC- */
	public static final String LBR_DOCBASETYPE_ConsignationInvoice = "FAEC-";

	/** Consignation return sales order = OVRC+ */
	public static final String LBR_DOCBASETYPE_ConsignationReturnSalesOrder = "OVRC+";

	/** Consignation Return Shipment = EXRC+ */
	public static final String LBR_DOCBASETYPE_ConsignationReturnShipment = "EXRC+";

	/** Consignation Return Invoice = FARC+ */
	public static final String LBR_DOCBASETYPE_ConsignationReturnInvoice = "FARC+";

	/** Consignation Invoice Sales Order = OVFC- */
	public static final String LBR_DOCBASETYPE_ConsignationInvoiceSalesOrder = "OVFC-";

	/** Consignation Invoice Shipment = EXFC- */
	public static final String LBR_DOCBASETYPE_ConsignationInvoiceShipment = "EXFC-";

	/** Consignation Invoice Invoice = FAFC- */
	public static final String LBR_DOCBASETYPE_ConsignationInvoiceInvoice = "FAFC-";

	/** Default = DEFA+ */
	public static final String LBR_DOCBASETYPE_Default = "DEFA+";

	/** Sales Order Maintenance In = OVCO+ */
	public static final String LBR_DOCBASETYPE_SalesOrderMaintenanceIn = "OVCO+";

	/** Sales Order Maintenance Out = OVCO- */
	public static final String LBR_DOCBASETYPE_SalesOrderMaintenanceOut = "OVCO-";

	/** Sales Order Demonstration Out = OVDE- */
	public static final String LBR_DOCBASETYPE_SalesOrderDemonstrationOut = "OVDE-";

	/** Sales Order Demonstration In = OVDE+ */
	public static final String LBR_DOCBASETYPE_SalesOrderDemonstrationIn = "OVDE+";

	/** Sales Order Other In = OVOE+ */
	public static final String LBR_DOCBASETYPE_SalesOrderOtherIn = "OVOE+";

	/** Sales Order Other Out = OVOS- */
	public static final String LBR_DOCBASETYPE_SalesOrderOtherOut = "OVOS-";


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

	/** lbr_NFModel AD_Reference_ID=1120009 */
	public static final int LBR_NFMODEL_AD_Reference_ID=1120009;

	/** Nota Fiscal = 01 */
	public static final String LBR_NFMODEL_NotaFiscal = "01";

	/** Nota Fiscal Avulsa = 1B */
	public static final String LBR_NFMODEL_NotaFiscalAvulsa = "1B";

	/** Nota Fiscal de Venda a Consumidor = 02 */
	public static final String LBR_NFMODEL_NotaFiscalDeVendaAConsumidor = "02";

	/** Cupom Fiscal emitido por ECF = 2D */
	public static final String LBR_NFMODEL_CupomFiscalEmitidoPorECF = "2D";

	/** Bilhete de Passagem emitido por ECF = 2E */
	public static final String LBR_NFMODEL_BilheteDePassagemEmitidoPorECF = "2E";

	/** Nota Fiscal de Produtor = 04 */
	public static final String LBR_NFMODEL_NotaFiscalDeProdutor = "04";

	/** Nota Fiscal/Conta de Energia Elétrica = 06 */
	public static final String LBR_NFMODEL_NotaFiscalContaDeEnergiaElétrica = "06";

	/** Nota Fiscal de Serviço de Transporte = 07 */
	public static final String LBR_NFMODEL_NotaFiscalDeServiçoDeTransporte = "07";

	/** Conhecimento de Transporte Rodoviário de Cargas = 08 */
	public static final String LBR_NFMODEL_ConhecimentoDeTransporteRodoviárioDeCargas = "08";

	/** Conhecimento de Transporte de Cargas Avulso = 8B */
	public static final String LBR_NFMODEL_ConhecimentoDeTransporteDeCargasAvulso = "8B";

	/** Conhecimento de Transporte Aquaviário de Cargas = 09 */
	public static final String LBR_NFMODEL_ConhecimentoDeTransporteAquaviárioDeCargas = "09";

	/** Conhecimento Aéreo = 10 */
	public static final String LBR_NFMODEL_ConhecimentoAéreo = "10";

	/** Conhecimento de Transporte Ferroviário de Cargas = 11 */
	public static final String LBR_NFMODEL_ConhecimentoDeTransporteFerroviárioDeCargas = "11";

	/** Bilhete de Passagem Rodoviário = 13 */
	public static final String LBR_NFMODEL_BilheteDePassagemRodoviário = "13";

	/** Bilhete de Passagem Aquaviário = 14 */
	public static final String LBR_NFMODEL_BilheteDePassagemAquaviário = "14";

	/** Bilhete de Passagem e Nota de Bagagem = 15 */
	public static final String LBR_NFMODEL_BilheteDePassagemENotaDeBagagem = "15";

	/** Despacho de Transporte = 17 */
	public static final String LBR_NFMODEL_DespachoDeTransporte = "17";

	/** Bilhete de Passagem Ferroviário = 16 */
	public static final String LBR_NFMODEL_BilheteDePassagemFerroviário = "16";

	/** Resumo de Movimento Diário = 18 */
	public static final String LBR_NFMODEL_ResumoDeMovimentoDiário = "18";

	/** Ordem de Coleta de Cargas = 20 */
	public static final String LBR_NFMODEL_OrdemDeColetaDeCargas = "20";

	/** Nota Fiscal de Serviço de Comunicação = 21 */
	public static final String LBR_NFMODEL_NotaFiscalDeServiçoDeComunicação = "21";

	/** Nota Fiscal de Serviço de Telecomunicação = 22 */
	public static final String LBR_NFMODEL_NotaFiscalDeServiçoDeTelecomunicação = "22";

	/** GNRE = 23 */
	public static final String LBR_NFMODEL_GNRE = "23";

	/** Autorização de Carregamento e Transporte = 24 */
	public static final String LBR_NFMODEL_AutorizaçãoDeCarregamentoETransporte = "24";

	/** Manifesto de Carga = 25 */
	public static final String LBR_NFMODEL_ManifestoDeCarga = "25";

	/** Conhecimento de Transporte Multimodal de Cargas = 26 */
	public static final String LBR_NFMODEL_ConhecimentoDeTransporteMultimodalDeCargas = "26";

	/** Nota Fiscal de Transporte Ferroviário de Cargas = 27 */
	public static final String LBR_NFMODEL_NotaFiscalDeTransporteFerroviárioDeCargas = "27";

	/** Nota Fiscal/Conta de Fornecimento de Gás Canalizado = 28 */
	public static final String LBR_NFMODEL_NotaFiscalContaDeFornecimentoDeGásCanalizado = "28";

	/** Nota Fiscal/Conta de Fornecimento de Água Canalizada = 29 */
	public static final String LBR_NFMODEL_NotaFiscalContaDeFornecimentoDeÁguaCanalizada = "29";

	/** Bilhete/Recibo do Passageiro = 30 */
	public static final String LBR_NFMODEL_BilheteReciboDoPassageiro = "30";

	/** Nota Fiscal Eletrônica = 55 */
	public static final String LBR_NFMODEL_NotaFiscalEletrônica = "55";

	/** Conhecimento de Transporte Eletrônico – CT-e = 57 */
	public static final String LBR_NFMODEL_ConhecimentoDeTransporteEletrônicoCT_E = "57";

	/** Nota Fiscal de Serviços Eletrônica (RPS) = S1 */
	public static final String LBR_NFMODEL_NotaFiscalDeServiçosEletrônicaRPS = "S1";

	/** Nota Fiscal de Consumidor Eletrônica = 56 */
	public static final String LBR_NFMODEL_NotaFiscalDeConsumidorEletrônica = "56";


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

    /** Column name lbr_NFeTpEmi */
    public static final String COLUMNNAME_lbr_NFeTpEmi = "lbr_NFeTpEmi";

	/** lbr_NFeTpEmi AD_Reference_ID=1120035 */
	public static final int LBR_NFETPEMI_AD_Reference_ID=1120035;

	/** Normal = 1 */
	public static final String LBR_NFETPEMI_Normal = "1";

	/** Contingência FS = 2 */
	public static final String LBR_NFETPEMI_ContingênciaFS = "2";

	/** Contingência SCAN = 3 */
	public static final String LBR_NFETPEMI_ContingênciaSCAN = "3";

	/** Contingência DPEC = 4 */
	public static final String LBR_NFETPEMI_ContingênciaDPEC = "4";

	/** Contingência FSDA = 5 */
	public static final String LBR_NFETPEMI_ContingênciaFSDA = "5";


	/** Set Tipo de Emissão NFe	  */
	public void setlbr_NFeTpEmi (String lbr_NFeTpEmi);

	/** Get Tipo de Emissão NFe	  */
	public String getlbr_NFeTpEmi();
}
