/******************************************************************************
 * Copyright (C) 2011 Ricardo Santana                                         *
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
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
UPDATE AD_Column SET IsSelectionColumn='Y' WHERE  ColumnName='AD_EntityType_ID' AND ColumnSQL IS NULL AND IsKey='N' AND AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE IsView='N');
UPDATE AD_Column SET IsSelectionColumn='Y' WHERE  ColumnName='C_BPartner_ID' AND ColumnSQL IS NULL AND IsKey='N' AND AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE IsView='N');
UPDATE AD_Column SET IsSelectionColumn='Y' WHERE  ColumnName='AD_ReportView_ID' AND ColumnSQL IS NULL AND IsKey='N' AND AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE IsView='N' AND TableName='AD_PrintFormat');
UPDATE AD_Column SET IsSelectionColumn='Y' WHERE  ColumnName='AD_Table_ID' AND ColumnSQL IS NULL AND IsKey='N' AND AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE IsView='N' AND TableName='AD_PrintFormat');
UPDATE AD_Column SET IsSelectionColumn='Y' WHERE  ColumnName='C_BankAccount_ID' AND ColumnSQL IS NULL AND IsKey='N' AND AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE IsView='N' AND TableName='C_BankStatement');
UPDATE AD_Column SET IsSelectionColumn='Y' WHERE  ColumnName='C_BP_Group_ID' AND ColumnSQL IS NULL AND IsKey='N' AND AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE IsView='N' AND TableName='C_BPartner');
UPDATE AD_Column SET IsSelectionColumn='Y' WHERE  ColumnName='C_DocTypeTarget_ID' AND ColumnSQL IS NULL AND IsKey='N' AND AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE IsView='N' AND TableName='C_Invoice');
UPDATE AD_Column SET IsSelectionColumn='Y' WHERE  ColumnName='C_DocTypeTarget_ID' AND ColumnSQL IS NULL AND IsKey='N' AND AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE IsView='N' AND TableName='C_Order');
UPDATE AD_Column SET IsSelectionColumn='Y' WHERE  ColumnName='C_DocType_ID' AND ColumnSQL IS NULL AND IsKey='N' AND AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE IsView='N' AND TableName='C_Payment');
UPDATE AD_Column SET IsSelectionColumn='Y' WHERE  ColumnName='C_DocType_ID' AND ColumnSQL IS NULL AND IsKey='N' AND AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE IsView='N' AND TableName='M_InOut');
UPDATE AD_Column SET IsSelectionColumn='Y' WHERE  ColumnName='C_Invoice_ID' AND ColumnSQL IS NULL AND IsKey='N' AND AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE IsView='N' AND TableName='LBR_NotaFiscal');
UPDATE AD_Column SET IsSelectionColumn='Y' WHERE  ColumnName='C_Invoice_ID' AND ColumnSQL IS NULL AND IsKey='N' AND AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE IsView='N' AND TableName='C_Payment');
UPDATE AD_Column SET IsSelectionColumn='Y' WHERE  ColumnName='C_Order_ID' AND ColumnSQL IS NULL AND IsKey='N' AND AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE IsView='N' AND TableName='LBR_NotaFiscal');
UPDATE AD_Column SET IsSelectionColumn='Y' WHERE  ColumnName='C_Order_ID' AND ColumnSQL IS NULL AND IsKey='N' AND AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE IsView='N' AND TableName='C_Payment');
UPDATE AD_Column SET IsSelectionColumn='Y' WHERE  ColumnName='DateAcct' AND ColumnSQL IS NULL AND IsKey='N' AND AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE IsView='N' AND TableName='C_Invoice');
UPDATE AD_Column SET IsSelectionColumn='Y' WHERE  ColumnName='DateAcct' AND ColumnSQL IS NULL AND IsKey='N' AND AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE IsView='N' AND TableName='C_Payment');
UPDATE AD_Column SET IsSelectionColumn='Y' WHERE  ColumnName='DateAcct' AND ColumnSQL IS NULL AND IsKey='N' AND AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE IsView='N' AND TableName='M_InOut');
UPDATE AD_Column SET IsSelectionColumn='Y' WHERE  ColumnName='DateInvoiced' AND ColumnSQL IS NULL AND IsKey='N' AND AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE IsView='N' AND TableName='C_Invoice');
UPDATE AD_Column SET IsSelectionColumn='Y' WHERE  ColumnName='DateOrdered' AND ColumnSQL IS NULL AND IsKey='N' AND AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE IsView='N' AND TableName='C_Order');
UPDATE AD_Column SET IsSelectionColumn='Y' WHERE  ColumnName='DateReport' AND ColumnSQL IS NULL AND IsKey='N' AND AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE IsView='N' AND TableName='S_TimeExpense');
UPDATE AD_Column SET IsSelectionColumn='Y' WHERE  ColumnName='DateTrx' AND ColumnSQL IS NULL AND IsKey='N' AND AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE IsView='N' AND TableName='C_Payment');
UPDATE AD_Column SET IsSelectionColumn='Y' WHERE  ColumnName='EMail' AND ColumnSQL IS NULL AND IsKey='N' AND AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE IsView='N' AND TableName='AD_User');
UPDATE AD_Column SET IsSelectionColumn='Y' WHERE  ColumnName='lbr_BPTypeBR' AND ColumnSQL IS NULL AND IsKey='N' AND AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE IsView='N' AND TableName='C_BPartner');
UPDATE AD_Column SET IsSelectionColumn='Y' WHERE  ColumnName='lbr_CNPJ' AND ColumnSQL IS NULL AND IsKey='N' AND AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE IsView='N' AND TableName='C_BPartner');
UPDATE AD_Column SET IsSelectionColumn='Y' WHERE  ColumnName='lbr_CPF' AND ColumnSQL IS NULL AND IsKey='N' AND AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE IsView='N' AND TableName='C_BPartner');
UPDATE AD_Column SET IsSelectionColumn='Y' WHERE  ColumnName='M_Warehouse_ID' AND ColumnSQL IS NULL AND IsKey='N' AND AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE IsView='N' AND TableName='M_InOut');
UPDATE AD_Column SET IsSelectionColumn='Y' WHERE  ColumnName='MovementDate' AND ColumnSQL IS NULL AND IsKey='N' AND AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE IsView='N' AND TableName='M_InOut');
UPDATE AD_Column SET IsSelectionColumn='Y' WHERE  ColumnName='Priority' AND ColumnSQL IS NULL AND IsKey='N' AND AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE IsView='N' AND TableName='R_Request');
UPDATE AD_Column SET IsSelectionColumn='Y' WHERE  ColumnName='R_RequestType_ID' AND ColumnSQL IS NULL AND IsKey='N' AND AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE IsView='N' AND TableName='R_Request');
UPDATE AD_Column SET IsSelectionColumn='Y' WHERE  ColumnName='SalesRep_ID' AND ColumnSQL IS NULL AND IsKey='N' AND AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE IsView='N' AND TableName='R_Request');
UPDATE AD_Column SET IsSelectionColumn='Y' WHERE  ColumnName='StatementDate' AND ColumnSQL IS NULL AND IsKey='N' AND AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE IsView='N' AND TableName='C_BankStatement');
UPDATE AD_Column SET IsSelectionColumn='Y' WHERE  ColumnName='Summary' AND ColumnSQL IS NULL AND IsKey='N' AND AD_Table_ID IN (SELECT AD_Table_ID FROM AD_Table WHERE IsView='N' AND TableName='R_Request');